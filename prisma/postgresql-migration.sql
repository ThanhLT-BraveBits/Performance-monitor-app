-- PostgreSQL migration script
-- Generated on 2025-09-05T07:24:38.600Z
-- This script will import data from SQLite to PostgreSQL

-- Disable triggers temporarily for import
SET session_replication_role = 'replica';

-- Clear existing data (if needed)
TRUNCATE TABLE "Product" CASCADE;
TRUNCATE TABLE "PerformanceMeasurement" CASCADE;
TRUNCATE TABLE "MeasurementJob" CASCADE;
TRUNCATE TABLE "SystemConfig" CASCADE;

-- Import Products
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjp10000w3885qfl12kk', 'Blum - Solie', 'https://blum-solie.myshopify.com/', 'Blum theme - Solie variant', true, '2025-08-19T09:43:47.893Z', '2025-08-19T09:43:47.893Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjp20001w3882jua1c7g', 'Blum - Celia', 'https://blum-celia.myshopify.com/', 'Blum theme - Celia variant', true, '2025-08-19T09:43:47.895Z', '2025-08-19T09:43:47.895Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjp30002w388n8x4rtqd', 'Blum - Mondo', 'https://blum-mondo.myshopify.com/', 'Blum theme - Mondo variant', true, '2025-08-19T09:43:47.896Z', '2025-08-19T09:43:47.896Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjp40003w388nfqjtln4', 'Blum - Crafts', 'https://blum-crafts.myshopify.com/', 'Blum theme - Crafts variant', true, '2025-08-19T09:43:47.896Z', '2025-08-19T09:43:47.896Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjp60004w388djs590ve', 'Blum - Fuji', 'https://blum-fuji.myshopify.com/', 'Blum theme - Fuji variant', true, '2025-08-19T09:43:47.898Z', '2025-08-19T09:43:47.898Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjp70005w388zbfjngts', 'Electro - Gizmo', 'https://electro-gizmo-demo.myshopify.com/', 'Electro theme - Gizmo variant', true, '2025-08-19T09:43:47.899Z', '2025-08-19T09:43:47.899Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjp80006w38844cuoscg', 'Electro - Audio', 'https://electro-audio-demo.myshopify.com/', 'Electro theme - Audio variant', true, '2025-08-19T09:43:47.900Z', '2025-08-19T09:43:47.900Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjp90007w38859jpvnqs', 'Electro - Surveillance', 'https://electro-surveillance-demo.myshopify.com/', 'Electro theme - Surveillance variant', true, '2025-08-19T09:43:47.901Z', '2025-08-19T09:43:47.901Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjpa0008w388ios74r2d', 'Electro - Skatewear', 'https://electro-skatewear.myshopify.com/', 'Electro theme - Skatewear variant', true, '2025-08-19T09:43:47.902Z', '2025-08-19T09:43:47.902Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjpa0009w38860079nxq', 'Shine - Sophisticated', 'https://shine-sophisticated.myshopify.com/', 'Shine theme - Sophisticated variant', true, '2025-08-19T09:43:47.903Z', '2025-08-19T09:43:47.903Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjpb000aw388isjcf2vj', 'Shine - Energetic', 'https://shine-energetic.myshopify.com/', 'Shine theme - Energetic variant', true, '2025-08-19T09:43:47.904Z', '2025-08-19T09:43:47.904Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjpc000bw388wqevy6tw', 'Shine - Serene', 'https://shine-serene.myshopify.com/', 'Shine theme - Serene variant', true, '2025-08-19T09:43:47.905Z', '2025-08-19T09:43:47.905Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjpd000cw388pg0csat4', 'Normcore - Elementary', 'https://normcore-elementary.myshopify.com/', 'Normcore theme - Elementary variant', true, '2025-08-19T09:43:47.906Z', '2025-08-19T09:43:47.906Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjpe000dw3882enjsj1z', 'Normcore - Fundamental', 'https://normcore-fundamental.myshopify.com/', 'Normcore theme - Fundamental variant', true, '2025-08-19T09:43:47.907Z', '2025-08-19T09:43:47.907Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjpg000ew388h72sjhwe', 'Normcore - Subtle', 'https://normcore-subtle.myshopify.com/', 'Normcore theme - Subtle variant', true, '2025-08-19T09:43:47.908Z', '2025-08-19T09:43:47.908Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjpg000fw388zh5aiel8', 'Normcore - Matte', 'https://normcore-matte.myshopify.com/', 'Normcore theme - Matte variant', true, '2025-08-19T09:43:47.909Z', '2025-08-19T09:43:47.909Z');
INSERT INTO "Product" ("id", "name", "url", "description", "isActive", "createdAt", "updatedAt") VALUES
('cmeicwjph000gw3880h7ugh3g', 'Normcore - Raw', 'https://normcore-raw.myshopify.com/', 'Normcore theme - Raw variant', true, '2025-08-19T09:43:47.909Z', '2025-08-19T09:43:47.909Z');

