/**
 * Utilities xử lý thời gian với hỗ trợ múi giờ Việt Nam
 * Cung cấp các hàm định dạng thời gian và tính toán thời gian tương đối
 */
import { format, formatInTimeZone, toZonedTime as tzToZonedTime } from 'date-fns-tz';
import { differenceInHours, differenceInDays, isValid } from 'date-fns';

// Định nghĩa các múi giờ hỗ trợ
export const TIMEZONES = {
  VIETNAM: 'Asia/Ho_Chi_Minh',
  UTC: 'UTC'
};

// Múi giờ mặc định của ứng dụng
export const DEFAULT_TIMEZONE = TIMEZONES.VIETNAM;

/**
 * Chuyển đổi thời gian sang múi giờ cụ thể
 * @param date - Thời gian cần chuyển đổi
 * @param timezone - Múi giờ đích (mặc định là Việt Nam)
 * @returns Date object đã được chuyển đổi sang múi giờ chỉ định
 */
export function toZonedTime(date: string | Date, timezone: string = DEFAULT_TIMEZONE): Date {
  try {
    const dateObject = new Date(date);
    if (!isValid(dateObject)) throw new Error('Invalid date');
    
    return tzToZonedTime(dateObject, timezone);
  } catch (error) {
    console.error('Error converting to zoned time:', error);
    return new Date(); // Fallback to current time
  }
}

/**
 * Định dạng thời gian theo múi giờ cụ thể
 * @param date - Thời gian cần định dạng
 * @param formatStr - Định dạng mong muốn
 * @param timezone - Múi giờ (mặc định là Việt Nam)
 * @returns Chuỗi thời gian đã định dạng
 */
export function formatDateInTimezone(
  date: string | Date,
  formatStr: string,
  timezone: string = DEFAULT_TIMEZONE
): string {
  try {
    const dateObject = new Date(date);
    if (!isValid(dateObject)) return 'Ngày không hợp lệ';
    
    return formatInTimeZone(dateObject, timezone, formatStr);
  } catch (error) {
    return 'Ngày không hợp lệ';
  }
}

/**
 * Định dạng thời gian đầy đủ theo múi giờ Việt Nam
 * @param date - Thời gian cần định dạng
 * @returns Chuỗi thời gian đã định dạng, ví dụ: "2023-06-15 14:30:45 (GMT+7)"
 */
export function formatMeasurementDate(date: string | Date): string {
  try {
    if (!date) return 'Ngày không hợp lệ';
    
    const dateObject = typeof date === 'string' ? new Date(date) : date;
    if (isNaN(dateObject.getTime())) return 'Ngày không hợp lệ';
    
    return formatDateInTimezone(dateObject, 'yyyy-MM-dd HH:mm:ss') + ' (GMT+7)';
  } catch (error) {
    return 'Ngày không hợp lệ';
  }
}

/**
 * Định dạng ngày tháng theo múi giờ Việt Nam
 * @param date - Thời gian cần định dạng
 * @returns Chuỗi ngày tháng, ví dụ: "2023-06-15"
 */
export function formatShortDate(date: string | Date): string {
  try {
    if (!date) return 'Ngày không hợp lệ';
    
    const dateObject = typeof date === 'string' ? new Date(date) : date;
    if (isNaN(dateObject.getTime())) return 'Ngày không hợp lệ';
    
    return formatDateInTimezone(dateObject, 'yyyy-MM-dd');
  } catch (error) {
    return 'Ngày không hợp lệ';
  }
}

/**
 * Hiển thị thời gian tương đối (so với hiện tại) bằng tiếng Việt
 * @param date - Thời gian cần so sánh
 * @returns Chuỗi thời gian tương đối, ví dụ: "5 giờ trước", "2 ngày trước"
 */
export function formatRelativeTime(date: string | Date): string {
  try {
    if (!date) return 'Ngày không hợp lệ';
    
    // Chuyển đổi cả hai thời điểm sang cùng múi giờ để so sánh chính xác
    const vietnamDate = toZonedTime(date);
    const vietnamNow = toZonedTime(new Date());
    
    // Tính khoảng thời gian chính xác bằng date-fns
    const diffHours = differenceInHours(vietnamNow, vietnamDate);
    
    if (diffHours < 1) return 'Vừa xong';
    if (diffHours < 24) return `${diffHours} giờ trước`;
    
    const diffDays = differenceInDays(vietnamNow, vietnamDate);
    return `${diffDays} ngày trước`;
  } catch (error) {
    return 'Ngày không hợp lệ';
  }
}

/**
 * Kiểm tra xem một giá trị có phải là ngày hợp lệ không
 * @param date - Giá trị cần kiểm tra
 * @returns true nếu là ngày hợp lệ, false nếu không
 */
export function isValidDate(date: any): boolean {
  if (!date) return false;
  
  try {
    const dateObject = new Date(date);
    return isValid(dateObject);
  } catch {
    return false;
  }
}

/**
 * Lấy ngày hiện tại theo múi giờ Việt Nam
 * @returns Đối tượng Date đại diện cho thời gian hiện tại ở Việt Nam
 */
export function getCurrentVietnamDate(): Date {
  return toZonedTime(new Date(), DEFAULT_TIMEZONE);
}