import { PrismaClient, DeviceType, JobStatus, Prisma } from '@prisma/client';
// import { withAccelerate } from '@prisma/extension-accelerate'; // Not needed for SQLite
import { 
  Product, 
  PerformanceMeasurement, 
  MeasurementJob, 
  PerformanceMetrics,
  ProductPerformanceData,
  DateRange 
} from '../types';

class DatabaseService {
  private prisma: any; // Use any type to handle extended Prisma client
  private isConnected = false;
  private connectionError: string | null = null;

  constructor() {
    try {
      console.log('🔍 DATABASE_URL check:', {
        exists: !!process.env.DATABASE_URL,
        value: process.env.DATABASE_URL ? 'SET' : 'NOT_SET',
        isFile: process.env.DATABASE_URL?.includes('file:') || false
      });
      
      // Initialize Prisma client for both PostgreSQL and SQLite
      if (process.env.DATABASE_URL) {
        console.log('🔌 Initializing Prisma client...');
        this.prisma = new PrismaClient({
          log: ['query', 'error', 'warn'],
        });
        
        // Test connection immediately
        this.testConnection();
      } else {
        console.log('⚠️ No DATABASE_URL found, using demo mode');
        this.isConnected = false;
        this.connectionError = 'No DATABASE_URL configured';
        this.prisma = null;
      }
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : 'Unknown database error';
      console.error('❌ Database initialization failed:', errorMessage);
      this.isConnected = false;
      this.connectionError = errorMessage;
      this.prisma = null;
    }
  }

  private async testConnection() {
    try {
      // Only test connection if we have a DATABASE_URL
      if (!process.env.DATABASE_URL) {
        console.log('⚠️ No DATABASE_URL found, using demo mode');
        this.isConnected = false;
        this.connectionError = 'No DATABASE_URL configured';
        return;
      }

      // Try connecting to the database
      try {
        await this.prisma.$connect();
        console.log('✅ Database connected successfully');
        this.isConnected = true;
        this.connectionError = null;
        return;
      } catch (primaryError) {
        console.error('❌ Primary database connection failed:', primaryError);
        
        // If the primary connection fails and it's a SQLite file path, try the alternative path
        if (process.env.DATABASE_URL?.includes('file:./prisma/dev.db')) {
          console.log('🔄 Trying alternative database path...');
          
          try {
            // Disconnect the failed client
            await this.prisma.$disconnect().catch(() => {});
            
            // Create a new client with the alternative path
            this.prisma = new PrismaClient({
              datasources: {
                db: {
                  url: 'file:./prisma/prisma/dev.db'
                }
              },
              log: ['query', 'error', 'warn'],
            });
            
            await this.prisma.$connect();
            console.log('✅ Connected to alternative database successfully');
            this.isConnected = true;
            this.connectionError = null;
            return;
          } catch (alternativeError) {
            console.error('❌ Alternative database connection also failed:', alternativeError);
            throw alternativeError; // Re-throw to be caught by the outer catch
          }
        } else {
          throw primaryError; // Re-throw to be caught by the outer catch
        }
      }
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : 'Unknown database error';
      console.error('❌ All database connection attempts failed:', errorMessage);
      this.isConnected = false;
      this.connectionError = errorMessage;
      
      // Fall back to demo mode
      console.log('🎭 Falling back to demo mode due to connection failures');
    }
  }

  private throwIfNotConnected() {
    if (!this.isConnected) {
      // In production, provide helpful error with fallback suggestions
      if (process.env.NODE_ENV === 'production') {
        throw new Error(`Production database not configured. Please set up DATABASE_URL environment variable with PostgreSQL connection string. Current error: ${this.connectionError}`);
      }
      throw new Error(`Database connection failed: ${this.connectionError || 'Unknown error'}`);
    }
  }

