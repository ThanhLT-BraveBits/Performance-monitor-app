// migrate-to-postgres.js
// Script to migrate data from SQLite to PostgreSQL
const fs = require('fs');
const path = require('path');

// Import SQLite client from the custom output location
const { PrismaClient: SQLitePrismaClient } = require('../node_modules/.prisma/sqlite-client');
// Initialize SQLite client
const sqliteClient = new SQLitePrismaClient();

async function exportSQLiteData() {
  console.log('🔍 Exporting data from SQLite database...');
  
  try {
    // Export all tables
    const products = await sqliteClient.product.findMany();
    const measurements = await sqliteClient.performanceMeasurement.findMany();
    const jobs = await sqliteClient.measurementJob.findMany();
    const configs = await sqliteClient.systemConfig.findMany();

    console.log(`✅ Exported data: ${products.length} products, ${measurements.length} measurements, ${jobs.length} jobs, ${configs.length} configs`);

    // Create export directory if it doesn't exist
    const exportDir = path.join(__dirname, '../prisma/export');
    if (!fs.existsSync(exportDir)) {
      fs.mkdirSync(exportDir, { recursive: true });
    }

    // Save data to JSON files
    fs.writeFileSync(
      path.join(exportDir, 'products.json'),
      JSON.stringify(products, null, 2)
    );
    fs.writeFileSync(
      path.join(exportDir, 'measurements.json'),
      JSON.stringify(measurements, null, 2)
    );
    fs.writeFileSync(
      path.join(exportDir, 'jobs.json'),
      JSON.stringify(jobs, null, 2)
    );
    fs.writeFileSync(
      path.join(exportDir, 'configs.json'),
      JSON.stringify(configs, null, 2)
    );

    console.log('📦 Data exported successfully to prisma/export/');
    
    // Generate SQL for PostgreSQL import
    generatePostgreSQLMigration(products, measurements, jobs, configs);
    
    return {
      products,
      measurements,
      jobs,
      configs
    };
  } catch (error) {
    console.error('❌ Error exporting data:', error);
    throw error;
  }
}

function generatePostgreSQLMigration(products, measurements, jobs, configs) {
  console.log('📝 Generating PostgreSQL migration SQL...');
  
  let sql = `-- PostgreSQL migration script
-- Generated on ${new Date().toISOString()}
-- This script will import data from SQLite to PostgreSQL

-- Disable triggers temporarily for import
SET session_replication_role = 'replica';

-- Clear existing data (if needed)
TRUNCATE TABLE "Product" CASCADE;
TRUNCATE TABLE "PerformanceMeasurement" CASCADE;
TRUNCATE TABLE "MeasurementJob" CASCADE;
TRUNCATE TABLE "SystemConfig" CASCADE;

-- Import Products
`;

  // Generate INSERT statements for products
  products.forEach(product => {
    sql += `INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('${product.id}', '${escapeSql(product.name)}', '${escapeSql(product.url)}', ${product.description ? `'${escapeSql(product.description)}'` : 'NULL'}, ${product.isActive}, '${product.createdAt.toISOString()}', '${product.updatedAt.toISOString()}');\n`;
  });

  sql += `\n-- Import Performance Measurements\n`;
  
  // Generate INSERT statements for measurements
  measurements.forEach(measurement => {
    sql += `INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      '${measurement.id}', '${measurement.productId}', '${measurement.deviceType}', '${measurement.measurementDate.toISOString()}', ${measurement.performanceScore},
      ${measurement.fcp !== null ? measurement.fcp : 'NULL'}, 
      ${measurement.lcp !== null ? measurement.lcp : 'NULL'}, 
      ${measurement.cls !== null ? measurement.cls : 'NULL'}, 
      ${measurement.fid !== null ? measurement.fid : 'NULL'}, 
      ${measurement.ttfb !== null ? measurement.ttfb : 'NULL'}, 
      ${measurement.speedIndex !== null ? measurement.speedIndex : 'NULL'}, 
      ${measurement.tbt !== null ? measurement.tbt : 'NULL'},
      ${measurement.opportunity ? `'${escapeSql(JSON.stringify(measurement.opportunity))}'::jsonb` : 'NULL'}, 
      ${measurement.diagnostics ? `'${escapeSql(JSON.stringify(measurement.diagnostics))}'::jsonb` : 'NULL'}, 
      '${measurement.createdAt.toISOString()}', '${measurement.updatedAt.toISOString()}'
    );\n`;
  });

  sql += `\n-- Import Measurement Jobs\n`;
  
  // Generate INSERT statements for jobs
  jobs.forEach(job => {
    sql += `INSERT INTO "MeasurementJob" (
      "id", "productId", "deviceType", "status", "scheduledAt", 
      "startedAt", "completedAt", "errorMessage", "retryCount", "createdAt", "updatedAt"
    ) VALUES (
      '${job.id}', '${job.productId}', '${job.deviceType}', '${job.status}', '${job.scheduledAt.toISOString()}',
      ${job.startedAt ? `'${job.startedAt.toISOString()}'` : 'NULL'}, 
      ${job.completedAt ? `'${job.completedAt.toISOString()}'` : 'NULL'}, 
      ${job.errorMessage ? `'${escapeSql(job.errorMessage)}'` : 'NULL'}, 
      ${job.retryCount}, '${job.createdAt.toISOString()}', '${job.updatedAt.toISOString()}'
    );\n`;
  });

  sql += `\n-- Import System Config\n`;
  
  // Generate INSERT statements for configs
  configs.forEach(config => {
    sql += `INSERT INTO "SystemConfig" ("id", "key", "value", "createdAt", "updatedAt") VALUES
('${config.id}', '${escapeSql(config.key)}', '${escapeSql(config.value)}', '${config.createdAt.toISOString()}', '${config.updatedAt.toISOString()}');\n`;
  });

  sql += `\n-- Re-enable triggers
SET session_replication_role = 'origin';

-- Verify data import
SELECT 
  (SELECT COUNT(*) FROM "Product") AS product_count,
  (SELECT COUNT(*) FROM "PerformanceMeasurement") AS measurement_count,
  (SELECT COUNT(*) FROM "MeasurementJob") AS job_count,
  (SELECT COUNT(*) FROM "SystemConfig") AS config_count;
`;

  // Save SQL file
  fs.writeFileSync(
    path.join(__dirname, '../prisma/postgresql-migration.sql'),
    sql
  );
  
  console.log('✅ PostgreSQL migration SQL generated: prisma/postgresql-migration.sql');
}

// Helper function to escape SQL strings
function escapeSql(str) {
  if (typeof str !== 'string') return str;
  return str.replace(/'/g, "''");
}

// Main function
async function main() {
  try {
    console.log('🚀 Starting SQLite to PostgreSQL migration...');
    await exportSQLiteData();
    console.log('✅ Migration preparation completed successfully!');
    console.log('\nNext steps:');
    console.log('1. Update your .env file with Vercel Postgres credentials');
    console.log('2. Run prisma migrate to create the PostgreSQL schema:');
    console.log('   npx prisma migrate dev --name init-postgres');
    console.log('3. Import the data using the generated SQL script:');
    console.log('   psql [YOUR_POSTGRES_URL] -f prisma/postgresql-migration.sql');
    console.log('\nAlternatively, use the import script:');
    console.log('   node scripts/import-to-postgres.js');
  } catch (error) {
    console.error('❌ Migration failed:', error);
    process.exit(1);
  } finally {
    await sqliteClient.$disconnect();
  }
}

// Run the migration if this script is executed directly
if (require.main === module) {
  main();
}

module.exports = { exportSQLiteData };