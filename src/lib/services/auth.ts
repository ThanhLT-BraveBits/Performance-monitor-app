/**
 * Service xử lý authentication và authorization
 * Cung cấp các hàm để tạo và xác thực token
 */
import { logger } from '../utils/logger';

// Logger cho module này
const authLogger = logger.createModuleLogger('AuthService');

/**
 * Lớp xử lý authentication và authorization
 */
export class AuthService {
  private cronSecret: string;

  constructor() {
    this.cronSecret = process.env.CRON_SECRET || '';
    
    if (!this.cronSecret) {
      authLogger.warn('CRON_SECRET not configured, authentication will fail');
    }
  }

  /**
   * Xác thực token cho cron job
   * @param token - Token cần xác thực
   * @returns true nếu token hợp lệ, false nếu không
   */
  verifyCronToken(token: string): boolean {
    if (!this.cronSecret) {
      authLogger.error('CRON_SECRET not configured');
      return false;
    }

    return token === this.cronSecret;
  }

  /**
   * Tạo token tạm thời cho frontend với thời hạn ngắn
   * @param expiresInSeconds - Thời gian hết hạn tính bằng giây (mặc định 5 phút)
   * @returns Token tạm thời
   */
  createTemporaryToken(expiresInSeconds: number = 300): string {
    // Trong thực tế, bạn nên sử dụng một thư viện như jsonwebtoken
    // để tạo JWT token với thời hạn
    
    // Đây là một cách đơn giản để tạo token tạm thời
    const expiresAt = Date.now() + expiresInSeconds * 1000;
    const payload = {
      exp: expiresAt,
      type: 'temporary',
      // Thêm các thông tin khác nếu cần
    };
    
    // Trong thực tế, bạn nên ký (sign) payload này với một secret key
    const token = Buffer.from(JSON.stringify(payload)).toString('base64');
    
    return token;
  }

  /**
   * Xác thực token tạm thời
   * @param token - Token cần xác thực
   * @returns true nếu token hợp lệ và chưa hết hạn, false nếu không
   */
  verifyTemporaryToken(token: string): boolean {
    try {
      const payload = JSON.parse(Buffer.from(token, 'base64').toString());
      
      // Kiểm tra thời hạn
      if (payload.exp && payload.exp > Date.now()) {
        return true;
      }
      
      authLogger.warn('Token expired');
      return false;
    } catch (error) {
      authLogger.error('Invalid token format', error);
      return false;
    }
  }
}

// Singleton instance
let authService: AuthService | null = null;

/**
 * Lấy instance của AuthService
 * @returns AuthService instance
 */
export function getAuthService(): AuthService {
  if (!authService) {
    authService = new AuthService();
  }
  return authService;
}