-- Import Performance Measurements
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeidjxx70001w3q7o9zazrti', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-08-19T10:01:35.623Z', 92,
      406, 
      1457, 
      0.002, 
      92, 
      679, 
      1933, 
      49,
      NULL, 
      NULL, 
      '2025-08-19T10:01:59.418Z', '2025-08-19T10:01:59.418Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeiegfxj000hw3q7jop0nwtu', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-08-19T10:27:15.750Z', 98,
      488, 
      1107, 
      0, 
      70, 
      137, 
      1118, 
      10,
      NULL, 
      NULL, 
      '2025-08-19T10:27:15.751Z', '2025-08-19T10:27:15.751Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeiegy66000lw3q7jy587d6n', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-08-19T10:27:39.388Z', 70,
      1773, 
      7250, 
      0, 
      104, 
      154, 
      6170, 
      40,
      NULL, 
      NULL, 
      '2025-08-19T10:27:39.390Z', '2025-08-19T10:27:39.390Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeiehfhu000pw3q7nxyd30wn', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-08-19T10:28:01.841Z', 96,
      450, 
      1319, 
      0, 
      92, 
      123, 
      1082, 
      32,
      NULL, 
      NULL, 
      '2025-08-19T10:28:01.842Z', '2025-08-19T10:28:01.842Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeiehhjx000rw3q7dl5hctop', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-08-19T10:28:04.509Z', 70,
      1991, 
      6796, 
      0, 
      72, 
      177, 
      5598, 
      26,
      NULL, 
      NULL, 
      '2025-08-19T10:28:04.510Z', '2025-08-19T10:28:04.510Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeiehlid000tw3q7kxpe982u', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-08-19T10:28:09.636Z', 73,
      921, 
      3456, 
      0.058, 
      568, 
      884, 
      2848, 
      72,
      NULL, 
      NULL, 
      '2025-08-19T10:28:09.637Z', '2025-08-19T10:28:09.637Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeiehukk000xw3q70ct8bh42', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-08-19T10:28:21.380Z', 62,
      1842, 
      25383, 
      0.078, 
      180, 
      150, 
      12011, 
      107,
      NULL, 
      NULL, 
      '2025-08-19T10:28:21.381Z', '2025-08-19T10:28:21.381Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeieiery000zw3q7ez5jj4qj', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-08-19T10:28:47.565Z', 96,
      501, 
      1266, 
      0, 
      84, 
      163, 
      1145, 
      28,
      NULL, 
      NULL, 
      '2025-08-19T10:28:47.567Z', '2025-08-19T10:28:47.567Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeieith10011w3q7bemksklz', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-08-19T10:29:06.612Z', 68,
      1923, 
      9640, 
      0, 
      99, 
      137, 
      5977, 
      89,
      NULL, 
      NULL, 
      '2025-08-19T10:29:06.613Z', '2025-08-19T10:29:06.613Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeiejcpq0015w3q7wrvt82ra', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-08-19T10:29:31.549Z', 98,
      413, 
      1041, 
      0.061, 
      79, 
      134, 
      959, 
      3,
      NULL, 
      NULL, 
      '2025-08-19T10:29:31.550Z', '2025-08-19T10:29:31.550Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeiejv7g0019w3q7pza07jfb', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-08-19T10:29:55.515Z', 73,
      1434, 
      6087, 
      0.078, 
      119, 
      143, 
      4608, 
      12,
      NULL, 
      NULL, 
      '2025-08-19T10:29:55.516Z', '2025-08-19T10:29:55.516Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeiekh4u001dw3q721gw6adt', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-08-19T10:30:23.934Z', 83,
      302, 
      2464, 
      0.037, 
      53, 
      1370, 
      2111, 
      5,
      NULL, 
      NULL, 
      '2025-08-19T10:30:23.935Z', '2025-08-19T10:30:23.935Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmeji9phq0001w3et4an6asay', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-08-20T05:01:46.186Z', 96,
      476, 
      1130, 
      0, 
      66, 
      544, 
      1429, 
      8,
      NULL, 
      NULL, 
      '2025-08-20T05:01:46.188Z', '2025-08-20T05:01:46.188Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejia7020003w3et4mg3ldbk', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-08-20T05:02:08.880Z', 74,
      1417, 
      6751, 
      0, 
      88, 
      153, 
      4244, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T05:02:08.882Z', '2025-08-20T05:02:08.882Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejiewks0005w3etezunpp76', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-08-20T05:05:48.649Z', 63,
      1623, 
      22727, 
      0.078, 
      155, 
      830, 
      11514, 
      73,
      NULL, 
      NULL, 
      '2025-08-20T05:05:48.652Z', '2025-08-20T05:05:48.652Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejif7s80007w3etfi8fll2u', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-08-20T05:06:03.174Z', 78,
      1523, 
      3751, 
      0, 
      243, 
      741, 
      4089, 
      352,
      NULL, 
      NULL, 
      '2025-08-20T05:06:03.176Z', '2025-08-20T05:06:03.176Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejifg9e0009w3etmu61kr2n', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-08-20T05:06:14.161Z', 98,
      494, 
      1162, 
      0, 
      157, 
      147, 
      931, 
      1,
      NULL, 
      NULL, 
      '2025-08-20T05:06:14.162Z', '2025-08-20T05:06:14.162Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejifhfu000bw3etlw2ltvnp', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-08-20T05:06:15.689Z', 76,
      492, 
      3921, 
      0.058, 
      168, 
      134, 
      1907, 
      2,
      NULL, 
      NULL, 
      '2025-08-20T05:06:15.691Z', '2025-08-20T05:06:15.691Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejifjhq000dw3et6w4sgoy3', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-08-20T05:06:18.349Z', 63,
      1623, 
      22727, 
      0.078, 
      155, 
      830, 
      11514, 
      73,
      NULL, 
      NULL, 
      '2025-08-20T05:06:18.350Z', '2025-08-20T05:06:18.350Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejifush000fw3etoq2ylypo', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-08-20T05:06:32.992Z', 98,
      391, 
      911, 
      0.062, 
      77, 
      148, 
      993, 
      37,
      NULL, 
      NULL, 
      '2025-08-20T05:06:32.994Z', '2025-08-20T05:06:32.994Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejifx5r000hw3etug1poq6z', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-08-20T05:06:36.062Z', 69,
      1842, 
      9559, 
      0, 
      113, 
      194, 
      5720, 
      67,
      NULL, 
      NULL, 
      '2025-08-20T05:06:36.064Z', '2025-08-20T05:06:36.064Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejig34z000jw3etdsl96l02', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-08-20T05:06:43.810Z', 97,
      436, 
      1189, 
      0, 
      113, 
      159, 
      909, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T05:06:43.811Z', '2025-08-20T05:06:43.811Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejige6q000lw3etfuadfmq8', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-08-20T05:06:58.129Z', 68,
      1900, 
      7016, 
      0.078, 
      170, 
      146, 
      6206, 
      105,
      NULL, 
      NULL, 
      '2025-08-20T05:06:58.131Z', '2025-08-20T05:06:58.131Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejiggwb000nw3etmr63bfr1', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-08-20T05:07:01.641Z', 99,
      439, 
      801, 
      0.062, 
      88, 
      134, 
      848, 
      15,
      NULL, 
      NULL, 
      '2025-08-20T05:07:01.643Z', '2025-08-20T05:07:01.643Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejighxq000pw3etf7gyxgap', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-08-20T05:07:02.988Z', 73,
      1574, 
      8486, 
      0, 
      61, 
      141, 
      4079, 
      6,
      NULL, 
      NULL, 
      '2025-08-20T05:07:02.990Z', '2025-08-20T05:07:02.990Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejigzzh000rw3etjxl89yxy', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-08-20T05:07:26.378Z', 99,
      414, 
      801, 
      0.061, 
      78, 
      151, 
      847, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T05:07:26.381Z', '2025-08-20T05:07:26.381Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejih2r1000tw3et4yxe89e9', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-08-20T05:07:29.964Z', 95,
      342, 
      785, 
      0.001, 
      68, 
      1475, 
      2109, 
      16,
      NULL, 
      NULL, 
      '2025-08-20T05:07:29.966Z', '2025-08-20T05:07:29.966Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejih2ur000vw3et913g8uvl', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-08-20T05:07:30.098Z', 67,
      1946, 
      7029, 
      0.078, 
      184, 
      147, 
      6299, 
      147,
      NULL, 
      NULL, 
      '2025-08-20T05:07:30.100Z', '2025-08-20T05:07:30.100Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejih4km000xw3et5jqblcqq', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-08-20T05:07:32.324Z', 95,
      342, 
      785, 
      0.001, 
      68, 
      1475, 
      2109, 
      16,
      NULL, 
      NULL, 
      '2025-08-20T05:07:32.326Z', '2025-08-20T05:07:32.326Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejihk7w000zw3et0gjsdmq2', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-08-20T05:07:52.603Z', 74,
      1423, 
      6014, 
      0.078, 
      102, 
      147, 
      4667, 
      21,
      NULL, 
      NULL, 
      '2025-08-20T05:07:52.605Z', '2025-08-20T05:07:52.605Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejihmxi0011w3etsywxg0p6', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-08-20T05:07:56.116Z', 40,
      2892, 
      12602, 
      0.652, 
      92, 
      135, 
      7228, 
      72,
      NULL, 
      NULL, 
      '2025-08-20T05:07:56.118Z', '2025-08-20T05:07:56.118Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejihsju0013w3et1c0oqodz', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-08-20T05:08:03.401Z', 46,
      1135, 
      12077, 
      0.651, 
      78, 
      1295, 
      6546, 
      79,
      NULL, 
      NULL, 
      '2025-08-20T05:08:03.403Z', '2025-08-20T05:08:03.403Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejii7x80015w3ethdco91t1', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-08-20T05:08:23.320Z', 98,
      337, 
      681, 
      0.04, 
      109, 
      136, 
      1404, 
      71,
      NULL, 
      NULL, 
      '2025-08-20T05:08:23.324Z', '2025-08-20T05:08:23.324Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejii8op0017w3et6rrdu6be', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-08-20T05:08:24.312Z', 91,
      483, 
      1581, 
      0, 
      100, 
      1121, 
      1864, 
      29,
      NULL, 
      NULL, 
      '2025-08-20T05:08:24.314Z', '2025-08-20T05:08:24.314Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejii9nu0019w3etlann9bh0', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-08-20T05:08:25.575Z', 40,
      2892, 
      12602, 
      0.652, 
      92, 
      135, 
      7228, 
      72,
      NULL, 
      NULL, 
      '2025-08-20T05:08:25.578Z', '2025-08-20T05:08:25.578Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj22ov001bw3etwoexgwml', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-08-20T05:23:49.661Z', 100,
      352, 
      511, 
      0.002, 
      50, 
      159, 
      1128, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T05:23:49.663Z', '2025-08-20T05:23:49.663Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj7a61001dw3etor4sq0v3', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-08-20T05:27:52.631Z', 81,
      1236, 
      2455, 
      0, 
      227, 
      265, 
      5189, 
      505,
      NULL, 
      NULL, 
      '2025-08-20T05:27:52.633Z', '2025-08-20T05:27:52.633Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj7igr001fw3etk9wljj69', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-08-20T05:28:03.385Z', 68,
      1742, 
      10544, 
      0, 
      76, 
      134, 
      6737, 
      26,
      NULL, 
      NULL, 
      '2025-08-20T05:28:03.387Z', '2025-08-20T05:28:03.387Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj7tza001hw3etrvmx7haa', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-08-20T05:28:18.308Z', 94,
      386, 
      1448, 
      0, 
      65, 
      665, 
      1509, 
      12,
      NULL, 
      NULL, 
      '2025-08-20T05:28:18.310Z', '2025-08-20T05:28:18.310Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj87kh001jw3etmi6e1elc', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-08-20T05:28:35.920Z', 69,
      1810, 
      10564, 
      0, 
      83, 
      130, 
      5386, 
      67,
      NULL, 
      NULL, 
      '2025-08-20T05:28:35.922Z', '2025-08-20T05:28:35.922Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj88q4001lw3etjdg168f2', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-08-20T05:28:37.418Z', 92,
      425, 
      1488, 
      0, 
      96, 
      114, 
      1700, 
      105,
      NULL, 
      NULL, 
      '2025-08-20T05:28:37.420Z', '2025-08-20T05:28:37.420Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj89ao001nw3et5hrssbjr', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-08-20T05:28:38.159Z', 92,
      425, 
      1488, 
      0, 
      96, 
      114, 
      1700, 
      105,
      NULL, 
      NULL, 
      '2025-08-20T05:28:38.161Z', '2025-08-20T05:28:38.161Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj8g1v001pw3etnrkg1btp', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-08-20T05:28:46.912Z', 69,
      2122, 
      6322, 
      0, 
      118, 
      816, 
      6095, 
      93,
      NULL, 
      NULL, 
      '2025-08-20T05:28:46.915Z', '2025-08-20T05:28:46.915Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj8g25001rw3etib3is5aw', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-08-20T05:28:46.924Z', 69,
      2122, 
      6322, 
      0, 
      118, 
      816, 
      6095, 
      93,
      NULL, 
      NULL, 
      '2025-08-20T05:28:46.926Z', '2025-08-20T05:28:46.926Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj8ux0001tw3etutcmqvdy', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-08-20T05:29:06.179Z', 63,
      2227, 
      11764, 
      0, 
      140, 
      137, 
      7330, 
      178,
      NULL, 
      NULL, 
      '2025-08-20T05:29:06.180Z', '2025-08-20T05:29:06.180Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj8zq1001vw3etqa6j8pu4', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-08-20T05:29:12.406Z', 96,
      444, 
      1059, 
      0, 
      73, 
      715, 
      1529, 
      16,
      NULL, 
      NULL, 
      '2025-08-20T05:29:12.409Z', '2025-08-20T05:29:12.409Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejj8zqb001xw3etyz69xj7t', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-08-20T05:29:12.418Z', 96,
      444, 
      1059, 
      0, 
      73, 
      715, 
      1529, 
      16,
      NULL, 
      NULL, 
      '2025-08-20T05:29:12.420Z', '2025-08-20T05:29:12.420Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkdbqq001zw3etzj64mv2u', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-08-20T06:00:34.224Z', 99,
      340, 
      737, 
      0.001, 
      43, 
      294, 
      1143, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T06:00:34.227Z', '2025-08-20T06:00:34.227Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkdf300021w3et086gcirb', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-08-20T06:00:38.556Z', 74,
      1544, 
      7208, 
      0, 
      43, 
      164, 
      4119, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T06:00:38.557Z', '2025-08-20T06:00:38.557Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkdfb60023w3etasyqxhvd', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-08-20T06:00:38.849Z', 74,
      1544, 
      7208, 
      0, 
      43, 
      164, 
      4119, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T06:00:38.851Z', '2025-08-20T06:00:38.851Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejke17b0025w3etzpi33azu', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-08-20T06:01:07.221Z', 67,
      1296, 
      2551, 
      0, 
      243, 
      116, 
      6277, 
      1197,
      NULL, 
      NULL, 
      '2025-08-20T06:01:07.223Z', '2025-08-20T06:01:07.223Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejke61v0027w3etv5mwmjxz', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-08-20T06:01:13.506Z', 71,
      319, 
      3847, 
      0.001, 
      120, 
      1468, 
      3796, 
      75,
      NULL, 
      NULL, 
      '2025-08-20T06:01:13.508Z', '2025-08-20T06:01:13.508Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejke6280029w3ethndxv380', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-08-20T06:01:13.518Z', 71,
      319, 
      3847, 
      0.001, 
      120, 
      1468, 
      3796, 
      75,
      NULL, 
      NULL, 
      '2025-08-20T06:01:13.520Z', '2025-08-20T06:01:13.520Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkere4002bw3et8vrp38ot', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-08-20T06:01:41.162Z', 69,
      318, 
      3840, 
      0.001, 
      134, 
      145, 
      2988, 
      156,
      NULL, 
      NULL, 
      '2025-08-20T06:01:41.164Z', '2025-08-20T06:01:41.164Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkfixm002dw3ethiif2j4o', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-08-20T06:02:16.853Z', 56,
      3601, 
      19260, 
      0, 
      197, 
      137, 
      10000, 
      207,
      NULL, 
      NULL, 
      '2025-08-20T06:02:16.859Z', '2025-08-20T06:02:16.859Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkgc4j002fw3eto632rjpe', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-08-20T06:02:54.689Z', 77,
      363, 
      1150, 
      0, 
      279, 
      1343, 
      2912, 
      318,
      NULL, 
      NULL, 
      '2025-08-20T06:02:54.691Z', '2025-08-20T06:02:54.691Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkgy1q002hw3ety2304n3j', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-08-20T06:03:23.101Z', 78,
      1872, 
      3664, 
      0, 
      206, 
      986, 
      10327, 
      132,
      NULL, 
      NULL, 
      '2025-08-20T06:03:23.103Z', '2025-08-20T06:03:23.103Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkhqci002jw3etxcjq77jq', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-08-20T06:03:59.775Z', 84,
      421, 
      1366, 
      0, 
      177, 
      790, 
      2795, 
      195,
      NULL, 
      NULL, 
      '2025-08-20T06:03:59.778Z', '2025-08-20T06:03:59.778Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkhrps002lw3et2qbt45lu', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-08-20T06:04:01.551Z', 59,
      3319, 
      18578, 
      0, 
      163, 
      136, 
      10007, 
      133,
      NULL, 
      NULL, 
      '2025-08-20T06:04:01.553Z', '2025-08-20T06:04:01.553Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkhrqx002nw3etsngdg7io', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-08-20T06:04:01.592Z', 59,
      3319, 
      18578, 
      0, 
      163, 
      136, 
      10007, 
      133,
      NULL, 
      NULL, 
      '2025-08-20T06:04:01.593Z', '2025-08-20T06:04:01.593Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkieot002pw3etu3wq82x1', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-08-20T06:04:31.324Z', 82,
      1580, 
      3384, 
      0, 
      146, 
      731, 
      7751, 
      152,
      NULL, 
      NULL, 
      '2025-08-20T06:04:31.326Z', '2025-08-20T06:04:31.326Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkihgd002rw3etnx4u4kq3', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-08-20T06:04:34.907Z', 84,
      367, 
      1296, 
      0, 
      237, 
      130, 
      2177, 
      225,
      NULL, 
      NULL, 
      '2025-08-20T06:04:34.909Z', '2025-08-20T06:04:34.909Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkihlp002tw3etd733dc3c', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-08-20T06:04:35.099Z', 84,
      367, 
      1296, 
      0, 
      237, 
      130, 
      2177, 
      225,
      NULL, 
      NULL, 
      '2025-08-20T06:04:35.101Z', '2025-08-20T06:04:35.101Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkizbm002vw3etec7u4kqi', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-08-20T06:04:58.065Z', 65,
      2217, 
      15329, 
      0, 
      120, 
      148, 
      7629, 
      55,
      NULL, 
      NULL, 
      '2025-08-20T06:04:58.067Z', '2025-08-20T06:04:58.067Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkizf8002xw3etzrvc95ph', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-08-20T06:04:58.195Z', 65,
      2217, 
      15329, 
      0, 
      120, 
      148, 
      7629, 
      55,
      NULL, 
      NULL, 
      '2025-08-20T06:04:58.197Z', '2025-08-20T06:04:58.197Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkjg4f002zw3et3ww4nryu', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-08-20T06:05:19.838Z', 54,
      435, 
      3909, 
      0.003, 
      248, 
      1826, 
      3781, 
      384,
      NULL, 
      NULL, 
      '2025-08-20T06:05:19.840Z', '2025-08-20T06:05:19.840Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkju5n0031w3et59z478pj', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-08-20T06:05:38.025Z', 90,
      354, 
      829, 
      0, 
      146, 
      155, 
      2524, 
      151,
      NULL, 
      NULL, 
      '2025-08-20T06:05:38.027Z', '2025-08-20T06:05:38.027Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkjua70033w3etxx5yfic6', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-08-20T06:05:38.190Z', 90,
      354, 
      829, 
      0, 
      146, 
      155, 
      2524, 
      151,
      NULL, 
      NULL, 
      '2025-08-20T06:05:38.191Z', '2025-08-20T06:05:38.191Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkkal40035w3etmpch1wy7', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-08-20T06:05:59.318Z', 59,
      1882, 
      13562, 
      0, 
      262, 
      810, 
      9305, 
      283,
      NULL, 
      NULL, 
      '2025-08-20T06:05:59.320Z', '2025-08-20T06:05:59.320Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkkg9d0037w3et4gj4et6z', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-08-20T06:06:06.672Z', 60,
      3285, 
      10779, 
      0, 
      179, 
      136, 
      7544, 
      158,
      NULL, 
      NULL, 
      '2025-08-20T06:06:06.673Z', '2025-08-20T06:06:06.673Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkkgc60039w3etzojctxr9', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-08-20T06:06:06.773Z', 60,
      3285, 
      10779, 
      0, 
      179, 
      136, 
      7544, 
      158,
      NULL, 
      NULL, 
      '2025-08-20T06:06:06.775Z', '2025-08-20T06:06:06.775Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkl8az003bw3etv695mged', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-08-20T06:06:43.017Z', 56,
      435, 
      4216, 
      0.003, 
      245, 
      135, 
      2658, 
      370,
      NULL, 
      NULL, 
      '2025-08-20T06:06:43.019Z', '2025-08-20T06:06:43.019Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkl8f4003dw3et7glxfayt', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-08-20T06:06:43.167Z', 56,
      435, 
      4216, 
      0.003, 
      245, 
      135, 
      2658, 
      370,
      NULL, 
      NULL, 
      '2025-08-20T06:06:43.168Z', '2025-08-20T06:06:43.168Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkl9eq003fw3etu6jmk7fd', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-08-20T06:06:44.448Z', 76,
      347, 
      749, 
      0, 
      225, 
      1372, 
      3705, 
      355,
      NULL, 
      NULL, 
      '2025-08-20T06:06:44.450Z', '2025-08-20T06:06:44.450Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejklx9w003hw3etbovf051g', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-08-20T06:07:15.378Z', 55,
      3799, 
      13295, 
      0, 
      395, 
      155, 
      9161, 
      219,
      NULL, 
      NULL, 
      '2025-08-20T06:07:15.380Z', '2025-08-20T06:07:15.380Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejklxqb003jw3ethuysqnvx', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-08-20T06:07:15.968Z', 58,
      3738, 
      13386, 
      0, 
      322, 
      144, 
      9206, 
      148,
      NULL, 
      NULL, 
      '2025-08-20T06:07:15.971Z', '2025-08-20T06:07:15.971Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkm03f003lw3etx1dbwfk1', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-08-20T06:07:19.033Z', 77,
      1269, 
      3779, 
      0, 
      186, 
      740, 
      8485, 
      210,
      NULL, 
      NULL, 
      '2025-08-20T06:07:19.035Z', '2025-08-20T06:07:19.035Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkmm33003nw3etyyfftbl3', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-08-20T06:07:47.534Z', 95,
      316, 
      741, 
      0, 
      155, 
      139, 
      2164, 
      72,
      NULL, 
      NULL, 
      '2025-08-20T06:07:47.536Z', '2025-08-20T06:07:47.536Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkmnla003pw3etzv13xpyj', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-08-20T06:07:49.484Z', 92,
      412, 
      1553, 
      0, 
      77, 
      905, 
      1693, 
      15,
      NULL, 
      NULL, 
      '2025-08-20T06:07:49.487Z', '2025-08-20T06:07:49.487Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkmt2k003rw3et1q7rpzae', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-08-20T06:07:56.587Z', 85,
      363, 
      761, 
      0, 
      180, 
      157, 
      2355, 
      257,
      NULL, 
      NULL, 
      '2025-08-20T06:07:56.588Z', '2025-08-20T06:07:56.588Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkn5x6003tw3etbbdnxu7p', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-08-20T06:08:13.241Z', 78,
      1829, 
      5279, 
      0, 
      53, 
      568, 
      3707, 
      2,
      NULL, 
      NULL, 
      '2025-08-20T06:08:13.243Z', '2025-08-20T06:08:13.243Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkn6k7003vw3et1fwfohvo', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-08-20T06:08:14.069Z', 82,
      1236, 
      3751, 
      0, 
      109, 
      700, 
      7115, 
      45,
      NULL, 
      NULL, 
      '2025-08-20T06:08:14.071Z', '2025-08-20T06:08:14.071Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkn8ll003xw3etbfa1tj7m', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-08-20T06:08:16.712Z', 92,
      412, 
      1553, 
      0, 
      77, 
      905, 
      1693, 
      15,
      NULL, 
      NULL, 
      '2025-08-20T06:08:16.713Z', '2025-08-20T06:08:16.713Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkndup003zw3etjcxq8hvk', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-08-20T06:08:23.520Z', 68,
      1903, 
      9313, 
      0, 
      128, 
      191, 
      6205, 
      52,
      NULL, 
      NULL, 
      '2025-08-20T06:08:23.521Z', '2025-08-20T06:08:23.521Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejknt3m0041w3etl9je8t58', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-08-20T06:08:43.280Z', 97,
      393, 
      897, 
      0, 
      54, 
      1131, 
      1656, 
      3,
      NULL, 
      NULL, 
      '2025-08-20T06:08:43.282Z', '2025-08-20T06:08:43.282Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejknvvi0043w3etbdoe827l', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-08-20T06:08:46.876Z', 92,
      421, 
      1771, 
      0, 
      37, 
      124, 
      1153, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T06:08:46.878Z', '2025-08-20T06:08:46.878Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejknxr40045w3etjwaslkoe', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-08-20T06:08:49.311Z', 78,
      1829, 
      5279, 
      0, 
      53, 
      568, 
      3707, 
      2,
      NULL, 
      NULL, 
      '2025-08-20T06:08:49.312Z', '2025-08-20T06:08:49.312Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkocfp0047w3ett0cgif20', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-08-20T06:09:08.340Z', 80,
      1460, 
      4876, 
      0, 
      138, 
      606, 
      4044, 
      49,
      NULL, 
      NULL, 
      '2025-08-20T06:09:08.342Z', '2025-08-20T06:09:08.342Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkoift0049w3ethqg3kpbr', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-08-20T06:09:16.119Z', 99,
      377, 
      839, 
      0, 
      47, 
      133, 
      956, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T06:09:16.121Z', '2025-08-20T06:09:16.121Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkonb9004bw3etlbv896eu', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-08-20T06:09:22.436Z', 58,
      1760, 
      7726, 
      0, 
      231, 
      119, 
      5758, 
      463,
      NULL, 
      NULL, 
      '2025-08-20T06:09:22.438Z', '2025-08-20T06:09:22.438Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkop83004dw3etpoat1mt9', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-08-20T06:09:24.912Z', 99,
      377, 
      839, 
      0, 
      47, 
      133, 
      956, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T06:09:24.915Z', '2025-08-20T06:09:24.915Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkotb4004fw3eth0nopljm', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-08-20T06:09:30.206Z', 80,
      1460, 
      4876, 
      0, 
      138, 
      606, 
      4044, 
      49,
      NULL, 
      NULL, 
      '2025-08-20T06:09:30.208Z', '2025-08-20T06:09:30.208Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkozqi004hw3et1mx6r7ei', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-08-20T06:09:38.537Z', 93,
      352, 
      1144, 
      0.015, 
      130, 
      1375, 
      2180, 
      64,
      NULL, 
      NULL, 
      '2025-08-20T06:09:38.538Z', '2025-08-20T06:09:38.538Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkozv8004jw3etxogfjyhu', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-08-20T06:09:38.707Z', 93,
      352, 
      1144, 
      0.015, 
      130, 
      1375, 
      2180, 
      64,
      NULL, 
      NULL, 
      '2025-08-20T06:09:38.708Z', '2025-08-20T06:09:38.708Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkp5eu004lw3etv4u0fdap', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-08-20T06:09:45.893Z', 71,
      1874, 
      6235, 
      0, 
      161, 
      137, 
      5304, 
      138,
      NULL, 
      NULL, 
      '2025-08-20T06:09:45.895Z', '2025-08-20T06:09:45.895Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkpn69004nw3etqsfalvhk', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-08-20T06:10:08.912Z', 79,
      1411, 
      4609, 
      0.076, 
      130, 
      806, 
      4140, 
      81,
      NULL, 
      NULL, 
      '2025-08-20T06:10:08.914Z', '2025-08-20T06:10:08.914Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkpn7q004rw3etzt9nf83m', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-08-20T06:10:08.965Z', 79,
      1411, 
      4609, 
      0.076, 
      130, 
      806, 
      4140, 
      81,
      NULL, 
      NULL, 
      '2025-08-20T06:10:08.967Z', '2025-08-20T06:10:08.967Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkpnin004vw3etlnjxfeal', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-08-20T06:10:09.358Z', 97,
      355, 
      1199, 
      0.011, 
      65, 
      139, 
      1070, 
      8,
      NULL, 
      NULL, 
      '2025-08-20T06:10:09.359Z', '2025-08-20T06:10:09.359Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejkpp9f004xw3etvrpqf1y1', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-08-20T06:10:11.618Z', 79,
      1411, 
      4609, 
      0.076, 
      130, 
      806, 
      4140, 
      81,
      NULL, 
      NULL, 
      '2025-08-20T06:10:11.619Z', '2025-08-20T06:10:11.619Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm22pt0001w3n1c2n7uaza', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-08-20T06:47:48.541Z', 95,
      470, 
      1338, 
      0, 
      77, 
      570, 
      1506, 
      14,
      NULL, 
      NULL, 
      '2025-08-20T06:47:48.544Z', '2025-08-20T06:47:48.544Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm2l9m0003w3n1mv8q2xsj', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-08-20T06:48:12.584Z', 69,
      1847, 
      7392, 
      0, 
      138, 
      134, 
      6284, 
      77,
      NULL, 
      NULL, 
      '2025-08-20T06:48:12.587Z', '2025-08-20T06:48:12.587Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm31430005w3n1joinalg2', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-08-20T06:48:33.122Z', 96,
      449, 
      1245, 
      0, 
      54, 
      555, 
      1229, 
      2,
      NULL, 
      NULL, 
      '2025-08-20T06:48:33.124Z', '2025-08-20T06:48:33.124Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm3gcq0007w3n1zzvbb0hx', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-08-20T06:48:52.872Z', 70,
      1988, 
      6782, 
      0, 
      79, 
      148, 
      5562, 
      49,
      NULL, 
      NULL, 
      '2025-08-20T06:48:52.874Z', '2025-08-20T06:48:52.874Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm3wk90009w3n1sfnau1pr', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-08-20T06:49:13.878Z', 73,
      536, 
      3914, 
      0.058, 
      91, 
      501, 
      2689, 
      27,
      NULL, 
      NULL, 
      '2025-08-20T06:49:13.881Z', '2025-08-20T06:49:13.881Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm4aul000bw3n14urcggsc', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-08-20T06:49:32.396Z', 63,
      1764, 
      25876, 
      0.078, 
      111, 
      171, 
      11995, 
      67,
      NULL, 
      NULL, 
      '2025-08-20T06:49:32.398Z', '2025-08-20T06:49:32.398Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm4s0i000dw3n1rea8d1sh', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-08-20T06:49:54.641Z', 98,
      428, 
      1064, 
      0, 
      82, 
      470, 
      976, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T06:49:54.643Z', '2025-08-20T06:49:54.643Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm55qd000fw3n19p4a28zk', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-08-20T06:50:12.420Z', 73,
      1563, 
      8635, 
      0, 
      44, 
      152, 
      3848, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T06:50:12.422Z', '2025-08-20T06:50:12.422Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm5nws000hw3n1azevtgxb', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-08-20T06:50:35.978Z', 94,
      521, 
      1308, 
      0.061, 
      79, 
      810, 
      1616, 
      22,
      NULL, 
      NULL, 
      '2025-08-20T06:50:35.980Z', '2025-08-20T06:50:35.980Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm62cf000jw3n184l36fdd', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-08-20T06:50:54.683Z', 69,
      1746, 
      7077, 
      0.078, 
      79, 
      181, 
      6083, 
      22,
      NULL, 
      NULL, 
      '2025-08-20T06:50:54.687Z', '2025-08-20T06:50:54.687Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm6r8f000lw3n1kano5ljh', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-08-20T06:51:26.942Z', 97,
      307, 
      721, 
      0.005, 
      77, 
      1436, 
      1868, 
      14,
      NULL, 
      NULL, 
      '2025-08-20T06:51:26.944Z', '2025-08-20T06:51:26.944Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm7e2g000nw3n18pltomlh', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-08-20T06:51:56.534Z', 42,
      2944, 
      8169, 
      0.633, 
      88, 
      166, 
      6205, 
      85,
      NULL, 
      NULL, 
      '2025-08-20T06:51:56.537Z', '2025-08-20T06:51:56.537Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm7yb8000pw3n1h1trdarw', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-08-20T06:52:22.769Z', 92,
      489, 
      1797, 
      0.002, 
      55, 
      204, 
      1258, 
      5,
      NULL, 
      NULL, 
      '2025-08-20T06:52:22.773Z', '2025-08-20T06:52:22.773Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm8du3000rw3n1gcqidzle', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-08-20T06:52:42.888Z', 67,
      1735, 
      10532, 
      0, 
      83, 
      130, 
      7146, 
      33,
      NULL, 
      NULL, 
      '2025-08-20T06:52:42.891Z', '2025-08-20T06:52:42.891Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm8xta000tw3n155une1r0', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-08-20T06:53:08.780Z', 96,
      388, 
      921, 
      0, 
      60, 
      1100, 
      1804, 
      7,
      NULL, 
      NULL, 
      '2025-08-20T06:53:08.783Z', '2025-08-20T06:53:08.783Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejm9lfp000vw3n1fo49zcsg', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-08-20T06:53:39.382Z', 85,
      1501, 
      3901, 
      0, 
      93, 
      756, 
      4695, 
      55,
      NULL, 
      NULL, 
      '2025-08-20T06:53:39.397Z', '2025-08-20T06:53:39.397Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejma0tm000xw3n1gui3ezmn', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-08-20T06:53:59.337Z', 99,
      413, 
      841, 
      0, 
      42, 
      141, 
      1081, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T06:53:59.339Z', '2025-08-20T06:53:59.339Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmalmh000zw3n1tqicu5wk', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-08-20T06:54:26.296Z', 74,
      1561, 
      6615, 
      0, 
      83, 
      139, 
      4248, 
      51,
      NULL, 
      NULL, 
      '2025-08-20T06:54:26.297Z', '2025-08-20T06:54:26.297Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmbje30011w3n1kkstqqnm', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-08-20T06:55:10.057Z', 68,
      372, 
      3497, 
      0.001, 
      184, 
      730, 
      3864, 
      174,
      NULL, 
      NULL, 
      '2025-08-20T06:55:10.059Z', '2025-08-20T06:55:10.059Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmc9oc0013w3n10iwvfwia', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-08-20T06:55:44.123Z', 62,
      1713, 
      21723, 
      0, 
      157, 
      757, 
      11906, 
      171,
      NULL, 
      NULL, 
      '2025-08-20T06:55:44.125Z', '2025-08-20T06:55:44.125Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmcxx80015w3n1pn07ad5w', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-08-20T06:56:15.545Z', 93,
      350, 
      752, 
      0.001, 
      190, 
      1358, 
      2538, 
      104,
      NULL, 
      NULL, 
      '2025-08-20T06:56:15.548Z', '2025-08-20T06:56:15.548Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmdjl90017w3n112f7yknf', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-08-20T06:56:43.628Z', 79,
      1861, 
      3576, 
      0, 
      209, 
      999, 
      9313, 
      126,
      NULL, 
      NULL, 
      '2025-08-20T06:56:43.629Z', '2025-08-20T06:56:43.629Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmeguc0019w3n1qqc5cmzc', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-08-20T06:57:26.722Z', 82,
      332, 
      773, 
      0, 
      175, 
      1232, 
      2812, 
      274,
      NULL, 
      NULL, 
      '2025-08-20T06:57:26.724Z', '2025-08-20T06:57:26.724Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmfd7z001bw3n1k0eqwa9o', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-08-20T06:58:08.685Z', 76,
      1312, 
      3002, 
      0, 
      224, 
      678, 
      8101, 
      436,
      NULL, 
      NULL, 
      '2025-08-20T06:58:08.688Z', '2025-08-20T06:58:08.688Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmg7xn001dw3n1rw1lmszf', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-08-20T06:58:48.487Z', 54,
      430, 
      3941, 
      0.003, 
      420, 
      843, 
      3393, 
      385,
      NULL, 
      NULL, 
      '2025-08-20T06:58:48.492Z', '2025-08-20T06:58:48.492Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmh07w001fw3n1pn6p7sjp', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-08-20T06:59:25.145Z', 56,
      3749, 
      13416, 
      0, 
      313, 
      132, 
      9098, 
      210,
      NULL, 
      NULL, 
      '2025-08-20T06:59:25.148Z', '2025-08-20T06:59:25.148Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmhtj6001hw3n1p0r2q2s1', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-08-20T07:00:03.135Z', 84,
      444, 
      832, 
      0, 
      193, 
      955, 
      3048, 
      223,
      NULL, 
      NULL, 
      '2025-08-20T07:00:03.138Z', '2025-08-20T07:00:03.138Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmif6c001jw3n10fiz6y8y', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-08-20T07:00:31.186Z', 65,
      2155, 
      11499, 
      0, 
      106, 
      155, 
      7661, 
      39,
      NULL, 
      NULL, 
      '2025-08-20T07:00:31.188Z', '2025-08-20T07:00:31.188Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmiyod001lw3n1o7sd507e', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-08-20T07:00:56.459Z', 91,
      415, 
      1752, 
      0, 
      78, 
      160, 
      1430, 
      15,
      NULL, 
      NULL, 
      '2025-08-20T07:00:56.461Z', '2025-08-20T07:00:56.461Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmjkdj001nw3n1m7525b87', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-08-20T07:01:24.581Z', 71,
      1757, 
      7801, 
      0, 
      62, 
      148, 
      5195, 
      22,
      NULL, 
      NULL, 
      '2025-08-20T07:01:24.583Z', '2025-08-20T07:01:24.583Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmk5ii001pw3n1ee5hjv7h', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-08-20T07:01:51.977Z', 98,
      427, 
      901, 
      0.001, 
      48, 
      386, 
      1198, 
      0,
      NULL, 
      NULL, 
      '2025-08-20T07:01:51.978Z', '2025-08-20T07:01:51.978Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmkq16001rw3n15dcquoxz', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-08-20T07:02:18.568Z', 72,
      1877, 
      6376, 
      0, 
      94, 
      131, 
      5349, 
      54,
      NULL, 
      NULL, 
      '2025-08-20T07:02:18.570Z', '2025-08-20T07:02:18.570Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmlndh001tw3n15abls6u9', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-08-20T07:03:01.780Z', 96,
      433, 
      1193, 
      0.011, 
      149, 
      159, 
      1453, 
      80,
      NULL, 
      NULL, 
      '2025-08-20T07:03:01.781Z', '2025-08-20T07:03:01.781Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmejmmbip001vw3n1hn5hktyo', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-08-20T07:03:33.072Z', 86,
      1488, 
      3569, 
      0, 
      157, 
      1234, 
      4832, 
      80,
      NULL, 
      NULL, 
      '2025-08-20T07:03:33.074Z', '2025-08-20T07:03:33.074Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9l4hx0001w3p4uoy7p9dt', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-08-21T10:34:14.658Z', 83,
      428, 
      1041, 
      0.284, 
      200, 
      438, 
      1200, 
      95,
      NULL, 
      NULL, 
      '2025-08-21T10:34:14.661Z', '2025-08-21T10:34:14.661Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9ljgd0003w3p4lcs68rzj', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-08-21T10:34:34.043Z', 73,
      1400, 
      6901, 
      0, 
      63, 
      194, 
      4494, 
      0,
      NULL, 
      NULL, 
      '2025-08-21T10:34:34.046Z', '2025-08-21T10:34:34.046Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9m2wl0005w3p4u4edwzfx', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-08-21T10:34:59.251Z', 95,
      602, 
      1137, 
      0, 
      95, 
      801, 
      1752, 
      68,
      NULL, 
      NULL, 
      '2025-08-21T10:34:59.253Z', '2025-08-21T10:34:59.253Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9mjxo0007w3p49b8fo3z9', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-08-21T10:35:21.322Z', 71,
      1863, 
      6862, 
      0, 
      77, 
      136, 
      5585, 
      37,
      NULL, 
      NULL, 
      '2025-08-21T10:35:21.324Z', '2025-08-21T10:35:21.324Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9n2od0009w3p49a8mz4fh', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-08-21T10:35:45.611Z', 71,
      625, 
      4073, 
      0.058, 
      155, 
      454, 
      2833, 
      91,
      NULL, 
      NULL, 
      '2025-08-21T10:35:45.613Z', '2025-08-21T10:35:45.613Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9nka1000bw3p43034laby', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-08-21T10:36:08.423Z', 61,
      1958, 
      25686, 
      0.078, 
      162, 
      125, 
      11969, 
      151,
      NULL, 
      NULL, 
      '2025-08-21T10:36:08.425Z', '2025-08-21T10:36:08.425Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9o31n000dw3p4jjj1q7gw', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-08-21T10:36:32.745Z', 96,
      428, 
      1287, 
      0.032, 
      70, 
      662, 
      1160, 
      0,
      NULL, 
      NULL, 
      '2025-08-21T10:36:32.748Z', '2025-08-21T10:36:32.748Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9ok6r000fw3p4krnyalfc', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-08-21T10:36:54.960Z', 67,
      2072, 
      9577, 
      0, 
      139, 
      131, 
      6131, 
      111,
      NULL, 
      NULL, 
      '2025-08-21T10:36:54.963Z', '2025-08-21T10:36:54.963Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9p43f000hw3p43i6r8b73', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-08-21T10:37:20.761Z', 95,
      514, 
      1201, 
      0.061, 
      81, 
      738, 
      1586, 
      22,
      NULL, 
      NULL, 
      '2025-08-21T10:37:20.764Z', '2025-08-21T10:37:20.764Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9pnxn000jw3p4s4ih5f25', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-08-21T10:37:46.473Z', 72,
      1439, 
      6451, 
      0.078, 
      131, 
      143, 
      4769, 
      13,
      NULL, 
      NULL, 
      '2025-08-21T10:37:46.475Z', '2025-08-21T10:37:46.475Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9qd3r000lw3p4z85l21dt', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-08-21T10:38:19.094Z', 82,
      309, 
      2422, 
      0.043, 
      81, 
      1468, 
      2217, 
      33,
      NULL, 
      NULL, 
      '2025-08-21T10:38:19.095Z', '2025-08-21T10:38:19.095Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9qzd7000nw3p4uomsjrpr', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-08-21T10:38:47.939Z', 93,
      1132, 
      3076, 
      0, 
      74, 
      275, 
      3562, 
      48,
      NULL, 
      NULL, 
      '2025-08-21T10:38:47.947Z', '2025-08-21T10:38:47.947Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9rl9u000pw3p48jz39cmj', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-08-21T10:39:16.337Z', 96,
      308, 
      649, 
      0.003, 
      79, 
      1249, 
      1979, 
      35,
      NULL, 
      NULL, 
      '2025-08-21T10:39:16.339Z', '2025-08-21T10:39:16.339Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9s3uy000rw3p4aflg7mdt', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-08-21T10:39:40.419Z', 73,
      1327, 
      9451, 
      0.01, 
      50, 
      126, 
      3980, 
      2,
      NULL, 
      NULL, 
      '2025-08-21T10:39:40.426Z', '2025-08-21T10:39:40.426Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9sk7l000tw3p4bvi4ikzv', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-08-21T10:40:01.615Z', 95,
      472, 
      1207, 
      0, 
      44, 
      779, 
      1664, 
      0,
      NULL, 
      NULL, 
      '2025-08-21T10:40:01.618Z', '2025-08-21T10:40:01.618Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmel9t628000vw3p4f3exjx0d', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-08-21T10:40:29.927Z', 82,
      1501, 
      3901, 
      0, 
      114, 
      732, 
      5581, 
      109,
      NULL, 
      NULL, 
      '2025-08-21T10:40:29.937Z', '2025-08-21T10:40:29.937Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3pgrva0001w3kn7cdb2pkl', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-03T08:18:36.677Z', 97,
      416, 
      1009, 
      0, 
      56, 
      929, 
      1428, 
      3,
      NULL, 
      NULL, 
      '2025-09-03T08:18:36.691Z', '2025-09-03T08:18:36.691Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3ph7rs0003w3knjjlqrp7d', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-03T08:18:57.296Z', 69,
      1875, 
      9926, 
      0, 
      99, 
      170, 
      5909, 
      57,
      NULL, 
      NULL, 
      '2025-09-03T08:18:57.303Z', '2025-09-03T08:18:57.303Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3pjyrl0005w3knm5jv9yvp', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-03T08:21:05.593Z', 87,
      438, 
      1571, 
      0.053, 
      115, 
      830, 
      2639, 
      87,
      NULL, 
      NULL, 
      '2025-09-03T08:21:05.601Z', '2025-09-03T08:21:05.601Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3pkklf0007w3knfhx4v8qy', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-03T08:21:33.890Z', 64,
      2002, 
      7326, 
      0.078, 
      231, 
      164, 
      6396, 
      204,
      NULL, 
      NULL, 
      '2025-09-03T08:21:33.891Z', '2025-09-03T08:21:33.891Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3pl5o90009w3knzavn5itl', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-03T08:22:01.206Z', 96,
      306, 
      641, 
      0.005, 
      123, 
      1362, 
      1860, 
      87,
      NULL, 
      NULL, 
      '2025-09-03T08:22:01.209Z', '2025-09-03T08:22:01.209Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3plnn4000bw3kny4qn732r', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-03T08:22:24.495Z', 64,
      2888, 
      8298, 
      0, 
      101, 
      135, 
      6472, 
      75,
      NULL, 
      NULL, 
      '2025-09-03T08:22:24.497Z', '2025-09-03T08:22:24.497Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3pmbfg000dw3kngl6o63pd', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-03T08:22:55.323Z', 94,
      382, 
      1270, 
      0.014, 
      98, 
      1222, 
      1874, 
      49,
      NULL, 
      NULL, 
      '2025-09-03T08:22:55.325Z', '2025-09-03T08:22:55.325Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3pmxzi000fw3knabfxr0ac', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-03T08:23:24.557Z', 68,
      1862, 
      10700, 
      0, 
      119, 
      159, 
      5566, 
      112,
      NULL, 
      NULL, 
      '2025-09-03T08:23:24.558Z', '2025-09-03T08:23:24.558Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3pnn84000hw3knokb2tn5t', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-03T08:23:57.267Z', 89,
      595, 
      1435, 
      0, 
      117, 
      1098, 
      2250, 
      114,
      NULL, 
      NULL, 
      '2025-09-03T08:23:57.268Z', '2025-09-03T08:23:57.268Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3po6bp000jw3kng3lmlakn', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-03T08:24:22.020Z', 71,
      1501, 
      8149, 
      0, 
      106, 
      864, 
      4980, 
      69,
      NULL, 
      NULL, 
      '2025-09-03T08:24:22.021Z', '2025-09-03T08:24:22.021Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3por13000lw3knrx3cvrhr', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-03T08:24:48.854Z', 97,
      418, 
      843, 
      0, 
      92, 
      812, 
      1569, 
      38,
      NULL, 
      NULL, 
      '2025-09-03T08:24:48.855Z', '2025-09-03T08:24:48.855Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3pp99c000nw3kn1vsmhj25', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-03T08:25:12.479Z', 61,
      3143, 
      8254, 
      0, 
      158, 
      144, 
      6320, 
      186,
      NULL, 
      NULL, 
      '2025-09-03T08:25:12.481Z', '2025-09-03T08:25:12.481Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3prfxz000pw3kndvy4a982', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-03T08:26:54.453Z', 73,
      424, 
      3769, 
      0.001, 
      79, 
      141, 
      3008, 
      46,
      NULL, 
      NULL, 
      '2025-09-03T08:26:54.456Z', '2025-09-03T08:26:54.456Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3psdrd000rw3knmyayu706', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-03T08:27:38.280Z', 50,
      1249, 
      22690, 
      0, 
      202, 
      671, 
      11594, 
      609,
      NULL, 
      NULL, 
      '2025-09-03T08:27:38.281Z', '2025-09-03T08:27:38.281Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q0d5s000tw3knklwvcg5f', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-03T08:33:50.750Z', 74,
      1351, 
      7126, 
      0, 
      78, 
      704, 
      4035, 
      14,
      NULL, 
      NULL, 
      '2025-09-03T08:33:50.752Z', '2025-09-03T08:33:50.752Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q0zji000vw3kn1934ylek', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-09-03T08:34:19.756Z', 96,
      383, 
      1074, 
      0, 
      101, 
      890, 
      1607, 
      46,
      NULL, 
      NULL, 
      '2025-09-03T08:34:19.758Z', '2025-09-03T08:34:19.758Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q11mz000xw3kn4cwb84a3', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-03T08:34:22.469Z', 87,
      463, 
      1057, 
      0, 
      243, 
      150, 
      1446, 
      253,
      NULL, 
      NULL, 
      '2025-09-03T08:34:22.476Z', '2025-09-03T08:34:22.476Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q1gq2000zw3knwk14gztx', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-09-03T08:34:42.024Z', 76,
      1444, 
      6001, 
      0, 
      96, 
      596, 
      4168, 
      34,
      NULL, 
      NULL, 
      '2025-09-03T08:34:42.027Z', '2025-09-03T08:34:42.027Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q1hn50011w3knkzut8w5e', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-03T08:34:43.216Z', 69,
      1836, 
      9791, 
      0, 
      117, 
      166, 
      5962, 
      63,
      NULL, 
      NULL, 
      '2025-09-03T08:34:43.217Z', '2025-09-03T08:34:43.217Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q27t60013w3knixmo40qq', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-03T08:35:17.128Z', 84,
      404, 
      1351, 
      0.015, 
      173, 
      1192, 
      2616, 
      193,
      NULL, 
      NULL, 
      '2025-09-03T08:35:17.130Z', '2025-09-03T08:35:17.130Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q2sze0015w3kn3gtojaj3', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-03T08:35:44.569Z', 73,
      1391, 
      6767, 
      0.02, 
      126, 
      808, 
      4324, 
      95,
      NULL, 
      NULL, 
      '2025-09-03T08:35:44.571Z', '2025-09-03T08:35:44.571Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q3rzm0019w3kngptcipy0', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-03T08:36:29.936Z', 55,
      831, 
      1327, 
      0.053, 
      429, 
      179, 
      10035, 
      3228,
      NULL, 
      NULL, 
      '2025-09-03T08:36:29.939Z', '2025-09-03T08:36:29.939Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q49rq001bw3knbz28nmgg', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-03T08:36:52.981Z', 73,
      1407, 
      6311, 
      0.078, 
      99, 
      155, 
      4437, 
      16,
      NULL, 
      NULL, 
      '2025-09-03T08:36:52.983Z', '2025-09-03T08:36:52.983Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q4yw5001dw3kn0kt74opl', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-03T08:37:25.519Z', 93,
      377, 
      932, 
      0, 
      140, 
      325, 
      1553, 
      173,
      NULL, 
      NULL, 
      '2025-09-03T08:37:25.541Z', '2025-09-03T08:37:25.541Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q5k80001fw3kng9k2mq4d', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-03T08:37:53.183Z', 61,
      2916, 
      8558, 
      0, 
      179, 
      142, 
      6552, 
      217,
      NULL, 
      NULL, 
      '2025-09-03T08:37:53.185Z', '2025-09-03T08:37:53.185Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q64w0001hw3knbriechwr', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-03T08:38:19.966Z', 96,
      505, 
      1299, 
      0, 
      78, 
      149, 
      1233, 
      25,
      NULL, 
      NULL, 
      '2025-09-03T08:38:19.968Z', '2025-09-03T08:38:19.968Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q6nwu001jw3knr17r6n31', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-03T08:38:44.620Z', 69,
      1848, 
      10695, 
      0, 
      127, 
      153, 
      5467, 
      64,
      NULL, 
      NULL, 
      '2025-09-03T08:38:44.622Z', '2025-09-03T08:38:44.622Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q773u001lw3kne2uum4a4', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-03T08:39:09.497Z', 92,
      526, 
      1597, 
      0, 
      83, 
      159, 
      1655, 
      29,
      NULL, 
      NULL, 
      '2025-09-03T08:39:09.498Z', '2025-09-03T08:39:09.498Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q802w001nw3kna7sced7e', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-03T08:39:47.046Z', 64,
      2345, 
      12066, 
      0, 
      137, 
      146, 
      7840, 
      94,
      NULL, 
      NULL, 
      '2025-09-03T08:39:47.049Z', '2025-09-03T08:39:47.049Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q8j7m001pw3knt8bf4p3f', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-03T08:40:11.840Z', 97,
      465, 
      989, 
      0, 
      125, 
      157, 
      1396, 
      39,
      NULL, 
      NULL, 
      '2025-09-03T08:40:11.842Z', '2025-09-03T08:40:11.842Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q90ge001rw3knohn0w9hc', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-03T08:40:34.188Z', 65,
      2870, 
      8128, 
      0, 
      77, 
      174, 
      6654, 
      27,
      NULL, 
      NULL, 
      '2025-09-03T08:40:34.190Z', '2025-09-03T08:40:34.190Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3q9q7a001tw3knbqa7ruvb', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-03T08:41:07.556Z', 73,
      334, 
      3665, 
      0.001, 
      83, 
      164, 
      2891, 
      48,
      NULL, 
      NULL, 
      '2025-09-03T08:41:07.559Z', '2025-09-03T08:41:07.559Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3qac35001vw3knyeb3thco', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-03T08:41:35.919Z', 60,
      3275, 
      18101, 
      0, 
      124, 
      158, 
      10353, 
      75,
      NULL, 
      NULL, 
      '2025-09-03T08:41:35.921Z', '2025-09-03T08:41:35.921Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3qbr50001xw3kn9su1vag6', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-03T08:42:42.083Z', 55,
      556, 
      1545, 
      0, 
      1057, 
      1780, 
      10088, 
      5096,
      NULL, 
      NULL, 
      '2025-09-03T08:42:42.084Z', '2025-09-03T08:42:42.084Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3qcg5u001zw3knm9m8oe7k', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-03T08:43:14.512Z', 75,
      1881, 
      3664, 
      0, 
      312, 
      1192, 
      10523, 
      232,
      NULL, 
      NULL, 
      '2025-09-03T08:43:14.515Z', '2025-09-03T08:43:14.515Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3qd8850021w3knzla3necp', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-09-03T08:43:50.883Z', 90,
      399, 
      985, 
      0, 
      144, 
      1098, 
      2792, 
      123,
      NULL, 
      NULL, 
      '2025-09-03T08:43:50.885Z', '2025-09-03T08:43:50.885Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3ql86i0023w3knahrvq986', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-03T08:50:04.072Z', 94,
      429, 
      1523, 
      0.011, 
      87, 
      142, 
      1257, 
      19,
      NULL, 
      NULL, 
      '2025-09-03T08:50:04.074Z', '2025-09-03T08:50:04.074Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3qlsdp0025w3kn98o6jcem', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-03T08:50:30.252Z', 71,
      2017, 
      6751, 
      0, 
      120, 
      128, 
      5079, 
      59,
      NULL, 
      NULL, 
      '2025-09-03T08:50:30.254Z', '2025-09-03T08:50:30.254Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3syy910001w3lb7jeg1fcg', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-03T09:56:26.317Z', 93,
      406, 
      1322, 
      0.099, 
      68, 
      174, 
      1269, 
      10,
      NULL, 
      NULL, 
      '2025-09-03T09:56:43.621Z', '2025-09-03T09:56:43.621Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3t0qvh0003w3lbim8lsg75', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-03T09:58:07.372Z', 94,
      397, 
      1348, 
      0.099, 
      74, 
      165, 
      940, 
      0,
      NULL, 
      NULL, 
      '2025-09-03T09:58:07.374Z', '2025-09-03T09:58:07.374Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3t1abd0005w3lbd13vm4zj', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-03T09:58:32.568Z', 71,
      1821, 
      6788, 
      0.078, 
      74, 
      298, 
      4641, 
      32,
      NULL, 
      NULL, 
      '2025-09-03T09:58:32.570Z', '2025-09-03T09:58:32.570Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3t1z3n0007w3lbdquv5z81', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-03T09:59:04.690Z', 96,
      518, 
      1127, 
      0, 
      135, 
      151, 
      1138, 
      112,
      NULL, 
      NULL, 
      '2025-09-03T09:59:04.691Z', '2025-09-03T09:59:04.691Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3t2epo0009w3lb2huc73nn', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-09-03T09:59:24.923Z', 76,
      1770, 
      5709, 
      0, 
      85, 
      799, 
      4366, 
      49,
      NULL, 
      NULL, 
      '2025-09-03T09:59:24.925Z', '2025-09-03T09:59:24.925Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3t32cq000bw3lbjfmpouq6', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-09-03T09:59:55.561Z', 67,
      776, 
      4210, 
      0.058, 
      221, 
      168, 
      2956, 
      162,
      NULL, 
      NULL, 
      '2025-09-03T09:59:55.562Z', '2025-09-03T09:59:55.562Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3t3qmi000dw3lbnkl16ol1', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-03T10:00:27.016Z', 43,
      2455, 
      25142, 
      0, 
      651, 
      153, 
      12597, 
      821,
      NULL, 
      NULL, 
      '2025-09-03T10:00:27.018Z', '2025-09-03T10:00:27.018Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3t5jx2000fw3lboorr1cgy', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-03T10:01:51.637Z', 99,
      439, 
      841, 
      0, 
      101, 
      158, 
      871, 
      6,
      NULL, 
      NULL, 
      '2025-09-03T10:01:51.638Z', '2025-09-03T10:01:51.638Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3t6498000hw3lb5thow8ol', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-03T10:02:17.995Z', 83,
      1245, 
      4356, 
      0, 
      130, 
      153, 
      3228, 
      121,
      NULL, 
      NULL, 
      '2025-09-03T10:02:17.997Z', '2025-09-03T10:02:17.997Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3t78t3000jw3lbs9g5669e', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-03T10:03:10.550Z', 70,
      455, 
      987, 
      0.055, 
      232, 
      333, 
      1887, 
      674,
      NULL, 
      NULL, 
      '2025-09-03T10:03:10.552Z', '2025-09-03T10:03:10.552Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3t7q5g000lw3lb7doifsl0', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-03T10:03:33.027Z', 67,
      1840, 
      7690, 
      0.078, 
      134, 
      165, 
      6339, 
      114,
      NULL, 
      NULL, 
      '2025-09-03T10:03:33.029Z', '2025-09-03T10:03:33.029Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3tgj40000nw3lbjniut4j9', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-03T10:10:23.806Z', 34,
      2971, 
      12602, 
      0.655, 
      171, 
      131, 
      6961, 
      301,
      NULL, 
      NULL, 
      '2025-09-03T10:10:23.808Z', '2025-09-03T10:10:23.808Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3tiepl000pw3lbaxin7331', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-03T10:11:51.416Z', 93,
      513, 
      1572, 
      0, 
      129, 
      194, 
      1340, 
      49,
      NULL, 
      NULL, 
      '2025-09-03T10:11:51.418Z', '2025-09-03T10:11:51.418Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3tj2tt000rw3lbra4h9s3d', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-03T10:12:22.670Z', 71,
      1347, 
      9001, 
      0, 
      165, 
      118, 
      4052, 
      160,
      NULL, 
      NULL, 
      '2025-09-03T10:12:22.673Z', '2025-09-03T10:12:22.673Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3tjmgg000tw3lb6nb3az8s', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-03T10:12:48.110Z', 97,
      385, 
      921, 
      0, 
      61, 
      975, 
      1680, 
      6,
      NULL, 
      NULL, 
      '2025-09-03T10:12:48.112Z', '2025-09-03T10:12:48.112Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3tk9ge000vw3lbm9qjc3yo', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-03T10:13:17.916Z', 74,
      1651, 
      5101, 
      0, 
      134, 
      698, 
      5667, 
      163,
      NULL, 
      NULL, 
      '2025-09-03T10:13:17.918Z', '2025-09-03T10:13:17.918Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3tkz1p000xw3lbgdhk64yb', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-03T10:13:51.082Z', 85,
      540, 
      1054, 
      0, 
      143, 
      164, 
      1876, 
      262,
      NULL, 
      NULL, 
      '2025-09-03T10:13:51.085Z', '2025-09-03T10:13:51.085Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3tlfrl000zw3lbdsj8pw73', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-03T10:14:12.750Z', 64,
      2990, 
      8057, 
      0, 
      100, 
      128, 
      6531, 
      64,
      NULL, 
      NULL, 
      '2025-09-03T10:14:12.754Z', '2025-09-03T10:14:12.754Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3tnlzy0011w3lbuqwkxh7r', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-03T10:15:54.140Z', 60,
      447, 
      3451, 
      0.001, 
      223, 
      785, 
      4350, 
      300,
      NULL, 
      NULL, 
      '2025-09-03T10:15:54.142Z', '2025-09-03T10:15:54.142Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3togjy0013w3lbma0dgyl7', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-03T10:16:33.740Z', 57,
      1277, 
      22193, 
      0, 
      192, 
      771, 
      11139, 
      353,
      NULL, 
      NULL, 
      '2025-09-03T10:16:33.742Z', '2025-09-03T10:16:33.742Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3tp1of0015w3lbay4gmmlt', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-03T10:17:01.118Z', 94,
      387, 
      785, 
      0, 
      178, 
      1017, 
      2292, 
      80,
      NULL, 
      NULL, 
      '2025-09-03T10:17:01.120Z', '2025-09-03T10:17:01.120Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3tsn7x0017w3lbqw0glqp7', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-03T10:19:49.003Z', 61,
      2567, 
      15277, 
      0, 
      304, 
      150, 
      8053, 
      176,
      NULL, 
      NULL, 
      '2025-09-03T10:19:49.006Z', '2025-09-03T10:19:49.006Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u1o4q0019w3lbxck8w9k9', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-09-03T10:26:50.089Z', 60,
      1595, 
      4651, 
      0, 
      325, 
      867, 
      8833, 
      579,
      NULL, 
      NULL, 
      '2025-09-03T10:26:50.091Z', '2025-09-03T10:26:50.091Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u3hy8001bw3lbbbrf4pvl', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-03T10:28:15.390Z', 92,
      476, 
      1420, 
      0.099, 
      70, 
      305, 
      1317, 
      12,
      NULL, 
      NULL, 
      '2025-09-03T10:28:15.392Z', '2025-09-03T10:28:15.392Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u44gw001dw3lbv04b1v8u', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-09-03T10:28:44.575Z', 58,
      430, 
      3921, 
      0.003, 
      244, 
      1715, 
      3800, 
      309,
      NULL, 
      NULL, 
      '2025-09-03T10:28:44.577Z', '2025-09-03T10:28:44.577Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u46gq001fw3lbzxugpgwc', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-03T10:28:47.159Z', 74,
      1277, 
      4977, 
      0.078, 
      129, 
      154, 
      3362, 
      265,
      NULL, 
      NULL, 
      '2025-09-03T10:28:47.162Z', '2025-09-03T10:28:47.162Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u4ogp001hw3lblaltu9ki', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-03T10:29:10.488Z', 99,
      506, 
      968, 
      0, 
      141, 
      140, 
      904, 
      36,
      NULL, 
      NULL, 
      '2025-09-03T10:29:10.489Z', '2025-09-03T10:29:10.489Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u4z57001jw3lb0skeakia', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-09-03T10:29:24.329Z', 57,
      1844, 
      14279, 
      0, 
      420, 
      780, 
      9528, 
      354,
      NULL, 
      NULL, 
      '2025-09-03T10:29:24.332Z', '2025-09-03T10:29:24.332Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u54lo001lw3lbie7cqf8v', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-09-03T10:29:31.402Z', 71,
      1836, 
      6871, 
      0, 
      96, 
      139, 
      5554, 
      66,
      NULL, 
      NULL, 
      '2025-09-03T10:29:31.404Z', '2025-09-03T10:29:31.404Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u5mxh001nw3lbw3bc3zlb', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-09-03T10:29:55.156Z', 94,
      299, 
      808, 
      0, 
      79, 
      1470, 
      2467, 
      20,
      NULL, 
      NULL, 
      '2025-09-03T10:29:55.157Z', '2025-09-03T10:29:55.157Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u5phs001pw3lbp0ymshcs', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-09-03T10:29:58.478Z', 68,
      710, 
      4143, 
      0.058, 
      202, 
      710, 
      3136, 
      132,
      NULL, 
      NULL, 
      '2025-09-03T10:29:58.480Z', '2025-09-03T10:29:58.480Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u6a9s001rw3lbop5wq8ka', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-03T10:30:25.406Z', 51,
      2218, 
      25876, 
      0, 
      421, 
      140, 
      12297, 
      480,
      NULL, 
      NULL, 
      '2025-09-03T10:30:25.409Z', '2025-09-03T10:30:25.409Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u6d70001tw3lbizsa9o6w', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-09-03T10:30:29.194Z', 79,
      1255, 
      3601, 
      0, 
      186, 
      790, 
      8302, 
      189,
      NULL, 
      NULL, 
      '2025-09-03T10:30:29.196Z', '2025-09-03T10:30:29.196Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u70t3001vw3lb2cm1mdvr', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-09-03T10:30:59.798Z', 90,
      461, 
      1702, 
      0, 
      96, 
      797, 
      1811, 
      29,
      NULL, 
      NULL, 
      '2025-09-03T10:30:59.799Z', '2025-09-03T10:30:59.799Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u7ikm001xw3lbbe6zlv3n', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-03T10:31:22.821Z', 74,
      1818, 
      6121, 
      0, 
      103, 
      597, 
      4498, 
      85,
      NULL, 
      NULL, 
      '2025-09-03T10:31:22.823Z', '2025-09-03T10:31:22.823Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u890t001zw3lbupj9bxd8', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-03T10:31:57.098Z', 91,
      611, 
      1010, 
      0, 
      218, 
      156, 
      1283, 
      210,
      NULL, 
      NULL, 
      '2025-09-03T10:31:57.101Z', '2025-09-03T10:31:57.101Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf3u8qzl0021w3lbqzwhfvaw', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-03T10:32:20.383Z', 68,
      1887, 
      10034, 
      0, 
      103, 
      164, 
      5962, 
      81,
      NULL, 
      NULL, 
      '2025-09-03T10:32:20.385Z', '2025-09-03T10:32:20.385Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf435wf50025w3lbzzjbzc65', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-03T14:42:03.999Z', 85,
      1614, 
      3751, 
      0, 
      118, 
      978, 
      5027, 
      34,
      NULL, 
      NULL, 
      '2025-09-03T14:42:04.002Z', '2025-09-03T14:42:04.002Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf436h7e0027w3lbsyyqqfps', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-03T14:42:30.936Z', 95,
      394, 
      1041, 
      0, 
      103, 
      1204, 
      1996, 
      56,
      NULL, 
      NULL, 
      '2025-09-03T14:42:30.939Z', '2025-09-03T14:42:30.939Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf436ywb0029w3lb6atfbk0x', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-03T14:42:53.865Z', 79,
      1501, 
      4501, 
      0, 
      91, 
      952, 
      5622, 
      51,
      NULL, 
      NULL, 
      '2025-09-03T14:42:53.867Z', '2025-09-03T14:42:53.867Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf437g04002bw3lblrrh9lln', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-03T14:43:16.034Z', 98,
      375, 
      772, 
      0, 
      41, 
      759, 
      1314, 
      0,
      NULL, 
      NULL, 
      '2025-09-03T14:43:16.036Z', '2025-09-03T14:43:16.036Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf437yc6002dw3lbia53zfrg', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-03T14:43:39.797Z', 84,
      1198, 
      3773, 
      0, 
      176, 
      489, 
      3931, 
      201,
      NULL, 
      NULL, 
      '2025-09-03T14:43:39.798Z', '2025-09-03T14:43:39.798Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43a5ny002fw3lbvul7fl11', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-03T14:45:22.605Z', 64,
      316, 
      3813, 
      0.001, 
      176, 
      1713, 
      4315, 
      213,
      NULL, 
      NULL, 
      '2025-09-03T14:45:22.607Z', '2025-09-03T14:45:22.607Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43axvx002hw3lbr2oilvoc', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-03T14:45:59.178Z', 62,
      1710, 
      21786, 
      0, 
      179, 
      885, 
      12569, 
      195,
      NULL, 
      NULL, 
      '2025-09-03T14:45:59.182Z', '2025-09-03T14:45:59.182Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43btoe002jw3lbqqwt4pas', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-03T14:46:40.381Z', 75,
      359, 
      1024, 
      0, 
      289, 
      1642, 
      3219, 
      365,
      NULL, 
      NULL, 
      '2025-09-03T14:46:40.383Z', '2025-09-03T14:46:40.383Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43cgoe002lw3lb9ztqo9pc', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-03T14:47:10.189Z', 72,
      1860, 
      4622, 
      0, 
      284, 
      990, 
      9729, 
      150,
      NULL, 
      NULL, 
      '2025-09-03T14:47:10.190Z', '2025-09-03T14:47:10.190Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43dbda002nw3lb1f44gtq9', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-09-03T14:47:49.942Z', 76,
      318, 
      581, 
      0, 
      187, 
      1418, 
      3371, 
      365,
      NULL, 
      NULL, 
      '2025-09-03T14:47:49.967Z', '2025-09-03T14:47:49.967Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43dxpq002pw3lb5jv14nka', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-09-03T14:48:18.925Z', 86,
      1332, 
      3076, 
      0, 
      160, 
      783, 
      6936, 
      135,
      NULL, 
      NULL, 
      '2025-09-03T14:48:18.927Z', '2025-09-03T14:48:18.927Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43g1f3002rw3lbkyzq1vel', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-09-03T14:49:57.036Z', 63,
      431, 
      3837, 
      0.003, 
      178, 
      1954, 
      3570, 
      236,
      NULL, 
      NULL, 
      '2025-09-03T14:49:57.039Z', '2025-09-03T14:49:57.039Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43gvfd002tw3lbkogiawop', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-09-03T14:50:35.927Z', 56,
      1840, 
      16778, 
      0, 
      364, 
      989, 
      10146, 
      361,
      NULL, 
      NULL, 
      '2025-09-03T14:50:35.929Z', '2025-09-03T14:50:35.929Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43hk4l002vw3lbmu1ry18z', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-09-03T14:51:07.939Z', 92,
      301, 
      894, 
      0, 
      65, 
      1540, 
      2889, 
      21,
      NULL, 
      NULL, 
      '2025-09-03T14:51:07.942Z', '2025-09-03T14:51:07.942Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43iaqx002xw3lbjbrnzdxu', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-09-03T14:51:42.439Z', 76,
      1277, 
      3952, 
      0, 
      202, 
      924, 
      8896, 
      202,
      NULL, 
      NULL, 
      '2025-09-03T14:51:42.441Z', '2025-09-03T14:51:42.441Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43iy0b002zw3lb11nv46i8', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-09-03T14:52:12.584Z', 90,
      419, 
      1743, 
      0, 
      110, 
      1125, 
      1920, 
      32,
      NULL, 
      NULL, 
      '2025-09-03T14:52:12.587Z', '2025-09-03T14:52:12.587Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43jiqo0031w3lbzx28sjkk', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-03T14:52:39.452Z', 80,
      1351, 
      5076, 
      0, 
      100, 
      669, 
      3660, 
      50,
      NULL, 
      NULL, 
      '2025-09-03T14:52:39.457Z', '2025-09-03T14:52:39.457Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43l7ee0033w3lbwpwu5yap', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-09-03T14:53:58.068Z', 97,
      389, 
      1047, 
      0, 
      34, 
      646, 
      1228, 
      0,
      NULL, 
      NULL, 
      '2025-09-03T14:53:58.070Z', '2025-09-03T14:53:58.070Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43loc30035w3lb09elmh0y', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-03T14:54:20.017Z', 92,
      417, 
      1300, 
      0.099, 
      79, 
      501, 
      1514, 
      20,
      NULL, 
      NULL, 
      '2025-09-03T14:54:20.019Z', '2025-09-03T14:54:20.019Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43lr6x0037w3lbtzqplxgh', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-09-03T14:54:23.719Z', 85,
      1458, 
      3821, 
      0, 
      187, 
      505, 
      4276, 
      117,
      NULL, 
      NULL, 
      '2025-09-03T14:54:23.721Z', '2025-09-03T14:54:23.721Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43m43n0039w3lbton7limz', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-03T14:54:40.450Z', 71,
      1381, 
      7726, 
      0.078, 
      78, 
      145, 
      4562, 
      0,
      NULL, 
      NULL, 
      '2025-09-03T14:54:40.452Z', '2025-09-03T14:54:40.452Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43mg3v003bw3lbea5c9p3d', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-03T14:54:56.010Z', 90,
      445, 
      1505, 
      0.011, 
      168, 
      1177, 
      2113, 
      93,
      NULL, 
      NULL, 
      '2025-09-03T14:54:56.012Z', '2025-09-03T14:54:56.012Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43mlap003dw3lb1nt05vu7', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-03T14:55:02.735Z', 95,
      415, 
      1307, 
      0, 
      65, 
      668, 
      1329, 
      9,
      NULL, 
      NULL, 
      '2025-09-03T14:55:02.737Z', '2025-09-03T14:55:02.737Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43mzq9003fw3lbmcs5h596', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-09-03T14:55:21.440Z', 71,
      1834, 
      6858, 
      0, 
      88, 
      156, 
      5620, 
      26,
      NULL, 
      NULL, 
      '2025-09-03T14:55:21.441Z', '2025-09-03T14:55:21.441Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43n2sx003hw3lbxo5b970o', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-03T14:55:25.423Z', 87,
      1596, 
      3694, 
      0, 
      137, 
      697, 
      4124, 
      67,
      NULL, 
      NULL, 
      '2025-09-03T14:55:25.425Z', '2025-09-03T14:55:25.425Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43nirl003lw3lbkypfu6dd', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-09-03T14:55:46.113Z', 69,
      624, 
      4343, 
      0.058, 
      166, 
      757, 
      3168, 
      98,
      NULL, 
      NULL, 
      '2025-09-03T14:55:46.114Z', '2025-09-03T14:55:46.114Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43o0nh003nw3lbpbwgetgd', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-03T14:56:09.292Z', 66,
      1371, 
      22426, 
      0.078, 
      262, 
      164, 
      7856, 
      33,
      NULL, 
      NULL, 
      '2025-09-03T14:56:09.293Z', '2025-09-03T14:56:09.293Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43ptny003pw3lbrphmdrww', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-03T14:57:33.548Z', 96,
      441, 
      1163, 
      0, 
      67, 
      928, 
      1472, 
      12,
      NULL, 
      NULL, 
      '2025-09-03T14:57:33.550Z', '2025-09-03T14:57:33.550Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43q8ea003rw3lbdcgtltgv', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-03T14:57:52.641Z', 68,
      1854, 
      9786, 
      0, 
      96, 
      156, 
      5994, 
      40,
      NULL, 
      NULL, 
      '2025-09-03T14:57:52.642Z', '2025-09-03T14:57:52.642Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43qs76003tw3lbqo8bnebn', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-03T14:58:18.305Z', 92,
      505, 
      1464, 
      0.053, 
      67, 
      583, 
      1693, 
      9,
      NULL, 
      NULL, 
      '2025-09-03T14:58:18.306Z', '2025-09-03T14:58:18.306Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43rcbg003vw3lba7t2pnul', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-03T14:58:44.378Z', 66,
      1783, 
      7543, 
      0.078, 
      169, 
      168, 
      6206, 
      162,
      NULL, 
      NULL, 
      '2025-09-03T14:58:44.380Z', '2025-09-03T14:58:44.380Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43s1yu003xw3lbxhw3ucoy', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-03T14:59:17.618Z', 82,
      305, 
      2424, 
      0.037, 
      78, 
      1513, 
      2263, 
      65,
      NULL, 
      NULL, 
      '2025-09-03T14:59:17.622Z', '2025-09-03T14:59:17.622Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43snkv003zw3lbep46714r', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-03T14:59:45.627Z', 60,
      2961, 
      8451, 
      0, 
      199, 
      140, 
      6601, 
      252,
      NULL, 
      NULL, 
      '2025-09-03T14:59:45.631Z', '2025-09-03T14:59:45.631Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43uf8e0041w3lbtgmlrgex', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-03T15:01:08.125Z', 94,
      396, 
      1228, 
      0.099, 
      75, 
      221, 
      1036, 
      0,
      NULL, 
      NULL, 
      '2025-09-03T15:01:08.127Z', '2025-09-03T15:01:08.127Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43uipa0043w3lb26es8p8q', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-03T15:01:12.621Z', 99,
      364, 
      604, 
      0, 
      90, 
      164, 
      1190, 
      20,
      NULL, 
      NULL, 
      '2025-09-03T15:01:12.622Z', '2025-09-03T15:01:12.622Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43v04k0045w3lbqijgwwnt', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-03T15:01:35.203Z', 66,
      1801, 
      8220, 
      0.078, 
      107, 
      156, 
      6468, 
      141,
      NULL, 
      NULL, 
      '2025-09-03T15:01:35.204Z', '2025-09-03T15:01:35.204Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43v20h0047w3lbsidn06to', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-03T15:01:37.648Z', 68,
      1851, 
      10685, 
      0, 
      125, 
      146, 
      6112, 
      79,
      NULL, 
      NULL, 
      '2025-09-03T15:01:37.649Z', '2025-09-03T15:01:37.649Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43vff40049w3lb1nrikwdz', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-03T15:01:55.023Z', 96,
      505, 
      1300, 
      0, 
      82, 
      310, 
      1226, 
      29,
      NULL, 
      NULL, 
      '2025-09-03T15:01:55.025Z', '2025-09-03T15:01:55.025Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43vm45004bw3lbhp6kb9px', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-03T15:02:03.699Z', 96,
      407, 
      1081, 
      0, 
      81, 
      123, 
      1448, 
      63,
      NULL, 
      NULL, 
      '2025-09-03T15:02:03.701Z', '2025-09-03T15:02:03.701Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43w57h004dw3lbzgq7emgy', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-03T15:02:28.444Z', 65,
      2091, 
      12049, 
      0, 
      100, 
      133, 
      7142, 
      114,
      NULL, 
      NULL, 
      '2025-09-03T15:02:28.445Z', '2025-09-03T15:02:28.445Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43wiqr004fw3lb5ti0abrl', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-03T15:02:45.986Z', 98,
      397, 
      919, 
      0, 
      48, 
      174, 
      1164, 
      0,
      NULL, 
      NULL, 
      '2025-09-03T15:02:45.988Z', '2025-09-03T15:02:45.988Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43wwdt004hw3lbvxnv9kx2', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-09-03T15:03:03.664Z', 26,
      1499, 
      5844, 
      0.481, 
      164, 
      151, 
      3766, 
      3561,
      NULL, 
      NULL, 
      '2025-09-03T15:03:03.666Z', '2025-09-03T15:03:03.666Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43x0th004jw3lb73tebwja', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-03T15:03:09.412Z', 88,
      1580, 
      3301, 
      0, 
      149, 
      313, 
      4719, 
      109,
      NULL, 
      NULL, 
      '2025-09-03T15:03:09.414Z', '2025-09-03T15:03:09.414Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43xf36004lw3lbd5y310xu', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-09-03T15:03:27.905Z', 72,
      562, 
      4138, 
      0.058, 
      103, 
      186, 
      2627, 
      65,
      NULL, 
      NULL, 
      '2025-09-03T15:03:27.907Z', '2025-09-03T15:03:27.907Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43xwgo004nw3lbn48kdbx0', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-03T15:03:50.423Z', 62,
      1947, 
      25757, 
      0.078, 
      88, 
      110, 
      12031, 
      65,
      NULL, 
      NULL, 
      '2025-09-03T15:03:50.424Z', '2025-09-03T15:03:50.424Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43z266004pw3lbf3lmvil9', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-03T15:04:44.476Z', 72,
      415, 
      3704, 
      0.001, 
      106, 
      141, 
      3398, 
      76,
      NULL, 
      NULL, 
      '2025-09-03T15:04:44.478Z', '2025-09-03T15:04:44.478Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf43zr92004rw3lbu0r1nnuo', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-03T15:05:16.979Z', 95,
      459, 
      1385, 
      0, 
      85, 
      156, 
      1201, 
      29,
      NULL, 
      NULL, 
      '2025-09-03T15:05:16.982Z', '2025-09-03T15:05:16.982Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf440e8c004tw3lbn9fmj5al', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-03T15:05:46.762Z', 64,
      2088, 
      9932, 
      0, 
      203, 
      136, 
      6366, 
      212,
      NULL, 
      NULL, 
      '2025-09-03T15:05:46.764Z', '2025-09-03T15:05:46.764Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf440yb0004vw3lbbf753dlx', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-03T15:06:12.779Z', 93,
      503, 
      1400, 
      0.053, 
      114, 
      147, 
      1534, 
      76,
      NULL, 
      NULL, 
      '2025-09-03T15:06:12.780Z', '2025-09-03T15:06:12.780Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf441i2k004xw3lbrayspgnp', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-03T15:06:38.395Z', 66,
      1794, 
      7634, 
      0.078, 
      182, 
      196, 
      6366, 
      127,
      NULL, 
      NULL, 
      '2025-09-03T15:06:38.397Z', '2025-09-03T15:06:38.397Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf441jk6004zw3lbdqzo4wyb', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-03T15:06:40.325Z', 28,
      3640, 
      19259, 
      0, 
      217, 
      172, 
      16084, 
      5712,
      NULL, 
      NULL, 
      '2025-09-03T15:06:40.327Z', '2025-09-03T15:06:40.327Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4424ct0051w3lb9ylald3f', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-03T15:07:07.276Z', 92,
      442, 
      1046, 
      0, 
      251, 
      161, 
      2196, 
      108,
      NULL, 
      NULL, 
      '2025-09-03T15:07:07.278Z', '2025-09-03T15:07:07.278Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf442ams0053w3lbexdmwwaf', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-03T15:07:15.411Z', 94,
      457, 
      799, 
      0, 
      146, 
      160, 
      1713, 
      155,
      NULL, 
      NULL, 
      '2025-09-03T15:07:15.413Z', '2025-09-03T15:07:15.413Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf442qv30055w3lbb91z4nod', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-03T15:07:36.445Z', 62,
      2519, 
      15510, 
      0, 
      223, 
      153, 
      7938, 
      158,
      NULL, 
      NULL, 
      '2025-09-03T15:07:36.447Z', '2025-09-03T15:07:36.447Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf442xe80057w3lbvez3ani7', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-03T15:07:44.910Z', 25,
      3019, 
      12527, 
      0.655, 
      227, 
      122, 
      7825, 
      556,
      NULL, 
      NULL, 
      '2025-09-03T15:07:44.912Z', '2025-09-03T15:07:44.912Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf443cal0059w3lbu0o09qwu', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-09-03T15:08:04.218Z', 95,
      376, 
      1172, 
      0, 
      120, 
      166, 
      1629, 
      93,
      NULL, 
      NULL, 
      '2025-09-03T15:08:04.221Z', '2025-09-03T15:08:04.221Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf444fq1005bw3lbf2c27xn8', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-09-03T15:08:55.320Z', 45,
      3385, 
      9886, 
      0, 
      269, 
      148, 
      7982, 
      625,
      NULL, 
      NULL, 
      '2025-09-03T15:08:55.322Z', '2025-09-03T15:08:55.322Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf444r5r005dw3lbvo7b3vu6', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-03T15:09:10.142Z', 94,
      427, 
      1496, 
      0.014, 
      75, 
      152, 
      1268, 
      19,
      NULL, 
      NULL, 
      '2025-09-03T15:09:10.144Z', '2025-09-03T15:09:10.144Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4455er005fw3lbo4ql31ga', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-03T15:09:28.610Z', 67,
      1800, 
      10688, 
      0, 
      54, 
      152, 
      7002, 
      2,
      NULL, 
      NULL, 
      '2025-09-03T15:09:28.612Z', '2025-09-03T15:09:28.612Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf445q0d005hw3lb2wz1zym4', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-03T15:09:55.307Z', 96,
      399, 
      1121, 
      0, 
      103, 
      164, 
      1587, 
      75,
      NULL, 
      NULL, 
      '2025-09-03T15:09:55.309Z', '2025-09-03T15:09:55.309Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4466nt005jw3lb66k6myr5', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-03T15:10:16.888Z', 63,
      2343, 
      11955, 
      0, 
      105, 
      126, 
      8981, 
      71,
      NULL, 
      NULL, 
      '2025-09-03T15:10:16.890Z', '2025-09-03T15:10:16.890Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf446jtx005lw3lbp3txlx00', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-09-03T15:10:33.955Z', 58,
      447, 
      3884, 
      0.003, 
      247, 
      139, 
      3010, 
      335,
      NULL, 
      NULL, 
      '2025-09-03T15:10:33.957Z', '2025-09-03T15:10:33.957Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf446sf3005nw3lbbontq8jm', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-03T15:10:45.086Z', 98,
      490, 
      919, 
      0, 
      102, 
      202, 
      1286, 
      38,
      NULL, 
      NULL, 
      '2025-09-03T15:10:45.087Z', '2025-09-03T15:10:45.087Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf447akk005pw3lb89vj3gjp', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-03T15:11:08.611Z', 65,
      2870, 
      8054, 
      0, 
      92, 
      165, 
      6333, 
      58,
      NULL, 
      NULL, 
      '2025-09-03T15:11:08.613Z', '2025-09-03T15:11:08.613Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf447d8c005rw3lbvwuaoici', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-09-03T15:11:12.059Z', 45,
      3777, 
      16401, 
      0, 
      351, 
      127, 
      9123, 
      543,
      NULL, 
      NULL, 
      '2025-09-03T15:11:12.060Z', '2025-09-03T15:11:12.060Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44806i005tw3lbrskwdwui', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-09-03T15:11:41.801Z', 94,
      364, 
      852, 
      0, 
      93, 
      247, 
      2290, 
      48,
      NULL, 
      NULL, 
      '2025-09-03T15:11:41.803Z', '2025-09-03T15:11:41.803Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf448l62005vw3lbistqfhoq', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-09-03T15:12:09.001Z', 55,
      2282, 
      11395, 
      0, 
      226, 
      146, 
      7919, 
      398,
      NULL, 
      NULL, 
      '2025-09-03T15:12:09.003Z', '2025-09-03T15:12:09.003Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4495k5005xw3lbv759numq', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-09-03T15:12:35.427Z', 96,
      423, 
      1317, 
      0, 
      55, 
      125, 
      1152, 
      3,
      NULL, 
      NULL, 
      '2025-09-03T15:12:35.429Z', '2025-09-03T15:12:35.429Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf449em5005zw3lb26137np7', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-03T15:12:47.164Z', 68,
      317, 
      3952, 
      0.001, 
      151, 
      154, 
      3291, 
      155,
      NULL, 
      NULL, 
      '2025-09-03T15:12:47.165Z', '2025-09-03T15:12:47.165Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf449py30061w3lbjxsna8ac', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-03T15:13:01.849Z', 70,
      1982, 
      7884, 
      0, 
      109, 
      154, 
      5231, 
      37,
      NULL, 
      NULL, 
      '2025-09-03T15:13:01.851Z', '2025-09-03T15:13:01.851Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44adtg0063w3lbg0hf8qm0', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-03T15:13:32.786Z', 46,
      3421, 
      18664, 
      0, 
      307, 
      115, 
      11046, 
      516,
      NULL, 
      NULL, 
      '2025-09-03T15:13:32.788Z', '2025-09-03T15:13:32.788Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44b3q80065w3lbezabxiks', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-03T15:14:06.366Z', 86,
      454, 
      1350, 
      0, 
      212, 
      159, 
      2240, 
      192,
      NULL, 
      NULL, 
      '2025-09-03T15:14:06.369Z', '2025-09-03T15:14:06.369Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44bi9w0067w3lbbyhg4ggw', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-09-03T15:14:25.219Z', 98,
      435, 
      969, 
      0, 
      52, 
      143, 
      1005, 
      1,
      NULL, 
      NULL, 
      '2025-09-03T15:14:25.221Z', '2025-09-03T15:14:25.221Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44bq9w0069w3lbo2s1hnqx', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-03T15:14:35.586Z', 59,
      2564, 
      15058, 
      0, 
      315, 
      138, 
      8048, 
      239,
      NULL, 
      NULL, 
      '2025-09-03T15:14:35.588Z', '2025-09-03T15:14:35.588Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44c1ex006bw3lb8hmumncc', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-09-03T15:14:50.024Z', 73,
      1711, 
      6301, 
      0, 
      102, 
      138, 
      5308, 
      50,
      NULL, 
      NULL, 
      '2025-09-03T15:14:50.025Z', '2025-09-03T15:14:50.025Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44cdm3006dw3lbk0dn1x09', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-09-03T15:15:05.834Z', 96,
      332, 
      810, 
      0, 
      110, 
      158, 
      1868, 
      68,
      NULL, 
      NULL, 
      '2025-09-03T15:15:05.836Z', '2025-09-03T15:15:05.836Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44cfak006fw3lbysi52y2w', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-03T15:15:08.010Z', 96,
      406, 
      1357, 
      0, 
      64, 
      150, 
      961, 
      7,
      NULL, 
      NULL, 
      '2025-09-03T15:15:08.012Z', '2025-09-03T15:15:08.012Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44cyuh006hw3lba1oky9qf', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-03T15:15:33.351Z', 72,
      2013, 
      6601, 
      0, 
      108, 
      131, 
      4939, 
      41,
      NULL, 
      NULL, 
      '2025-09-03T15:15:33.353Z', '2025-09-03T15:15:33.353Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44d1bw006lw3lbfl9kyiks', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-09-03T15:15:36.571Z', 61,
      3244, 
      10986, 
      0, 
      144, 
      121, 
      7453, 
      118,
      NULL, 
      NULL, 
      '2025-09-03T15:15:36.572Z', '2025-09-03T15:15:36.572Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44f1ra006nw3lbd1qcmdi9', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-09-03T15:17:10.436Z', 65,
      504, 
      4335, 
      0.003, 
      210, 
      137, 
      2656, 
      206,
      NULL, 
      NULL, 
      '2025-09-03T15:17:10.438Z', '2025-09-03T15:17:10.438Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44g4rs006pw3lbqqufy93t', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-09-03T15:18:00.998Z', 55,
      2882, 
      13840, 
      0, 
      285, 
      170, 
      9635, 
      312,
      NULL, 
      NULL, 
      '2025-09-03T15:18:01.001Z', '2025-09-03T15:18:01.001Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44gq6n006rw3lbczj5h7xy', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-09-03T15:18:28.749Z', 95,
      331, 
      821, 
      0, 
      102, 
      211, 
      2204, 
      50,
      NULL, 
      NULL, 
      '2025-09-03T15:18:28.751Z', '2025-09-03T15:18:28.751Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44hbzx006tw3lbs61cij30', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-09-03T15:18:57.019Z', 63,
      2324, 
      11396, 
      0, 
      161, 
      151, 
      7780, 
      141,
      NULL, 
      NULL, 
      '2025-09-03T15:18:57.021Z', '2025-09-03T15:18:57.021Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44ib4g006vw3lbgch7insd', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-09-03T15:19:42.542Z', 93,
      430, 
      1630, 
      0, 
      61, 
      194, 
      1233, 
      6,
      NULL, 
      NULL, 
      '2025-09-03T15:19:42.545Z', '2025-09-03T15:19:42.545Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44is8e006xw3lbzjdd8dse', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-03T15:20:04.717Z', 75,
      1351, 
      6234, 
      0, 
      92, 
      1005, 
      4197, 
      21,
      NULL, 
      NULL, 
      '2025-09-03T15:20:04.718Z', '2025-09-03T15:20:04.718Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44kla1006zw3lb4thr9id3', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-09-03T15:21:29.016Z', 97,
      444, 
      1210, 
      0, 
      53, 
      150, 
      1125, 
      2,
      NULL, 
      NULL, 
      '2025-09-03T15:21:29.017Z', '2025-09-03T15:21:29.017Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44l5jj0071w3lb9qocv3hx', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-09-03T15:21:55.277Z', 87,
      1195, 
      3539, 
      0, 
      150, 
      310, 
      3698, 
      162,
      NULL, 
      NULL, 
      '2025-09-03T15:21:55.279Z', '2025-09-03T15:21:55.279Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44lsbv0073w3lbo4qoa34v', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-03T15:22:24.810Z', 92,
      465, 
      1522, 
      0.011, 
      186, 
      144, 
      1589, 
      112,
      NULL, 
      NULL, 
      '2025-09-03T15:22:24.812Z', '2025-09-03T15:22:24.812Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf44mggl0075w3lbp3b3gnaa', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-03T15:22:56.084Z', 69,
      2118, 
      6751, 
      0, 
      290, 
      136, 
      4969, 
      157,
      NULL, 
      NULL, 
      '2025-09-03T15:22:56.085Z', '2025-09-03T15:22:56.085Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf45zm8c0079w3lbip9yh4tk', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-03T16:01:09.705Z', 93,
      438, 
      1295, 
      0.099, 
      82, 
      156, 
      1264, 
      44,
      NULL, 
      NULL, 
      '2025-09-03T16:01:09.708Z', '2025-09-03T16:01:09.708Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4600bk007bw3lbb2mqgf0x', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-03T16:01:27.966Z', 72,
      1348, 
      7434, 
      0.078, 
      54, 
      135, 
      4620, 
      0,
      NULL, 
      NULL, 
      '2025-09-03T16:01:27.968Z', '2025-09-03T16:01:27.968Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf460e04007dw3lbi1z8qoei', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-03T16:01:45.699Z', 96,
      387, 
      1291, 
      0, 
      53, 
      136, 
      984, 
      2,
      NULL, 
      NULL, 
      '2025-09-03T16:01:45.700Z', '2025-09-03T16:01:45.700Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf460q10007fw3lby60i48b0', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-09-03T16:02:01.283Z', 71,
      1822, 
      6688, 
      0, 
      39, 
      131, 
      5490, 
      0,
      NULL, 
      NULL, 
      '2025-09-03T16:02:01.284Z', '2025-09-03T16:02:01.284Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4618wt007hw3lbv27jnybj', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-09-03T16:02:25.756Z', 72,
      588, 
      3881, 
      0.058, 
      117, 
      785, 
      2768, 
      78,
      NULL, 
      NULL, 
      '2025-09-03T16:02:25.757Z', '2025-09-03T16:02:25.757Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf465g4c007jw3lbgcpd4a0n', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-03T16:05:41.721Z', 39,
      2436, 
      17926, 
      0, 
      904, 
      131, 
      10386, 
      1176,
      NULL, 
      NULL, 
      '2025-09-03T16:05:41.724Z', '2025-09-03T16:05:41.724Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4678da007lw3lbumnq28o7', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-03T16:07:04.989Z', 98,
      412, 
      1101, 
      0, 
      95, 
      175, 
      903, 
      0,
      NULL, 
      NULL, 
      '2025-09-03T16:07:04.990Z', '2025-09-03T16:07:04.990Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf467oag007nw3lbjocl9xt8', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-03T16:07:25.623Z', 71,
      1592, 
      8851, 
      0, 
      79, 
      162, 
      4976, 
      29,
      NULL, 
      NULL, 
      '2025-09-03T16:07:25.624Z', '2025-09-03T16:07:25.624Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4685ol007pw3lbuqgwikl0', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-03T16:07:48.164Z', 96,
      458, 
      1140, 
      0.053, 
      80, 
      151, 
      1298, 
      23,
      NULL, 
      NULL, 
      '2025-09-03T16:07:48.166Z', '2025-09-03T16:07:48.166Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf468m3w007rw3lb5ns9x34k', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-03T16:08:09.451Z', 67,
      1795, 
      7680, 
      0.078, 
      87, 
      151, 
      6504, 
      57,
      NULL, 
      NULL, 
      '2025-09-03T16:08:09.452Z', '2025-09-03T16:08:09.452Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4697s7007tw3lbvixbcli7', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-03T16:08:37.542Z', 96,
      442, 
      1216, 
      0, 
      63, 
      138, 
      1310, 
      12,
      NULL, 
      NULL, 
      '2025-09-03T16:08:37.543Z', '2025-09-03T16:08:37.543Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf469qwv007vw3lbinc4oyki', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-03T16:09:02.332Z', 64,
      2933, 
      8441, 
      0, 
      100, 
      123, 
      6459, 
      109,
      NULL, 
      NULL, 
      '2025-09-03T16:09:02.335Z', '2025-09-03T16:09:02.335Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46bjqk007xw3lbch5h0imd', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-03T16:10:26.347Z', 98,
      496, 
      1122, 
      0, 
      101, 
      142, 
      1104, 
      26,
      NULL, 
      NULL, 
      '2025-09-03T16:10:26.348Z', '2025-09-03T16:10:26.348Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46c4su007zw3lbuynyid7o', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-03T16:10:53.644Z', 68,
      1879, 
      10701, 
      0, 
      140, 
      126, 
      5509, 
      132,
      NULL, 
      NULL, 
      '2025-09-03T16:10:53.646Z', '2025-09-03T16:10:53.646Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46cl2j0081w3lbjztnzxuo', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-03T16:11:14.729Z', 94,
      499, 
      1451, 
      0, 
      55, 
      133, 
      1537, 
      3,
      NULL, 
      NULL, 
      '2025-09-03T16:11:14.731Z', '2025-09-03T16:11:14.731Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46d43f0083w3lb0dewvflv', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-03T16:11:39.386Z', 62,
      3145, 
      11904, 
      0, 
      138, 
      151, 
      7314, 
      88,
      NULL, 
      NULL, 
      '2025-09-03T16:11:39.387Z', '2025-09-03T16:11:39.387Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46domd0085w3lb7oa3vm1h', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-03T16:12:05.987Z', 98,
      515, 
      904, 
      0, 
      108, 
      173, 
      1281, 
      36,
      NULL, 
      NULL, 
      '2025-09-03T16:12:05.989Z', '2025-09-03T16:12:05.989Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46e56c0087w3lbzpigfrxf', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-03T16:12:27.443Z', 65,
      2894, 
      8223, 
      0, 
      66, 
      134, 
      6275, 
      16,
      NULL, 
      NULL, 
      '2025-09-03T16:12:27.444Z', '2025-09-03T16:12:27.444Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46g5kd0089w3lb2ddkvzlx', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-03T16:14:01.259Z', 70,
      405, 
      3750, 
      0.001, 
      173, 
      148, 
      3349, 
      116,
      NULL, 
      NULL, 
      '2025-09-03T16:14:01.262Z', '2025-09-03T16:14:01.262Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46gy23008bw3lba3jkj1m9', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-03T16:14:38.184Z', 53,
      3451, 
      18724, 
      0, 
      242, 
      134, 
      10349, 
      309,
      NULL, 
      NULL, 
      '2025-09-03T16:14:38.187Z', '2025-09-03T16:14:38.187Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46hjlj008dw3lb4a3mg6lr', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-03T16:15:06.102Z', 96,
      363, 
      809, 
      0, 
      154, 
      158, 
      1956, 
      69,
      NULL, 
      NULL, 
      '2025-09-03T16:15:06.104Z', '2025-09-03T16:15:06.104Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46i3j2008fw3lbyc4xteri', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-03T16:15:31.933Z', 63,
      2501, 
      15425, 
      0, 
      222, 
      134, 
      7796, 
      142,
      NULL, 
      NULL, 
      '2025-09-03T16:15:31.935Z', '2025-09-03T16:15:31.935Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46iyfw008hw3lbg9u2apss', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-09-03T16:16:11.995Z', 87,
      333, 
      784, 
      0, 
      216, 
      143, 
      2402, 
      222,
      NULL, 
      NULL, 
      '2025-09-03T16:16:11.997Z', '2025-09-03T16:16:11.997Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46jmjz008jw3lbi6thz54z', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-09-03T16:16:43.247Z', 60,
      3271, 
      11218, 
      0, 
      182, 
      134, 
      7354, 
      180,
      NULL, 
      NULL, 
      '2025-09-03T16:16:43.248Z', '2025-09-03T16:16:43.248Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46lu4n008lw3lbf0x7u7js', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-09-03T16:18:26.374Z', 61,
      447, 
      3878, 
      0.003, 
      228, 
      135, 
      2857, 
      284,
      NULL, 
      NULL, 
      '2025-09-03T16:18:26.375Z', '2025-09-03T16:18:26.375Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46mgp1008nw3lbnnrud0ao', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-09-03T16:18:55.619Z', 58,
      3738, 
      13213, 
      0, 
      189, 
      141, 
      8597, 
      129,
      NULL, 
      NULL, 
      '2025-09-03T16:18:55.621Z', '2025-09-03T16:18:55.621Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46n5kx008pw3lb7c1hy6fc', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-09-03T16:19:27.871Z', 95,
      313, 
      776, 
      0, 
      103, 
      132, 
      2061, 
      39,
      NULL, 
      NULL, 
      '2025-09-03T16:19:27.873Z', '2025-09-03T16:19:27.873Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46nqb5008rw3lbp7e4u22c', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-09-03T16:19:54.736Z', 64,
      2371, 
      11374, 
      0, 
      158, 
      145, 
      7691, 
      105,
      NULL, 
      NULL, 
      '2025-09-03T16:19:54.738Z', '2025-09-03T16:19:54.738Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46o8d8008tw3lbyiypmlxu', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-09-03T16:20:18.138Z', 92,
      435, 
      1715, 
      0, 
      51, 
      157, 
      1325, 
      1,
      NULL, 
      NULL, 
      '2025-09-03T16:20:18.140Z', '2025-09-03T16:20:18.140Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46ouya008vw3lb85wxn6gs', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-03T16:20:47.409Z', 81,
      1351, 
      4812, 
      0, 
      145, 
      694, 
      3897, 
      61,
      NULL, 
      NULL, 
      '2025-09-03T16:20:47.411Z', '2025-09-03T16:20:47.411Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46qo6p008xw3lbnjckkcqw', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-09-03T16:22:11.952Z', 96,
      450, 
      1315, 
      0, 
      57, 
      139, 
      1070, 
      6,
      NULL, 
      NULL, 
      '2025-09-03T16:22:11.953Z', '2025-09-03T16:22:11.953Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46r886008zw3lbsz4odxau', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-09-03T16:22:37.912Z', 72,
      1702, 
      6301, 
      0, 
      100, 
      158, 
      5912, 
      45,
      NULL, 
      NULL, 
      '2025-09-03T16:22:37.927Z', '2025-09-03T16:22:37.927Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46rut90091w3lbdaxm17gt', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-03T16:23:07.196Z', 94,
      435, 
      1233, 
      0.017, 
      120, 
      1137, 
      1958, 
      40,
      NULL, 
      NULL, 
      '2025-09-03T16:23:07.197Z', '2025-09-03T16:23:07.197Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf46sebu0093w3lbcua7efuz', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-03T16:23:32.489Z', 80,
      1354, 
      4876, 
      0, 
      102, 
      720, 
      3871, 
      67,
      NULL, 
      NULL, 
      '2025-09-03T16:23:32.491Z', '2025-09-03T16:23:32.491Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4xpowm0001w3jxbtkglf8p', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-04T04:57:15.857Z', 92,
      412, 
      1421, 
      0.099, 
      59, 
      479, 
      1465, 
      8,
      NULL, 
      NULL, 
      '2025-09-04T04:57:15.861Z', '2025-09-04T04:57:15.861Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4xq82n0003w3jxiu2sz3yo', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-04T04:57:40.702Z', 67,
      1809, 
      8145, 
      0.078, 
      125, 
      124, 
      6496, 
      70,
      NULL, 
      NULL, 
      '2025-09-04T04:57:40.703Z', '2025-09-04T04:57:40.703Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4xqs4s0005w3jxm45wnv31', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-04T04:58:06.699Z', 94,
      471, 
      1349, 
      0, 
      121, 
      804, 
      1668, 
      60,
      NULL, 
      NULL, 
      '2025-09-04T04:58:06.701Z', '2025-09-04T04:58:06.701Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf4yolf10007w3jx4q7waf1g', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-04T05:24:24.300Z', 60,
      2020, 
      21447, 
      0.078, 
      275, 
      884, 
      11723, 
      166,
      NULL, 
      NULL, 
      '2025-09-04T05:24:24.302Z', '2025-09-04T05:24:24.302Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf512e5h0009w3jx1qlsbgpo', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-04T06:31:07.298Z', 79,
      1312, 
      5065, 
      0, 
      98, 
      651, 
      3826, 
      55,
      NULL, 
      NULL, 
      '2025-09-04T06:31:07.302Z', '2025-09-04T06:31:07.302Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf513354000bw3jx9emuvlzc', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-04T06:31:39.687Z', 74,
      681, 
      1303, 
      0.053, 
      283, 
      729, 
      2235, 
      383,
      NULL, 
      NULL, 
      '2025-09-04T06:31:39.688Z', '2025-09-04T06:31:39.688Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf513pdk000dw3jxwoqqpz4t', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-04T06:32:08.502Z', 65,
      1842, 
      7682, 
      0.078, 
      171, 
      166, 
      6453, 
      188,
      NULL, 
      NULL, 
      '2025-09-04T06:32:08.505Z', '2025-09-04T06:32:08.505Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf517h8o000fw3jxptdkisoy', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-04T06:35:04.583Z', 82,
      431, 
      2449, 
      0.04, 
      124, 
      131, 
      1477, 
      153,
      NULL, 
      NULL, 
      '2025-09-04T06:35:04.585Z', '2025-09-04T06:35:04.585Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5180d6000hw3jxgd6yv6zj', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-04T06:35:29.369Z', 64,
      2921, 
      8525, 
      0, 
      95, 
      158, 
      6240, 
      116,
      NULL, 
      NULL, 
      '2025-09-04T06:35:29.371Z', '2025-09-04T06:35:29.371Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf519xqj000jw3jxha8po052', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-04T06:36:59.273Z', 96,
      352, 
      644, 
      0.003, 
      109, 
      1218, 
      1942, 
      30,
      NULL, 
      NULL, 
      '2025-09-04T06:36:59.275Z', '2025-09-04T06:36:59.275Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51aimm000lw3jxtb1ahiz5', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-04T06:37:26.349Z', 95,
      1156, 
      2305, 
      0, 
      113, 
      709, 
      4299, 
      73,
      NULL, 
      NULL, 
      '2025-09-04T06:37:26.350Z', '2025-09-04T06:37:26.350Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51b7qq000nw3jxbrwjetjr', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-04T06:37:58.895Z', 94,
      400, 
      951, 
      0, 
      108, 
      1067, 
      2193, 
      93,
      NULL, 
      NULL, 
      '2025-09-04T06:37:58.899Z', '2025-09-04T06:37:58.899Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51bsvi000pw3jxxpaqr9cn', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-04T06:38:26.280Z', 71,
      1502, 
      11095, 
      0, 
      84, 
      874, 
      5247, 
      48,
      NULL, 
      NULL, 
      '2025-09-04T06:38:26.286Z', '2025-09-04T06:38:26.286Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51c80d000rw3jx5int5kb1', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-04T06:38:45.897Z', 97,
      410, 
      937, 
      0, 
      43, 
      844, 
      1534, 
      0,
      NULL, 
      NULL, 
      '2025-09-04T06:38:45.901Z', '2025-09-04T06:38:45.901Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51cq65000tw3jxjmeyd7hi', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-04T06:39:09.435Z', 84,
      1718, 
      3976, 
      0, 
      83, 
      807, 
      4591, 
      30,
      NULL, 
      NULL, 
      '2025-09-04T06:39:09.437Z', '2025-09-04T06:39:09.437Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51etmu000vw3jx4nzddpcl', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-04T06:40:47.233Z', 66,
      344, 
      3922, 
      0.001, 
      167, 
      1305, 
      3842, 
      174,
      NULL, 
      NULL, 
      '2025-09-04T06:40:47.238Z', '2025-09-04T06:40:47.238Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51frgg000xw3jx41wi3p6o', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-04T06:41:31.071Z', 52,
      1289, 
      22577, 
      0, 
      257, 
      763, 
      12150, 
      527,
      NULL, 
      NULL, 
      '2025-09-04T06:41:31.072Z', '2025-09-04T06:41:31.072Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51gnnb000zw3jxr54dcjyw', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-04T06:42:12.787Z', 59,
      466, 
      1319, 
      0, 
      517, 
      1020, 
      3954, 
      1076,
      NULL, 
      NULL, 
      '2025-09-04T06:42:12.792Z', '2025-09-04T06:42:12.792Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51hukk0011w3jxf1qen2hb', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-04T06:43:08.419Z', 75,
      1462, 
      3220, 
      0, 
      233, 
      1083, 
      9547, 
      362,
      NULL, 
      NULL, 
      '2025-09-04T06:43:08.421Z', '2025-09-04T06:43:08.421Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51ir410013w3jxq6w18qgb', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-09-04T06:43:50.592Z', 84,
      325, 
      581, 
      0, 
      209, 
      1295, 
      3211, 
      238,
      NULL, 
      NULL, 
      '2025-09-04T06:43:50.594Z', '2025-09-04T06:43:50.594Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51jjvi0015w3jxjufqog47', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-09-04T06:44:27.867Z', 62,
      1323, 
      3395, 
      0, 
      358, 
      617, 
      8454, 
      939,
      NULL, 
      NULL, 
      '2025-09-04T06:44:27.870Z', '2025-09-04T06:44:27.870Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51lu4o0017w3jx88ysrt5e', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-09-04T06:46:14.469Z', 46,
      438, 
      3946, 
      0.003, 
      381, 
      1968, 
      4118, 
      586,
      NULL, 
      NULL, 
      '2025-09-04T06:46:14.472Z', '2025-09-04T06:46:14.472Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51poh00019w3jx28zl2mjn', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-09-04T06:49:13.762Z', 56,
      3799, 
      14072, 
      0, 
      266, 
      134, 
      9048, 
      190,
      NULL, 
      NULL, 
      '2025-09-04T06:49:13.765Z', '2025-09-04T06:49:13.765Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51qdbh001bw3jx0ymxxjmv', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-09-04T06:49:45.950Z', 93,
      351, 
      740, 
      0, 
      102, 
      1344, 
      2824, 
      54,
      NULL, 
      NULL, 
      '2025-09-04T06:49:45.963Z', '2025-09-04T06:49:45.963Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51rbst001dw3jxqx2mad8r', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-09-04T06:50:30.650Z', 82,
      1274, 
      3105, 
      0, 
      182, 
      882, 
      8663, 
      213,
      NULL, 
      NULL, 
      '2025-09-04T06:50:30.653Z', '2025-09-04T06:50:30.653Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51s17m001fw3jxv9cqlwvp', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-09-04T06:51:03.582Z', 90,
      321, 
      1184, 
      0.004, 
      90, 
      882, 
      2975, 
      20,
      NULL, 
      NULL, 
      '2025-09-04T06:51:03.586Z', '2025-09-04T06:51:03.586Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51sni5001hw3jxn2iyib0b', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-04T06:51:32.476Z', 77,
      1351, 
      5715, 
      0, 
      111, 
      658, 
      3802, 
      38,
      NULL, 
      NULL, 
      '2025-09-04T06:51:32.478Z', '2025-09-04T06:51:32.478Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51u3ga001jw3jx08nlr824', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-04T06:52:39.801Z', 90,
      486, 
      1586, 
      0.099, 
      79, 
      434, 
      1479, 
      27,
      NULL, 
      NULL, 
      '2025-09-04T06:52:39.803Z', '2025-09-04T06:52:39.803Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51uglq001lw3jxu4bd3dx8', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-09-04T06:52:56.845Z', 98,
      378, 
      1042, 
      0, 
      62, 
      597, 
      1164, 
      6,
      NULL, 
      NULL, 
      '2025-09-04T06:52:56.847Z', '2025-09-04T06:52:56.847Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51uiz4001nw3jxxlk5bgif', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-04T06:52:59.919Z', 95,
      422, 
      1075, 
      0.099, 
      90, 
      155, 
      1089, 
      43,
      NULL, 
      NULL, 
      '2025-09-04T06:52:59.921Z', '2025-09-04T06:52:59.921Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51uj1a001pw3jx6m1ndxv7', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-04T06:52:59.998Z', 95,
      422, 
      1075, 
      0.099, 
      90, 
      155, 
      1089, 
      43,
      NULL, 
      NULL, 
      '2025-09-04T06:52:59.999Z', '2025-09-04T06:52:59.999Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51ujm0001rw3jxhtvc3k9e', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-04T06:53:00.743Z', 67,
      1781, 
      8205, 
      0.078, 
      92, 
      154, 
      6714, 
      52,
      NULL, 
      NULL, 
      '2025-09-04T06:53:00.745Z', '2025-09-04T06:53:00.745Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51ukqq001tw3jx2jr9100y', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-04T06:53:02.209Z', 67,
      1781, 
      8205, 
      0.078, 
      92, 
      154, 
      6714, 
      52,
      NULL, 
      NULL, 
      '2025-09-04T06:53:02.211Z', '2025-09-04T06:53:02.211Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51uzht001vw3jxwggr7txl', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-04T06:53:21.327Z', 96,
      402, 
      901, 
      0.099, 
      80, 
      133, 
      962, 
      31,
      NULL, 
      NULL, 
      '2025-09-04T06:53:21.329Z', '2025-09-04T06:53:21.329Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51v0v1001xw3jx2zrzimy0', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-04T06:53:23.099Z', 72,
      1390, 
      6986, 
      0.078, 
      77, 
      158, 
      4631, 
      12,
      NULL, 
      NULL, 
      '2025-09-04T06:53:23.102Z', '2025-09-04T06:53:23.102Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51v187001zw3jx41l49vgv', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-04T06:53:23.574Z', 72,
      1390, 
      6986, 
      0.078, 
      77, 
      158, 
      4631, 
      12,
      NULL, 
      NULL, 
      '2025-09-04T06:53:23.575Z', '2025-09-04T06:53:23.575Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51v18n0021w3jx54wc66y0', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-04T06:53:23.589Z', 96,
      437, 
      1288, 
      0, 
      81, 
      482, 
      1232, 
      31,
      NULL, 
      NULL, 
      '2025-09-04T06:53:23.592Z', '2025-09-04T06:53:23.592Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51v2o60023w3jxgwbcnpiv', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-04T06:53:25.445Z', 96,
      437, 
      1288, 
      0, 
      81, 
      482, 
      1232, 
      31,
      NULL, 
      NULL, 
      '2025-09-04T06:53:25.446Z', '2025-09-04T06:53:25.446Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51v2xc0025w3jx2btaubk8', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-09-04T06:53:25.774Z', 83,
      1210, 
      4388, 
      0, 
      147, 
      596, 
      3893, 
      106,
      NULL, 
      NULL, 
      '2025-09-04T06:53:25.776Z', '2025-09-04T06:53:25.776Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51v92o0027w3jxei9zeuxo', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-04T06:53:33.743Z', 96,
      437, 
      1288, 
      0, 
      81, 
      482, 
      1232, 
      31,
      NULL, 
      NULL, 
      '2025-09-04T06:53:33.744Z', '2025-09-04T06:53:33.744Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51vb3o0029w3jxgm9bowqg', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-04T06:53:36.371Z', 98,
      518, 
      1005, 
      0, 
      123, 
      296, 
      1123, 
      82,
      NULL, 
      NULL, 
      '2025-09-04T06:53:36.373Z', '2025-09-04T06:53:36.373Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51vgtq002bw3jx58cyd9li', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-09-04T06:53:43.789Z', 71,
      1831, 
      6852, 
      0, 
      96, 
      123, 
      5540, 
      61,
      NULL, 
      NULL, 
      '2025-09-04T06:53:43.790Z', '2025-09-04T06:53:43.790Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51vgv6002dw3jxcodzq2ng', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-09-04T06:53:43.842Z', 71,
      1831, 
      6852, 
      0, 
      96, 
      123, 
      5540, 
      61,
      NULL, 
      NULL, 
      '2025-09-04T06:53:43.843Z', '2025-09-04T06:53:43.843Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51vgxd002fw3jxz92kwrn2', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-09-04T06:53:43.920Z', 71,
      1831, 
      6852, 
      0, 
      96, 
      123, 
      5540, 
      61,
      NULL, 
      NULL, 
      '2025-09-04T06:53:43.921Z', '2025-09-04T06:53:43.921Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51vow5002hw3jxej0jknqo', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-09-04T06:53:54.243Z', 58,
      1557, 
      5184, 
      0.481, 
      41, 
      138, 
      3710, 
      0,
      NULL, 
      NULL, 
      '2025-09-04T06:53:54.245Z', '2025-09-04T06:53:54.245Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51vpb4002jw3jx06fxmrcn', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-04T06:53:54.783Z', 91,
      356, 
      1526, 
      0.027, 
      123, 
      1348, 
      2043, 
      37,
      NULL, 
      NULL, 
      '2025-09-04T06:53:54.784Z', '2025-09-04T06:53:54.784Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51vvbo002lw3jxz8sjkv4o', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-09-04T06:54:02.579Z', 73,
      484, 
      3901, 
      0.058, 
      98, 
      453, 
      2626, 
      24,
      NULL, 
      NULL, 
      '2025-09-04T06:54:02.581Z', '2025-09-04T06:54:02.581Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51vve6002nw3jx5qlui7gh', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-09-04T06:54:02.669Z', 73,
      484, 
      3901, 
      0.058, 
      98, 
      453, 
      2626, 
      24,
      NULL, 
      NULL, 
      '2025-09-04T06:54:02.670Z', '2025-09-04T06:54:02.670Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51w7zs002pw3jx980ywsso', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-04T06:54:18.999Z', 80,
      1607, 
      4660, 
      0, 
      78, 
      892, 
      4257, 
      19,
      NULL, 
      NULL, 
      '2025-09-04T06:54:19.001Z', '2025-09-04T06:54:19.001Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51wc8g002tw3jxm4ot3txw', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-09-04T06:54:24.495Z', 67,
      828, 
      3499, 
      0.058, 
      424, 
      111, 
      2410, 
      216,
      NULL, 
      NULL, 
      '2025-09-04T06:54:24.497Z', '2025-09-04T06:54:24.497Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51wcap002vw3jx0ow21pz7', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-09-04T06:54:24.576Z', 67,
      828, 
      3499, 
      0.058, 
      424, 
      111, 
      2410, 
      216,
      NULL, 
      NULL, 
      '2025-09-04T06:54:24.577Z', '2025-09-04T06:54:24.577Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51wd09002xw3jxioa5ohke', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-04T06:54:25.496Z', 47,
      2051, 
      26026, 
      0.078, 
      408, 
      125, 
      12246, 
      602,
      NULL, 
      NULL, 
      '2025-09-04T06:54:25.498Z', '2025-09-04T06:54:25.498Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51wd1g002zw3jxi6rm79yr', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-04T06:54:25.540Z', 47,
      2051, 
      26026, 
      0.078, 
      408, 
      125, 
      12246, 
      602,
      NULL, 
      NULL, 
      '2025-09-04T06:54:25.541Z', '2025-09-04T06:54:25.541Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51wdz20031w3jx3k99c2r8', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-04T06:54:26.748Z', 47,
      2051, 
      26026, 
      0.078, 
      408, 
      125, 
      12246, 
      602,
      NULL, 
      NULL, 
      '2025-09-04T06:54:26.750Z', '2025-09-04T06:54:26.750Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51wpee0033w3jx9kpeaapq', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-04T06:54:41.556Z', 63,
      1921, 
      25376, 
      0.078, 
      131, 
      140, 
      12112, 
      43,
      NULL, 
      NULL, 
      '2025-09-04T06:54:41.558Z', '2025-09-04T06:54:41.558Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51yeg20035w3jxt253zrij', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-04T06:56:00.672Z', 90,
      589, 
      1035, 
      0, 
      226, 
      314, 
      1517, 
      207,
      NULL, 
      NULL, 
      '2025-09-04T06:56:00.674Z', '2025-09-04T06:56:00.674Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51yeg60037w3jxm0x5d79z', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-04T06:56:00.677Z', 90,
      589, 
      1035, 
      0, 
      226, 
      314, 
      1517, 
      207,
      NULL, 
      NULL, 
      '2025-09-04T06:56:00.678Z', '2025-09-04T06:56:00.678Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51yrnu0039w3jx1uyj89cu', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-04T06:56:17.800Z', 69,
      1826, 
      9793, 
      0, 
      58, 
      183, 
      5921, 
      4,
      NULL, 
      NULL, 
      '2025-09-04T06:56:17.803Z', '2025-09-04T06:56:17.803Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51yrr9003bw3jxnjcp7gkw', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-04T06:56:17.924Z', 69,
      1826, 
      9793, 
      0, 
      58, 
      183, 
      5921, 
      4,
      NULL, 
      NULL, 
      '2025-09-04T06:56:17.926Z', '2025-09-04T06:56:17.926Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51ytlk003dw3jx0fy5tu3u', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-04T06:56:20.311Z', 82,
      550, 
      889, 
      0, 
      211, 
      189, 
      1273, 
      380,
      NULL, 
      NULL, 
      '2025-09-04T06:56:20.312Z', '2025-09-04T06:56:20.312Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51ytnx003fw3jxd85n70sl', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-04T06:56:20.397Z', 82,
      550, 
      889, 
      0, 
      211, 
      189, 
      1273, 
      380,
      NULL, 
      NULL, 
      '2025-09-04T06:56:20.398Z', '2025-09-04T06:56:20.398Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51z98i003hw3jxyome3kjy', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-04T06:56:40.577Z', 98,
      418, 
      1001, 
      0.053, 
      97, 
      230, 
      1127, 
      22,
      NULL, 
      NULL, 
      '2025-09-04T06:56:40.579Z', '2025-09-04T06:56:40.579Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51z994003jw3jxa17ey5oa', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-04T06:56:40.599Z', 98,
      418, 
      1001, 
      0.053, 
      97, 
      230, 
      1127, 
      22,
      NULL, 
      NULL, 
      '2025-09-04T06:56:40.601Z', '2025-09-04T06:56:40.601Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51ze8m003lw3jxedodwlrs', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-04T06:56:47.061Z', 68,
      1860, 
      9797, 
      0, 
      127, 
      140, 
      5937, 
      88,
      NULL, 
      NULL, 
      '2025-09-04T06:56:47.062Z', '2025-09-04T06:56:47.062Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51zea4003nw3jx1m659fks', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-04T06:56:47.114Z', 68,
      1860, 
      9797, 
      0, 
      127, 
      140, 
      5937, 
      88,
      NULL, 
      NULL, 
      '2025-09-04T06:56:47.116Z', '2025-09-04T06:56:47.116Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51zpo6003pw3jx4ltydfj3', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-04T06:57:01.877Z', 68,
      1815, 
      7542, 
      0.078, 
      125, 
      121, 
      6133, 
      69,
      NULL, 
      NULL, 
      '2025-09-04T06:57:01.879Z', '2025-09-04T06:57:01.879Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf51zpof003rw3jx10eoe8h4', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-04T06:57:01.886Z', 68,
      1815, 
      7542, 
      0.078, 
      125, 
      121, 
      6133, 
      69,
      NULL, 
      NULL, 
      '2025-09-04T06:57:01.887Z', '2025-09-04T06:57:01.887Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52001u003tw3jxp673b4gl', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-04T06:57:15.328Z', 94,
      555, 
      1373, 
      0.053, 
      125, 
      139, 
      1356, 
      75,
      NULL, 
      NULL, 
      '2025-09-04T06:57:15.330Z', '2025-09-04T06:57:15.330Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf520040003vw3jx3rw3soyk', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-04T06:57:15.407Z', 94,
      555, 
      1373, 
      0.053, 
      125, 
      139, 
      1356, 
      75,
      NULL, 
      NULL, 
      '2025-09-04T06:57:15.409Z', '2025-09-04T06:57:15.409Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf520f7k003xw3jxe5gmvwlz', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-04T06:57:34.973Z', 83,
      517, 
      2462, 
      0.04, 
      108, 
      137, 
      1472, 
      124,
      NULL, 
      NULL, 
      '2025-09-04T06:57:34.976Z', '2025-09-04T06:57:34.976Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf520f9x003zw3jxjnlnyfgo', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-04T06:57:35.059Z', 83,
      517, 
      2462, 
      0.04, 
      108, 
      137, 
      1472, 
      124,
      NULL, 
      NULL, 
      '2025-09-04T06:57:35.061Z', '2025-09-04T06:57:35.061Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf520lck0041w3jxaqbysl0s', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-04T06:57:42.931Z', 66,
      1846, 
      7432, 
      0.078, 
      226, 
      136, 
      6298, 
      156,
      NULL, 
      NULL, 
      '2025-09-04T06:57:42.933Z', '2025-09-04T06:57:42.933Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf520lg80043w3jxnfzd23ix', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-04T06:57:43.063Z', 66,
      1846, 
      7432, 
      0.078, 
      226, 
      136, 
      6298, 
      156,
      NULL, 
      NULL, 
      '2025-09-04T06:57:43.064Z', '2025-09-04T06:57:43.064Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52120x0045w3jxc0p84as3', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-04T06:58:04.544Z', 99,
      343, 
      767, 
      0, 
      47, 
      122, 
      1172, 
      0,
      NULL, 
      NULL, 
      '2025-09-04T06:58:04.545Z', '2025-09-04T06:58:04.545Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52126c0047w3jxuh8vec8a', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-04T06:58:04.739Z', 99,
      343, 
      767, 
      0, 
      47, 
      122, 
      1172, 
      0,
      NULL, 
      NULL, 
      '2025-09-04T06:58:04.740Z', '2025-09-04T06:58:04.740Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5217ec0049w3jxgpppuv5n', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-04T06:58:11.507Z', 29,
      3038, 
      8632, 
      0.669, 
      257, 
      128, 
      7420, 
      427,
      NULL, 
      NULL, 
      '2025-09-04T06:58:11.509Z', '2025-09-04T06:58:11.509Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5217g9004bw3jxhckfy8l0', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-04T06:58:11.576Z', 29,
      3038, 
      8632, 
      0.669, 
      257, 
      128, 
      7420, 
      427,
      NULL, 
      NULL, 
      '2025-09-04T06:58:11.578Z', '2025-09-04T06:58:11.578Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf521ntk004dw3jxvn05y3qb', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-04T06:58:32.790Z', 63,
      2939, 
      8219, 
      0, 
      146, 
      156, 
      6380, 
      156,
      NULL, 
      NULL, 
      '2025-09-04T06:58:32.792Z', '2025-09-04T06:58:32.792Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf521nwy004fw3jxqx7s1gfu', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-04T06:58:32.913Z', 63,
      2939, 
      8219, 
      0, 
      146, 
      156, 
      6380, 
      156,
      NULL, 
      NULL, 
      '2025-09-04T06:58:32.915Z', '2025-09-04T06:58:32.915Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf525lni004hw3jx3tnumlot', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-04T07:01:36.604Z', 99,
      375, 
      564, 
      0, 
      93, 
      148, 
      1212, 
      38,
      NULL, 
      NULL, 
      '2025-09-04T07:01:36.606Z', '2025-09-04T07:01:36.606Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf525ns9004jw3jx78j5lhov', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-04T07:01:39.359Z', 98,
      502, 
      855, 
      0, 
      112, 
      147, 
      1358, 
      58,
      NULL, 
      NULL, 
      '2025-09-04T07:01:39.369Z', '2025-09-04T07:01:39.369Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf525ny1004lw3jx02qn0bip', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-04T07:01:39.576Z', 98,
      502, 
      855, 
      0, 
      112, 
      147, 
      1358, 
      58,
      NULL, 
      NULL, 
      '2025-09-04T07:01:39.578Z', '2025-09-04T07:01:39.578Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5261ao004nw3jxbycrr03g', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-04T07:01:56.878Z', 67,
      1922, 
      10608, 
      0, 
      60, 
      150, 
      6839, 
      15,
      NULL, 
      NULL, 
      '2025-09-04T07:01:56.880Z', '2025-09-04T07:01:56.880Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5267j0004pw3jxyakb77ek', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-04T07:02:04.955Z', 73,
      1332, 
      9451, 
      0, 
      91, 
      117, 
      3871, 
      47,
      NULL, 
      NULL, 
      '2025-09-04T07:02:04.957Z', '2025-09-04T07:02:04.957Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5267mr004rw3jxfrov3q1u', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-04T07:02:05.090Z', 73,
      1332, 
      9451, 
      0, 
      91, 
      117, 
      3871, 
      47,
      NULL, 
      NULL, 
      '2025-09-04T07:02:05.091Z', '2025-09-04T07:02:05.091Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf526h6w004tw3jxe7zkdb2i', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-04T07:02:17.477Z', 97,
      386, 
      1090, 
      0, 
      58, 
      164, 
      1274, 
      4,
      NULL, 
      NULL, 
      '2025-09-04T07:02:17.480Z', '2025-09-04T07:02:17.480Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf526r7n004vw3jxfgo761gu', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-04T07:02:30.466Z', 98,
      390, 
      921, 
      0, 
      70, 
      331, 
      1375, 
      32,
      NULL, 
      NULL, 
      '2025-09-04T07:02:30.468Z', '2025-09-04T07:02:30.468Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf526r98004xw3jxm5a3d8ho', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-04T07:02:30.523Z', 98,
      390, 
      921, 
      0, 
      70, 
      331, 
      1375, 
      32,
      NULL, 
      NULL, 
      '2025-09-04T07:02:30.524Z', '2025-09-04T07:02:30.524Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf526skp004zw3jxbgu9s7x9', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-04T07:02:32.232Z', 60,
      629, 
      815, 
      0, 
      400, 
      154, 
      4120, 
      1757,
      NULL, 
      NULL, 
      '2025-09-04T07:02:32.233Z', '2025-09-04T07:02:32.233Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf526ufq0051w3jx9rtsld8d', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-04T07:02:34.644Z', 73,
      1332, 
      9451, 
      0, 
      91, 
      117, 
      3871, 
      47,
      NULL, 
      NULL, 
      '2025-09-04T07:02:34.646Z', '2025-09-04T07:02:34.646Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf526zsv0053w3jx7cokyg02', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-04T07:02:41.598Z', 66,
      2076, 
      11890, 
      0, 
      97, 
      131, 
      7582, 
      59,
      NULL, 
      NULL, 
      '2025-09-04T07:02:41.599Z', '2025-09-04T07:02:41.599Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52724v0055w3jxvc8xkl58', 'cmeicwjpa0008w388ios74r2d', 'DESKTOP', '2025-09-04T07:02:44.621Z', 97,
      386, 
      1090, 
      0, 
      58, 
      164, 
      1274, 
      4,
      NULL, 
      NULL, 
      '2025-09-04T07:02:44.624Z', '2025-09-04T07:02:44.624Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf527kqu0057w3jxbh935m5a', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-04T07:03:08.740Z', 98,
      460, 
      929, 
      0, 
      108, 
      153, 
      1394, 
      63,
      NULL, 
      NULL, 
      '2025-09-04T07:03:08.742Z', '2025-09-04T07:03:08.742Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf527nmk0059w3jxbez8ylte', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-04T07:03:12.475Z', 61,
      1651, 
      3901, 
      0, 
      497, 
      128, 
      5919, 
      898,
      NULL, 
      NULL, 
      '2025-09-04T07:03:12.476Z', '2025-09-04T07:03:12.476Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf527nn9005bw3jx1kgt3wp9', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-04T07:03:12.500Z', 61,
      1651, 
      3901, 
      0, 
      497, 
      128, 
      5919, 
      898,
      NULL, 
      NULL, 
      '2025-09-04T07:03:12.501Z', '2025-09-04T07:03:12.501Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf527phg005dw3jxah0emc4h', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-04T07:03:14.884Z', 98,
      460, 
      929, 
      0, 
      108, 
      153, 
      1394, 
      63,
      NULL, 
      NULL, 
      '2025-09-04T07:03:14.885Z', '2025-09-04T07:03:14.885Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf527pjd005fw3jx9mirdjjv', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-04T07:03:14.952Z', 98,
      460, 
      929, 
      0, 
      108, 
      153, 
      1394, 
      63,
      NULL, 
      NULL, 
      '2025-09-04T07:03:14.953Z', '2025-09-04T07:03:14.953Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf527vvn005hw3jxecsoyi66', 'cmeicwjpa0008w388ios74r2d', 'MOBILE', '2025-09-04T07:03:23.169Z', 63,
      2206, 
      11979, 
      0, 
      108, 
      137, 
      7346, 
      183,
      NULL, 
      NULL, 
      '2025-09-04T07:03:23.172Z', '2025-09-04T07:03:23.172Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5280ek005jw3jx88p14ll5', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-04T07:03:29.033Z', 65,
      2955, 
      7989, 
      0, 
      47, 
      130, 
      6222, 
      0,
      NULL, 
      NULL, 
      '2025-09-04T07:03:29.036Z', '2025-09-04T07:03:29.036Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5280h8005lw3jxj7rvbgrm', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-04T07:03:29.131Z', 65,
      2955, 
      7989, 
      0, 
      47, 
      130, 
      6222, 
      0,
      NULL, 
      NULL, 
      '2025-09-04T07:03:29.133Z', '2025-09-04T07:03:29.133Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf528bpt005nw3jxfunfa7z3', 'cmeicwjp90007w38859jpvnqs', 'DESKTOP', '2025-09-04T07:03:43.696Z', 98,
      411, 
      952, 
      0, 
      65, 
      141, 
      1215, 
      8,
      NULL, 
      NULL, 
      '2025-09-04T07:03:43.698Z', '2025-09-04T07:03:43.698Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf528iyq005pw3jxbmeaxqu9', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-04T07:03:53.089Z', 63,
      2925, 
      8072, 
      0, 
      177, 
      127, 
      5933, 
      185,
      NULL, 
      NULL, 
      '2025-09-04T07:03:53.091Z', '2025-09-04T07:03:53.091Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf528j1v005rw3jxw138uliy', 'cmeicwjp90007w38859jpvnqs', 'MOBILE', '2025-09-04T07:03:53.202Z', 63,
      2925, 
      8072, 
      0, 
      177, 
      127, 
      5933, 
      185,
      NULL, 
      NULL, 
      '2025-09-04T07:03:53.203Z', '2025-09-04T07:03:53.203Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52aiy4005tw3jx8d5e0yt4', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-04T07:05:26.378Z', 66,
      379, 
      3692, 
      0.001, 
      164, 
      169, 
      2931, 
      218,
      NULL, 
      NULL, 
      '2025-09-04T07:05:26.381Z', '2025-09-04T07:05:26.381Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52aj4c005vw3jxgqq0gb7h', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-04T07:05:26.603Z', 66,
      379, 
      3692, 
      0.001, 
      164, 
      169, 
      2931, 
      218,
      NULL, 
      NULL, 
      '2025-09-04T07:05:26.604Z', '2025-09-04T07:05:26.604Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52b2ur005xw3jx7t1th1i8', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-04T07:05:52.177Z', 38,
      345, 
      4632, 
      0.001, 
      614, 
      127, 
      8230, 
      2812,
      NULL, 
      NULL, 
      '2025-09-04T07:05:52.180Z', '2025-09-04T07:05:52.180Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52b2zn005zw3jxb9h01pok', 'cmeicwjpd000cw388pg0csat4', 'DESKTOP', '2025-09-04T07:05:52.354Z', 38,
      345, 
      4632, 
      0.001, 
      614, 
      127, 
      8230, 
      2812,
      NULL, 
      NULL, 
      '2025-09-04T07:05:52.356Z', '2025-09-04T07:05:52.356Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52bav20061w3jxlcm86qcc', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-04T07:06:02.557Z', 56,
      3347, 
      18270, 
      0, 
      191, 
      163, 
      10679, 
      216,
      NULL, 
      NULL, 
      '2025-09-04T07:06:02.558Z', '2025-09-04T07:06:02.558Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52bavz0063w3jxccn16y1e', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-04T07:06:02.589Z', 56,
      3347, 
      18270, 
      0, 
      191, 
      163, 
      10679, 
      216,
      NULL, 
      NULL, 
      '2025-09-04T07:06:02.591Z', '2025-09-04T07:06:02.591Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52btkt0065w3jxlqe1ddw8', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-04T07:06:26.812Z', 58,
      3314, 
      18608, 
      0, 
      230, 
      168, 
      10277, 
      169,
      NULL, 
      NULL, 
      '2025-09-04T07:06:26.814Z', '2025-09-04T07:06:26.814Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52btmk0067w3jx74nscry9', 'cmeicwjpd000cw388pg0csat4', 'MOBILE', '2025-09-04T07:06:26.875Z', 58,
      3314, 
      18608, 
      0, 
      230, 
      168, 
      10277, 
      169,
      NULL, 
      NULL, 
      '2025-09-04T07:06:26.877Z', '2025-09-04T07:06:26.877Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52c0cb0069w3jxfsj34l0t', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-04T07:06:35.577Z', 90,
      446, 
      1369, 
      0, 
      177, 
      156, 
      2115, 
      121,
      NULL, 
      NULL, 
      '2025-09-04T07:06:35.579Z', '2025-09-04T07:06:35.579Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52c0ep006bw3jx9in89gth', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-04T07:06:35.664Z', 90,
      446, 
      1369, 
      0, 
      177, 
      156, 
      2115, 
      121,
      NULL, 
      NULL, 
      '2025-09-04T07:06:35.665Z', '2025-09-04T07:06:35.665Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52ci76006dw3jx32uq0eu9', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-04T07:06:58.721Z', 94,
      373, 
      811, 
      0, 
      197, 
      182, 
      2088, 
      115,
      NULL, 
      NULL, 
      '2025-09-04T07:06:58.723Z', '2025-09-04T07:06:58.723Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52ci8q006fw3jxbdbwgdk6', 'cmeicwjpe000dw3882enjsj1z', 'DESKTOP', '2025-09-04T07:06:58.777Z', 94,
      373, 
      811, 
      0, 
      197, 
      182, 
      2088, 
      115,
      NULL, 
      NULL, 
      '2025-09-04T07:06:58.778Z', '2025-09-04T07:06:58.778Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52co1v006hw3jxgpif793c', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-04T07:07:06.306Z', 59,
      2577, 
      15226, 
      0, 
      345, 
      140, 
      8082, 
      243,
      NULL, 
      NULL, 
      '2025-09-04T07:07:06.308Z', '2025-09-04T07:07:06.308Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52co9o006jw3jx4k06s0kr', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-04T07:07:06.587Z', 59,
      2577, 
      15226, 
      0, 
      345, 
      140, 
      8082, 
      243,
      NULL, 
      NULL, 
      '2025-09-04T07:07:06.588Z', '2025-09-04T07:07:06.588Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52d8cn006lw3jxh9ctfxnd', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-04T07:07:32.614Z', 60,
      2562, 
      15133, 
      0, 
      299, 
      137, 
      8129, 
      228,
      NULL, 
      NULL, 
      '2025-09-04T07:07:32.616Z', '2025-09-04T07:07:32.616Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52d8gs006nw3jxmtrihdfb', 'cmeicwjpe000dw3882enjsj1z', 'MOBILE', '2025-09-04T07:07:32.762Z', 60,
      2562, 
      15133, 
      0, 
      299, 
      137, 
      8129, 
      228,
      NULL, 
      NULL, 
      '2025-09-04T07:07:32.764Z', '2025-09-04T07:07:32.764Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52dh3p006pw3jx063fskhl', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-09-04T07:07:43.954Z', 90,
      410, 
      967, 
      0, 
      198, 
      154, 
      2485, 
      141,
      NULL, 
      NULL, 
      '2025-09-04T07:07:43.957Z', '2025-09-04T07:07:43.957Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52dhdr006rw3jx360r8nzy', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-09-04T07:07:44.318Z', 90,
      410, 
      967, 
      0, 
      198, 
      154, 
      2485, 
      141,
      NULL, 
      NULL, 
      '2025-09-04T07:07:44.319Z', '2025-09-04T07:07:44.319Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52dwxx006tw3jxeg90drp5', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-09-04T07:08:04.481Z', 93,
      339, 
      840, 
      0, 
      214, 
      163, 
      2234, 
      110,
      NULL, 
      NULL, 
      '2025-09-04T07:08:04.486Z', '2025-09-04T07:08:04.486Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52dwzq006vw3jxpsdhu4kw', 'cmeicwjpg000fw388zh5aiel8', 'DESKTOP', '2025-09-04T07:08:04.549Z', 93,
      339, 
      840, 
      0, 
      214, 
      163, 
      2234, 
      110,
      NULL, 
      NULL, 
      '2025-09-04T07:08:04.550Z', '2025-09-04T07:08:04.550Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52dzxm006xw3jxbbao0jdy', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-09-04T07:08:08.360Z', 88,
      1286, 
      3009, 
      0, 
      112, 
      713, 
      6515, 
      89,
      NULL, 
      NULL, 
      '2025-09-04T07:08:08.362Z', '2025-09-04T07:08:08.362Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52dzz5006zw3jxux032a6y', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-09-04T07:08:08.413Z', 88,
      1286, 
      3009, 
      0, 
      112, 
      713, 
      6515, 
      89,
      NULL, 
      NULL, 
      '2025-09-04T07:08:08.417Z', '2025-09-04T07:08:08.417Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52ep590071w3jx4pxgd9vu', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-09-04T07:08:41.036Z', 55,
      3346, 
      10800, 
      0, 
      295, 
      124, 
      7888, 
      289,
      NULL, 
      NULL, 
      '2025-09-04T07:08:41.038Z', '2025-09-04T07:08:41.038Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52epbf0073w3jxas81co7k', 'cmeicwjpg000fw388zh5aiel8', 'MOBILE', '2025-09-04T07:08:41.258Z', 55,
      3346, 
      10800, 
      0, 
      295, 
      124, 
      7888, 
      289,
      NULL, 
      NULL, 
      '2025-09-04T07:08:41.259Z', '2025-09-04T07:08:41.259Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52g1kf0075w3jxhkouqxsa', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-09-04T07:09:43.789Z', 68,
      434, 
      4372, 
      0.003, 
      161, 
      165, 
      2717, 
      165,
      NULL, 
      NULL, 
      '2025-09-04T07:09:43.792Z', '2025-09-04T07:09:43.792Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52g1ko0077w3jx3aokqcvg', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-09-04T07:09:43.800Z', 68,
      434, 
      4372, 
      0.003, 
      161, 
      165, 
      2717, 
      165,
      NULL, 
      NULL, 
      '2025-09-04T07:09:43.801Z', '2025-09-04T07:09:43.801Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52g8j80079w3jxcbpfpy5c', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-09-04T07:09:52.819Z', 56,
      435, 
      3989, 
      0.003, 
      289, 
      153, 
      2995, 
      362,
      NULL, 
      NULL, 
      '2025-09-04T07:09:52.821Z', '2025-09-04T07:09:52.821Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52gp78007bw3jx115cm2r0', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-09-04T07:10:14.418Z', 58,
      2877, 
      13225, 
      0, 
      406, 
      137, 
      9207, 
      210,
      NULL, 
      NULL, 
      '2025-09-04T07:10:14.421Z', '2025-09-04T07:10:14.421Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52gpf6007dw3jxqcwdjk74', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-09-04T07:10:14.704Z', 58,
      2877, 
      13225, 
      0, 
      406, 
      137, 
      9207, 
      210,
      NULL, 
      NULL, 
      '2025-09-04T07:10:14.706Z', '2025-09-04T07:10:14.706Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52hc7h007fw3jxfn49kysm', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-09-04T07:10:44.235Z', 94,
      338, 
      791, 
      0, 
      125, 
      909, 
      2547, 
      44,
      NULL, 
      NULL, 
      '2025-09-04T07:10:44.237Z', '2025-09-04T07:10:44.237Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52hcdk007hw3jxoprj0076', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-09-04T07:10:44.454Z', 94,
      338, 
      791, 
      0, 
      125, 
      909, 
      2547, 
      44,
      NULL, 
      NULL, 
      '2025-09-04T07:10:44.456Z', '2025-09-04T07:10:44.456Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52hika007jw3jxbeu48ygu', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-09-04T07:10:52.474Z', 48,
      1875, 
      13447, 
      0, 
      476, 
      134, 
      10142, 
      656,
      NULL, 
      NULL, 
      '2025-09-04T07:10:52.475Z', '2025-09-04T07:10:52.475Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52hklx007lw3jx0bshbj3s', 'cmeicwjph000gw3880h7ugh3g', 'DESKTOP', '2025-09-04T07:10:55.123Z', 39,
      515, 
      4433, 
      0.003, 
      722, 
      148, 
      4956, 
      1413,
      NULL, 
      NULL, 
      '2025-09-04T07:10:55.126Z', '2025-09-04T07:10:55.126Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52hwxv007nw3jxaagzi0t8', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-09-04T07:11:11.106Z', 82,
      1283, 
      3769, 
      0, 
      106, 
      723, 
      7302, 
      38,
      NULL, 
      NULL, 
      '2025-09-04T07:11:11.107Z', '2025-09-04T07:11:11.107Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52hx1f007pw3jxksxmvz0f', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-09-04T07:11:11.233Z', 82,
      1283, 
      3769, 
      0, 
      106, 
      723, 
      7302, 
      38,
      NULL, 
      NULL, 
      '2025-09-04T07:11:11.236Z', '2025-09-04T07:11:11.236Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52i78a007rw3jx7ietah31', 'cmeicwjph000gw3880h7ugh3g', 'MOBILE', '2025-09-04T07:11:24.441Z', 56,
      3750, 
      13895, 
      0, 
      212, 
      141, 
      8780, 
      204,
      NULL, 
      NULL, 
      '2025-09-04T07:11:24.442Z', '2025-09-04T07:11:24.442Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52iain007tw3jxkuobpn7x', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-09-04T07:11:28.700Z', 91,
      338, 
      779, 
      0, 
      148, 
      139, 
      2361, 
      155,
      NULL, 
      NULL, 
      '2025-09-04T07:11:28.703Z', '2025-09-04T07:11:28.703Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52iiyt007vw3jxugoc2ggn', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-09-04T07:11:39.652Z', 94,
      433, 
      1493, 
      0, 
      109, 
      153, 
      1409, 
      30,
      NULL, 
      NULL, 
      '2025-09-04T07:11:39.654Z', '2025-09-04T07:11:39.654Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52ij0t007xw3jxbpuk03lo', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-09-04T07:11:39.724Z', 94,
      433, 
      1493, 
      0, 
      109, 
      153, 
      1409, 
      30,
      NULL, 
      NULL, 
      '2025-09-04T07:11:39.725Z', '2025-09-04T07:11:39.725Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52irje007zw3jxbsbov01x', 'cmeicwjpg000ew388h72sjhwe', 'DESKTOP', '2025-09-04T07:11:50.760Z', 97,
      315, 
      773, 
      0, 
      76, 
      152, 
      1796, 
      14,
      NULL, 
      NULL, 
      '2025-09-04T07:11:50.763Z', '2025-09-04T07:11:50.763Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52ivar0081w3jxd20zwfoe', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-09-04T07:11:55.633Z', 64,
      2340, 
      11452, 
      0, 
      172, 
      160, 
      7675, 
      108,
      NULL, 
      NULL, 
      '2025-09-04T07:11:55.635Z', '2025-09-04T07:11:55.635Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52j1d10083w3jxyoqpn4y5', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-04T07:12:03.491Z', 71,
      1977, 
      7813, 
      0, 
      108, 
      134, 
      4986, 
      42,
      NULL, 
      NULL, 
      '2025-09-04T07:12:03.494Z', '2025-09-04T07:12:03.494Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52j1ex0085w3jxs06tncgo', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-04T07:12:03.560Z', 71,
      1977, 
      7813, 
      0, 
      108, 
      134, 
      4986, 
      42,
      NULL, 
      NULL, 
      '2025-09-04T07:12:03.561Z', '2025-09-04T07:12:03.561Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52jcsd0087w3jxtzicsbrq', 'cmeicwjpg000ew388h72sjhwe', 'MOBILE', '2025-09-04T07:12:18.300Z', 63,
      2322, 
      11435, 
      0, 
      152, 
      146, 
      7840, 
      147,
      NULL, 
      NULL, 
      '2025-09-04T07:12:18.302Z', '2025-09-04T07:12:18.302Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52ji200089w3jx6l8iw9km', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-09-04T07:12:25.127Z', 92,
      391, 
      1692, 
      0.004, 
      155, 
      141, 
      1508, 
      59,
      NULL, 
      NULL, 
      '2025-09-04T07:12:25.129Z', '2025-09-04T07:12:25.129Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52jtds008bw3jxsfdw4kg5', 'cmeicwjpb000aw388isjcf2vj', 'DESKTOP', '2025-09-04T07:12:39.806Z', 96,
      360, 
      1346, 
      0, 
      50, 
      130, 
      1046, 
      0,
      NULL, 
      NULL, 
      '2025-09-04T07:12:39.808Z', '2025-09-04T07:12:39.808Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52k2dd008dw3jxlhyg2aab', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-04T07:12:51.456Z', 69,
      1970, 
      7809, 
      0, 
      65, 
      142, 
      6169, 
      8,
      NULL, 
      NULL, 
      '2025-09-04T07:12:51.458Z', '2025-09-04T07:12:51.458Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52khpv008fw3jxojlv4qk7', 'cmeicwjpb000aw388isjcf2vj', 'MOBILE', '2025-09-04T07:13:11.345Z', 70,
      1982, 
      7893, 
      0, 
      96, 
      129, 
      5200, 
      43,
      NULL, 
      NULL, 
      '2025-09-04T07:13:11.347Z', '2025-09-04T07:13:11.347Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52kwxr008hw3jx0d4svaqf', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-09-04T07:13:31.069Z', 97,
      435, 
      1220, 
      0, 
      92, 
      158, 
      1077, 
      22,
      NULL, 
      NULL, 
      '2025-09-04T07:13:31.071Z', '2025-09-04T07:13:31.071Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52lccg008jw3jxtztxilc3', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-09-04T07:13:51.037Z', 58,
      830, 
      1414, 
      0, 
      358, 
      137, 
      3164, 
      1298,
      NULL, 
      NULL, 
      '2025-09-04T07:13:51.040Z', '2025-09-04T07:13:51.040Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52lcn6008lw3jx1dcp5b1w', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-09-04T07:13:51.425Z', 72,
      1685, 
      6301, 
      0, 
      60, 
      137, 
      5808, 
      8,
      NULL, 
      NULL, 
      '2025-09-04T07:13:51.426Z', '2025-09-04T07:13:51.426Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52lvzk008nw3jxfsh6tbhx', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-09-04T07:14:16.494Z', 75,
      1579, 
      6164, 
      0, 
      204, 
      151, 
      3969, 
      100,
      NULL, 
      NULL, 
      '2025-09-04T07:14:16.496Z', '2025-09-04T07:14:16.496Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52lz3x008pw3jxxfav11s3', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-04T07:14:20.539Z', 94,
      405, 
      1498, 
      0.011, 
      138, 
      125, 
      1353, 
      52,
      NULL, 
      NULL, 
      '2025-09-04T07:14:20.541Z', '2025-09-04T07:14:20.541Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52m07p008rw3jxtfstwlpe', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-09-04T07:14:21.971Z', 99,
      439, 
      886, 
      0, 
      93, 
      139, 
      1125, 
      28,
      NULL, 
      NULL, 
      '2025-09-04T07:14:21.973Z', '2025-09-04T07:14:21.973Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52m8n3008tw3jxamvizpaj', 'cmeicwjpc000bw388wqevy6tw', 'DESKTOP', '2025-09-04T07:14:32.893Z', 99,
      399, 
      973, 
      0, 
      63, 
      139, 
      948, 
      7,
      NULL, 
      NULL, 
      '2025-09-04T07:14:32.895Z', '2025-09-04T07:14:32.895Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52maj8008vw3jxp39dy8ml', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-09-04T07:14:35.347Z', 75,
      1579, 
      6164, 
      0, 
      204, 
      151, 
      3969, 
      100,
      NULL, 
      NULL, 
      '2025-09-04T07:14:35.348Z', '2025-09-04T07:14:35.348Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52mcj0008xw3jxbs0g6t57', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-04T07:14:37.932Z', 95,
      407, 
      1394, 
      0, 
      63, 
      144, 
      1172, 
      7,
      NULL, 
      NULL, 
      '2025-09-04T07:14:37.933Z', '2025-09-04T07:14:37.933Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52miaq008zw3jxroxfcego', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-04T07:14:45.409Z', 94,
      405, 
      1498, 
      0.011, 
      138, 
      125, 
      1353, 
      52,
      NULL, 
      NULL, 
      '2025-09-04T07:14:45.411Z', '2025-09-04T07:14:45.411Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52mjk40091w3jxooqmmvmh', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-04T07:14:47.043Z', 71,
      2098, 
      6826, 
      0, 
      162, 
      126, 
      4928, 
      62,
      NULL, 
      NULL, 
      '2025-09-04T07:14:47.044Z', '2025-09-04T07:14:47.044Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52mkgb0095w3jx5s6cvf3s', 'cmeicwjpc000bw388wqevy6tw', 'MOBILE', '2025-09-04T07:14:48.202Z', 72,
      1777, 
      6526, 
      0, 
      151, 
      150, 
      5119, 
      105,
      NULL, 
      NULL, 
      '2025-09-04T07:14:48.203Z', '2025-09-04T07:14:48.203Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52mmci0097w3jxcvjdaw6e', 'cmeicwjpa0009w38860079nxq', 'DESKTOP', '2025-09-04T07:14:50.656Z', 94,
      405, 
      1498, 
      0.011, 
      138, 
      125, 
      1353, 
      52,
      NULL, 
      NULL, 
      '2025-09-04T07:14:50.658Z', '2025-09-04T07:14:50.658Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52mw280099w3jx8qgkdjw0', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-04T07:15:03.247Z', 71,
      2104, 
      6751, 
      0, 
      150, 
      129, 
      4980, 
      65,
      NULL, 
      NULL, 
      '2025-09-04T07:15:03.248Z', '2025-09-04T07:15:03.248Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52naek009dw3jxfmk2204d', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-04T07:15:21.835Z', 71,
      2025, 
      6764, 
      0, 
      207, 
      131, 
      4751, 
      108,
      NULL, 
      NULL, 
      '2025-09-04T07:15:21.836Z', '2025-09-04T07:15:21.836Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf52nahb009hw3jxv3kd54hs', 'cmeicwjpa0009w38860079nxq', 'MOBILE', '2025-09-04T07:15:21.933Z', 71,
      2025, 
      6764, 
      0, 
      207, 
      131, 
      4751, 
      108,
      NULL, 
      NULL, 
      '2025-09-04T07:15:21.936Z', '2025-09-04T07:15:21.936Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf590ici009lw3jx3jmjsr3b', 'cmeicwjp20001w3882jua1c7g', 'DESKTOP', '2025-09-04T10:13:36.349Z', 93,
      396, 
      1405, 
      0.099, 
      49, 
      144, 
      1126, 
      0,
      NULL, 
      NULL, 
      '2025-09-04T10:13:36.352Z', '2025-09-04T10:13:36.352Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf59131d009nw3jxdm3entda', 'cmeicwjp20001w3882jua1c7g', 'MOBILE', '2025-09-04T10:14:03.167Z', 78,
      1274, 
      5012, 
      0.078, 
      153, 
      683, 
      3802, 
      43,
      NULL, 
      NULL, 
      '2025-09-04T10:14:03.169Z', '2025-09-04T10:14:03.169Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf591h9r009pw3jx653284bw', 'cmeicwjp40003w388nfqjtln4', 'DESKTOP', '2025-09-04T10:14:21.614Z', 96,
      454, 
      1283, 
      0, 
      59, 
      439, 
      1203, 
      5,
      NULL, 
      NULL, 
      '2025-09-04T10:14:21.616Z', '2025-09-04T10:14:21.616Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5921dp009rw3jxk7lbynhu', 'cmeicwjp40003w388nfqjtln4', 'MOBILE', '2025-09-04T10:14:47.676Z', 64,
      1489, 
      5101, 
      0, 
      300, 
      119, 
      3301, 
      634,
      NULL, 
      NULL, 
      '2025-09-04T10:14:47.678Z', '2025-09-04T10:14:47.678Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf593b34009tw3jx0ktm27t0', 'cmeicwjp60004w388djs590ve', 'DESKTOP', '2025-09-04T10:15:46.909Z', 39,
      1125, 
      3609, 
      0.058, 
      533, 
      728, 
      4393, 
      2229,
      NULL, 
      NULL, 
      '2025-09-04T10:15:46.912Z', '2025-09-04T10:15:46.912Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf593nia009vw3jx6d2ouwa7', 'cmeicwjp60004w388djs590ve', 'MOBILE', '2025-09-04T10:16:03.008Z', 63,
      1796, 
      25664, 
      0.078, 
      63, 
      149, 
      12173, 
      7,
      NULL, 
      NULL, 
      '2025-09-04T10:16:03.010Z', '2025-09-04T10:16:03.010Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf595ieg009xw3jx72nuucly', 'cmeicwjp30002w388n8x4rtqd', 'DESKTOP', '2025-09-04T10:17:29.701Z', 94,
      497, 
      1389, 
      0.032, 
      80, 
      922, 
      1657, 
      15,
      NULL, 
      NULL, 
      '2025-09-04T10:17:29.704Z', '2025-09-04T10:17:29.704Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf595w00009zw3jxhq3xwi7e', 'cmeicwjp30002w388n8x4rtqd', 'MOBILE', '2025-09-04T10:17:47.326Z', 72,
      1558, 
      8711, 
      0, 
      58, 
      150, 
      4206, 
      4,
      NULL, 
      NULL, 
      '2025-09-04T10:17:47.328Z', '2025-09-04T10:17:47.328Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf596fxa00a1w3jxfr2ihkm1', 'cmeicwjp10000w3885qfl12kk', 'DESKTOP', '2025-09-04T10:18:13.149Z', 93,
      477, 
      1354, 
      0.053, 
      117, 
      667, 
      1681, 
      59,
      NULL, 
      NULL, 
      '2025-09-04T10:18:13.150Z', '2025-09-04T10:18:13.150Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5972qj00a3w3jxgdcfvynd', 'cmeicwjp10000w3885qfl12kk', 'MOBILE', '2025-09-04T10:18:42.713Z', 66,
      1826, 
      7548, 
      0.078, 
      196, 
      154, 
      6352, 
      155,
      NULL, 
      NULL, 
      '2025-09-04T10:18:42.715Z', '2025-09-04T10:18:42.715Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf597kcx00a5w3jxjax5g2nf', 'cmeicwjp80006w38844cuoscg', 'DESKTOP', '2025-09-04T10:19:05.552Z', 96,
      453, 
      1101, 
      0, 
      59, 
      911, 
      1578, 
      5,
      NULL, 
      NULL, 
      '2025-09-04T10:19:05.553Z', '2025-09-04T10:19:05.553Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf5984qp00a7w3jxc1d0g48e', 'cmeicwjp80006w38844cuoscg', 'MOBILE', '2025-09-04T10:19:31.968Z', 73,
      1335, 
      6826, 
      0, 
      126, 
      163, 
      4769, 
      93,
      NULL, 
      NULL, 
      '2025-09-04T10:19:31.969Z', '2025-09-04T10:19:31.969Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf599v5i00a9w3jxpmkig0k4', 'cmeicwjp70005w388zbfjngts', 'DESKTOP', '2025-09-04T10:20:52.851Z', 98,
      465, 
      610, 
      0, 
      72, 
      1145, 
      1614, 
      11,
      NULL, 
      NULL, 
      '2025-09-04T10:20:52.854Z', '2025-09-04T10:20:52.854Z'
    );
