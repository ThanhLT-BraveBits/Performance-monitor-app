/**
 * Interface cho các performance data providers
 * Định nghĩa một contract chung cho tất cả các providers
 */
import { DeviceType } from '@prisma/client';
import { PerformanceMetrics } from '@/lib/types';

/**
 * Interface cho các performance data provider
 * Các providers như Google PageSpeed, Lighthouse, etc. sẽ implement interface này
 */
export interface PerformanceProvider {
  /**
   * Tên của provider
   */
  readonly name: string;
  
  /**
   * Đo lường hiệu suất cho một URL
   * @param url - URL cần đo lường
   * @param deviceType - Loại thiết bị (desktop/mobile)
   * @returns Promise với kết quả đo lường
   */
  measurePerformance(url: string, deviceType: DeviceType): Promise<PerformanceMetrics>;
  
  /**
   * Đo lường hiệu suất cho một URL trên cả desktop và mobile
   * @param url - URL cần đo lường
   * @returns Promise với kết quả đo lường cho cả desktop và mobile
   */
  measureBothDevices(url: string): Promise<{
    desktop: PerformanceMetrics;
    mobile: PerformanceMetrics;
  }>;
  
  /**
   * Kiểm tra xem provider có sẵn sàng để sử dụng không
   * @returns true nếu provider sẵn sàng, false nếu không
   */
  isAvailable(): boolean;
  
  /**
   * Lấy thông tin về quota/giới hạn của provider
   * @returns Thông tin về quota còn lại và thời gian reset
   */
  getQuotaInfo(): Promise<{
    remainingQuota?: number;
    resetTime?: Date;
  }>;
}

/**
 * Enum định nghĩa các loại provider được hỗ trợ
 */
export enum PerformanceProviderType {
  GOOGLE_PAGESPEED = 'google_pagespeed',
  LIGHTHOUSE = 'lighthouse'
}

/**
 * Factory function để tạo instance của provider dựa trên type
 * @param type - Loại provider cần tạo
 * @returns Instance của provider
 */
export function createPerformanceProvider(type: PerformanceProviderType): PerformanceProvider {
  // Sẽ được implement trong các file khác
  throw new Error(`Provider type ${type} is not implemented yet`);
}

/**
 * Lấy provider mặc định dựa trên cấu hình
 * @returns Provider mặc định
 */
export function getDefaultProvider(): PerformanceProvider {
  // Sẽ được implement trong các file khác
  throw new Error('Default provider is not implemented yet');
}

