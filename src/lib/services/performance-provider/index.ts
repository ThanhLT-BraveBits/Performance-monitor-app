/**
 * Entry point cho performance providers
 * Export các providers và factory function
 */
import { PerformanceProvider, PerformanceProviderType } from './performance-provider.interface';
import { GooglePageSpeedProvider } from './google-pagespeed.provider';
import { logger } from '@/lib/utils/logger';

// Logger cho module này
const providerLogger = logger.createModuleLogger('PerformanceProviders');

// Singleton instances
let googlePageSpeedProvider: GooglePageSpeedProvider | null = null;

/**
 * Factory function để tạo instance của provider dựa trên type
 * @param type - Loại provider cần tạo
 * @returns Instance của provider
 */
export function createPerformanceProvider(type: PerformanceProviderType): PerformanceProvider {
  switch (type) {
    case PerformanceProviderType.GOOGLE_PAGESPEED:
      if (!googlePageSpeedProvider) {
        googlePageSpeedProvider = new GooglePageSpeedProvider();
      }
      return googlePageSpeedProvider;
    
    // Thêm các providers khác ở đây khi cần
    
    default:
      providerLogger.error(`Unknown provider type: ${type}`);
      throw new Error(`Provider type ${type} is not implemented yet`);
  }
}

/**
 * Lấy provider mặc định dựa trên cấu hình
 * @returns Provider mặc định
 */
export function getDefaultProvider(): PerformanceProvider {
  // Mặc định sử dụng Google PageSpeed
  return createPerformanceProvider(PerformanceProviderType.GOOGLE_PAGESPEED);
}

// Re-export
export * from './performance-provider.interface';
export * from './google-pagespeed.provider';

