# Vercel Environment Variables for PostgreSQL Migration

This document outlines the environment variables needed for your Performance Monitor application when migrating from SQLite to Vercel Postgres.

## Required Environment Variables

### For PostgreSQL Connection

| Variable | Description | Example |
|----------|-------------|---------|
| `POSTGRES_PRISMA_URL` | Connection URL with connection pooling for Prisma | `postgres://user:password@host:port/database?sslmode=require&pgbouncer=true&connect_timeout=15` |
| `POSTGRES_URL_NON_POOLING` | Direct connection URL for migrations | `postgres://user:password@host:port/database?sslmode=require&connect_timeout=15` |
| `DATABASE_URL` | Legacy connection variable (set to same as `POSTGRES_PRISMA_URL`) | Same as `POSTGRES_PRISMA_URL` |

### For SQLite Backup (During Migration)

| Variable | Description | Example |
|----------|-------------|---------|
| `SQLITE_DATABASE_URL` | Path to SQLite database file | `file:./prisma/dev.db` |

## Setting Up Environment Variables

### Local Development

Create or update your `.env` file with the following:

```
# PostgreSQL Connection (from Vercel)
POSTGRES_PRISMA_URL=postgres://user:password@host:port/database?sslmode=require&pgbouncer=true&connect_timeout=15
POSTGRES_URL_NON_POOLING=postgres://user:password@host:port/database?sslmode=require&connect_timeout=15
DATABASE_URL=${POSTGRES_PRISMA_URL}

# SQLite Backup (for migration only)
SQLITE_DATABASE_URL=file:./prisma/dev.db
```

### Vercel Deployment

1. Go to your project in the Vercel dashboard
2. Navigate to **Settings** > **Environment Variables**
3. Add the following variables:
   - `POSTGRES_PRISMA_URL`
   - `POSTGRES_URL_NON_POOLING`
   - `DATABASE_URL` (same as `POSTGRES_PRISMA_URL`)

## Environment Variable Usage

### During Migration

When running migration scripts, both SQLite and PostgreSQL connection details are needed:

```bash
# Export data from SQLite
SQLITE_DATABASE_URL=file:./prisma/dev.db node scripts/migrate-to-postgres.js

# Import data to PostgreSQL
POSTGRES_PRISMA_URL=postgres://... POSTGRES_URL_NON_POOLING=postgres://... node scripts/import-to-postgres.js
```

### After Migration

Once migration is complete, only the PostgreSQL variables are needed:

```bash
# Generate Prisma client
npx prisma generate

# Run migrations
DATABASE_URL=$POSTGRES_URL_NON_POOLING npx prisma migrate deploy
```

## Verifying Environment Variables

To verify your environment variables are correctly set:

```bash
# Check if database connection works
npx prisma db pull
```

If successful, this will introspect your database schema.

## Troubleshooting

- **Missing Variables**: If you encounter "DATABASE_URL not found" errors, check that all required variables are set
- **Connection Errors**: Ensure your IP is allowed in Vercel Postgres firewall settings
- **SSL Issues**: Vercel Postgres requires SSL. Make sure your connection string includes `sslmode=require`

For more detailed information on setting up Vercel Postgres, refer to the [Vercel Postgres Setup Guide](VERCEL_POSTGRES_SETUP.md).
