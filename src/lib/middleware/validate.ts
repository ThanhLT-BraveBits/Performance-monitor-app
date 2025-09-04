/**
 * Middleware để validate request data
 * Sử dụng với Next.js API routes để đảm bảo dữ liệu đầu vào hợp lệ
 */
import { NextRequest, NextResponse } from 'next/server';
import { z } from 'zod';
import { extractValidationErrors } from '../validation/schemas';

/**
 * Middleware để validate request body
 * @param request - NextRequest object
 * @param schema - Zod schema để validate
 * @returns Dữ liệu đã validate hoặc NextResponse với lỗi validation
 */
export async function validateBody<T>(
  request: NextRequest,
  schema: z.ZodType<T>
): Promise<{ data: T } | NextResponse> {
  try {
    const body = await request.json();
    const result = schema.safeParse(body);

    if (!result.success) {
      return NextResponse.json(
        {
          success: false,
          error: 'Validation failed',
          details: extractValidationErrors(result.error)
        },
        { status: 400 }
      );
    }

    return { data: result.data };
  } catch (error) {
    return NextResponse.json(
      {
        success: false,
        error: 'Invalid JSON in request body'
      },
      { status: 400 }
    );
  }
}

/**
 * Middleware để validate query parameters
 * @param request - NextRequest object
 * @param schema - Zod schema để validate
 * @returns Dữ liệu đã validate hoặc NextResponse với lỗi validation
 */
export function validateQuery<T>(
  request: NextRequest,
  schema: z.ZodType<T>
): { data: T } | NextResponse {
  try {
    // Chuyển đổi URLSearchParams thành plain object
    const searchParams = request.nextUrl.searchParams;
    const queryObject: Record<string, string | string[]> = {};

    searchParams.forEach((value, key) => {
      // Xử lý các array params (param[]=value1&param[]=value2)
      if (key.endsWith('[]')) {
        const arrayKey = key.slice(0, -2);
        if (!queryObject[arrayKey]) {
          queryObject[arrayKey] = [];
        }
        (queryObject[arrayKey] as string[]).push(value);
      } else {
        queryObject[key] = value;
      }
    });

    const result = schema.safeParse(queryObject);

    if (!result.success) {
      return NextResponse.json(
        {
          success: false,
          error: 'Invalid query parameters',
          details: extractValidationErrors(result.error)
        },
        { status: 400 }
      );
    }

    return { data: result.data };
  } catch (error) {
    return NextResponse.json(
      {
        success: false,
        error: 'Error parsing query parameters'
      },
      { status: 400 }
    );
  }
}

