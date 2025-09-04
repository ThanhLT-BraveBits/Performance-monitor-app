/**
 * Hệ thống logging cấu hình được với các level khác nhau
 * Thay thế cho console.log để có kiểm soát tốt hơn trong production
 */

export enum LogLevel {
  DEBUG = 0,
  INFO = 1,
  WARN = 2,
  ERROR = 3,
  NONE = 4
}

// Cấu hình mặc định: hiển thị tất cả logs trong development, chỉ hiển thị warnings và errors trong production
const DEFAULT_LOG_LEVEL = process.env.NODE_ENV === 'production' ? LogLevel.WARN : LogLevel.DEBUG;

// Cho phép override thông qua biến môi trường
const CURRENT_LOG_LEVEL = Number(process.env.LOG_LEVEL) || DEFAULT_LOG_LEVEL;

// Các màu sắc cho console
const COLORS = {
  debug: '\x1b[34m', // Blue
  info: '\x1b[32m',  // Green
  warn: '\x1b[33m',  // Yellow
  error: '\x1b[31m', // Red
  reset: '\x1b[0m'   // Reset
};

/**
 * Logger utility với các level khác nhau và định dạng nhất quán
 */
export const logger = {
  /**
   * Log debug message - chỉ hiển thị trong development hoặc khi được cấu hình
   * @param message - Thông điệp cần log
   * @param args - Các tham số bổ sung (objects, errors, etc.)
   */
  debug: (message: string, ...args: any[]): void => {
    if (CURRENT_LOG_LEVEL <= LogLevel.DEBUG) {
      const timestamp = new Date().toISOString();
      console.log(`${COLORS.debug}[DEBUG]${COLORS.reset} ${timestamp} - ${message}`, ...args);
    }
  },

  /**
   * Log thông tin chung - thường được hiển thị trong development và staging
   * @param message - Thông điệp cần log
   * @param args - Các tham số bổ sung
   */
  info: (message: string, ...args: any[]): void => {
    if (CURRENT_LOG_LEVEL <= LogLevel.INFO) {
      const timestamp = new Date().toISOString();
      console.log(`${COLORS.info}[INFO]${COLORS.reset} ${timestamp} - ${message}`, ...args);
    }
  },

  /**
   * Log cảnh báo - luôn được hiển thị trừ khi tắt logs hoàn toàn
   * @param message - Thông điệp cần log
   * @param args - Các tham số bổ sung
   */
  warn: (message: string, ...args: any[]): void => {
    if (CURRENT_LOG_LEVEL <= LogLevel.WARN) {
      const timestamp = new Date().toISOString();
      console.warn(`${COLORS.warn}[WARN]${COLORS.reset} ${timestamp} - ${message}`, ...args);
    }
  },

  /**
   * Log lỗi - luôn được hiển thị trừ khi tắt logs hoàn toàn
   * @param message - Thông điệp cần log
   * @param args - Các tham số bổ sung (thường là Error object)
   */
  error: (message: string, ...args: any[]): void => {
    if (CURRENT_LOG_LEVEL <= LogLevel.ERROR) {
      const timestamp = new Date().toISOString();
      console.error(`${COLORS.error}[ERROR]${COLORS.reset} ${timestamp} - ${message}`, ...args);
    }
  },

  /**
   * Tạo một logger với prefix cố định cho module cụ thể
   * @param module - Tên module
   * @returns Logger instance với prefix được cấu hình sẵn
   */
  createModuleLogger: (module: string) => {
    return {
      debug: (message: string, ...args: any[]) => 
        logger.debug(`[${module}] ${message}`, ...args),
      info: (message: string, ...args: any[]) => 
        logger.info(`[${module}] ${message}`, ...args),
      warn: (message: string, ...args: any[]) => 
        logger.warn(`[${module}] ${message}`, ...args),
      error: (message: string, ...args: any[]) => 
        logger.error(`[${module}] ${message}`, ...args)
    };
  }
};

// Ví dụ sử dụng:
// const moduleLogger = logger.createModuleLogger('PageSpeedService');
// moduleLogger.info('Service initialized');

