'use client';

import { useEffect, useState } from 'react';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Activity, Monitor, Smartphone, Database } from 'lucide-react';


interface OverviewStats {
  totalProducts: number;
  totalMeasurements: number;
  averageDesktopScore: number;
  averageMobileScore: number;
  lastUpdated: Date | null;
  activeProducts: number;
}

export function DashboardOverview() {
  const [stats, setStats] = useState<OverviewStats | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    fetchDashboardStats();
  }, []);

  const fetchDashboardStats = async () => {
    try {
      setLoading(true);
      
      // Fetch products and basic stats
      const [productsResponse, measurementsResponse] = await Promise.all([
        fetch('/api/products'),
        fetch('/api/measurements?limit=1000')
      ]);

      if (!productsResponse.ok || !measurementsResponse.ok) {
        throw new Error('Failed to fetch dashboard data');
      }

      const productsData = await productsResponse.json();
      const measurementsData = await measurementsResponse.json();

      if (!productsData.success || !measurementsData.success) {
        throw new Error('Invalid response from API');
      }

      const products = productsData.data;
      const measurements = measurementsData.data;

      // Calculate averages
      const desktopMeasurements = measurements.filter((m: any) => m.deviceType === 'DESKTOP');
      const mobileMeasurements = measurements.filter((m: any) => m.deviceType === 'MOBILE');

      const averageDesktopScore = desktopMeasurements.length > 0
        ? Math.round(desktopMeasurements.reduce((sum: number, m: any) => sum + m.performanceScore, 0) / desktopMeasurements.length)
        : 0;

      const averageMobileScore = mobileMeasurements.length > 0
        ? Math.round(mobileMeasurements.reduce((sum: number, m: any) => sum + m.performanceScore, 0) / mobileMeasurements.length)
        : 0;

      // Find last updated date
      const lastUpdated = measurements.length > 0
        ? new Date(Math.max(...measurements.map((m: any) => new Date(m.measurementDate).getTime())))
        : null;

      setStats({
        totalProducts: products.length,
        activeProducts: products.filter((p: any) => p.isActive).length,
        totalMeasurements: measurements.length,
        averageDesktopScore,
        averageMobileScore,
        lastUpdated
      });

      setError(null);
    } catch (err) {
      console.error('Error fetching dashboard stats:', err);
      setError(err instanceof Error ? err.message : 'Failed to load dashboard data');
    } finally {
      setLoading(false);
    }
  };

  if (loading) {
    return <DashboardSkeleton />;
  }

  if (error) {
    return (
      <Card className="col-span-4">
        <CardContent className="pt-6">
          <div className="text-center text-red-500">
            Error loading dashboard: {error}
          </div>
        </CardContent>
      </Card>
    );
  }

  if (!stats) {
    return null;
  }

  const getScoreBadgeVariant = (score: number) => {
    if (score >= 90) return { variant: 'default' as const, className: 'bg-green-100 text-green-800' };
    if (score >= 70) return { variant: 'secondary' as const, className: 'bg-yellow-100 text-yellow-800' };
    return { variant: 'destructive' as const, className: 'bg-red-100 text-red-800' };
  };

  return (
    <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
      {/* Active Products */}
      <Card>
        <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
          <CardTitle className="text-sm font-medium">Active Products</CardTitle>
          <Database className="h-4 w-4 text-muted-foreground" />
        </CardHeader>
        <CardContent>
          <div className="text-2xl font-bold">{stats.activeProducts}</div>
          <p className="text-xs text-muted-foreground">
            of {stats.totalProducts} total products
          </p>
        </CardContent>
      </Card>

      {/* Total Measurements */}
      <Card>
        <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
          <CardTitle className="text-sm font-medium">Total Measurements</CardTitle>
          <Activity className="h-4 w-4 text-muted-foreground" />
        </CardHeader>
        <CardContent>
          <div className="text-2xl font-bold">{stats.totalMeasurements.toLocaleString()}</div>
          <p className="text-xs text-muted-foreground">
            performance data points
          </p>
        </CardContent>
      </Card>

      {/* Desktop Performance */}
      <Card>
        <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
          <CardTitle className="text-sm font-medium">Desktop Avg</CardTitle>
          <Monitor className="h-4 w-4 text-muted-foreground" />
        </CardHeader>
        <CardContent>
          <div className="flex items-center gap-2">
            <div className="text-2xl font-bold">{stats.averageDesktopScore}</div>
            <Badge {...getScoreBadgeVariant(stats.averageDesktopScore)}>
              {stats.averageDesktopScore >= 90 ? 'Good' : stats.averageDesktopScore >= 70 ? 'Needs Work' : 'Poor'}
            </Badge>
          </div>
          <p className="text-xs text-muted-foreground">
            average performance score
          </p>
        </CardContent>
      </Card>

      {/* Mobile Performance */}
      <Card>
        <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
          <CardTitle className="text-sm font-medium">Mobile Avg</CardTitle>
          <Smartphone className="h-4 w-4 text-muted-foreground" />
        </CardHeader>
        <CardContent>
          <div className="flex items-center gap-2">
            <div className="text-2xl font-bold">{stats.averageMobileScore}</div>
            <Badge {...getScoreBadgeVariant(stats.averageMobileScore)}>
              {stats.averageMobileScore >= 90 ? 'Good' : stats.averageMobileScore >= 70 ? 'Needs Work' : 'Poor'}
            </Badge>
          </div>
          <p className="text-xs text-muted-foreground">
            average performance score
          </p>
        </CardContent>
      </Card>
    </div>
  );
}

function DashboardSkeleton() {
  return (
    <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
      {Array.from({ length: 4 }).map((_, i) => (
        <Card key={i}>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <div className="h-4 w-24 bg-muted animate-pulse rounded" />
            <div className="h-4 w-4 bg-muted animate-pulse rounded" />
          </CardHeader>
          <CardContent>
            <div className="h-8 w-16 bg-muted animate-pulse rounded mb-2" />
            <div className="h-3 w-32 bg-muted animate-pulse rounded" />
          </CardContent>
        </Card>
      ))}
    </div>
  );
}