  // Production demo data when database is not available
  private getProductionDemoProducts(): Product[] {
    return [
      // Blum Theme
      { id: '1', name: 'Blum - Solie', url: 'https://blum-solie.myshopify.com/', description: 'Blum theme - Solie variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '2', name: 'Blum - Celia', url: 'https://blum-celia.myshopify.com/', description: 'Blum theme - Celia variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '3', name: 'Blum - Mondo', url: 'https://blum-mondo.myshopify.com/', description: 'Blum theme - Mondo variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '4', name: 'Blum - Crafts', url: 'https://blum-crafts.myshopify.com/', description: 'Blum theme - Crafts variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '5', name: 'Blum - Fuji', url: 'https://blum-fuji.myshopify.com/', description: 'Blum theme - Fuji variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      // Electro Theme
      { id: '6', name: 'Electro - Gizmo', url: 'https://electro-gizmo-demo.myshopify.com/', description: 'Electro theme - Gizmo variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '7', name: 'Electro - Audio', url: 'https://electro-audio-demo.myshopify.com/', description: 'Electro theme - Audio variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '8', name: 'Electro - Surveillance', url: 'https://electro-surveillance-demo.myshopify.com/', description: 'Electro theme - Surveillance variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '9', name: 'Electro - Skatewear', url: 'https://electro-skatewear.myshopify.com/', description: 'Electro theme - Skatewear variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      // Shine Theme
      { id: '10', name: 'Shine - Sophisticated', url: 'https://shine-sophisticated.myshopify.com/', description: 'Shine theme - Sophisticated variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '11', name: 'Shine - Energetic', url: 'https://shine-energetic.myshopify.com/', description: 'Shine theme - Energetic variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '12', name: 'Shine - Serene', url: 'https://shine-serene.myshopify.com/', description: 'Shine theme - Serene variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      // Normcore Theme
      { id: '13', name: 'Normcore - Elementary', url: 'https://normcore-elementary.myshopify.com/', description: 'Normcore theme - Elementary variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '14', name: 'Normcore - Fundamental', url: 'https://normcore-fundamental.myshopify.com/', description: 'Normcore theme - Fundamental variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '15', name: 'Normcore - Subtle', url: 'https://normcore-subtle.myshopify.com/', description: 'Normcore theme - Subtle variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '16', name: 'Normcore - Matte', url: 'https://normcore-matte.myshopify.com/', description: 'Normcore theme - Matte variant', isActive: true, createdAt: new Date(), updatedAt: new Date() },
      { id: '17', name: 'Normcore - Raw', url: 'https://normcore-raw.myshopify.com/', description: 'Normcore theme - Raw variant', isActive: true, createdAt: new Date(), updatedAt: new Date() }
    ];
  }

  // Database operations - all require connection

  // Product operations - with production demo fallback
  async getProducts(): Promise<Product[]> {
    if (!this.isConnected || !this.prisma) {
      console.log('🎭 Using demo data (database not available)');
      return this.getProductionDemoProducts();
    }
    
    const products = await this.prisma.product.findMany({
      orderBy: { name: 'asc' }
    });
    console.log('✅ Retrieved', products.length, 'products from database');
    return products;
  }

  async getActiveProducts(): Promise<Product[]> {
    if (!this.isConnected || !this.prisma) {
      console.log('🎭 Using demo data (database not available)');
      return this.getProductionDemoProducts().filter(p => p.isActive);
    }
    
    const products = await this.prisma.product.findMany({
      where: { isActive: true },
      orderBy: { name: 'asc' }
    });
    console.log('✅ Retrieved', products.length, 'active products from database');
    return products;
  }

  async getProductById(id: string): Promise<Product | null> {
    if (!this.isConnected || !this.prisma) {
      console.log('🎭 Using demo data for getProductById (database not available)');
      const demoProducts = this.getProductionDemoProducts();
      return demoProducts.find(p => p.id === id) || null;
    }
    
    return await this.prisma.product.findUnique({
      where: { id }
    });
  }

  async createProduct(data: {
    name: string;
    url: string;
    description?: string;
    isActive?: boolean;
  }): Promise<Product> {
    this.throwIfNotConnected();
    
    const product = await this.prisma.product.create({ data });
    console.log('✅ Product created in database:', product.name);
    return product;
  }

  async findProductByUrl(url: string): Promise<Product | null> {
    this.throwIfNotConnected();
    
    return await this.prisma.product.findFirst({
      where: { url }
    });
  }

  // Performance measurement operations - require database connection
  async createMeasurement(data: {
    productId: string;
    deviceType: DeviceType;
    performanceScore: number;
    fcp?: number | null;
    lcp?: number | null;
    cls?: number | null;
    fid?: number | null;
    ttfb?: number | null;
    speedIndex?: number | null;
    tbt?: number | null;
    opportunity?: Prisma.JsonValue | null;
    diagnostics?: Prisma.JsonValue | null;
    measurementDate?: Date;
  }): Promise<PerformanceMeasurement> {
    if (!this.isConnected || !this.prisma) {
      console.log('🎭 Creating demo measurement (database not available)');
      
      // Get product for demo measurement - use demo data directly instead of trying to query DB
      let product;
      
      try {
        // Tìm sản phẩm trong dữ liệu demo
        const demoProducts = this.getProductionDemoProducts();
        product = demoProducts.find(p => p.id === data.productId);
        
        if (!product) {
          // Nếu không tìm thấy, sử dụng sản phẩm đầu tiên làm fallback
          console.warn(`⚠️ Product ID ${data.productId} not found in demo data, using first product as fallback`);
          product = demoProducts[0];
        }
      } catch (error) {
        console.error('Error finding demo product:', error);
        throw new Error(`Failed to find product: ${error instanceof Error ? error.message : 'Unknown error'}`);
      }

      // Create a demo measurement object
      const demoMeasurement: PerformanceMeasurement = {
        id: `demo-${Date.now()}-${Math.random().toString(36).substr(2, 9)}`,
        productId: product.id, // Sử dụng ID của sản phẩm đã tìm thấy hoặc fallback
        deviceType: data.deviceType,
        performanceScore: data.performanceScore,
        fcp: data.fcp || null,
        lcp: data.lcp || null,
        cls: data.cls || null,
        fid: data.fid || null,
        ttfb: data.ttfb || null,
        speedIndex: data.speedIndex || null,
        tbt: data.tbt || null,
        opportunity: data.opportunity || null,
        diagnostics: data.diagnostics || null,
        measurementDate: data.measurementDate || new Date(),
        createdAt: new Date(),
        updatedAt: new Date(),
        product: product
      };

      console.log('✅ Demo measurement created:', {
        id: demoMeasurement.id,
        score: data.performanceScore,
        fcp: data.fcp,
        lcp: data.lcp,
        deviceType: data.deviceType,
        productName: product.name
      });

      return demoMeasurement;
    }
    
    try {
      // First verify that the product exists to prevent foreign key constraint violation
      const product = await this.prisma.product.findUnique({
        where: { id: data.productId }
      });
      
      if (!product) {
        console.warn(`⚠️ Product with ID ${data.productId} not found in database. Attempting to find by URL...`);
        
        // Thử tìm sản phẩm theo URL từ dữ liệu demo
        const demoProducts = this.getProductionDemoProducts();
        const matchingProduct = demoProducts.find(p => p.id === data.productId);
        
        if (matchingProduct) {
          // Nếu tìm thấy trong dữ liệu demo, thử tạo sản phẩm trong database
          console.log(`💡 Found matching product in demo data, creating in database: ${matchingProduct.name}`);
          
          try {
            // Tạo sản phẩm mới trong database dựa trên dữ liệu demo
            const newProduct = await this.prisma.product.create({
              data: {
                name: matchingProduct.name,
                url: matchingProduct.url,
                description: matchingProduct.description || '',
                isActive: matchingProduct.isActive
              }
            });
            
            console.log(`✅ Created missing product in database: ${newProduct.name} (ID: ${newProduct.id})`);
            
            // Cập nhật productId để sử dụng ID mới
            data.productId = newProduct.id;
          } catch (createError) {
            console.error(`❌ Failed to create product in database:`, createError);
            throw new Error(`Product with ID ${data.productId} not found and failed to create it: ${createError instanceof Error ? createError.message : 'Unknown error'}`);
          }
        } else {
          throw new Error(`Product with ID ${data.productId} not found. Cannot create measurement for non-existent product.`);
        }
      }
      
      const measurementData = {
        ...data,
        measurementDate: data.measurementDate || new Date()
      };

      const measurement = await this.prisma.performanceMeasurement.create({
        data: measurementData,
        include: { product: true }
      });
      
      console.log('✅ Measurement saved to database:', {
        id: measurement.id,
        score: data.performanceScore,
        fcp: data.fcp,
        lcp: data.lcp,
        deviceType: data.deviceType,
        productName: measurement.product?.name
      });
      
      return measurement;
    } catch (error) {
      if (!(error instanceof Error && error.message.includes('Product with ID'))) {
        console.error('Error in createMeasurement:', error);
      }
      throw error;
    }
  }

  async getMeasurements(options: {
    productId?: string;
    deviceType?: DeviceType;
    dateRange?: DateRange;
    limit?: number;
    offset?: number;
  } = {}): Promise<PerformanceMeasurement[]> {
    if (!this.isConnected || !this.prisma) {
      console.log('🎭 Using demo measurements (database not available)');
      // Return empty array for demo - measurements need real API calls
      return [];
    }
    
    const { productId, deviceType, dateRange, limit, offset } = options;
    const measurements = await this.prisma.performanceMeasurement.findMany({
      where: {
        ...(productId && { productId }),
        ...(deviceType && { deviceType }),
        ...(dateRange && {
          measurementDate: {
            gte: dateRange.from,
            lte: dateRange.to
          }
        })
      },
      include: { product: true },
      orderBy: { measurementDate: 'desc' },
      ...(limit && { take: limit }),
      ...(offset && { skip: offset })
    });
    
    console.log('✅ Retrieved', measurements.length, 'measurements from database');
    return measurements;
  }

  async getLatestMeasurements(productId: string): Promise<{
    desktop?: PerformanceMeasurement;
    mobile?: PerformanceMeasurement;
  }> {
    this.throwIfNotConnected();
    
    const [desktop, mobile] = await Promise.all([
      this.prisma.performanceMeasurement.findFirst({
        where: { productId, deviceType: DeviceType.DESKTOP },
        orderBy: { measurementDate: 'desc' },
        include: { product: true }
      }),
      this.prisma.performanceMeasurement.findFirst({
        where: { productId, deviceType: DeviceType.MOBILE },
        orderBy: { measurementDate: 'desc' },
        include: { product: true }
      })
    ]);
    
    return { desktop, mobile };
  }

  // Additional database operations

  async healthCheck(): Promise<boolean> {
    if (!this.isConnected) {
      return false;
    }
    try {
      await this.prisma.$queryRaw`SELECT 1`;
      return true;
    } catch (error) {
      console.error('Health check failed:', error);
      return false;
    }
  }

  async disconnect(): Promise<void> {
    if (this.isConnected && this.prisma) {
      await this.prisma.$disconnect();
    }
  }

  // Add method to get connection status and error details
  getConnectionStatus(): { isConnected: boolean; error: string | null } {
    return {
      isConnected: this.isConnected,
      error: this.connectionError
    };
  }
  
  // Add method to attempt reconnection
  async reconnect(): Promise<boolean> {
    console.log('🔄 Attempting database reconnection...');
    
    // Disconnect if already connected
    if (this.prisma) {
      try {
        await this.prisma.$disconnect().catch(() => {});
      } catch (e) {
        console.log('Warning during disconnect:', e);
      }
    }
    
    // Reinitialize the client
    try {
      console.log('🔌 Reinitializing Prisma client...');
      this.prisma = new PrismaClient({
        log: ['query', 'error', 'warn'],
      });
      
      // Test the connection
      await this.testConnection();
      
      return this.isConnected;
    } catch (error) {
      console.error('❌ Reconnection failed:', error);
      return false;
    }
  }

  async updateProduct(id: string, data: any): Promise<Product> {
    this.throwIfNotConnected();
    return await this.prisma.product.update({ where: { id }, data });
  }

  async deleteProduct(id: string): Promise<void> {
    this.throwIfNotConnected();
    await this.prisma.product.delete({ where: { id } });
    console.log('✅ Product deleted from database:', id);
  }

  async getTotalMeasurements(): Promise<number> {
    this.throwIfNotConnected();
    return await this.prisma.performanceMeasurement.count();
  }

  async getLastUpdated(): Promise<Date | null> {
    this.throwIfNotConnected();
    const latest = await this.prisma.performanceMeasurement.findFirst({
      orderBy: { measurementDate: 'desc' },
      select: { measurementDate: true }
    });
    return latest?.measurementDate || null;
  }

  // Stub methods for compatibility
  async getAverageScores(productId: string, days: number = 30) {
    this.throwIfNotConnected();
    
    const measurements = await this.prisma.performanceMeasurement.findMany({
      where: { 
        productId,
        measurementDate: {
          gte: new Date(Date.now() - days * 24 * 60 * 60 * 1000)
        }
      }
    });
    
    const desktopScores = measurements.filter((m: any) => m.deviceType === DeviceType.DESKTOP).map((m: any) => m.performanceScore);
    const mobileScores = measurements.filter((m: any) => m.deviceType === DeviceType.MOBILE).map((m: any) => m.performanceScore);
    
    const desktop = desktopScores.length > 0 ? Math.round(desktopScores.reduce((a: number, b: number) => a + b, 0) / desktopScores.length) : 0;
    const mobile = mobileScores.length > 0 ? Math.round(mobileScores.reduce((a: number, b: number) => a + b, 0) / mobileScores.length) : 0;
    
    return { desktop, mobile };
  }

  async getProductPerformanceData(): Promise<ProductPerformanceData[]> {
    const products = await this.getActiveProducts();
    const performanceData = await Promise.all(
      products.map(async (product) => {
        const [latestMeasurements, averageScores, measurements] = await Promise.all([
          this.getLatestMeasurements(product.id),
          this.getAverageScores(product.id),
          this.getMeasurements({ productId: product.id, limit: 30 })
        ]);
        return {
          product,
          latestDesktop: latestMeasurements.desktop,
          latestMobile: latestMeasurements.mobile,
          measurements,
          averageScore: averageScores
        };
      })
    );
    return performanceData;
  }

  // Configuration methods
  async getConfig(key: string): Promise<string | null> {
    // Check if database is connected before attempting to access it
    if (!this.isConnected || !this.prisma) {
      console.log('⚠️ Database not connected, returning null for config:', key);
      return null;
    }
    
    try {
      const config = await this.prisma.systemConfig.findUnique({
        where: { key }
      });
      return config?.value || null;
    } catch (error) {
      console.error('Error getting config:', error);
      return null;
    }
  }

  async setConfig(key: string, value: string): Promise<void> {
    // Check if database is connected before attempting to access it
    if (!this.isConnected || !this.prisma) {
      console.log('⚠️ Database not connected, cannot save config:', key);
      return;
    }
    
    try {
      await this.prisma.systemConfig.upsert({
        where: { key },
        update: { value },
        create: { key, value }
      });
      console.log('✅ Config saved to database:', key);
    } catch (error) {
      console.error('Error saving config:', error);
    }
  }
  async getMeasurementStats(dateRange?: DateRange) {
    this.throwIfNotConnected();
    
    const where = dateRange ? {
      measurementDate: {
        gte: dateRange.from,
        lte: dateRange.to
      }
    } : {};
    
    const [total, deviceBreakdown] = await Promise.all([
      this.prisma.performanceMeasurement.count({ where }),
      this.prisma.performanceMeasurement.groupBy({
        by: ['deviceType'],
        where,
        _count: true,
        _avg: { performanceScore: true }
      })
    ]);
    
    const averageScores = {
      desktop: deviceBreakdown.find((d: any) => d.deviceType === DeviceType.DESKTOP)?._avg.performanceScore || 0,
      mobile: deviceBreakdown.find((d: any) => d.deviceType === DeviceType.MOBILE)?._avg.performanceScore || 0
    };
    
    return {
      total,
      averageScores,
      deviceBreakdown
    };
  }
}

// Singleton instance
let databaseService: DatabaseService | null = null;

export function getDatabaseService(): DatabaseService {
  if (!databaseService) {
    databaseService = new DatabaseService();
  }
  return databaseService;
}

export function resetDatabaseService(): void {
  if (databaseService) {
    databaseService.disconnect();
    databaseService = null;
  }
}