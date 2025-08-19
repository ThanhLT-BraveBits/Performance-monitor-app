import Link from 'next/link';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { 
  Activity, 
  BarChart3, 
  Clock, 
  Database,
  Download,
  Monitor,
  Smartphone,
  TrendingUp,
  Zap
} from 'lucide-react';

export default function Home() {
  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 via-white to-purple-50">
      {/* Navigation */}
      <nav className="border-b bg-white/80 backdrop-blur-sm">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex justify-between items-center h-16">
            <div className="flex items-center">
              <Activity className="h-8 w-8 text-blue-600" />
              <span className="ml-2 text-xl font-bold text-gray-900">
                Shopify Performance Monitor
              </span>
            </div>
            <div className="flex items-center space-x-4">
              <Button variant="outline" asChild>
                <Link href="/dashboard">
                  View Dashboard
                </Link>
              </Button>
            </div>
          </div>
        </div>
      </nav>

      {/* Hero Section */}
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-24">
        <div className="text-center">
          <h1 className="text-4xl md:text-6xl font-bold text-gray-900 mb-6">
            Monitor Your Shopify Theme 
            <span className="text-blue-600"> Performance</span>
          </h1>
          <p className="text-xl text-gray-600 mb-8 max-w-3xl mx-auto">
            Automated performance monitoring for your Shopify theme products using Google PageSpeed Insights. 
            Track Core Web Vitals, get daily measurements, and optimize your store&apos;s performance.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Button size="lg" asChild>
              <Link href="/dashboard">
                <BarChart3 className="mr-2 h-5 w-5" />
                View Dashboard
              </Link>
            </Button>
            <Button variant="outline" size="lg" asChild>
              <Link href="/dashboard/export">
                <Download className="mr-2 h-5 w-5" />
                Export Data
              </Link>
            </Button>
          </div>
        </div>
      </div>

      {/* Features Grid */}
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16">
        <div className="text-center mb-16">
          <h2 className="text-3xl font-bold text-gray-900 mb-4">
            Everything You Need to Monitor Performance
          </h2>
          <p className="text-lg text-gray-600">
            Comprehensive performance monitoring with automated daily measurements and detailed analytics.
          </p>
        </div>

        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          {/* Automated Monitoring */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center">
                <Clock className="h-5 w-5 mr-2 text-blue-600" />
                Automated Daily Measurements
              </CardTitle>
              <CardDescription>
                Set it and forget it. Get daily performance measurements for all your products automatically.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <ul className="text-sm text-gray-600 space-y-2">
                <li>• Scheduled daily at optimal times</li>
                <li>• Both desktop and mobile testing</li>
                <li>• Reliable job queue system</li>
                <li>• Error handling and retries</li>
              </ul>
            </CardContent>
          </Card>

          {/* Core Web Vitals */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center">
                <TrendingUp className="h-5 w-5 mr-2 text-green-600" />
                Core Web Vitals Tracking
              </CardTitle>
              <CardDescription>
                Monitor all the metrics that matter for SEO and user experience.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <div className="flex flex-wrap gap-1 mb-4">
                <Badge variant="secondary">LCP</Badge>
                <Badge variant="secondary">FID</Badge>
                <Badge variant="secondary">CLS</Badge>
                <Badge variant="secondary">FCP</Badge>
                <Badge variant="secondary">TTFB</Badge>
              </div>
              <p className="text-sm text-gray-600">
                Track First Contentful Paint, Largest Contentful Paint, Cumulative Layout Shift, and more.
              </p>
            </CardContent>
          </Card>

          {/* Multi-Device Testing */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center">
                <div className="flex mr-2">
                  <Monitor className="h-4 w-4 text-blue-500 mr-1" />
                  <Smartphone className="h-4 w-4 text-purple-500" />
                </div>
                Desktop & Mobile Testing
              </CardTitle>
              <CardDescription>
                Get performance insights for both desktop and mobile experiences.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <ul className="text-sm text-gray-600 space-y-2">
                <li>• Separate desktop and mobile metrics</li>
                <li>• Device-specific recommendations</li>
                <li>• Comparative performance analysis</li>
                <li>• Responsive design insights</li>
              </ul>
            </CardContent>
          </Card>

          {/* Dashboard & Analytics */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center">
                <BarChart3 className="h-5 w-5 mr-2 text-orange-600" />
                Interactive Dashboard
              </CardTitle>
              <CardDescription>
                Beautiful charts and metrics to track your performance over time.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <ul className="text-sm text-gray-600 space-y-2">
                <li>• Performance trend charts</li>
                <li>• Real-time metric updates</li>
                <li>• Product comparison views</li>
                <li>• Historical data analysis</li>
              </ul>
            </CardContent>
          </Card>

          {/* JSON Configuration */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center">
                <Database className="h-5 w-5 mr-2 text-purple-600" />
                Easy Configuration
              </CardTitle>
              <CardDescription>
                Simple JSON file to define all the URLs you want to monitor.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <ul className="text-sm text-gray-600 space-y-2">
                <li>• JSON-based product configuration</li>
                <li>• Easy to add new products</li>
                <li>• Bulk import capabilities</li>
                <li>• URL validation and testing</li>
              </ul>
            </CardContent>
          </Card>

          {/* Data Export */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center">
                <Download className="h-5 w-5 mr-2 text-red-600" />
                Data Export & Reporting
              </CardTitle>
              <CardDescription>
                Export your performance data for further analysis and reporting.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <ul className="text-sm text-gray-600 space-y-2">
                <li>• CSV and JSON export formats</li>
                <li>• Flexible date range filtering</li>
                <li>• Product-specific exports</li>
                <li>• Ready for business reports</li>
              </ul>
            </CardContent>
          </Card>
        </div>
      </div>

      {/* CTA Section */}
      <div className="bg-blue-600 py-16">
        <div className="max-w-4xl mx-auto text-center px-4 sm:px-6 lg:px-8">
          <h2 className="text-3xl font-bold text-white mb-4">
            Ready to Optimize Your Shopify Performance?
          </h2>
          <p className="text-xl text-blue-100 mb-8">
            Start monitoring your Shopify theme performance today with automated daily measurements.
          </p>
          <Button size="lg" variant="secondary" asChild>
            <Link href="/dashboard">
              <Zap className="mr-2 h-5 w-5" />
              Get Started Now
            </Link>
          </Button>
        </div>
      </div>

      {/* Footer */}
      <footer className="border-t bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
          <div className="flex items-center justify-between">
            <div className="flex items-center">
              <Activity className="h-6 w-6 text-blue-600" />
              <span className="ml-2 font-semibold text-gray-900">
                Shopify Performance Monitor
              </span>
            </div>
            <div className="text-sm text-gray-500">
              Built with Next.js, Prisma, and Google PageSpeed Insights API
            </div>
          </div>
        </div>
      </footer>
    </div>
  );
}
