/**
 * Các hằng số và cấu hình được sử dụng trong toàn bộ ứng dụng
 * Tập trung các giá trị cố định để dễ dàng quản lý và thay đổi
 */

/**
 * Các API endpoints
 */
export const API_ENDPOINTS = {
  MEASUREMENTS: '/api/measurements',
  CRON_MEASUREMENTS: '/api/cron/measurements',
  PRODUCTS: '/api/products',
  EXPORT: '/api/export',
  DASHBOARD: '/api/dashboard',
  HEALTH: '/api/health'
};

/**
 * Các đường dẫn trong ứng dụng
 */
export const APP_ROUTES = {
  HOME: '/',
  DASHBOARD: '/dashboard',
  PRODUCTS: '/dashboard/products',
  EXPORT: '/dashboard/export',
  SETTINGS: '/dashboard/settings'
};

/**
 * Các giá trị cấu hình chung
 */
export const APP_CONFIG = {
  APP_NAME: 'Shopify Performance Monitor',
  VERSION: '1.0.0',
  DEFAULT_BATCH_SIZE: 3,
  DEFAULT_RATE_LIMIT_DELAY: 10000, // 10 seconds
  DEFAULT_MAX_RETRIES: 3
};

/**
 * Các giá trị liên quan đến API keys và secrets
 * Lưu ý: Không hardcode các giá trị nhạy cảm ở đây
 * Sử dụng process.env để lấy từ biến môi trường
 */
export const API_KEYS = {
  // Sử dụng biến môi trường cho CRON_SECRET thay vì hardcode
  getCronSecret: () => process.env.CRON_SECRET || '',
  
  // Tạo token tạm thời cho frontend với thời hạn ngắn
  getTemporaryCronToken: async () => {
    // Trong thực tế, đây sẽ là một API call để lấy token tạm thời
    // với thời hạn ngắn từ server
    return process.env.NEXT_PUBLIC_TEMPORARY_CRON_TOKEN || '';
  }
};

/**
 * Các giá trị liên quan đến cơ sở dữ liệu
 */
export const DATABASE_CONFIG = {
  DEFAULT_PAGE_SIZE: 20,
  MAX_PAGE_SIZE: 100,
  CONNECTION_RETRY_ATTEMPTS: 3,
  CONNECTION_RETRY_DELAY: 2000 // 2 seconds
};

/**
 * Các giá trị liên quan đến PageSpeed API
 */
export const PAGESPEED_CONFIG = {
  BASE_URL: 'https://www.googleapis.com/pagespeedonline/v5/runPagespeed',
  RATE_LIMIT_DELAY: 10000, // 10 seconds
  MAX_RETRIES: 3,
  RETRY_DELAY_BASE: 5000, // 5 seconds
  USER_AGENT: 'Shopify-Performance-Monitor/1.0'
};

