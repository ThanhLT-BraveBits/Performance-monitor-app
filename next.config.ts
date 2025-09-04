import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  experimental: {
    serverActions: {
      allowedOrigins: ["localhost:3000", "*.vercel.app"]
    }
  },
  // Optimize for production deployment
  poweredByHeader: false,
  compress: true,
  // Enable static optimization where possible
  trailingSlash: false,
  // Database connection optimization
  serverRuntimeConfig: {
    maxDuration: 60
  }
};

export default nextConfig;