INSERT INTO "PerformanceMeasurement" (
      "id", "productId", "deviceType", "measurementDate", "performanceScore", 
      "fcp", "lcp", "cls", "fid", "ttfb", "speedIndex", "tbt", 
      "opportunity", "diagnostics", "createdAt", "updatedAt"
    ) VALUES (
      'cmf59abck00abw3jxqhvlgwfl', 'cmeicwjp70005w388zbfjngts', 'MOBILE', '2025-09-04T10:21:13.842Z', 67,
      1806, 
      10694, 
      0, 
      66, 
      158, 
      6809, 
      8,
      NULL, 
      NULL, 
      '2025-09-04T10:21:13.845Z', '2025-09-04T10:21:13.845Z'
    );

-- Import Measurement Jobs

-- Import System Config
INSERT INTO "SystemConfig" ("id", "key", "value", "createdAt", "updatedAt") VALUES
('cmejkpn6c004ow3etyfx6vdlm', 'last_cron_run', '2025-09-04T07:15:21.937Z', '2025-08-20T06:10:08.917Z', '2025-09-04T07:15:21.938Z');
INSERT INTO "SystemConfig" ("id", "key", "value", "createdAt", "updatedAt") VALUES
('cmejkpn6f004pw3etc0wocik8', 'last_cron_results', '{"totalProducts":17,"successCount":34,"failureCount":0,"duration":1386306,"timestamp":"2025-09-04T07:15:21.939Z","jobId":"job-1756968735630-xuixg5s"}', '2025-08-20T06:10:08.920Z', '2025-09-04T07:15:21.940Z');

-- Re-enable triggers
SET session_replication_role = 'origin';

-- Verify data import
SELECT 
  (SELECT COUNT(*) FROM "Product") AS product_count,
  (SELECT COUNT(*) FROM "PerformanceMeasurement") AS measurement_count,
  (SELECT COUNT(*) FROM "MeasurementJob") AS job_count,
  (SELECT COUNT(*) FROM "SystemConfig") AS config_count;
