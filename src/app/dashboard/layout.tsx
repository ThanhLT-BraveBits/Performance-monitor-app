import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { 
  Activity, 
  BarChart3, 
  Download, 
  Home, 
  Settings,
  Clock,
  Database
} from 'lucide-react';

export default function DashboardLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <div className="hidden md:flex h-screen bg-background">
      {/* Sidebar */}
      <div className="w-64 border-r bg-muted/10">
        <div className="flex h-full max-h-screen flex-col gap-2">
          {/* Logo */}
          <div className="flex h-[60px] items-center border-b px-6">
            <Link className="flex items-center gap-2 font-semibold" href="/dashboard">
              <Activity className="h-6 w-6 text-blue-600" />
              <span>Performance Monitor</span>
            </Link>
          </div>

          {/* Navigation */}
          <div className="flex-1 overflow-auto py-2">
            <nav className="grid items-start px-4 text-sm font-medium">
              <Link
                className="flex items-center gap-3 rounded-lg px-3 py-2 text-muted-foreground transition-all hover:text-primary hover:bg-muted"
                href="/dashboard"
              >
                <Home className="h-4 w-4" />
                Dashboard
              </Link>
              <Link
                className="flex items-center gap-3 rounded-lg px-3 py-2 text-muted-foreground transition-all hover:text-primary hover:bg-muted"
                href="/dashboard/charts"
              >
                <BarChart3 className="h-4 w-4" />
                Analytics
              </Link>
              <Link
                className="flex items-center gap-3 rounded-lg px-3 py-2 text-muted-foreground transition-all hover:text-primary hover:bg-muted"
                href="/dashboard/products"
              >
                <Database className="h-4 w-4" />
                Products
              </Link>
              <Link
                className="flex items-center gap-3 rounded-lg px-3 py-2 text-muted-foreground transition-all hover:text-primary hover:bg-muted"
                href="/dashboard/jobs"
              >
                <Clock className="h-4 w-4" />
                Scheduled Jobs
              </Link>
              <Link
                className="flex items-center gap-3 rounded-lg px-3 py-2 text-muted-foreground transition-all hover:text-primary hover:bg-muted"
                href="/dashboard/export"
              >
                <Download className="h-4 w-4" />
                Export Data
              </Link>
              <Link
                className="flex items-center gap-3 rounded-lg px-3 py-2 text-muted-foreground transition-all hover:text-primary hover:bg-muted"
                href="/dashboard/settings"
              >
                <Settings className="h-4 w-4" />
                Settings
              </Link>
            </nav>
          </div>

          {/* Footer */}
          <div className="border-t p-4">
            <div className="text-xs text-muted-foreground">
              <div className="mb-1">Shopify Performance</div>
              <div>Monitoring System v1.0</div>
            </div>
          </div>
        </div>
      </div>

      {/* Main Content */}
      <div className="flex flex-col flex-1 overflow-hidden">
        {/* Top Bar */}
        <header className="flex h-14 lg:h-[60px] items-center gap-4 border-b bg-muted/10 px-6">
          <div className="flex-1">
            <h1 className="text-lg font-semibold">Shopify Performance Monitor</h1>
          </div>
          <div className="flex items-center gap-2">
            <Button variant="outline" size="sm" asChild>
              <Link href="/">
                <Home className="h-4 w-4 mr-2" />
                Home
              </Link>
            </Button>
          </div>
        </header>

        {/* Page Content */}
        <main className="flex-1 overflow-y-auto">
          {children}
        </main>
      </div>
    </div>
  );
}

// Mobile layout could be implemented here in the future if needed
