# Deployment Guide - Shopify Performance Monitor

## Quick Deploy to Vercel

### Prerequisites
- Node.js 18+ installed
- Vercel account ([signup here](https://vercel.com))
- PostgreSQL database (recommend [Vercel Postgres](https://vercel.com/storage/postgres) or [Neon](https://neon.tech))
- Google PageSpeed Insights API Key

### Step 1: Prepare Environment Variables

1. Copy `env.example` to `.env.local`:
   ```bash
   cp env.example .env.local
   ```

2. Fill in the required values:
   ```env
   DATABASE_URL="postgresql://username:password@host:port/database"
   GOOGLE_PAGESPEED_API_KEY="your_api_key_here"
   CRON_SECRET="your_secure_random_string_here"
   ```

### Step 2: Deploy to Vercel

#### Option A: Using Vercel Dashboard
1. Push your code to GitHub
2. Go to [vercel.com/new](https://vercel.com/new)
3. Import your repository
4. Add environment variables in the project settings
5. Deploy!

#### Option B: Using Vercel CLI
1. Install Vercel CLI:
   ```bash
   npm i -g vercel
   ```

2. Login and deploy:
   ```bash
   vercel login
   vercel
   ```

3. Add environment variables:
   ```bash
   vercel env add DATABASE_URL
   vercel env add GOOGLE_PAGESPEED_API_KEY
   vercel env add CRON_SECRET
   ```

4. Deploy to production:
   ```bash
   vercel --prod
   ```

### Step 3: Setup Database

After deployment, setup your database:

1. Run migrations:
   ```bash
   npx prisma db push
   ```

2. Seed initial data:
   ```bash
   npm run db:seed
   ```

### Step 4: Test Your Deployment

1. Visit your Vercel URL
2. Check the dashboard loads properly
3. Test the "Test Run" button in the Automated Measurements section
4. Verify cron jobs are configured in Vercel dashboard

### Troubleshooting

#### Common Issues

1. **Database Connection Errors**
   - Ensure DATABASE_URL is correct
   - Check if your database allows connections from Vercel IPs
   - Verify SSL settings for PostgreSQL

2. **API Key Issues**
   - Verify GOOGLE_PAGESPEED_API_KEY is valid
   - Check API quotas in Google Cloud Console
   - Ensure PageSpeed Insights API is enabled

3. **Cron Job Not Working**
   - Check CRON_SECRET is set correctly
   - Verify cron configuration in vercel.json
   - Check Vercel function logs for errors

4. **Build Failures**
   - Ensure all dependencies are in package.json
   - Check TypeScript errors
   - Verify Prisma schema is valid

### Production Checklist

- [ ] Database migrated and seeded
- [ ] Environment variables configured
- [ ] API keys working
- [ ] Cron jobs scheduled
- [ ] Dashboard accessible
- [ ] Test measurements working
- [ ] Export functionality tested
- [ ] Performance monitoring active

### Monitoring

- Use Vercel Analytics for performance monitoring
- Check Vercel Function logs for errors
- Monitor database performance and storage
- Set up alerts for failed cron jobs

### Support

For issues with this deployment, check:
1. Vercel documentation
2. Next.js deployment guides
3. Prisma deployment guides
4. Google PageSpeed Insights API documentation
