# Shopify Performance Monitor

Automated performance monitoring system for Shopify theme products using Google PageSpeed Insights API. Track Core Web Vitals, get daily measurements, and optimize your store's performance with beautiful dashboards and comprehensive analytics.

## Features

- 🚀 **Automated Daily Measurements** - Set it and forget it monitoring
- 📊 **Interactive Dashboard** - Beautiful charts and real-time metrics
- 📱 **Desktop & Mobile Testing** - Comprehensive device coverage
- 📈 **Core Web Vitals Tracking** - LCP, FID, CLS, FCP, TTFB, and more
- 📋 **JSON Configuration** - Easy product URL management
- 📤 **Data Export** - CSV and JSON export with date filtering
- ⚡ **Real-time Updates** - Live performance data refresh
- 🔄 **Reliable Scheduling** - Queue-based job system with retry logic

## Tech Stack

- **Framework**: Next.js 15 with App Router and TypeScript
- **Database**: PostgreSQL with Prisma ORM
- **UI**: TailwindCSS + shadcn/ui components
- **Charts**: Recharts for data visualization
- **API**: Google PageSpeed Insights API integration
- **Scheduling**: Cron-based automated measurements

## Quick Start

### 1. Clone and Install

```bash
git clone <your-repo-url>
cd shopify-performance-monitor
npm install
```

### 2. Environment Setup

Create a `.env` file with the following variables:

```env
# Database Configuration
DATABASE_URL="postgresql://username:password@localhost:5432/shopify_performance"

# Google PageSpeed Insights API Key
# Get your API key from: https://developers.google.com/speed/docs/insights/v5/get-started
GOOGLE_PAGESPEED_API_KEY="your_google_pagespeed_api_key_here"

# Cron Job Security
# Generate a secure random string for protecting your cron endpoints
CRON_SECRET="your_secure_cron_secret_here"
```

### 3. Database Setup

```bash
# Run database migrations
npx prisma db push

# Generate Prisma client
npx prisma generate

# (Optional) Open Prisma Studio to view your database
npx prisma studio
```

### 4. Configure Products

Edit `config/products.json` to define the Shopify store URLs you want to monitor:

```json
{
  "products": [
    {
      "name": "My Shopify Store",
      "url": "https://your-store.myshopify.com",
      "description": "Main production store"
    }
  ]
}
```

### 5. Sync Products to Database

```bash
# Import products from config file to database
curl -X POST http://localhost:3000/api/products -H "Content-Type: application/json" -d '{"action":"sync"}'
```

### 6. Run Development Server

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to view the application.

## API Endpoints

### Products Management
- `GET /api/products` - List all products
- `POST /api/products` - Create product or sync from config
- `PUT /api/products/[id]` - Update product
- `DELETE /api/products/[id]` - Delete product

### Performance Measurements
- `GET /api/measurements` - Get measurements with filtering
- `POST /api/measurements` - Run manual performance test

### Automated Scheduling
- `POST /api/cron` - Trigger scheduled measurements (requires CRON_SECRET)
- `GET /api/cron` - Get job status and statistics

### Data Export
- `POST /api/export` - Export data as CSV or JSON
- `GET /api/export` - Get export statistics

## Automated Scheduling

Set up automated daily measurements using one of these methods:

### Option 1: Vercel Cron (Recommended for Vercel deployments)

Add to your `vercel.json`:

```json
{
  "crons": [
    {
      "path": "/api/cron",
      "schedule": "0 6 * * *"
    }
  ]
}
```

### Option 2: External Cron Service

Use any cron service to call your endpoint daily:

```bash
curl -X POST https://your-domain.com/api/cron \
  -H "Authorization: Bearer your_cron_secret"
```

### Option 3: GitHub Actions

Create `.github/workflows/measurements.yml`:

```yaml
name: Daily Performance Measurements
on:
  schedule:
    - cron: '0 6 * * *'  # Daily at 6 AM UTC
jobs:
  measure:
    runs-on: ubuntu-latest
    steps:
      - name: Trigger measurements
        run: |
          curl -X POST ${{ secrets.APP_URL }}/api/cron \
            -H "Authorization: Bearer ${{ secrets.CRON_SECRET }}"
```

## Configuration

### Products Configuration (`config/products.json`)

```json
{
  "products": [
    {
      "name": "Store Name",
      "url": "https://store.myshopify.com",
      "description": "Optional description"
    }
  ]
}
```

### Google PageSpeed API Key

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project or select existing
3. Enable PageSpeed Insights API
4. Create credentials (API Key)
5. Add the API key to your `.env` file

## Deployment

### Vercel (Recommended)

1. Connect your repository to Vercel
2. Add environment variables in Vercel dashboard
3. Deploy automatically on git push

### Docker

```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
RUN npx prisma generate
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
```

## Development

### Project Structure

```
src/
├── app/                    # Next.js app directory
│   ├── api/               # API routes
│   ├── dashboard/         # Dashboard pages
│   └── page.tsx          # Homepage
├── components/            # React components
│   ├── dashboard/        # Dashboard-specific components
│   ├── export/           # Export functionality
│   └── ui/               # shadcn/ui components
└── lib/                   # Utilities and services
    ├── services/         # Business logic services
    └── types/            # TypeScript type definitions
```

### Key Services

- **PageSpeedService** (`lib/services/pagespeed.ts`) - Google API integration
- **DatabaseService** (`lib/services/database.ts`) - Database operations
- **API Routes** - RESTful endpoints for all functionality

### Database Schema

- **Products** - Store URLs and metadata
- **PerformanceMeasurements** - Core Web Vitals data
- **MeasurementJobs** - Scheduled job tracking
- **SystemConfig** - Application configuration

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## Troubleshooting

### Common Issues

**Database connection errors**
- Verify DATABASE_URL is correct
- Ensure PostgreSQL is running
- Check network connectivity

**API key errors**
- Verify GOOGLE_PAGESPEED_API_KEY is valid
- Check API quotas in Google Cloud Console
- Ensure PageSpeed Insights API is enabled

**Cron job failures**
- Verify CRON_SECRET matches
- Check server logs for detailed errors
- Ensure products are properly configured

### Debug Mode

Enable detailed logging:

```env
NODE_ENV=development
LOG_LEVEL=debug
```

## License

MIT License - see LICENSE file for details.

## Support

For issues and feature requests, please use the GitHub issues tracker.
