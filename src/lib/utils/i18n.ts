/**
 * Hệ thống đa ngôn ngữ đơn giản
 * Hỗ trợ tiếng Việt và tiếng Anh cho các thông báo trong ứng dụng
 */
import i18next from 'i18next';

// Định nghĩa các ngôn ngữ được hỗ trợ
export const SUPPORTED_LANGUAGES = ['vi', 'en'] as const;
export type SupportedLanguage = typeof SUPPORTED_LANGUAGES[number];

// Ngôn ngữ mặc định
export const DEFAULT_LANGUAGE: SupportedLanguage = 'vi';

// Định nghĩa namespace cho các loại messages
export const NAMESPACES = {
  COMMON: 'common',
  DATE: 'date',
  ERROR: 'error',
  VALIDATION: 'validation'
} as const;

// Định nghĩa các messages theo ngôn ngữ và namespace
const resources = {
  vi: {
    [NAMESPACES.COMMON]: {
      appName: 'Shopify Performance Monitor',
      dashboard: 'Bảng điều khiển',
      settings: 'Cài đặt',
      products: 'Sản phẩm',
      measurements: 'Đo lường',
      export: 'Xuất dữ liệu'
    },
    [NAMESPACES.DATE]: {
      invalidDate: 'Ngày không hợp lệ',
      justNow: 'Vừa xong',
      hoursAgo: '{{count}} giờ trước',
      daysAgo: '{{count}} ngày trước',
      dateFormat: 'DD/MM/YYYY',
      dateTimeFormat: 'DD/MM/YYYY HH:mm:ss',
      timezone: '(GMT+7)'
    },
    [NAMESPACES.ERROR]: {
      generalError: 'Đã xảy ra lỗi',
      notFound: 'Không tìm thấy',
      unauthorized: 'Không có quyền truy cập',
      connectionError: 'Lỗi kết nối',
      apiError: 'Lỗi API',
      databaseError: 'Lỗi cơ sở dữ liệu'
    },
    [NAMESPACES.VALIDATION]: {
      required: '{{field}} là bắt buộc',
      invalidUrl: 'URL không hợp lệ',
      invalidEmail: 'Email không hợp lệ',
      minLength: '{{field}} phải có ít nhất {{min}} ký tự',
      maxLength: '{{field}} không được vượt quá {{max}} ký tự'
    }
  },
  en: {
    [NAMESPACES.COMMON]: {
      appName: 'Shopify Performance Monitor',
      dashboard: 'Dashboard',
      settings: 'Settings',
      products: 'Products',
      measurements: 'Measurements',
      export: 'Export Data'
    },
    [NAMESPACES.DATE]: {
      invalidDate: 'Invalid date',
      justNow: 'Just now',
      hoursAgo: '{{count}} hour ago',
      hoursAgo_plural: '{{count}} hours ago',
      daysAgo: '{{count}} day ago',
      daysAgo_plural: '{{count}} days ago',
      dateFormat: 'MM/DD/YYYY',
      dateTimeFormat: 'MM/DD/YYYY HH:mm:ss',
      timezone: '(GMT+7)'
    },
    [NAMESPACES.ERROR]: {
      generalError: 'An error occurred',
      notFound: 'Not found',
      unauthorized: 'Unauthorized',
      connectionError: 'Connection error',
      apiError: 'API error',
      databaseError: 'Database error'
    },
    [NAMESPACES.VALIDATION]: {
      required: '{{field}} is required',
      invalidUrl: 'Invalid URL',
      invalidEmail: 'Invalid email',
      minLength: '{{field}} must be at least {{min}} characters',
      maxLength: '{{field}} must not exceed {{max}} characters'
    }
  }
};

// Khởi tạo i18next
i18next.init({
  resources,
  lng: DEFAULT_LANGUAGE,
  fallbackLng: 'en',
  interpolation: {
    escapeValue: false // Không escape các giá trị khi sử dụng với React
  },
  defaultNS: NAMESPACES.COMMON
});

/**
 * Hàm dịch một key theo ngôn ngữ hiện tại
 * @param key - Khóa cần dịch (có thể bao gồm namespace, ví dụ: 'date:invalidDate')
 * @param options - Các tùy chọn bổ sung (thay thế biến, số nhiều, etc.)
 * @returns Chuỗi đã được dịch
 */
export function t(key: string, options?: any): string {
  return i18next.t(key, options) as string;
}

/**
 * Đổi ngôn ngữ hiện tại
 * @param language - Ngôn ngữ cần chuyển đổi
 * @returns Promise resolved khi hoàn tất chuyển đổi
 */
export function changeLanguage(language: SupportedLanguage): Promise<typeof i18next> {
  return i18next.changeLanguage(language).then(() => i18next);
}

/**
 * Lấy ngôn ngữ hiện tại
 * @returns Mã ngôn ngữ hiện tại
 */
export function getCurrentLanguage(): string {
  return i18next.language;
}

// Export i18next instance để sử dụng với các thư viện khác nếu cần
export { i18next };

