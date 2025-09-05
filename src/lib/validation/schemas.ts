/**
 * Định nghĩa các schema validation cho API requests
 * Sử dụng Zod để đảm bảo tính toàn vẹn dữ liệu và cung cấp error messages rõ ràng
 */
import { z } from 'zod';
import { DeviceType } from '@prisma/client';
import { t } from '../utils/i18n';

// Helper để tạo error map với i18n
const createErrorMap = (): z.ZodErrorMap => {
  return (issue: z.ZodIssue, ctx: z.ErrorMapCtx) => {
    let message: string;

    switch (issue.code) {
      case z.ZodIssueCode.invalid_type:
        if (issue.received === 'undefined' || issue.received === 'null') {
          message = t('validation:required', { field: ctx.data });
        } else {
          message = t('validation:invalidType', { 
            field: ctx.data, 
            expected: issue.expected, 
            received: issue.received 
          });
        }
        break;
      
      case z.ZodIssueCode.invalid_string:
        if (issue.validation === 'url') {
          message = t('validation:invalidUrl');
        } else if (issue.validation === 'email') {
          message = t('validation:invalidEmail');
        } else {
          message = t('validation:invalidString', { field: ctx.data });
        }
        break;
        
      case z.ZodIssueCode.too_small:
        message = t('validation:minLength', { 
          field: ctx.data, 
          min: issue.minimum 
        });
        break;
        
      case z.ZodIssueCode.too_big:
        message = t('validation:maxLength', { 
          field: ctx.data, 
          max: issue.maximum 
        });
        break;
        
      default:
        message = ctx.defaultError;
    }

    return { message };
  };
};

// Cấu hình Zod với error map tùy chỉnh
z.setErrorMap(createErrorMap());

// Schema cho URL hợp lệ
export const urlSchema = z.string().url().min(5).max(500);

// Schema cho ID hợp lệ
export const idSchema = z.string().min(1).max(100);

// Schema cho DeviceType
export const deviceTypeSchema = z.enum([DeviceType.DESKTOP, DeviceType.MOBILE]);

// Schema cho MeasurementRequest
export const measurementRequestSchema = z.object({
  productId: idSchema.describe('Product ID'),
  deviceType: deviceTypeSchema.optional().describe('Device Type')
});

// Schema cho DateRange
export const dateRangeSchema = z.object({
  from: z.string().or(z.date()).describe('Start Date'),
  to: z.string().or(z.date()).describe('End Date')
});

// Schema cho ExportRequest
export const exportRequestSchema = z.object({
  productIds: z.array(idSchema).optional().describe('Product IDs'),
  dateFrom: z.string().optional().describe('Start Date'),
  dateTo: z.string().optional().describe('End Date'),
  deviceTypes: z.array(deviceTypeSchema).optional().describe('Device Types'),
  format: z.enum(['csv', 'json']).describe('Export Format')
});

// Schema cho Product
export const productSchema = z.object({
  name: z.string().min(2).max(100).describe('Product Name'),
  url: urlSchema.describe('Product URL'),
  description: z.string().max(500).optional().describe('Description'),
  isActive: z.boolean().default(true).describe('Active Status')
});

/**
 * Validate một request body với schema cụ thể
 * @param data - Dữ liệu cần validate
 * @param schema - Schema validation
 * @returns Kết quả validation (success hoặc error)
 */
export function validateRequest<T>(data: unknown, schema: z.ZodType<T>) {
  return schema.safeParse(data);
}

/**
 * Trích xuất error messages từ kết quả validation
 * @param result - Kết quả validation thất bại
 * @returns Object chứa các error messages
 */
export function extractValidationErrors(result: z.SafeParseError<any>) {
  return result.error.format();
}

