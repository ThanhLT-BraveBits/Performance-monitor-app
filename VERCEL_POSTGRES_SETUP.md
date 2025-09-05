# Vercel Postgres Setup Guide

This guide explains how to set up Vercel Postgres for your Performance Monitor application.

## Prerequisites

- Vercel account
- Your project deployed on Vercel or ready to be deployed
- Access to Vercel dashboard

## Steps to Set Up Vercel Postgres

### 1. Create a Postgres Database in Vercel

1. Log in to your [Vercel dashboard](https://vercel.com/dashboard)
2. Navigate to the **Storage** tab
3. Click on **Create** and select **Postgres**
4. Follow the setup wizard:
   - Choose a name for your database
   - Select the region closest to your users
   - Choose your pricing plan
5. Click **Create** to provision your Postgres database

### 2. Get Connection Details

After creating your database, Vercel will provide you with connection details:

- `POSTGRES_PRISMA_URL`: Connection string with connection pooling (for Prisma)
- `POSTGRES_URL_NON_POOLING`: Direct connection string (for migrations)
- `POSTGRES_URL`: General connection string
- `POSTGRES_USER`: Database username
- `POSTGRES_HOST`: Database host
- `POSTGRES_PASSWORD`: Database password
- `POSTGRES_DATABASE`: Database name

### 3. Add Environment Variables to Your Project

1. In your Vercel project settings, go to the **Environment Variables** tab
2. Add the following environment variables:
   - `POSTGRES_PRISMA_URL`
   - `POSTGRES_URL_NON_POOLING`
   - `DATABASE_URL` (set to the same value as `POSTGRES_PRISMA_URL` for backward compatibility)

### 4. Connect to Vercel Postgres Locally

To connect to your Vercel Postgres database from your local development environment:

1. Create or update your `.env` file with the connection details:

```
POSTGRES_PRISMA_URL=postgres://user:password@host:port/database?sslmode=require&pgbouncer=true&connect_timeout=15
POSTGRES_URL_NON_POOLING=postgres://user:password@host:port/database?sslmode=require&connect_timeout=15
DATABASE_URL=${POSTGRES_PRISMA_URL}
```

2. Replace the placeholders with your actual connection details

### 5. Test the Connection

You can test the connection using the Prisma CLI:

```bash
npx prisma db pull
```

If successful, this will introspect your database schema.

## Using Vercel Postgres with Neon

Vercel Postgres is powered by Neon, a serverless Postgres provider. If you want to directly access your database through Neon:

1. Go to the **Storage** tab in your Vercel dashboard
2. Click on your Postgres database
3. Click on **View in Neon**
4. You'll be redirected to the Neon dashboard where you can:
   - Run SQL queries directly
   - View database metrics
   - Set up additional access controls
   - Configure database settings

## Troubleshooting

### Connection Issues

- **SSL Required**: Vercel Postgres requires SSL. Make sure your connection string includes `sslmode=require`
- **Connection Timeouts**: If you experience timeouts, check your network settings or firewall rules
- **Connection Pooling**: For high-traffic applications, use the pooled connection string (`POSTGRES_PRISMA_URL`)

### Migration Issues

- Use the non-pooling connection string (`POSTGRES_URL_NON_POOLING`) for migrations
- If you encounter "too many connections" errors, ensure you're using the correct connection string for each operation

## Next Steps

After setting up Vercel Postgres, you'll need to:

1. Migrate your schema using Prisma Migrate
2. Import your data from SQLite (if applicable)
3. Update your application code if necessary

For detailed instructions on these steps, refer to the [Migration Guide](SQLITE_TO_POSTGRES_MIGRATION.md).
