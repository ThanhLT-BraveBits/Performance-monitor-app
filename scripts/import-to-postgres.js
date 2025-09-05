// import-to-postgres.js
// Script to import data from JSON files to PostgreSQL
const { PrismaClient: PostgresPrismaClient } = require('@prisma/client');
const fs = require('fs');
const path = require('path');

// Initialize PostgreSQL client
const postgresClient = new PostgresPrismaClient();

async function importDataToPostgres() {
  console.log('🔍 Importing data to PostgreSQL database...');
  
  try {
    // Check if export files exist
    const exportDir = path.join(__dirname, '../prisma/export');
    const requiredFiles = ['products.json', 'measurements.json', 'jobs.json', 'configs.json'];
    
    for (const file of requiredFiles) {
      if (!fs.existsSync(path.join(exportDir, file))) {
        throw new Error(`Export file ${file} not found. Please run the export script first.`);
      }
    }
    
    // Read data from JSON files
    const products = JSON.parse(fs.readFileSync(path.join(exportDir, 'products.json'), 'utf8'));
    const measurements = JSON.parse(fs.readFileSync(path.join(exportDir, 'measurements.json'), 'utf8'));
    const jobs = JSON.parse(fs.readFileSync(path.join(exportDir, 'jobs.json'), 'utf8'));
    const configs = JSON.parse(fs.readFileSync(path.join(exportDir, 'configs.json'), 'utf8'));
    
    console.log(`📦 Loaded data: ${products.length} products, ${measurements.length} measurements, ${jobs.length} jobs, ${configs.length} configs`);
    
    // Clear existing data if needed
    console.log('🗑️ Clearing existing data...');
    await postgresClient.$transaction([
      postgresClient.performanceMeasurement.deleteMany({}),
      postgresClient.measurementJob.deleteMany({}),
      postgresClient.systemConfig.deleteMany({}),
      postgresClient.product.deleteMany({})
    ]);
    
    // Parse dates in the data
    const parseData = (data) => {
      return data.map(item => {
        const newItem = { ...item };
        
        // Convert date strings to Date objects
        for (const key in newItem) {
          if (typeof newItem[key] === 'string' && (
            key === 'createdAt' || 
            key === 'updatedAt' || 
            key === 'measurementDate' || 
            key === 'scheduledAt' || 
            key === 'startedAt' || 
            key === 'completedAt'
          )) {
            newItem[key] = new Date(newItem[key]);
          }
        }
        
        return newItem;
      });
    };
    
    // Parse dates in all data
    const parsedProducts = parseData(products);
    const parsedMeasurements = parseData(measurements);
    const parsedJobs = parseData(jobs);
    const parsedConfigs = parseData(configs);
    
    // Import data
    console.log('📥 Importing products...');
    for (const product of parsedProducts) {
      await postgresClient.product.create({ data: product });
    }
    
    console.log('📥 Importing system configs...');
    for (const config of parsedConfigs) {
      await postgresClient.systemConfig.create({ data: config });
    }
    
    console.log('📥 Importing measurement jobs...');
    for (const job of parsedJobs) {
      await postgresClient.measurementJob.create({ data: job });
    }
    
    console.log('📥 Importing performance measurements...');
    // Import measurements in batches to avoid memory issues
    const batchSize = 100;
    for (let i = 0; i < parsedMeasurements.length; i += batchSize) {
      const batch = parsedMeasurements.slice(i, i + batchSize);
      await Promise.all(batch.map(measurement => 
        postgresClient.performanceMeasurement.create({ data: measurement })
      ));
      console.log(`📊 Imported measurements ${i + 1} to ${Math.min(i + batchSize, parsedMeasurements.length)} of ${parsedMeasurements.length}`);
    }
    
    // Verify data import
    const productCount = await postgresClient.product.count();
    const measurementCount = await postgresClient.performanceMeasurement.count();
    const jobCount = await postgresClient.measurementJob.count();
    const configCount = await postgresClient.systemConfig.count();
    
    console.log('\n✅ Data import completed!');
    console.log('📊 Import summary:');
    console.log(`   - Products: ${productCount} (expected: ${products.length})`);
    console.log(`   - Measurements: ${measurementCount} (expected: ${measurements.length})`);
    console.log(`   - Jobs: ${jobCount} (expected: ${jobs.length})`);
    console.log(`   - Configs: ${configCount} (expected: ${configs.length})`);
    
    if (
      productCount !== products.length ||
      measurementCount !== measurements.length ||
      jobCount !== jobs.length ||
      configCount !== configs.length
    ) {
      console.warn('⚠️ Warning: Some data may not have been imported correctly.');
    }
    
  } catch (error) {
    console.error('❌ Error importing data:', error);
    throw error;
  }
}

// Main function
async function main() {
  try {
    console.log('🚀 Starting data import to PostgreSQL...');
    await importDataToPostgres();
    console.log('✅ Import completed successfully!');
  } catch (error) {
    console.error('❌ Import failed:', error);
    process.exit(1);
  } finally {
    await postgresClient.$disconnect();
  }
}

// Run the import if this script is executed directly
if (require.main === module) {
  main();
}

module.exports = { importDataToPostgres };
