import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  output: 'standalone',  // Added for Docker
  images:{
    remotePatterns:[
      {
        protocol:"https",
        hostname:"images.pexels.com",
      }
    ]
  }
};

export default nextConfig;