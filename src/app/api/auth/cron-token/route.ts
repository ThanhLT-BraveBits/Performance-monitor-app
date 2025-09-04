/**
 * API endpoint để lấy token tạm thời cho cron job
 * Được sử dụng bởi frontend để lấy token cho các thao tác thủ công
 */
import { NextRequest, NextResponse } from 'next/server';
import { getAuthService } from '@/lib/services/auth';
import { logger } from '@/lib/utils/logger';

// Logger cho endpoint này
const apiLogger = logger.createModuleLogger('API:CronToken');

/**
 * GET endpoint để lấy token tạm thời
 * Token này chỉ có hiệu lực trong thời gian ngắn (5 phút)
 */
export async function GET(request: NextRequest) {
  try {
    // Trong thực tế, bạn nên thêm xác thực người dùng ở đây
    // để đảm bảo chỉ người dùng đã đăng nhập mới có thể lấy token
    
    // Tạo token tạm thời
    const authService = getAuthService();
    const token = authService.createTemporaryToken();
    
    apiLogger.info('Temporary cron token created');
    
    return NextResponse.json({
      success: true,
      token,
      expiresIn: 300 // 5 phút
    });
  } catch (error) {
    apiLogger.error('Error creating temporary token', error);
    
    return NextResponse.json(
      {
        success: false,
        error: 'Failed to create token'
      },
      { status: 500 }
    );
  }
}

