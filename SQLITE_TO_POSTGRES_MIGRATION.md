# SQLite to PostgreSQL Migration Guide

This guide provides step-by-step instructions for migrating your Performance Monitor application from SQLite to PostgreSQL on Vercel.

## Overview

The migration process consists of the following steps:

1. Set up Vercel Postgres
2. Update Prisma schema for PostgreSQL
3. Export data from SQLite
4. Create PostgreSQL schema
5. Import data to PostgreSQL
6. Update environment variables
7. Deploy to Vercel

## Prerequisites

- Node.js 16 or higher
- Access to your SQLite database
- Vercel account
- Git repository for your project

## Step 1: Back Up Your SQLite Database

Before starting the migration, create a backup of your SQLite database:

```bash
# Create a backup directory if it doesn't exist
mkdir -p backups

# Copy the SQLite database file
cp prisma/dev.db backups/dev.db.backup
```

## Step 2: Set Up Vercel Postgres

Follow the instructions in the [Vercel Postgres Setup Guide](VERCEL_POSTGRES_SETUP.md) to create a new PostgreSQL database in Vercel.

## Step 3: Update Prisma Schema

Update your Prisma schema (`prisma/schema.prisma`) to use PostgreSQL:

```prisma
datasource db {
  provider  = "postgresql"
  url       = env("POSTGRES_PRISMA_URL") // uses connection pooling
  directUrl = env("POSTGRES_URL_NON_POOLING") // uses a direct connection
}
```

## Step 4: Set Up Environment Variables

1. Create a `.env` file with your PostgreSQL connection details (if not already done)
2. Add the SQLite database path for migration purposes

```
# PostgreSQL Connection (from Vercel)
POSTGRES_PRISMA_URL=postgres://user:password@host:port/database?sslmode=require&pgbouncer=true&connect_timeout=15
POSTGRES_URL_NON_POOLING=postgres://user:password@host:port/database?sslmode=require&connect_timeout=15
DATABASE_URL=${POSTGRES_PRISMA_URL}

# SQLite Backup (for migration only)
SQLITE_DATABASE_URL=file:./prisma/dev.db
```

See [Vercel Environment Variables](VERCEL_ENV_VARIABLES.md) for more details.

## Step 5: Export Data from SQLite

Run the export script to extract data from your SQLite database:

```bash
# Install dependencies if needed
npm install

# Run the export script
node scripts/migrate-to-postgres.js
```

This will:
- Export all data from SQLite to JSON files in `prisma/export/`
- Generate a PostgreSQL migration SQL script at `prisma/postgresql-migration.sql`

## Step 6: Create PostgreSQL Schema

Create the schema in your PostgreSQL database:

```bash
# Set the DATABASE_URL to the non-pooling connection for migrations
export DATABASE_URL=$POSTGRES_URL_NON_POOLING

# Create the initial migration
npx prisma migrate dev --name init-postgres

# Apply the migration
npx prisma migrate deploy
```

## Step 7: Import Data to PostgreSQL

You have two options for importing data:

### Option A: Using the Import Script

```bash
# Run the import script
node scripts/import-to-postgres.js
```

### Option B: Using the SQL Script

If you have direct access to your PostgreSQL database:

```bash
# Using psql (if installed)
psql $POSTGRES_URL_NON_POOLING -f prisma/postgresql-migration.sql
```

Or through the Neon SQL Editor:
1. Go to Vercel Dashboard > Storage > Your Postgres Database > View in Neon
2. Open the SQL Editor
3. Copy the contents of `prisma/postgresql-migration.sql`
4. Execute the SQL

## Step 8: Verify the Migration

Check that your data was imported correctly:

```bash
# Generate Prisma client with the new schema
npx prisma generate

# Start your application with PostgreSQL connection
npm run dev
```

Verify that:
- The application starts without database errors
- All data is accessible
- Basic functionality works as expected

## Step 9: Update Vercel Environment Variables

1. Go to your project in the Vercel dashboard
2. Navigate to **Settings** > **Environment Variables**
3. Add the PostgreSQL connection variables:
   - `POSTGRES_PRISMA_URL`
   - `POSTGRES_URL_NON_POOLING`
   - `DATABASE_URL` (same as `POSTGRES_PRISMA_URL`)

## Step 10: Deploy to Vercel

Deploy your application to Vercel:

```bash
# Commit your changes
git add .
git commit -m "Migrate from SQLite to PostgreSQL"

# Push to your repository
git push
```

Or deploy directly through the Vercel dashboard.

## Rollback Plan

If you encounter issues with the PostgreSQL migration, you can roll back to SQLite:

1. Restore the SQLite schema in `prisma/schema.prisma`:
```prisma
datasource db {
  provider = "sqlite"
  url      = env("DATABASE_URL")
}
```

2. Update your environment variables to use SQLite:
```
DATABASE_URL=file:./prisma/dev.db
```

3. Restore your SQLite database from the backup:
```bash
cp backups/dev.db.backup prisma/dev.db
```

## Troubleshooting

### Common Issues

- **Type Conversion Errors**: SQLite and PostgreSQL handle types differently. Check for type mismatches in your data.
- **Connection Issues**: Ensure your IP is allowed in Vercel Postgres firewall settings.
- **SSL Errors**: Vercel Postgres requires SSL. Make sure your connection string includes `sslmode=require`.
- **JSON Data**: If you have JSON fields, ensure they're properly formatted for PostgreSQL.

### Getting Help

If you encounter issues:
1. Check the error logs in your terminal or Vercel deployment
2. Review the Prisma and Vercel documentation
3. Verify your connection strings and environment variables

## Additional Resources

- [Prisma Documentation](https://www.prisma.io/docs/)
- [Vercel Postgres Documentation](https://vercel.com/docs/storage/vercel-postgres)
- [Neon Documentation](https://neon.tech/docs/)
