import { NextRequest, NextResponse } from 'next/server';
import { getDatabaseService } from '@/lib/services/database';
import { PageSpeedService } from '@/lib/services/pagespeed';

// Verify cron secret to prevent unauthorized access
function verifyCronSecret(request: NextRequest): boolean {
  const authHeader = request.headers.get('authorization');
  const cronSecret = process.env.CRON_SECRET;
  
  if (!cronSecret) {
    console.error('CRON_SECRET not configured');
    return false;
  }

  if (!authHeader || !authHeader.startsWith('Bearer ')) {
    console.error('Missing or invalid authorization header');
    return false;
  }

  const token = authHeader.substring(7);
  return token === cronSecret;
}

export async function POST(request: NextRequest) {
  try {
    // Verify authentication
    if (!verifyCronSecret(request)) {
      return NextResponse.json(
        { error: 'Unauthorized' },
        { status: 401 }
      );
    }

    console.log('🕐 Starting automated performance measurements...');
    const startTime = Date.now();

    const databaseService = getDatabaseService();
    const pageSpeedService = new PageSpeedService();

    // Get all active products
    const products = await databaseService.getActiveProducts();
    console.log(`📊 Found ${products.length} active products to measure`);

    if (products.length === 0) {
      return NextResponse.json({
        success: true,
        message: 'No active products to measure',
        results: []
      });
    }

    const results = [];
    const deviceTypes = ['DESKTOP', 'MOBILE'] as const;
    
    // Process measurements with rate limiting
    for (const product of products) {
      console.log(`🔍 Measuring ${product.name}...`);
      
      for (const deviceType of deviceTypes) {
        try {
          // Add delay to respect API rate limits
          if (results.length > 0) {
            await new Promise(resolve => setTimeout(resolve, 2000)); // 2 second delay
          }

          const measurement = await pageSpeedService.measurePerformance(
            product.url,
            deviceType
          );

          // Save to database
          const savedMeasurement = await databaseService.createMeasurement({
            productId: product.id,
            deviceType,
            performanceScore: measurement.performanceScore,
            fcp: measurement.fcp,
            lcp: measurement.lcp,
            cls: measurement.cls,
            fid: measurement.fid,
            ttfb: measurement.ttfb,
            speedIndex: measurement.speedIndex,
            tbt: measurement.tbt,
            opportunity: null, // PageSpeed service doesn't return this
            diagnostics: null, // PageSpeed service doesn't return this
            measurementDate: new Date()
          });

          results.push({
            product: product.name,
            deviceType,
            score: measurement.performanceScore,
            success: true,
            measurementId: savedMeasurement.id
          });

          console.log(`✅ ${product.name} (${deviceType}): Score ${measurement.performanceScore}`);

        } catch (error) {
          console.error(`❌ Failed to measure ${product.name} (${deviceType}):`, error);
          results.push({
            product: product.name,
            deviceType,
            success: false,
            error: error instanceof Error ? error.message : 'Unknown error'
          });
        }
      }
    }

    const duration = Date.now() - startTime;
    const successCount = results.filter(r => r.success).length;
    const failureCount = results.filter(r => !r.success).length;

    console.log(`🎉 Cron job completed in ${Math.round(duration / 1000)}s`);
    console.log(`📈 Success: ${successCount}, Failed: ${failureCount}`);

    // Log summary to database (optional)
    try {
      await databaseService.setConfig('last_cron_run', new Date().toISOString());
      await databaseService.setConfig('last_cron_results', JSON.stringify({
        totalProducts: products.length,
        successCount,
        failureCount,
        duration,
        timestamp: new Date().toISOString()
      }));
    } catch (configError) {
      console.warn('Failed to save cron run summary:', configError);
    }

    return NextResponse.json({
      success: true,
      message: `Processed ${products.length} products`,
      results,
      summary: {
        totalProducts: products.length,
        totalMeasurements: results.length,
        successCount,
        failureCount,
        duration: `${Math.round(duration / 1000)}s`
      }
    });

  } catch (error) {
    console.error('❌ Cron job failed:', error);
    return NextResponse.json(
      {
        success: false,
        error: error instanceof Error ? error.message : 'Internal server error'
      },
      { status: 500 }
    );
  }
}

// GET endpoint for testing cron job status
export async function GET(request: NextRequest) {
  try {
    if (!verifyCronSecret(request)) {
      return NextResponse.json(
        { error: 'Unauthorized' },
        { status: 401 }
      );
    }

    const databaseService = getDatabaseService();
    
    // Get last run information
    const lastRun = await databaseService.getConfig('last_cron_run');
    const lastResults = await databaseService.getConfig('last_cron_results');
    
    return NextResponse.json({
      success: true,
      lastRun: lastRun ? new Date(lastRun) : null,
      lastResults: lastResults ? JSON.parse(lastResults) : null,
      status: 'Cron job endpoint is active'
    });

  } catch (error) {
    console.error('Error checking cron status:', error);
    return NextResponse.json(
      {
        success: false,
        error: error instanceof Error ? error.message : 'Internal server error'
      },
      { status: 500 }
    );
  }
}
