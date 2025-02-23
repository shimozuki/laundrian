/*
 Navicat Premium Data Transfer

 Source Server         : my_local
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : payback

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 23/02/2025 17:46:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ch_favorites
-- ----------------------------
DROP TABLE IF EXISTS `ch_favorites`;
CREATE TABLE `ch_favorites`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ch_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for ch_messages
-- ----------------------------
DROP TABLE IF EXISTS `ch_messages`;
CREATE TABLE `ch_messages`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint NOT NULL,
  `to_id` bigint NOT NULL,
  `body` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ch_messages
-- ----------------------------
INSERT INTO `ch_messages` VALUES ('63371f9a-23d7-4c2e-a9f8-90ebfde155d9', 9, 1, 'iya', NULL, 1, '2025-02-15 20:12:47', '2025-02-15 20:13:01');
INSERT INTO `ch_messages` VALUES ('d83ebd0b-dcb0-4479-86cc-9548c8cc142f', 1, 9, 'test', NULL, 1, '2025-02-15 18:45:14', '2025-02-15 20:12:40');
INSERT INTO `ch_messages` VALUES ('f11f6f43-9ac8-4842-998f-2e21311ecc0f', 1, 9, 'gimana', NULL, 1, '2025-02-15 20:13:09', '2025-02-15 20:13:12');

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint UNSIGNED NOT NULL,
  `customer_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL DEFAULT 0,
  `status` enum('used','not used') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `temporary` bigint UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `coupons_customer_id_index`(`customer_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 439 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES (1, 33, 'Raina', '088613215368', 10, 'not used', 33, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (2, 19, 'Jaya', '087369808499', 10, 'not used', 19, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (3, 50, 'Laksana', '089996083646', 10, 'not used', 50, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (4, 72, 'Cici', '084497187050', 10, 'not used', 72, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (5, 53, 'Ratna', '089911278799', 10, 'not used', 53, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (6, 40, 'Yuliana', '087611775148', 10, 'not used', 40, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (7, 14, 'Diah', '087062177896', 10, 'not used', 14, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (8, 74, 'Aditya', '088133506311', 10, 'not used', 74, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (9, 22, 'Kania', '086758516374', 10, 'not used', 22, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (10, 18, 'Zahra', '087232325552', 10, 'not used', 18, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (11, 65, 'Bella', '084318661657', 10, 'not used', 65, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (12, 28, 'Cindy', '081102481926', 10, 'not used', 28, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (13, 20, 'Clara', '080504045152', 10, 'not used', 20, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (14, 71, 'Kusuma', '080398510241', 10, 'not used', 71, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (15, 15, 'Salsabila', '089176680322', 10, 'not used', 15, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (16, 63, 'Soleh', '083781245898', 10, 'not used', 63, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (17, 56, 'Restu', '087140402130', 10, 'not used', 56, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (18, 35, 'Prabawa', '082477011574', 10, 'not used', 35, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (19, 51, 'Putri', '086848195414', 10, 'not used', 51, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (20, 26, 'Kezia', '084702551202', 10, 'not used', 26, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (21, 30, 'Citra', '087722888311', 10, 'not used', 30, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (22, 49, 'Kayla', '087527538873', 10, 'not used', 49, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (23, 52, 'Raharja', '085394314244', 10, 'not used', 52, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (24, 55, 'Galih', '080672801663', 10, 'not used', 55, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (25, 73, 'Lasmono', '084109960593', 10, 'not used', 73, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (26, 38, 'Gasti', '084325083865', 10, 'not used', 38, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (27, 29, 'Prayitna', '080944695367', 10, 'not used', 29, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (28, 45, 'Violet', '083499923911', 10, 'not used', 45, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (29, 70, 'Balamantri', '082718784580', 10, 'not used', 70, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (30, 75, 'Opan', '083957432316', 10, 'not used', 75, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (31, 23, 'Salimah', '085225881894', 10, 'not used', 23, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (32, 41, 'Olga', '087891632726', 10, 'not used', 41, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (33, 60, 'Bagus', '089764630585', 10, 'not used', 60, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (34, 24, 'Kamila', '085717889474', 10, 'not used', 24, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (35, 6, 'Unjani', '084648024542', 10, 'not used', 6, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (36, 43, 'Yunita', '082908505547', 10, 'not used', 43, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (37, 36, 'Kayla', '087218151047', 10, 'not used', 36, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (38, 31, 'Dian', '088627888918', 10, 'not used', 31, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (39, 59, 'Kemba', '088683522150', 10, 'not used', 59, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (40, 42, 'Dwi', '081805508360', 10, 'not used', 42, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (41, 25, 'Pandu', '084005423502', 10, 'not used', 25, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (42, 77, 'Laila', '085941179939', 10, 'not used', 77, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (43, 64, 'Uchita', '088109206371', 10, 'not used', 64, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (44, 8, 'Agnes', '088464795703', 10, 'not used', 8, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (45, 17, 'Rina', '084050379241', 10, 'not used', 17, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (46, 58, 'Gasti', '082440163234', 10, 'not used', 58, '2025-01-31 13:08:18', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (47, 21, 'Michelle', '085879105972', 10, 'not used', 21, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (48, 62, 'Cahyo', '082289547028', 10, 'not used', 62, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (49, 68, 'Hesti', '081134096653', 10, 'not used', 68, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (50, 54, 'Pranawa', '087873528386', 10, 'not used', 54, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (51, 47, 'Maria', '086773352803', 10, 'not used', 47, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (52, 57, 'Rika', '086366096716', 10, 'not used', 57, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (53, 9, 'Eka', '081138044082', 10, 'not used', 9, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (54, 13, 'Rendy', '083487854563', 10, 'not used', 13, '2025-01-31 13:08:18', '2025-01-31 13:08:19');
INSERT INTO `coupons` VALUES (55, 12, 'Jagapati', '084788915864', 10, 'not used', 12, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (56, 76, 'Siska', '088362522937', 10, 'not used', 76, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (57, 34, 'Dinda', '087821542154', 10, 'not used', 34, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (58, 66, 'Titi', '081768407578', 10, 'not used', 66, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (59, 5, 'Pelanggan', '087789616639', 10, 'used', 5, '2025-01-31 13:08:18', '2025-02-23 16:32:22');
INSERT INTO `coupons` VALUES (60, 48, 'Cici', '083471952180', 10, 'not used', 48, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (61, 46, 'Paiman', '084911811948', 10, 'not used', 46, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (62, 61, 'Amalia', '087329254932', 10, 'not used', 61, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (63, 10, 'Julia', '082882506913', 10, 'not used', 10, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (64, 39, 'Jinawi', '089074340573', 10, 'not used', 39, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (65, 11, 'Yulia', '082186990813', 10, 'not used', 11, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (66, 16, 'Salwa', '087799454594', 10, 'not used', 16, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (67, 37, 'Nugraha', '089006020835', 10, 'not used', 37, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (68, 69, 'Bahuwirya', '081878642907', 10, 'not used', 69, '2025-01-31 13:08:18', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (69, 32, 'Rendy', '087485516210', 10, 'not used', 32, '2025-01-31 13:08:18', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (70, 44, 'Bella', '081190596311', 10, 'not used', 44, '2025-01-31 13:08:19', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (71, 7, 'Hendri', '080161486799', 10, 'not used', 7, '2025-01-31 13:08:19', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (72, 67, 'Winda', '084517045953', 10, 'not used', 67, '2025-01-31 13:08:19', '2025-01-31 13:08:20');
INSERT INTO `coupons` VALUES (73, 73, 'Lasmono', '084109960593', 10, 'not used', 73, '2025-01-31 13:08:19', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (74, 27, 'Kiandra', '084411686278', 10, 'not used', 27, '2025-01-31 13:08:19', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (75, 30, 'Citra', '087722888311', 10, 'not used', 30, '2025-01-31 13:08:19', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (76, 21, 'Michelle', '085879105972', 10, 'not used', 21, '2025-01-31 13:08:19', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (77, 49, 'Kayla', '087527538873', 10, 'not used', 49, '2025-01-31 13:08:19', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (78, 74, 'Aditya', '088133506311', 10, 'used', 74, '2025-01-31 13:08:19', '2025-02-23 16:21:02');
INSERT INTO `coupons` VALUES (79, 53, 'Ratna', '089911278799', 10, 'not used', 53, '2025-01-31 13:08:19', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (80, 65, 'Bella', '084318661657', 10, 'not used', 65, '2025-01-31 13:08:19', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (81, 57, 'Rika', '086366096716', 10, 'not used', 57, '2025-01-31 13:08:19', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (82, 62, 'Cahyo', '082289547028', 10, 'not used', 62, '2025-01-31 13:08:19', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (83, 18, 'Zahra', '087232325552', 10, 'not used', 18, '2025-01-31 13:08:19', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (84, 41, 'Olga', '087891632726', 10, 'not used', 41, '2025-01-31 13:08:19', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (85, 13, 'Rendy', '083487854563', 10, 'not used', 13, '2025-01-31 13:08:20', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (86, 71, 'Kusuma', '080398510241', 10, 'not used', 71, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (87, 24, 'Kamila', '085717889474', 10, 'not used', 24, '2025-01-31 13:08:20', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (88, 15, 'Salsabila', '089176680322', 10, 'not used', 15, '2025-01-31 13:08:20', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (89, 63, 'Soleh', '083781245898', 10, 'not used', 63, '2025-01-31 13:08:20', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (90, 60, 'Bagus', '089764630585', 10, 'not used', 60, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (91, 11, 'Yulia', '082186990813', 10, 'not used', 11, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (92, 47, 'Maria', '086773352803', 10, 'not used', 47, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (93, 25, 'Pandu', '084005423502', 10, 'not used', 25, '2025-01-31 13:08:20', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (94, 22, 'Kania', '086758516374', 10, 'not used', 22, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (95, 52, 'Raharja', '085394314244', 10, 'not used', 52, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (96, 26, 'Kezia', '084702551202', 10, 'not used', 26, '2025-01-31 13:08:20', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (97, 38, 'Gasti', '084325083865', 10, 'not used', 38, '2025-01-31 13:08:20', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (98, 28, 'Cindy', '081102481926', 10, 'not used', 28, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (99, 69, 'Bahuwirya', '081878642907', 10, 'not used', 69, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (100, 67, 'Winda', '084517045953', 10, 'not used', 67, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (101, 40, 'Yuliana', '087611775148', 10, 'not used', 40, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (102, 5, 'Pelanggan', '087789616639', 10, 'used', 5, '2025-01-31 13:08:20', '2025-02-23 16:44:48');
INSERT INTO `coupons` VALUES (103, 10, 'Julia', '082882506913', 10, 'not used', 10, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (104, 20, 'Clara', '080504045152', 10, 'not used', 20, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (105, 34, 'Dinda', '087821542154', 10, 'not used', 34, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (106, 9, 'Eka', '081138044082', 10, 'not used', 9, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (107, 54, 'Pranawa', '087873528386', 10, 'not used', 54, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (108, 59, 'Kemba', '088683522150', 10, 'not used', 59, '2025-01-31 13:08:20', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (109, 76, 'Siska', '088362522937', 10, 'not used', 76, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (110, 33, 'Raina', '088613215368', 10, 'not used', 33, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (111, 64, 'Uchita', '088109206371', 10, 'not used', 64, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (112, 29, 'Prayitna', '080944695367', 10, 'not used', 29, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (113, 36, 'Kayla', '087218151047', 10, 'not used', 36, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (114, 14, 'Diah', '087062177896', 10, 'not used', 14, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (115, 46, 'Paiman', '084911811948', 10, 'not used', 46, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (116, 50, 'Laksana', '089996083646', 10, 'not used', 50, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (117, 55, 'Galih', '080672801663', 10, 'not used', 55, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (118, 75, 'Opan', '083957432316', 10, 'not used', 75, '2025-01-31 13:08:20', '2025-01-31 13:08:21');
INSERT INTO `coupons` VALUES (119, 70, 'Balamantri', '082718784580', 10, 'not used', 70, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (120, 77, 'Laila', '085941179939', 10, 'not used', 77, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (121, 35, 'Prabawa', '082477011574', 10, 'not used', 35, '2025-01-31 13:08:20', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (122, 42, 'Dwi', '081805508360', 10, 'not used', 42, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (123, 72, 'Cici', '084497187050', 10, 'not used', 72, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (124, 16, 'Salwa', '087799454594', 10, 'not used', 16, '2025-01-31 13:08:20', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (125, 7, 'Hendri', '080161486799', 10, 'not used', 7, '2025-01-31 13:08:20', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (126, 39, 'Jinawi', '089074340573', 10, 'not used', 39, '2025-01-31 13:08:21', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (127, 37, 'Nugraha', '089006020835', 10, 'not used', 37, '2025-01-31 13:08:21', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (128, 61, 'Amalia', '087329254932', 10, 'not used', 61, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (129, 17, 'Rina', '084050379241', 10, 'not used', 17, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (130, 8, 'Agnes', '088464795703', 10, 'not used', 8, '2025-01-31 13:08:21', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (131, 68, 'Hesti', '081134096653', 10, 'not used', 68, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (132, 45, 'Violet', '083499923911', 10, 'not used', 45, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (133, 23, 'Salimah', '085225881894', 10, 'not used', 23, '2025-01-31 13:08:21', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (134, 30, 'Citra', '087722888311', 10, 'not used', 30, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (135, 32, 'Rendy', '087485516210', 10, 'not used', 32, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (136, 19, 'Jaya', '087369808499', 10, 'not used', 19, '2025-01-31 13:08:21', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (137, 56, 'Restu', '087140402130', 10, 'not used', 56, '2025-01-31 13:08:21', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (138, 66, 'Titi', '081768407578', 10, 'not used', 66, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (139, 13, 'Rendy', '083487854563', 10, 'not used', 13, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (140, 31, 'Dian', '088627888918', 10, 'not used', 31, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (141, 38, 'Gasti', '084325083865', 10, 'not used', 38, '2025-01-31 13:08:21', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (142, 59, 'Kemba', '088683522150', 10, 'not used', 59, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (143, 6, 'Unjani', '084648024542', 10, 'not used', 6, '2025-01-31 13:08:21', '2025-01-31 13:08:22');
INSERT INTO `coupons` VALUES (144, 51, 'Putri', '086848195414', 10, 'not used', 51, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (145, 65, 'Bella', '084318661657', 10, 'not used', 65, '2025-01-31 13:08:21', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (146, 21, 'Michelle', '085879105972', 10, 'not used', 21, '2025-01-31 13:08:21', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (147, 48, 'Cici', '083471952180', 10, 'not used', 48, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (148, 73, 'Lasmono', '084109960593', 10, 'not used', 73, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (149, 43, 'Yunita', '082908505547', 10, 'not used', 43, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (150, 57, 'Rika', '086366096716', 10, 'not used', 57, '2025-01-31 13:08:21', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (151, 12, 'Jagapati', '084788915864', 10, 'not used', 12, '2025-01-31 13:08:21', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (152, 44, 'Bella', '081190596311', 10, 'not used', 44, '2025-01-31 13:08:21', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (153, 22, 'Kania', '086758516374', 10, 'not used', 22, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (154, 58, 'Gasti', '082440163234', 10, 'not used', 58, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (155, 10, 'Julia', '082882506913', 10, 'not used', 10, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (156, 34, 'Dinda', '087821542154', 10, 'not used', 34, '2025-01-31 13:08:22', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (157, 26, 'Kezia', '084702551202', 10, 'not used', 26, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (158, 75, 'Opan', '083957432316', 10, 'not used', 75, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (159, 69, 'Bahuwirya', '081878642907', 10, 'not used', 69, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (160, 74, 'Aditya', '088133506311', 10, 'not used', 74, '2025-01-31 13:08:22', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (161, 60, 'Bagus', '089764630585', 10, 'not used', 60, '2025-01-31 13:08:22', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (162, 62, 'Cahyo', '082289547028', 10, 'not used', 62, '2025-01-31 13:08:22', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (163, 41, 'Olga', '087891632726', 10, 'not used', 41, '2025-01-31 13:08:22', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (164, 24, 'Kamila', '085717889474', 10, 'not used', 24, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (165, 36, 'Kayla', '087218151047', 10, 'not used', 36, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (166, 42, 'Dwi', '081805508360', 10, 'not used', 42, '2025-01-31 13:08:22', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (167, 49, 'Kayla', '087527538873', 10, 'not used', 49, '2025-01-31 13:08:22', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (168, 6, 'Unjani', '084648024542', 10, 'not used', 6, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (169, 14, 'Diah', '087062177896', 10, 'not used', 14, '2025-01-31 13:08:22', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (170, 39, 'Jinawi', '089074340573', 10, 'not used', 39, '2025-01-31 13:08:22', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (171, 54, 'Pranawa', '087873528386', 10, 'not used', 54, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (172, 71, 'Kusuma', '080398510241', 10, 'not used', 71, '2025-01-31 13:08:22', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (173, 40, 'Yuliana', '087611775148', 10, 'not used', 40, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (174, 72, 'Cici', '084497187050', 10, 'not used', 72, '2025-01-31 13:08:22', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (175, 77, 'Laila', '085941179939', 10, 'not used', 77, '2025-01-31 13:08:22', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (176, 70, 'Balamantri', '082718784580', 10, 'not used', 70, '2025-01-31 13:08:22', '2025-01-31 13:08:23');
INSERT INTO `coupons` VALUES (177, 47, 'Maria', '086773352803', 10, 'not used', 47, '2025-01-31 13:08:22', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (178, 11, 'Yulia', '082186990813', 10, 'not used', 11, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (179, 27, 'Kiandra', '084411686278', 10, 'not used', 27, '2025-01-31 13:08:23', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (180, 7, 'Hendri', '080161486799', 10, 'not used', 7, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (181, 52, 'Raharja', '085394314244', 10, 'not used', 52, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (182, 5, 'Pelanggan', '087789616639', 10, 'not used', 5, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (183, 59, 'Kemba', '088683522150', 10, 'not used', 59, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (184, 29, 'Prayitna', '080944695367', 10, 'not used', 29, '2025-01-31 13:08:23', '2025-01-31 13:08:24');
INSERT INTO `coupons` VALUES (185, 64, 'Uchita', '088109206371', 10, 'not used', 64, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (186, 66, 'Titi', '081768407578', 10, 'not used', 66, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (187, 31, 'Dian', '088627888918', 10, 'not used', 31, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (188, 37, 'Nugraha', '089006020835', 10, 'not used', 37, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (189, 57, 'Rika', '086366096716', 10, 'not used', 57, '2025-01-31 13:08:23', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (190, 76, 'Siska', '088362522937', 10, 'not used', 76, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (191, 33, 'Raina', '088613215368', 10, 'not used', 33, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (192, 18, 'Zahra', '087232325552', 10, 'not used', 18, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (193, 28, 'Cindy', '081102481926', 10, 'not used', 28, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (194, 62, 'Cahyo', '082289547028', 10, 'not used', 62, '2025-01-31 13:08:23', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (195, 9, 'Eka', '081138044082', 10, 'not used', 9, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (196, 61, 'Amalia', '087329254932', 10, 'not used', 61, '2025-01-31 13:08:23', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (197, 46, 'Paiman', '084911811948', 10, 'not used', 46, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (198, 55, 'Galih', '080672801663', 10, 'not used', 55, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (199, 67, 'Winda', '084517045953', 10, 'not used', 67, '2025-01-31 13:08:23', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (200, 30, 'Citra', '087722888311', 10, 'not used', 30, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (201, 50, 'Laksana', '089996083646', 10, 'not used', 50, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (202, 43, 'Yunita', '082908505547', 10, 'not used', 43, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (203, 32, 'Rendy', '087485516210', 10, 'not used', 32, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (204, 60, 'Bagus', '089764630585', 10, 'not used', 60, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (205, 53, 'Ratna', '089911278799', 10, 'not used', 53, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (206, 13, 'Rendy', '083487854563', 10, 'not used', 13, '2025-01-31 13:08:23', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (207, 20, 'Clara', '080504045152', 10, 'not used', 20, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (208, 73, 'Lasmono', '084109960593', 10, 'not used', 73, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (209, 17, 'Rina', '084050379241', 10, 'not used', 17, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (210, 51, 'Putri', '086848195414', 10, 'not used', 51, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (211, 41, 'Olga', '087891632726', 10, 'not used', 41, '2025-01-31 13:08:23', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (212, 45, 'Violet', '083499923911', 10, 'not used', 45, '2025-01-31 13:08:24', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (213, 16, 'Salwa', '087799454594', 10, 'not used', 16, '2025-01-31 13:08:24', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (214, 68, 'Hesti', '081134096653', 10, 'not used', 68, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (215, 75, 'Opan', '083957432316', 10, 'not used', 75, '2025-01-31 13:08:24', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (216, 48, 'Cici', '083471952180', 10, 'not used', 48, '2025-01-31 13:08:24', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (217, 70, 'Balamantri', '082718784580', 10, 'not used', 70, '2025-01-31 13:08:24', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (218, 44, 'Bella', '081190596311', 10, 'not used', 44, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (219, 26, 'Kezia', '084702551202', 10, 'not used', 26, '2025-01-31 13:08:24', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (220, 21, 'Michelle', '085879105972', 10, 'not used', 21, '2025-01-31 13:08:24', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (221, 65, 'Bella', '084318661657', 10, 'not used', 65, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (222, 35, 'Prabawa', '082477011574', 10, 'not used', 35, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (223, 10, 'Julia', '082882506913', 10, 'not used', 10, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (224, 36, 'Kayla', '087218151047', 10, 'not used', 36, '2025-01-31 13:08:24', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (225, 54, 'Pranawa', '087873528386', 10, 'not used', 54, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (226, 63, 'Soleh', '083781245898', 10, 'not used', 63, '2025-01-31 13:08:24', '2025-01-31 13:08:25');
INSERT INTO `coupons` VALUES (227, 58, 'Gasti', '082440163234', 10, 'not used', 58, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (228, 8, 'Agnes', '088464795703', 10, 'not used', 8, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (229, 23, 'Salimah', '085225881894', 10, 'not used', 23, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (230, 25, 'Pandu', '084005423502', 10, 'not used', 25, '2025-01-31 13:08:24', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (231, 47, 'Maria', '086773352803', 10, 'not used', 47, '2025-01-31 13:08:24', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (232, 15, 'Salsabila', '089176680322', 10, 'not used', 15, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (233, 12, 'Jagapati', '084788915864', 10, 'not used', 12, '2025-01-31 13:08:24', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (234, 24, 'Kamila', '085717889474', 10, 'not used', 24, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (235, 27, 'Kiandra', '084411686278', 10, 'not used', 27, '2025-01-31 13:08:24', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (236, 6, 'Unjani', '084648024542', 10, 'not used', 6, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (237, 19, 'Jaya', '087369808499', 10, 'not used', 19, '2025-01-31 13:08:24', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (238, 69, 'Bahuwirya', '081878642907', 10, 'not used', 69, '2025-01-31 13:08:24', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (239, 22, 'Kania', '086758516374', 10, 'not used', 22, '2025-01-31 13:08:24', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (240, 40, 'Yuliana', '087611775148', 10, 'not used', 40, '2025-01-31 13:08:25', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (241, 77, 'Laila', '085941179939', 10, 'not used', 77, '2025-01-31 13:08:25', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (242, 64, 'Uchita', '088109206371', 10, 'not used', 64, '2025-01-31 13:08:25', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (243, 70, 'Balamantri', '082718784580', 10, 'not used', 70, '2025-01-31 13:08:25', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (244, 71, 'Kusuma', '080398510241', 10, 'not used', 71, '2025-01-31 13:08:25', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (245, 66, 'Titi', '081768407578', 10, 'not used', 66, '2025-01-31 13:08:25', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (246, 5, 'Pelanggan', '087789616639', 10, 'not used', 5, '2025-01-31 13:08:25', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (247, 31, 'Dian', '088627888918', 10, 'not used', 31, '2025-01-31 13:08:25', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (248, 29, 'Prayitna', '080944695367', 10, 'not used', 29, '2025-01-31 13:08:25', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (249, 52, 'Raharja', '085394314244', 10, 'not used', 52, '2025-01-31 13:08:25', '2025-01-31 13:08:26');
INSERT INTO `coupons` VALUES (250, 33, 'Raina', '088613215368', 10, 'not used', 33, '2025-01-31 13:08:25', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (251, 56, 'Restu', '087140402130', 10, 'not used', 56, '2025-01-31 13:08:25', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (252, 38, 'Gasti', '084325083865', 10, 'not used', 38, '2025-01-31 13:08:25', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (253, 34, 'Dinda', '087821542154', 10, 'not used', 34, '2025-01-31 13:08:25', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (254, 28, 'Cindy', '081102481926', 10, 'not used', 28, '2025-01-31 13:08:25', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (255, 46, 'Paiman', '084911811948', 10, 'not used', 46, '2025-01-31 13:08:25', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (256, 13, 'Rendy', '083487854563', 10, 'not used', 13, '2025-01-31 13:08:25', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (257, 50, 'Laksana', '089996083646', 10, 'not used', 50, '2025-01-31 13:08:25', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (258, 30, 'Citra', '087722888311', 10, 'not used', 30, '2025-01-31 13:08:25', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (259, 63, 'Soleh', '083781245898', 10, 'not used', 63, '2025-01-31 13:08:25', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (260, 11, 'Yulia', '082186990813', 10, 'not used', 11, '2025-01-31 13:08:25', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (261, 14, 'Diah', '087062177896', 10, 'not used', 14, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (262, 49, 'Kayla', '087527538873', 10, 'not used', 49, '2025-01-31 13:08:26', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (263, 9, 'Eka', '081138044082', 10, 'not used', 9, '2025-01-31 13:08:26', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (264, 75, 'Opan', '083957432316', 10, 'not used', 75, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (265, 36, 'Kayla', '087218151047', 10, 'not used', 36, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (266, 74, 'Aditya', '088133506311', 10, 'not used', 74, '2025-01-31 13:08:26', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (267, 72, 'Cici', '084497187050', 10, 'not used', 72, '2025-01-31 13:08:26', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (268, 19, 'Jaya', '087369808499', 10, 'not used', 19, '2025-01-31 13:08:26', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (269, 59, 'Kemba', '088683522150', 10, 'not used', 59, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (270, 48, 'Cici', '083471952180', 10, 'not used', 48, '2025-01-31 13:08:26', '2025-01-31 13:08:27');
INSERT INTO `coupons` VALUES (271, 60, 'Bagus', '089764630585', 10, 'not used', 60, '2025-01-31 13:08:26', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (272, 73, 'Lasmono', '084109960593', 10, 'not used', 73, '2025-01-31 13:08:26', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (273, 37, 'Nugraha', '089006020835', 10, 'not used', 37, '2025-01-31 13:08:26', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (274, 27, 'Kiandra', '084411686278', 10, 'not used', 27, '2025-01-31 13:08:26', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (275, 40, 'Yuliana', '087611775148', 10, 'not used', 40, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (276, 32, 'Rendy', '087485516210', 10, 'not used', 32, '2025-01-31 13:08:26', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (277, 20, 'Clara', '080504045152', 10, 'not used', 20, '2025-01-31 13:08:26', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (278, 51, 'Putri', '086848195414', 10, 'not used', 51, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (279, 45, 'Violet', '083499923911', 10, 'not used', 45, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (280, 76, 'Siska', '088362522937', 10, 'not used', 76, '2025-01-31 13:08:26', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (281, 41, 'Olga', '087891632726', 10, 'not used', 41, '2025-01-31 13:08:26', '2025-01-31 13:08:28');
INSERT INTO `coupons` VALUES (282, 18, 'Zahra', '087232325552', 10, 'not used', 18, '2025-01-31 13:08:26', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (283, 42, 'Dwi', '081805508360', 10, 'not used', 42, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (284, 16, 'Salwa', '087799454594', 10, 'not used', 16, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (285, 52, 'Raharja', '085394314244', 10, 'not used', 52, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (286, 43, 'Yunita', '082908505547', 10, 'not used', 43, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (287, 55, 'Galih', '080672801663', 10, 'not used', 55, '2025-01-31 13:08:26', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (288, 26, 'Kezia', '084702551202', 10, 'not used', 26, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (289, 17, 'Rina', '084050379241', 10, 'not used', 17, '2025-01-31 13:08:27', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (290, 5, 'Pelanggan', '087789616639', 10, 'not used', 5, '2025-01-31 13:08:27', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (291, 68, 'Hesti', '081134096653', 10, 'not used', 68, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (292, 53, 'Ratna', '089911278799', 10, 'not used', 53, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (293, 21, 'Michelle', '085879105972', 10, 'not used', 21, '2025-01-31 13:08:27', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (294, 64, 'Uchita', '088109206371', 10, 'not used', 64, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (295, 11, 'Yulia', '082186990813', 10, 'not used', 11, '2025-01-31 13:08:27', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (296, 28, 'Cindy', '081102481926', 10, 'not used', 28, '2025-01-31 13:08:27', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (297, 54, 'Pranawa', '087873528386', 10, 'not used', 54, '2025-01-31 13:08:27', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (298, 65, 'Bella', '084318661657', 10, 'not used', 65, '2025-01-31 13:08:27', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (299, 24, 'Kamila', '085717889474', 10, 'not used', 24, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (300, 7, 'Hendri', '080161486799', 10, 'not used', 7, '2025-01-31 13:08:27', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (301, 23, 'Salimah', '085225881894', 10, 'not used', 23, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (302, 57, 'Rika', '086366096716', 10, 'not used', 57, '2025-01-31 13:08:27', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (303, 69, 'Bahuwirya', '081878642907', 10, 'not used', 69, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (304, 6, 'Unjani', '084648024542', 10, 'not used', 6, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (305, 8, 'Agnes', '088464795703', 10, 'not used', 8, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (306, 72, 'Cici', '084497187050', 10, 'not used', 72, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (307, 15, 'Salsabila', '089176680322', 10, 'not used', 15, '2025-01-31 13:08:27', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (308, 58, 'Gasti', '082440163234', 10, 'not used', 58, '2025-01-31 13:08:27', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (309, 62, 'Cahyo', '082289547028', 10, 'not used', 62, '2025-01-31 13:08:27', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (310, 35, 'Prabawa', '082477011574', 10, 'not used', 35, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (311, 67, 'Winda', '084517045953', 10, 'not used', 67, '2025-01-31 13:08:27', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (312, 34, 'Dinda', '087821542154', 10, 'not used', 34, '2025-01-31 13:08:27', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (313, 61, 'Amalia', '087329254932', 10, 'not used', 61, '2025-01-31 13:08:28', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (314, 10, 'Julia', '082882506913', 10, 'not used', 10, '2025-01-31 13:08:28', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (315, 29, 'Prayitna', '080944695367', 10, 'not used', 29, '2025-01-31 13:08:28', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (316, 48, 'Cici', '083471952180', 10, 'not used', 48, '2025-01-31 13:08:28', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (317, 76, 'Siska', '088362522937', 10, 'not used', 76, '2025-01-31 13:08:28', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (318, 30, 'Citra', '087722888311', 10, 'not used', 30, '2025-01-31 13:08:28', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (319, 20, 'Clara', '080504045152', 10, 'not used', 20, '2025-01-31 13:08:28', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (320, 25, 'Pandu', '084005423502', 10, 'not used', 25, '2025-01-31 13:08:28', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (321, 27, 'Kiandra', '084411686278', 10, 'not used', 27, '2025-01-31 13:08:28', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (322, 49, 'Kayla', '087527538873', 10, 'not used', 49, '2025-01-31 13:08:28', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (323, 41, 'Olga', '087891632726', 10, 'not used', 41, '2025-01-31 13:08:28', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (324, 39, 'Jinawi', '089074340573', 10, 'not used', 39, '2025-01-31 13:08:28', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (325, 19, 'Jaya', '087369808499', 10, 'not used', 19, '2025-01-31 13:08:28', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (326, 71, 'Kusuma', '080398510241', 10, 'not used', 71, '2025-01-31 13:08:28', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (327, 38, 'Gasti', '084325083865', 10, 'not used', 38, '2025-01-31 13:08:28', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (328, 47, 'Maria', '086773352803', 10, 'not used', 47, '2025-01-31 13:08:28', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (329, 13, 'Rendy', '083487854563', 10, 'not used', 13, '2025-01-31 13:08:28', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (330, 77, 'Laila', '085941179939', 10, 'not used', 77, '2025-01-31 13:08:28', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (331, 56, 'Restu', '087140402130', 10, 'not used', 56, '2025-01-31 13:08:28', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (332, 44, 'Bella', '081190596311', 10, 'not used', 44, '2025-01-31 13:08:28', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (333, 9, 'Eka', '081138044082', 10, 'not used', 9, '2025-01-31 13:08:28', '2025-01-31 13:08:29');
INSERT INTO `coupons` VALUES (334, 12, 'Jagapati', '084788915864', 10, 'not used', 12, '2025-01-31 13:08:28', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (335, 60, 'Bagus', '089764630585', 10, 'not used', 60, '2025-01-31 13:08:29', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (336, 37, 'Nugraha', '089006020835', 10, 'not used', 37, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (337, 59, 'Kemba', '088683522150', 10, 'not used', 59, '2025-01-31 13:08:29', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (338, 73, 'Lasmono', '084109960593', 10, 'not used', 73, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (339, 62, 'Cahyo', '082289547028', 10, 'not used', 62, '2025-01-31 13:08:29', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (340, 50, 'Laksana', '089996083646', 10, 'not used', 50, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (341, 74, 'Aditya', '088133506311', 10, 'not used', 74, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (342, 31, 'Dian', '088627888918', 10, 'not used', 31, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (343, 46, 'Paiman', '084911811948', 10, 'not used', 46, '2025-01-31 13:08:29', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (344, 75, 'Opan', '083957432316', 10, 'not used', 75, '2025-01-31 13:08:29', '2025-01-31 13:08:30');
INSERT INTO `coupons` VALUES (345, 55, 'Galih', '080672801663', 10, 'not used', 55, '2025-01-31 13:08:29', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (346, 42, 'Dwi', '081805508360', 10, 'not used', 42, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (347, 52, 'Raharja', '085394314244', 10, 'not used', 52, '2025-01-31 13:08:29', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (348, 45, 'Violet', '083499923911', 10, 'not used', 45, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (349, 57, 'Rika', '086366096716', 9, 'not used', 57, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (350, 25, 'Pandu', '084005423502', 10, 'not used', 25, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (351, 11, 'Yulia', '082186990813', 10, 'not used', 11, '2025-01-31 13:08:29', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (352, 14, 'Diah', '087062177896', 10, 'not used', 14, '2025-01-31 13:08:29', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (353, 9, 'Eka', '081138044082', 10, 'not used', 9, '2025-01-31 13:08:29', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (354, 43, 'Yunita', '082908505547', 10, 'not used', 43, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (355, 33, 'Raina', '088613215368', 10, 'not used', 33, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (356, 70, 'Balamantri', '082718784580', 7, 'not used', 70, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (357, 51, 'Putri', '086848195414', 5, 'not used', 51, '2025-01-31 13:08:29', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (358, 16, 'Salwa', '087799454594', 10, 'not used', 16, '2025-01-31 13:08:29', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (359, 36, 'Kayla', '087218151047', 10, 'not used', 36, '2025-01-31 13:08:29', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (360, 40, 'Yuliana', '087611775148', 10, 'not used', 40, '2025-01-31 13:08:30', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (361, 7, 'Hendri', '080161486799', 10, 'not used', 7, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (362, 22, 'Kania', '086758516374', 6, 'not used', 22, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (363, 18, 'Zahra', '087232325552', 4, 'not used', 18, '2025-01-31 13:08:30', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (364, 48, 'Cici', '083471952180', 6, 'not used', 48, '2025-01-31 13:08:30', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (365, 35, 'Prabawa', '082477011574', 10, 'not used', 35, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (366, 21, 'Michelle', '085879105972', 7, 'not used', 21, '2025-01-31 13:08:30', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (367, 26, 'Kezia', '084702551202', 10, 'not used', 26, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (368, 58, 'Gasti', '082440163234', 9, 'not used', 58, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (369, 72, 'Cici', '084497187050', 8, 'not used', 72, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (370, 41, 'Olga', '087891632726', 6, 'not used', 41, '2025-01-31 13:08:30', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (371, 66, 'Titi', '081768407578', 7, 'not used', 66, '2025-01-31 13:08:30', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (372, 34, 'Dinda', '087821542154', 10, 'not used', 34, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (373, 5, 'Pelanggan', '087789616639', 10, 'not used', 5, '2025-01-31 13:08:30', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (374, 24, 'Kamila', '085717889474', 10, 'not used', 24, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (375, 68, 'Hesti', '081134096653', 8, 'not used', 68, '2025-01-31 13:08:30', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (376, 63, 'Soleh', '083781245898', 9, 'not used', 63, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (377, 20, 'Clara', '080504045152', 7, 'not used', 20, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (378, 47, 'Maria', '086773352803', 10, 'not used', 47, '2025-01-31 13:08:30', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (379, 6, 'Unjani', '084648024542', 10, 'not used', 6, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (380, 75, 'Opan', '083957432316', 10, 'not used', 75, '2025-01-31 13:08:30', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (381, 56, 'Restu', '087140402130', 10, 'not used', 56, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (382, 8, 'Agnes', '088464795703', 10, 'not used', 8, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (383, 10, 'Julia', '082882506913', 9, 'not used', 10, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (384, 46, 'Paiman', '084911811948', 7, 'not used', 46, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (385, 38, 'Gasti', '084325083865', 7, 'not used', 38, '2025-01-31 13:08:30', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (386, 23, 'Salimah', '085225881894', 6, 'not used', 23, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (387, 44, 'Bella', '081190596311', 9, 'not used', 44, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (388, 13, 'Rendy', '083487854563', 3, 'not used', 13, '2025-01-31 13:08:31', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (389, 30, 'Citra', '087722888311', 8, 'not used', 30, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (390, 53, 'Ratna', '089911278799', 2, 'not used', 53, '2025-01-31 13:08:31', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (391, 64, 'Uchita', '088109206371', 2, 'not used', 64, '2025-01-31 13:08:31', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (392, 69, 'Bahuwirya', '081878642907', 10, 'not used', 69, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (393, 43, 'Yunita', '082908505547', 3, 'not used', 43, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (394, 16, 'Salwa', '087799454594', 4, 'not used', 16, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (395, 27, 'Kiandra', '084411686278', 3, 'not used', 27, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (396, 60, 'Bagus', '089764630585', 4, 'not used', 60, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (397, 67, 'Winda', '084517045953', 1, 'not used', 67, '2025-01-31 13:08:31', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (398, 65, 'Bella', '084318661657', 4, 'not used', 65, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (399, 49, 'Kayla', '087527538873', 6, 'not used', 49, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (400, 28, 'Cindy', '081102481926', 7, 'not used', 28, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (401, 74, 'Aditya', '088133506311', 9, 'not used', 74, '2025-01-31 13:08:31', '2025-02-23 16:21:02');
INSERT INTO `coupons` VALUES (402, 5, 'Pelanggan', '087789616639', 5, 'not used', 5, '2025-01-31 13:08:31', '2025-02-23 16:44:48');
INSERT INTO `coupons` VALUES (403, 15, 'Salsabila', '089176680322', 3, 'not used', 15, '2025-01-31 13:08:31', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (404, 17, 'Rina', '084050379241', 1, 'not used', 17, '2025-01-31 13:08:31', '2025-01-31 13:08:31');
INSERT INTO `coupons` VALUES (405, 12, 'Jagapati', '084788915864', 4, 'not used', 12, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (406, 50, 'Laksana', '089996083646', 5, 'not used', 50, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (407, 31, 'Dian', '088627888918', 5, 'not used', 31, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (408, 37, 'Nugraha', '089006020835', 4, 'not used', 37, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (409, 45, 'Violet', '083499923911', 2, 'not used', 45, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (410, 25, 'Pandu', '084005423502', 4, 'not used', 25, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (411, 73, 'Lasmono', '084109960593', 3, 'not used', 73, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (412, 54, 'Pranawa', '087873528386', 2, 'not used', 54, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (413, 33, 'Raina', '088613215368', 3, 'not used', 33, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (414, 42, 'Dwi', '081805508360', 4, 'not used', 42, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (415, 76, 'Siska', '088362522937', 3, 'not used', 76, '2025-01-31 13:08:31', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (416, 39, 'Jinawi', '089074340573', 4, 'not used', 39, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (417, 71, 'Kusuma', '080398510241', 6, 'not used', 71, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (418, 47, 'Maria', '086773352803', 4, 'not used', 47, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (419, 19, 'Jaya', '087369808499', 1, 'not used', 19, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (420, 35, 'Prabawa', '082477011574', 3, 'not used', 35, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (421, 29, 'Prayitna', '080944695367', 1, 'not used', 29, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (422, 24, 'Kamila', '085717889474', 1, 'not used', 24, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (423, 77, 'Laila', '085941179939', 3, 'not used', 77, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (424, 14, 'Diah', '087062177896', 1, 'not used', 14, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (425, 8, 'Agnes', '088464795703', 3, 'not used', 8, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (426, 56, 'Restu', '087140402130', 1, 'not used', 56, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (427, 6, 'Unjani', '084648024542', 1, 'not used', 6, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (428, 36, 'Kayla', '087218151047', 2, 'not used', 36, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (429, 75, 'Opan', '083957432316', 1, 'not used', 75, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (430, 69, 'Bahuwirya', '081878642907', 1, 'not used', 69, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (431, 52, 'Raharja', '085394314244', 1, 'not used', 52, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (432, 55, 'Galih', '080672801663', 2, 'not used', 55, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (433, 59, 'Kemba', '088683522150', 2, 'not used', 59, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (434, 9, 'Eka', '081138044082', 2, 'not used', 9, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (435, 26, 'Kezia', '084702551202', 1, 'not used', 26, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (436, 7, 'Hendri', '080161486799', 1, 'not used', 7, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (437, 40, 'Yuliana', '087611775148', 1, 'not used', 40, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `coupons` VALUES (438, 4, 'Pelanggan', '087789616639', 10, 'used', NULL, '2025-01-31 13:08:32', '2025-02-23 13:36:53');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (2, '2024_09_02_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (3, '2024_09_03_000001_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (4, '2024_09_03_000002_create_packages_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_09_03_000003_create_transactions_table', 1);
INSERT INTO `migrations` VALUES (6, '2024_09_03_000004_create_transaction_details_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_09_03_000005_create_coupons_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_09_03_000006_create_reviews_table', 1);
INSERT INTO `migrations` VALUES (9, '2024_09_03_000007_create_notifications_table', 1);
INSERT INTO `migrations` VALUES (10, '2025_02_15_999999_add_active_status_to_users', 2);
INSERT INTO `migrations` VALUES (11, '2025_02_15_999999_add_avatar_to_users', 2);
INSERT INTO `migrations` VALUES (12, '2025_02_15_999999_add_dark_mode_to_users', 2);
INSERT INTO `migrations` VALUES (13, '2025_02_15_999999_add_messenger_color_to_users', 2);
INSERT INTO `migrations` VALUES (14, '2025_02_15_999999_create_chatify_favorites_table', 2);
INSERT INTO `migrations` VALUES (15, '2025_02_15_999999_create_chatify_messages_table', 2);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 3);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 4);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 5);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 6);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 7);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 8);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 9);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 10);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 11);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 12);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 13);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 14);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 15);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 16);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 17);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 18);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 19);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 20);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 21);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 22);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 23);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 24);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 25);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 26);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 27);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 28);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 29);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 30);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 31);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 32);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 33);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 34);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 35);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 36);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 37);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 38);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 39);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 40);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 41);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 42);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 43);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 44);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 45);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 46);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 47);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 48);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 49);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 50);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 51);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 52);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 53);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 54);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 55);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 56);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 57);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 58);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 59);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 60);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 61);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 62);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 63);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 64);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 65);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 66);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 67);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 68);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 69);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 70);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 71);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 72);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 73);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 74);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 75);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 76);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 77);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 78);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 79);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 80);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 81);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint UNSIGNED NOT NULL,
  `review_id` bigint UNSIGNED NOT NULL,
  `is_read` tinyint NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_customer_id_index`(`customer_id` ASC) USING BTREE,
  INDEX `notifications_review_id_index`(`review_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for packages
-- ----------------------------
DROP TABLE IF EXISTS `packages`;
CREATE TABLE `packages`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of packages
-- ----------------------------
INSERT INTO `packages` VALUES (1, 'Cuci Kering', 2000, 'active', '2025-01-31 13:08:18', '2025-01-31 13:08:18');
INSERT INTO `packages` VALUES (2, 'Cuci Basah', 1500, 'active', '2025-01-31 13:08:18', '2025-01-31 13:08:18');
INSERT INTO `packages` VALUES (3, 'Setrika', 2000, 'active', '2025-01-31 13:08:18', '2025-01-31 13:08:18');
INSERT INTO `packages` VALUES (4, 'Cuci + Setrika', 3000, 'active', '2025-01-31 13:08:18', '2025-01-31 13:08:18');
INSERT INTO `packages` VALUES (5, 'Cuci + Ekpres', 5000, 'active', '2025-01-31 13:08:18', '2025-01-31 13:08:18');
INSERT INTO `packages` VALUES (6, 'Setrika + Ekpres', 5000, 'active', '2025-01-31 13:08:18', '2025-01-31 13:08:18');
INSERT INTO `packages` VALUES (7, 'Cuci + Setrika + Ekpres', 8000, 'active', '2025-01-31 13:08:18', '2025-01-31 13:08:18');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NULL DEFAULT NULL,
  `rating` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reviews_customer_id_index`(`customer_id` ASC) USING BTREE,
  INDEX `reviews_admin_id_index`(`admin_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO `reviews` VALUES (1, 67, 1, 5, 'Porro ea delectus et laudantium error consequuntur. Modi molestiae qui est eius. Consectetur asperiores laboriosam perspiciatis voluptatem necessitatibus et esse.\n\nEnim enim minima ratione tenetur molestiae voluptate. Beatae quis velit accusamus est. Reiciendis commodi quia sed adipisci consequatur.\n\nIpsam rerum perferendis cupiditate qui nesciunt quo provident itaque. Possimus doloribus illum quis incidunt eum iusto. Eaque nobis impedit velit harum voluptas ut.\n\nAut enim aut vel rerum alias itaque. Dolor consequuntur est vel voluptates. Voluptatem dolores atque deserunt incidunt voluptas enim repellat.\n\nQuia repellendus magnam autem iste assumenda est quisquam. Dolores sint odit recusandae alias quia veritatis. Quis eum nihil voluptate dolorem ex. Officia possimus a debitis occaecati corporis.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (2, 27, 1, 5, 'Sint perferendis eveniet cumque dignissimos sed dolore. Consequuntur exercitationem eum quia et.\n\nEt rerum reprehenderit officia odit et. Et qui odit qui eius. Similique nisi et necessitatibus officiis placeat qui.\n\nCorrupti ut non molestias autem quae dolore ipsum. Asperiores veritatis cumque eveniet non ut labore labore. Nobis non consequatur incidunt repellendus itaque. Quae et qui officiis ut quia neque.\n\nEum laborum quisquam et hic placeat est pariatur. Earum dolor aspernatur hic rerum. Eius maiores et temporibus voluptatem et laboriosam sunt.\n\nUnde dolores qui ea eum nulla natus itaque. Nobis et consequatur deserunt. Vel qui sed repellat quos ea quam quos id. Dolore fugit quod optio quia.', 'Dolorem pariatur unde corrupti sint ipsum. Dolorem consectetur illo eveniet reprehenderit. Eveniet dolorem animi cupiditate sapiente nemo nobis est cupiditate.\n\nRerum animi ipsa minus odio porro. Quaerat ea id at placeat. Quia voluptates sapiente quas mollitia ipsum tempore eaque.\n\nEnim magni animi eum voluptatem nihil. Ut ut sit est ipsa. In quia officiis pariatur explicabo dolorem nemo nisi. Molestias praesentium dolores omnis sint reprehenderit cumque voluptatum.\n\nQuas tenetur a officia nesciunt nemo molestiae sed architecto. Qui odio voluptas aperiam temporibus labore. Sit accusantium maiores in et consequatur quo nobis. Asperiores itaque ullam eaque incidunt.\n\nEa magni molestiae expedita laboriosam quod. Et aut aperiam aut eveniet voluptas quis repellat non. Voluptatem qui et ea assumenda excepturi. Sunt quae unde reiciendis accusamus delectus nihil rerum deleniti.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (3, 49, 1, 5, 'Quaerat ut id ut magnam. Accusantium numquam esse est. Et impedit tempore non qui optio fugiat. Mollitia numquam quibusdam consequatur minima.\n\nDolor aut temporibus ipsam ut. Magnam rerum quisquam nulla a. Veniam voluptatem odio dolores exercitationem consequatur consequuntur. Et excepturi cupiditate molestias eveniet ut quia vel.\n\nPossimus rerum magni ut optio. Architecto temporibus qui illo blanditiis rem. Odit quas ut eaque molestias quisquam.\n\nIusto rerum quo necessitatibus quia. Voluptate consequatur tempore sit corrupti id rerum autem. Aut autem corporis ab cumque aut esse. Dolorum molestias incidunt ea ut rem ea. Error molestiae laborum quaerat et ea voluptatum.\n\nLaudantium velit alias quidem soluta vel mollitia sit. Magnam tempore mollitia sint aut. Laudantium rerum et dolor earum. Quia vitae est nostrum velit quia.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (4, 50, 1, 5, 'Recusandae hic quasi laboriosam reiciendis eos. Excepturi est harum accusamus. Quaerat dolorum dolorem reiciendis maiores eligendi id amet eos. Est sapiente voluptas et aut placeat nisi est. Occaecati iusto omnis dolore doloribus pariatur qui debitis.\n\nIn animi qui qui iusto. Soluta fuga ab at facilis saepe est vitae. Sed occaecati quas nobis ut laudantium ducimus reiciendis. Dolore alias culpa explicabo ea aut architecto quod.\n\nSunt officiis quisquam tenetur adipisci. Aut voluptas facilis fugiat. Sit quam ut libero omnis.\n\nMollitia labore quia numquam dolore ut quia sint odio. Nemo aut maxime aut quia non iste. Reiciendis velit numquam occaecati aut vero sit nulla. Quo eligendi rerum et.\n\nMolestiae consectetur doloribus hic enim eos sapiente. Maxime facilis qui qui ut quidem quasi. Laborum nulla labore consectetur sit rerum numquam ratione. Et voluptatem culpa nihil repellendus.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (5, 10, 1, 5, 'Eaque cum delectus architecto enim eos. Dolores quia et possimus. Nemo omnis incidunt voluptatibus dolorem molestiae voluptas est.\n\nEsse dolore adipisci adipisci eum nemo. Quia libero quasi facere in modi sint. Eos necessitatibus iste qui deleniti beatae.\n\nDoloribus expedita fugiat sit aut vel. Vel et illo dicta expedita aliquid. Consequatur at temporibus officiis labore odio. Illum tempore harum magnam perferendis.\n\nReprehenderit sed ut ab culpa. Dignissimos possimus molestiae est magni. Quibusdam debitis eum voluptatem aliquam tempore harum iste. Et quasi earum a nobis molestiae vitae rem.\n\nLaudantium est omnis et cupiditate. Enim molestiae iusto ea ab doloremque. Cum adipisci voluptatem reiciendis fugiat consequuntur aliquid.', 'Rerum repellendus quis natus aut. Non ipsam iure aut accusantium eveniet non. Maxime debitis pariatur error necessitatibus ut placeat.\n\nAut tempore rerum libero quia quaerat assumenda distinctio. Molestiae nihil similique id accusantium voluptas. Expedita consequatur tenetur laudantium accusantium ad.\n\nPorro sed in sunt unde. Sunt accusamus dicta eligendi quis suscipit eum autem. Ipsum quos quidem nesciunt. Voluptas quia eligendi quaerat consequatur quas possimus veniam.\n\nSapiente molestias perspiciatis culpa quasi id. Nihil eos aut ratione nihil.\n\nId ab eos suscipit consectetur placeat dolor quam. Quia aliquam eum labore commodi fuga sint. Illo et exercitationem assumenda nam facere iure.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (6, 43, 1, 5, 'Neque quos ut ea sunt quae et ipsam. Quia est numquam sed deleniti reiciendis id. Cum unde assumenda tempore tenetur totam. Et aut itaque recusandae et et itaque.\n\nVeritatis quia recusandae distinctio iusto quidem consequatur hic. Inventore dolore dolores quia corporis aliquid. Dolore accusamus qui qui ut. Maiores temporibus quia enim laborum fugit est autem.\n\nConsequatur quidem unde debitis beatae. Quia et esse et cum maxime tempora. Fugiat provident rerum molestiae tempora.\n\nSint facilis aut sit unde quo cupiditate aut. Nihil veritatis cum repellendus autem dolor. Ullam amet ipsa consequuntur cumque alias recusandae temporibus.\n\nLaboriosam quasi nisi rem ab velit quo et laboriosam. Illum repudiandae provident iste. Cum molestiae explicabo et blanditiis illum omnis. Vel est vel sed sapiente nihil blanditiis perspiciatis.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (7, 54, 1, 5, 'Similique et et facilis ut voluptas. Id ut ut iure voluptas. Hic qui neque blanditiis asperiores laborum ipsum delectus. Suscipit exercitationem nihil ducimus.\n\nDeserunt ipsum consectetur reiciendis rerum in. Dolor ex minus perferendis sed omnis qui. Voluptas quaerat error quo animi laborum.\n\nAnimi et et libero sapiente architecto qui. A qui facere autem provident. Facilis mollitia inventore quia ad et omnis cum quae.\n\nOmnis est autem eos. Veniam nulla ea aperiam iure vel laudantium et. Iste perspiciatis laborum suscipit voluptates.\n\nQuia voluptate et accusamus et sequi dicta. Facere qui quibusdam esse aut perspiciatis aut tempora. Nam cupiditate nihil omnis error omnis in. Dicta fuga sapiente ipsum id quia quia velit.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (8, 60, 1, 5, 'Ratione sed vel vero quos eligendi. Aliquid rerum deserunt qui. Tenetur optio tenetur consectetur delectus nisi laborum delectus. Et ut odio consectetur sint odio id nobis dolores.\n\nRerum itaque accusamus quis possimus cum nisi eum. Provident earum delectus et reiciendis qui tempora. Aut dolores quaerat molestiae nihil ut eum.\n\nMolestiae quisquam non rerum facere aut omnis quod. Sunt saepe beatae sit voluptatibus reprehenderit magni qui. Et qui cum doloribus dolor sit.\n\nSoluta alias alias deserunt in vero aliquid aut. Eius similique debitis vero enim laudantium natus assumenda. Inventore velit laborum quis molestiae nemo voluptates. Laudantium ipsum molestiae optio molestiae optio. Minima nemo modi eaque et nesciunt veniam.\n\nUt qui perspiciatis cum temporibus nam. Dolorum voluptas beatae velit sint natus. Nemo voluptates dolorem quisquam officiis est doloribus doloremque.', 'Reprehenderit voluptates minima vel sapiente. Cupiditate consequatur ex odit qui. Omnis in id quo repudiandae.\n\nMaiores accusantium labore praesentium molestias. Et magnam exercitationem vero dignissimos sapiente voluptate eos ut. Accusamus voluptatem corporis eum quo qui maxime voluptas.\n\nEos ab omnis non explicabo voluptas. Sapiente quasi eveniet excepturi ipsam veritatis. Ad veritatis ab dignissimos in cumque et incidunt. Aut quos qui rerum.\n\nOmnis distinctio quae omnis saepe. Nobis sunt temporibus ad vero. Ut praesentium libero incidunt et quam sunt.\n\nNesciunt veritatis consequuntur reiciendis quisquam vero. Culpa aut asperiores aut et dolorem. Labore et necessitatibus quis.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (9, 72, 1, 5, 'Sed delectus expedita odio ipsam. Voluptate deserunt voluptatibus voluptate repudiandae esse. Id quo dignissimos cupiditate magnam perferendis.\n\nEum alias provident ut quia. Voluptatem voluptas voluptatem ipsum impedit. Totam vitae alias quis sed consequuntur ipsa.\n\nDeleniti aut quidem non. Non reiciendis suscipit dicta enim harum laboriosam. Deserunt consequuntur sunt illo sit. Delectus iusto voluptatibus et reprehenderit quibusdam aperiam amet. Ad tempora ea veritatis voluptatem aut.\n\nIpsum eum et ut blanditiis quod. Reprehenderit nesciunt quo natus consequuntur minima. Vitae eaque sapiente blanditiis quas ut magni consequatur ut.\n\nFuga saepe voluptatem ut amet fugiat in. Tenetur deserunt incidunt ut officia et. Ullam provident vel voluptas in voluptatibus.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (10, 39, 1, 5, 'Et quam minima tenetur aliquid repellendus ea eaque veritatis. Facere voluptatem doloribus et impedit rerum.\n\nTotam quo nostrum omnis. Sed ut id omnis tempora rerum modi. Mollitia saepe pariatur quaerat. In ex officia repellat assumenda laborum aut. Eaque quis quisquam enim aliquam aut.\n\nPlaceat aut natus et minus. Eos saepe distinctio rerum placeat voluptatem eum sint. Assumenda nam minus recusandae magni rerum. Quibusdam alias dolores qui similique rem veniam aspernatur fugit. Rerum magni eius molestiae optio et possimus qui.\n\nConsequatur enim ipsa voluptas quia. Voluptatem ipsam omnis aut praesentium.\n\nNulla unde voluptas consectetur dolores non facilis pariatur. Non cumque aperiam cupiditate amet quod quo. Non perspiciatis in delectus natus.', 'Beatae quia quia nam sunt iusto occaecati aliquid. Voluptatibus tempora a ex enim. Et est expedita doloremque. Qui asperiores aperiam aliquid consectetur.\n\nVero repellat voluptatem placeat odio. Sit enim omnis doloremque nemo. Vel molestiae eius nostrum quae ut corrupti. Sunt voluptates nulla eum.\n\nCorporis minima quis a sed delectus illum. Molestias dolores magni adipisci. Nobis pariatur et optio est.\n\nNatus nemo repellendus commodi mollitia dolor amet repudiandae. Sequi reprehenderit dolores omnis rerum quo aut qui. Possimus velit ut harum recusandae praesentium.\n\nLaudantium dolorem aut minus vel ipsam voluptas. A omnis rerum sed dolores excepturi. Aut quia rem et dolore nihil quam vel.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (11, 54, 1, 5, 'Non incidunt reprehenderit quo unde dolor sed quidem. Similique distinctio non aut ratione numquam quis. Id et voluptatem laboriosam quia eligendi non.\n\nOmnis voluptatem neque repellat reprehenderit qui. Molestiae et necessitatibus sunt porro tempora eaque reprehenderit. Molestias corrupti et aut architecto temporibus quo atque omnis. Aut vitae dolorem perferendis qui quia.\n\nSed sit qui eligendi quasi et eveniet officiis id. Ipsa quia autem dignissimos quo omnis. Aliquam expedita in quidem. Earum voluptatum optio dolores quia.\n\nNesciunt aliquam rem velit a ut reprehenderit. Saepe repellendus numquam beatae sunt dolorem numquam. Dolor quae tempora doloribus iste quae tenetur. Aut et aut autem velit qui.\n\nTemporibus qui esse quas eum quia iusto adipisci ut. Ex voluptas in aperiam soluta non possimus beatae. Omnis dolor ut sit voluptatem voluptatem. Dolor amet quia molestias quod.', 'Debitis asperiores fugit rerum ut harum quis. Culpa autem doloremque delectus. Velit repellat quis ea qui expedita vel.\n\nEum repudiandae nihil magni doloremque laudantium delectus et. Sed explicabo assumenda vero fuga earum soluta. Dolores sed vitae ratione cupiditate temporibus ullam.\n\nSint occaecati quam eos quisquam unde id cumque. Quam consequatur et quis. Perspiciatis rerum ducimus fugit voluptas quasi consectetur aut officia.\n\nReprehenderit quisquam iste et. Explicabo iusto possimus quis non ut. Voluptatem dolore quibusdam eveniet rerum culpa quis.\n\nMinus repellendus vitae sequi. Commodi laborum vel velit impedit veritatis. Reiciendis autem voluptatem voluptas fugit unde numquam in.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (12, 73, 1, 5, 'Ut voluptatem voluptate consequatur eveniet aliquam. Voluptas nihil eaque ipsum sunt explicabo at est expedita. Cumque fugit ullam qui consequatur sit culpa ad rerum.\n\nSoluta hic rem quidem aut expedita. Quo odit doloribus voluptatum. Reiciendis ad itaque dolorum consequatur.\n\nConsequatur ipsam aut ut molestiae magni quia et magni. Vero excepturi optio voluptatem illo. Voluptates ipsam quidem quam porro numquam est. Voluptates dicta ipsa dolor id a.\n\nVoluptatem numquam sequi deleniti nam quam consectetur tempore. Animi illo aut et eos quidem voluptatem excepturi. Incidunt blanditiis dolor libero ipsa consequatur doloremque voluptatem. Sed iure nesciunt occaecati a illum cumque enim.\n\nQuo hic dolorum non dicta dolorum consequatur. Ut non a dignissimos officia qui. Nihil rem modi facere iste. Sed ducimus aut ipsum sit nihil.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (13, 10, 1, 5, 'Nihil autem nisi atque culpa accusantium. Laboriosam debitis impedit necessitatibus eaque qui dolorem. Quidem voluptatem voluptatem voluptate cupiditate.\n\nVeritatis laudantium in quia expedita consequatur. Ut sequi accusamus ut enim ab beatae. Qui beatae mollitia ut quibusdam. Minus cupiditate ut atque.\n\nHarum unde quis neque eos praesentium error. Vel occaecati quis dolores omnis consequatur. Omnis et nihil non vel nemo. Non velit molestiae aliquid.\n\nIpsum nihil doloremque dolorem ratione qui. Numquam facere voluptatem delectus dicta sequi veritatis id. Qui beatae voluptatem numquam.\n\nQuia numquam nisi repudiandae. Nam itaque explicabo reprehenderit odit officia expedita. Eos optio est quo minima nihil quo. Quasi minus nihil blanditiis qui vel et commodi.', 'Sunt iste voluptas placeat ducimus est aut tenetur ratione. Magnam cumque est illum et. Rerum consequatur harum perferendis tempora qui a. Pariatur qui quia velit ab saepe quia et. Fugiat omnis unde totam suscipit consequatur.\n\nEius quia ut reiciendis rerum deleniti facere minima. Voluptas doloribus quia velit ipsam eum atque asperiores. Cum vel fugit fuga nihil. Dolorem est in architecto ea sed aut.\n\nNisi aliquid repellat explicabo eveniet. Aut laborum aliquam in omnis molestiae eveniet. Est et est aut earum alias ad a. Nam facere nulla sit dolor doloremque.\n\nConsequuntur voluptas dignissimos voluptatem. Dolorem quae rem quibusdam quasi. Ex nam impedit illo necessitatibus.\n\nDeleniti distinctio rerum voluptatum quo rerum. Et fugit cupiditate et ut. Sapiente magni sed numquam pariatur ut.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (14, 9, 1, 5, 'Optio beatae a sed facilis. Non quo optio harum molestias sunt eligendi quidem omnis. Provident dolor mollitia exercitationem nihil reiciendis molestiae in. Quibusdam perferendis placeat rem est deleniti.\n\nQuos eum placeat aperiam. Quo et tenetur nesciunt sit. Corporis neque molestias perspiciatis voluptas sed sit.\n\nDolorem soluta officiis illum qui consequatur exercitationem. Enim ipsum eaque excepturi fugiat sint rerum velit. Et quae excepturi consectetur at quaerat ut ut. Repudiandae nisi eos repellendus officiis.\n\nCommodi rem et odio vel. Perspiciatis dolores dolorum et in qui ut ex eum. Voluptatum qui velit aperiam non cumque sed. Autem voluptates modi magnam modi. Quod et consequatur ut consequatur et.\n\nSequi voluptatem et voluptas enim dolores velit magnam. Et nihil sed error nam iure est facilis distinctio. Odit qui eius similique.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (15, 57, 1, 5, 'Facilis enim animi excepturi a quo doloremque molestias. Reprehenderit consequuntur quo ratione tempore repellat eos.\n\nLaudantium blanditiis magni voluptatibus dolore voluptatem enim repudiandae. Illo perspiciatis maxime aliquam hic aut. Ex earum est explicabo et dicta. Iure et sed dolor voluptate sint voluptatem.\n\nFugiat praesentium adipisci omnis hic dolorem. Quas impedit ducimus esse atque. Velit voluptas odio odio minus dolorem veritatis repellat.\n\nSit quia vel excepturi ipsam error et illo. Neque modi ut sunt unde qui. Omnis aut saepe veniam minus saepe modi.\n\nIpsa et fuga accusamus. Saepe ratione dolor ex cupiditate tempore incidunt. Accusantium itaque doloremque perspiciatis eveniet.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (16, 32, 1, 5, 'Cupiditate vero asperiores repellendus impedit quisquam. Consequatur sint expedita architecto omnis nemo. Omnis est nulla unde. Dolorum fuga sint illum cum esse.\n\nAut tempore libero ut reiciendis quia quasi asperiores. Fuga quia facilis culpa aspernatur eum quaerat. Odio quam repellendus mollitia aliquam consectetur ut quod ut. Aut maiores omnis odio vitae. Nisi nostrum rerum sed atque dolore sapiente odio.\n\nSaepe culpa inventore adipisci et qui facere. Explicabo blanditiis provident similique voluptas illo adipisci perspiciatis. Ratione consequatur quod excepturi itaque. Necessitatibus vitae sint distinctio quae.\n\nOmnis eligendi vel eos delectus. Voluptas voluptate illo repellendus laborum distinctio ex. Culpa ad consequatur id ullam voluptate repellendus. Occaecati expedita illo debitis expedita sapiente.\n\nMaiores id impedit sapiente molestiae quia deserunt et debitis. Excepturi sunt occaecati mollitia.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (17, 58, 1, 5, 'Qui quae est aut qui cumque. Porro consequatur reiciendis vero asperiores nulla. Sint atque dignissimos sit et tempora.\n\nNumquam nemo vel dignissimos. Quia dolorem minus qui perspiciatis quo. Adipisci placeat ipsum adipisci ex. Iusto voluptatem et perspiciatis nemo.\n\nSapiente unde voluptatem repellat et. Eum molestias deleniti culpa sed fuga deserunt voluptatum.\n\nDicta quibusdam hic corporis distinctio. Tempora quidem vero illum. In autem sit a suscipit ut.\n\nEa possimus consequatur enim animi qui. Qui veritatis consequuntur aperiam et eligendi quia minus. Culpa voluptatem voluptate sunt ut voluptatem minima. Natus numquam asperiores in ratione.', 'Sunt rerum ea veniam sunt alias. Et excepturi quidem dolorum ex. Accusamus iure perspiciatis ut quod. Est tempora praesentium voluptatem quia voluptatem cumque in.\n\nQuia labore ad omnis exercitationem qui exercitationem voluptas. Officiis sunt facere et assumenda voluptatibus. Quae nobis qui ut cum sapiente illo.\n\nQuia quo distinctio qui cupiditate quis autem. Veritatis aut excepturi debitis. Ex quaerat doloribus omnis fugit dignissimos. Illum neque est eos similique ratione optio.\n\nDebitis omnis a nihil mollitia et quidem. Est voluptas et voluptatem optio consequatur. Quisquam repellendus mollitia id eum non iste. Culpa hic pariatur et neque at.\n\nCorporis ipsa saepe sed quos consequatur. Vel maxime sit sed voluptatem eius maxime. Odio aut tempora natus.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (18, 26, 1, 5, 'Impedit et ut quidem exercitationem saepe eos temporibus. Similique eos aperiam nostrum minima sunt omnis est. Tenetur deleniti nihil quaerat ut. Recusandae quos quo et est modi sequi.\n\nEaque quia ab dolor et. Nostrum nam ut ut veritatis. Qui ducimus corrupti voluptas earum beatae consequatur hic perferendis. Est minus et natus inventore sed.\n\nEsse omnis aut quia provident qui quia autem consequatur. Qui et reiciendis ea dolorum. Fuga veniam accusamus laborum dolore vero nihil culpa. Vitae ut occaecati rem maxime animi nisi totam nihil.\n\nSint consequatur explicabo perferendis corrupti quod quo. Quas exercitationem provident voluptatem. Non quaerat sed dolorem qui et laboriosam. Officia consequatur eos ipsum.\n\nEt dignissimos nihil id culpa ex tempora provident consequatur. Autem eligendi et reprehenderit voluptate voluptates dolores dolorum. Quo mollitia optio eum exercitationem corrupti cupiditate explicabo. Est fugit corporis dolore magni.', 'Culpa est dolore est velit et ut. Qui omnis tenetur veritatis provident quibusdam. Non reiciendis dolor temporibus qui et recusandae provident et.\n\nEt provident ut temporibus corrupti assumenda a. Vero earum deleniti necessitatibus praesentium quis corrupti. Et sint omnis necessitatibus eaque enim molestiae. Qui quia et minus aut.\n\nVelit laudantium ipsum veniam quo ea saepe. Odit aspernatur aut unde quos enim est quidem. Ipsa dicta est libero quis eos. Quas in maxime debitis aut a alias.\n\nVoluptas optio numquam sunt maiores et expedita. Corporis temporibus quia doloremque ipsa quia quis.\n\nSint architecto ut explicabo. Voluptatem illo et ex recusandae necessitatibus. Commodi vero voluptas vitae aliquid. Dolor ratione et velit laudantium.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (19, 5, 1, 5, 'Veniam omnis aperiam cum illum voluptatem similique dolor sit. Necessitatibus expedita vel quis eius autem alias deleniti. Numquam expedita illum magnam in placeat quasi temporibus omnis. Et et impedit neque tenetur est qui. Ea repellat praesentium accusamus consequatur.\n\nNon quaerat corporis tenetur autem numquam repudiandae. Voluptas voluptas qui delectus qui maiores. Cupiditate excepturi hic vero aliquam.\n\nUllam eos alias aut ea. Sint exercitationem architecto labore reprehenderit dignissimos voluptatem. Culpa voluptatum sequi similique quia aperiam accusantium voluptate. Quidem optio aut esse quo saepe est omnis nesciunt.\n\nId nesciunt aut vel consequatur fuga sed vitae. Quae deserunt beatae odio alias doloremque dolore perferendis.\n\nImpedit qui est aut nobis. Voluptatibus omnis exercitationem vel doloribus odio voluptate. Nihil et minus et qui.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (20, 55, 1, 5, 'Dolores iste minima autem et aut rem. Ut voluptatem unde dicta aperiam aut qui expedita. Tempora aut dolores sint numquam ea.\n\nQuis et sit magnam cupiditate et. Est porro eum neque voluptas iste qui necessitatibus et. Laborum quia voluptatem enim omnis itaque reiciendis velit omnis.\n\nEum hic temporibus perspiciatis perspiciatis. Ipsum molestiae at placeat voluptatem. Consequuntur repellendus est officiis et tempore. Exercitationem eaque magnam hic et officiis. In et voluptas voluptatum vero quis perspiciatis praesentium.\n\nQuia facere repudiandae soluta impedit optio non vitae asperiores. Qui vero aliquid corrupti assumenda facilis debitis. Ipsa omnis occaecati culpa sint qui doloremque. Hic ut repellendus qui maiores cum magnam fugiat.\n\nVel aspernatur quia laboriosam perspiciatis. Rerum et officia perferendis iure. Placeat voluptatem quasi quia quasi ab. Est totam vitae ipsam maiores at voluptatem molestias.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (21, 29, 1, 5, 'Deserunt veritatis voluptate minima suscipit ut. Pariatur cumque facilis ut.\n\nVoluptatibus adipisci fugiat qui necessitatibus soluta. Qui qui quam ea quia numquam.\n\nOdio eius rerum et sint animi iure. Illum laborum amet enim et illum rerum rem ratione. Eligendi id placeat sequi minus est qui aliquid. Amet voluptate et vel.\n\nDolorum in laudantium sed et molestiae aliquid. Architecto libero rerum enim dolore libero alias est dignissimos. Occaecati reprehenderit aut dolorem magnam ex suscipit iusto.\n\nUt delectus qui nam quidem. Consequuntur molestias ut nostrum fuga laborum possimus. Quisquam aliquam non nemo voluptas facilis fugiat. Quis corrupti saepe quia ipsa mollitia et.', 'Voluptas sit similique voluptatum beatae. Est similique delectus sed harum molestiae et. Fugiat accusantium totam nam rem vero voluptates.\n\nExcepturi est omnis delectus nemo accusantium rerum necessitatibus. Consequatur harum optio sed. Voluptatem consectetur quasi et.\n\nDoloribus eligendi nam qui recusandae tempora. Labore et soluta quasi quo. Rem suscipit vitae harum ullam deleniti est.\n\nMinus rerum dolorem possimus amet sit. Et nobis et sunt nesciunt dolores. Rerum necessitatibus voluptatem omnis praesentium.\n\nCupiditate occaecati quis nobis velit totam qui dolores nobis. Nihil doloribus voluptas quibusdam et.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (22, 11, 1, 5, 'Iusto odio est et facilis. Molestiae deleniti mollitia et nisi porro exercitationem et. Sed id doloribus provident nostrum et sit. Quo sequi quia natus quo necessitatibus modi perferendis amet.\n\nPorro quisquam quo est alias vero iste. Molestiae minima neque quisquam sit ut doloribus. Et labore sit voluptatem vero. Sint aliquam vel quod et. Unde similique sequi et dignissimos dolores numquam.\n\nA aut dolores aut ut sed. Voluptas rerum dolorem aut qui laboriosam quod. Aliquid hic ex accusantium voluptates. Laboriosam et qui veritatis quia nobis eligendi sequi debitis.\n\nAtque blanditiis occaecati unde quod. Dolorum accusantium necessitatibus itaque odio cum ut aut. Labore non iure voluptatem ut. Eos esse et ratione.\n\nConsequatur commodi deserunt nesciunt. Quo cum dicta voluptas nesciunt quia mollitia.', 'Magnam ullam alias dolores modi atque. Et aut ducimus omnis. Distinctio perferendis incidunt voluptas accusamus voluptatem sit.\n\nCorporis aliquam fugit tempore quae ea aspernatur. Aut eos nemo blanditiis libero ut hic quidem et. Ab commodi illum qui ducimus rerum. Optio adipisci neque maiores dolor omnis.\n\nRepudiandae libero minus et sit occaecati. Soluta officia aut quidem ut. Recusandae est iure explicabo nesciunt quo blanditiis. Rerum aut enim ut aut officiis.\n\nEt distinctio deserunt deserunt unde reprehenderit. Ad quos ut est repudiandae laudantium quo doloribus. Optio vel tempore est facilis odio. Eveniet consectetur ex sapiente enim temporibus deleniti est.\n\nRepellat soluta illum perferendis rerum ut illum temporibus. Voluptate quos ad architecto quis. Dolor eos animi qui aperiam in nesciunt earum. Vitae beatae occaecati enim sit ut. Officiis non enim aliquid voluptas aut.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (23, 30, 1, 5, 'Sit modi eius quis ad ab laboriosam et. Esse quia ut aut enim.\n\nOfficiis nisi consequuntur nostrum unde officia. Dignissimos iusto tempore ullam et.\n\nNecessitatibus occaecati sit dolores quas. Dolore et ut expedita delectus tempore expedita aut enim. Et iusto adipisci veniam labore doloremque. Est et libero sit omnis et sunt est adipisci.\n\nNam laudantium eveniet suscipit facere. Voluptatem consequuntur vel maiores rerum itaque ea architecto. Impedit quisquam enim placeat fugit. Nihil et non qui voluptas quia fuga earum. Culpa magni in omnis pariatur temporibus nemo quia.\n\nDolorem voluptas architecto incidunt. Dolore et cumque tempora esse odit ducimus. Quia porro qui nihil aut assumenda et. Quia qui quia ab vel fugit.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (24, 54, 1, 5, 'Dolorem voluptatum at atque sunt sed. Quibusdam sint iusto magni laboriosam ipsam beatae. Quasi quia incidunt labore iusto dignissimos quod. Et dicta et qui error aut.\n\nRerum minima nesciunt est eius. Voluptatem rerum facere molestiae enim dolorem esse suscipit rerum. Reiciendis deleniti praesentium aliquam non. Voluptas aut saepe ut dolores.\n\nAutem voluptatibus est veniam aliquid ex adipisci natus eos. Qui est dolorem quia dignissimos. Ratione incidunt soluta culpa est in eveniet laudantium.\n\nSed quae accusantium in vel nam. Ipsa a numquam aliquam odio aut assumenda voluptatem. Est illo debitis vel culpa. Voluptatibus quis dolore explicabo quo accusamus.\n\nVoluptatibus nihil dolorem deleniti animi modi molestiae. Atque delectus dolor id ut asperiores enim molestias quisquam. Cumque ut voluptatem rerum perspiciatis. Sint illo rerum nam porro pariatur. Nisi beatae nam optio ut.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (25, 70, 1, 5, 'Asperiores consequatur omnis velit rerum beatae aut ut. Fugiat excepturi optio ea qui non dolores porro.\n\nExcepturi esse ut et sit iste. Molestiae nobis nulla ut sed enim beatae. Eveniet minus eius error nulla nihil quia sint consequatur.\n\nSoluta molestiae officia cumque adipisci sed quisquam quod debitis. Cum ullam consequatur ipsum qui ex unde. A porro officiis et ipsa ullam dolores.\n\nEaque aut odit et blanditiis. Assumenda quod quas in velit dolores. Architecto commodi numquam sit numquam laudantium expedita hic consectetur. Qui pariatur reiciendis ad.\n\nNecessitatibus quibusdam nisi soluta deleniti inventore. Iure repudiandae cumque sapiente enim. Placeat omnis ut voluptas quisquam commodi et. Ea velit sed nulla expedita nihil voluptas laudantium.', 'Qui fuga voluptas id corporis voluptas commodi. Ut quibusdam quam reprehenderit aliquam. Et iure debitis quae. Quia et autem quia sunt.\n\nQuisquam a iste totam doloremque. Voluptatem totam sunt id enim odio aperiam. Nulla minus nihil alias sit. Autem eum molestiae consequatur molestiae at. Nihil mollitia eum aperiam inventore pariatur quae distinctio.\n\nRerum occaecati at tenetur in aspernatur quod. Earum iste ut voluptate atque. Voluptatem sint qui iure excepturi eaque.\n\nFugit qui tempora temporibus non dicta qui. Nulla modi ratione autem molestiae corrupti facere vel. Doloribus temporibus sunt dolores et perspiciatis ipsum.\n\nReiciendis illum error quos est mollitia et quo illum. Pariatur excepturi rerum vel assumenda ut iure est. Esse aut facere eligendi quis molestias in. At magnam libero sint consectetur.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (26, 51, 1, 5, 'Est voluptatem delectus eveniet error omnis. Delectus omnis quis repudiandae esse odio velit temporibus.\n\nUt impedit et sunt consequuntur quibusdam consequatur sit. Nobis excepturi enim est. Aperiam eveniet dolores blanditiis corporis rerum nemo. Beatae possimus eaque praesentium. Blanditiis sed et occaecati reprehenderit eligendi.\n\nQuae sapiente rerum inventore aut. Molestiae sapiente dolorem et delectus. Cum atque aut iure voluptas eaque et sit.\n\nMinima eum delectus eum quia necessitatibus. Expedita molestiae necessitatibus dolorum voluptatibus nisi cum. Voluptatum incidunt tempore ut assumenda cupiditate. Adipisci omnis repellat doloribus voluptatum. Laboriosam maxime laboriosam omnis.\n\nVoluptatem eum soluta sunt sunt aut. Quidem vel nostrum sed eius quis sequi. Ut error dolor vel accusantium. Minus atque earum eos fuga aliquam sint recusandae.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (27, 60, 1, 5, 'In vel eveniet rem. Laudantium eaque consequatur dolor qui odio temporibus id.\n\nRerum saepe id sint quia. Molestias consequatur et alias magni nisi cumque vel. Qui architecto expedita rem blanditiis consequatur id deleniti.\n\nVoluptatem repudiandae nobis vitae dolorem qui sed. Molestiae incidunt nulla culpa. Neque facilis quae nihil omnis numquam fugiat repellat.\n\nSequi quae voluptatem corporis rerum quibusdam debitis qui. Quo qui ut at deserunt qui. Ex reprehenderit qui dolorum assumenda quis. Quo consectetur similique voluptatum.\n\nId maiores nemo vel et officia. Vel dolor sit quos omnis suscipit. Ut maiores consectetur ad doloremque.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (28, 60, 1, 5, 'Eos sit nostrum blanditiis rem omnis. Aut enim autem reiciendis atque enim ipsa. Reprehenderit architecto dolor ea eum. Qui aut facere qui sapiente deleniti.\n\nUt non aut esse dolore optio eligendi. Excepturi delectus numquam velit magnam impedit debitis. Consequatur a neque consequatur omnis illum. Consequuntur neque facilis necessitatibus tempora aspernatur facilis.\n\nUllam ab nam eos impedit. Et dolorem omnis deleniti reprehenderit consequatur.\n\nEnim velit omnis magni. Molestias qui rerum voluptatem officia. Debitis aliquam hic libero veniam. Delectus commodi omnis ut.\n\nCumque omnis rerum iusto quia eos optio magnam. Ullam dolores dolorem dolores quia tempore. Et sunt magnam id eligendi est. Aperiam velit unde blanditiis saepe magnam.', 'Saepe adipisci consequatur qui sed quo. Odit atque nam at similique sunt. Cum debitis ut qui. Dolores voluptates reiciendis cumque voluptate dolore.\n\nQuo et aut sapiente odio. Tenetur magnam cum ut. Sint quis labore neque labore. At sed officia maxime cum et qui illo.\n\nVoluptas quas ullam quia. Ea et quibusdam nihil. Facilis neque autem molestiae ab unde.\n\nEsse perferendis earum ut excepturi. Rerum sunt qui ut. Maxime tenetur repudiandae quia quae. Ea magnam est dolore reprehenderit.\n\nMollitia necessitatibus quisquam doloremque esse. Hic aut doloremque eaque eos numquam voluptatum. Deleniti quo reprehenderit rem recusandae voluptatum.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (29, 55, 1, 5, 'Est quis explicabo ea. Qui ea est voluptas et enim facere. Qui eius numquam neque.\n\nInventore et optio voluptate cumque tempore. Aliquid dolore in asperiores enim possimus. Quisquam est quia nostrum. Facere quo ipsa voluptas non.\n\nAut illum qui repudiandae natus dolorum. Quia quis ut quo eligendi. Libero magnam provident et et possimus id aliquam. Recusandae nulla nesciunt non aperiam voluptas.\n\nVitae labore quas corrupti iste suscipit rem voluptates. Libero et et et dicta.\n\nVoluptas ad aliquam aut ut et rerum. Qui iste corporis laboriosam quae dolore. Sed reiciendis rerum temporibus adipisci quam. Sint error velit sit a dolores doloremque.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (30, 41, 1, 5, 'Ut id atque aut voluptates. Maxime similique aut sed tempore tempore voluptas. Ducimus numquam quidem qui totam nisi.\n\nUllam assumenda praesentium error voluptatum. Nisi ea nisi mollitia. Unde molestiae exercitationem ea incidunt reiciendis.\n\nDoloremque nam at eos deleniti odio optio nam. Molestias inventore molestiae dolorem saepe aliquam facilis. Placeat at et exercitationem corrupti. Quidem expedita ex et eos.\n\nIusto ea id itaque eum ducimus qui. Ut exercitationem nulla error nihil et commodi odio sint. Incidunt nulla et sint adipisci nihil repudiandae sint voluptas.\n\nIpsum veniam repudiandae quod et quos. Autem possimus porro laborum itaque quisquam soluta et occaecati.', 'Esse eos qui assumenda vitae pariatur sed. Dolorum perferendis et quia saepe. Nihil ut consectetur aut quo aliquid.\n\nQuo iusto animi qui ratione ut praesentium ipsum. Molestiae harum dolorum minima officia nemo aut. Dolores excepturi iusto inventore tempora ut veniam praesentium.\n\nEaque est molestiae inventore autem porro cupiditate aut illo. Non temporibus eos laborum. Beatae ut pariatur ea voluptas velit. Quisquam exercitationem error non quia.\n\nBlanditiis eos nesciunt iste at. Et magnam aut velit cupiditate. Doloremque fuga consequatur ut quibusdam possimus aliquam inventore. Dolore harum excepturi excepturi.\n\nHic sed sint maxime ut. Fugit temporibus eligendi omnis asperiores voluptatem ea aut. Provident quia ea corporis exercitationem aut qui repudiandae.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (31, 28, 1, 5, 'Assumenda unde quasi sequi ratione aut unde. Assumenda porro quibusdam cumque quos perferendis assumenda. Dicta velit ut dolore sit ipsa. Temporibus odit ut aspernatur eos non.\n\nRerum nobis alias voluptas mollitia tempore. Voluptate dignissimos beatae exercitationem animi reiciendis quo quibusdam. Quisquam hic deserunt velit nesciunt adipisci vitae porro. Aut dolorem beatae animi.\n\nQuisquam ullam dolores beatae facere corporis. Illum laboriosam quasi nobis quas delectus. Debitis non et nesciunt recusandae voluptatem qui.\n\nQuia labore ad qui corporis adipisci. Enim corrupti accusamus est ipsa atque beatae tempora. Quisquam ut doloremque ducimus praesentium alias qui exercitationem.\n\nDebitis deleniti animi qui rerum ut. Est dolore doloremque doloremque quia voluptatibus quibusdam eius. Nulla vero qui labore rerum asperiores similique quia. Nemo in modi laborum alias et maxime omnis.', 'Quibusdam eaque perferendis qui velit non cum rerum. Et ea consectetur laudantium impedit dolores. Doloribus omnis labore deserunt cumque cupiditate quam ab.\n\nConsequatur voluptas asperiores facere molestias tempore. Adipisci et neque esse aut mollitia. Praesentium quis exercitationem qui omnis. Illum eligendi odit illo.\n\nFugiat ut odio autem explicabo. Cum ipsum quisquam est aut. Suscipit consequatur placeat quo omnis culpa facilis. Numquam et perspiciatis necessitatibus qui et.\n\nQuasi sint sed qui laborum dolore. Sed velit sed amet et architecto quaerat blanditiis. Sapiente quia adipisci unde dolores quia. Asperiores cupiditate porro excepturi qui.\n\nQuia natus aliquid cupiditate aut earum. Rerum veniam id architecto sed ipsam. Saepe voluptas qui a fugit.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (32, 61, 1, 5, 'Sint libero quasi distinctio vel alias dignissimos aliquid qui. Magnam deserunt voluptas ratione sequi temporibus. Reiciendis similique ut dignissimos ut ex. Et numquam molestiae repellendus expedita architecto mollitia quasi.\n\nExplicabo culpa fugiat pariatur perferendis accusantium. Et sunt dolores necessitatibus hic illum temporibus dolorem. Consequatur soluta at quasi eos non dolorum est. Inventore omnis earum quisquam consequuntur esse error ad.\n\nPorro suscipit molestias est est ab delectus. Earum deleniti dolorem et pariatur est. Impedit numquam enim minima voluptates. Sunt rerum dolorum accusamus aliquid.\n\nSit nostrum quia iste quo excepturi sit repellat. Dicta commodi adipisci at iure architecto. Esse ab quo possimus sit consequuntur. Ab vel nostrum mollitia quam dicta harum vero.\n\nVoluptas vero sequi sit rerum ut voluptas corporis. Dolores occaecati est aperiam voluptate illum ullam omnis qui. Non iusto facilis temporibus aperiam. Et nobis voluptatibus quas ex rerum nihil.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (33, 13, 1, 4, 'Voluptatem cupiditate non similique quia reiciendis neque. Error sint corrupti omnis nemo et voluptatibus. Accusamus quibusdam rerum accusamus veritatis molestiae. Qui ipsa aliquid et quia enim.\n\nConsequatur ullam maiores alias magnam quaerat nemo. Mollitia et ipsum facilis quaerat. Et iure necessitatibus veniam ut. Incidunt ullam et minima et est aperiam vel voluptas.\n\nAperiam rerum sapiente voluptates cupiditate et perspiciatis. Dicta et esse reiciendis.\n\nMollitia minima recusandae maiores illum debitis hic in. Et ducimus maxime quia nisi accusamus et velit. Molestiae fuga vel dolores magni nobis cumque.\n\nSint dignissimos quis fugiat repellat illo et quia nostrum. Et mollitia ipsa vitae recusandae. Nulla eius voluptatem ab libero quidem et quia laudantium.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (34, 22, 1, 1, 'Magnam eos asperiores provident molestiae a illum. Autem animi aperiam accusantium fugit ut quia. Et fugit eveniet in sunt.\n\nEt et rerum sapiente vel qui. Ea consequuntur est totam quasi omnis eos est autem. Est aut dolorum omnis vel modi. Quisquam rerum consequatur sed itaque natus reiciendis.\n\nNon sed et architecto aut qui rem. Est ex placeat pariatur culpa delectus maxime nihil. Tempore eos blanditiis et tempore voluptas molestiae maiores. Nemo necessitatibus aut rerum maxime.\n\nVoluptatem enim iste pariatur est praesentium. Est quis aut at voluptas ipsum. Nesciunt eos aspernatur in quia. Rerum et sed ut nihil perferendis natus ex. Optio sed quia possimus molestias.\n\nConsequatur recusandae reprehenderit inventore modi. Amet alias officiis exercitationem quis repudiandae. Illo soluta culpa nostrum dolor laboriosam voluptas nulla. Cupiditate dignissimos nulla quia eum et molestiae.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (35, 71, 1, 4, 'Eos aliquam quam odio et enim. Est expedita et optio cupiditate vero. Autem enim dicta mollitia quam illum. Tenetur asperiores labore error dolor unde. Quia ut suscipit provident.\n\nPerspiciatis molestiae quia id laudantium blanditiis dolorem. Placeat exercitationem in ab ut sint ut autem. Qui aliquid et odio sed qui nihil. Consequatur rerum fuga a qui.\n\nMollitia et ad iure quae. Omnis beatae corrupti ipsa cumque consequuntur commodi vero expedita. Aperiam et autem illum voluptates nostrum nisi suscipit.\n\nSit voluptatem alias autem delectus ipsum voluptates culpa recusandae. Molestiae illo et quia inventore quaerat voluptates. Et veritatis laborum soluta error molestiae eligendi sunt.\n\nModi harum sunt cumque corrupti sapiente provident aut. Possimus dolorem molestiae id mollitia nulla fugit eveniet beatae. Recusandae officia minima qui odit repellat.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (36, 77, 1, 1, 'Placeat eaque odit quisquam molestiae. Ut qui enim dolorem eum ex sit. Explicabo officia vero numquam temporibus repellendus est. Voluptatem qui id expedita autem aut repellat molestiae.\n\nEt voluptates at porro atque totam. Iusto qui a placeat iusto laborum adipisci fugiat. Dolorem placeat non accusamus odit.\n\nMagnam delectus alias natus quaerat architecto. Quibusdam possimus quod eaque deleniti facere. Animi est beatae harum voluptatem similique autem doloremque. In eum optio et sed commodi et.\n\nNumquam optio distinctio voluptates quae aspernatur eligendi. Sit vero repellat enim molestiae error aperiam. Facere vel similique laudantium et et et. Sit neque asperiores ut.\n\nRecusandae consequatur quas totam. Qui molestiae quo sint eaque voluptatibus. Non saepe quisquam qui consequatur. Quia quis ut fuga.', 'Officiis eum qui consequatur vero necessitatibus omnis. Distinctio quia deleniti accusamus cupiditate. Culpa sed nisi aut quisquam inventore.\n\nNemo ab perspiciatis voluptatem tempora minima autem ut expedita. Velit facilis et est in ipsum. Facilis consequatur asperiores quis et quo debitis. Voluptatem consequatur ut ut aspernatur voluptatem.\n\nVeritatis impedit et animi voluptate sunt rem. Ipsum ut facere eum voluptatibus voluptatem. Aut eius nemo deleniti. Laboriosam in soluta repellendus qui qui fugit perferendis.\n\nEnim eos omnis minus animi praesentium vero. Nihil cum molestias qui praesentium. Voluptas saepe officia earum quia. Doloremque et enim quis quia.\n\nCommodi omnis aut aliquid deserunt. Et fugit cum vel. Sint est soluta nihil aliquam ea ipsa.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (37, 62, 1, 4, 'Culpa iure nam in. Non fugit illum eos repellendus laboriosam dolorem. Deleniti molestiae sit ea voluptatem voluptatem. Dolorem dolor qui odio iusto in.\n\nNon est laudantium est enim at ad. Consequatur illum voluptatem dolorem est aut. Et quia labore molestiae est quisquam harum. Officia illum aut tempore modi aspernatur. Ea dignissimos architecto exercitationem officia libero consequatur nulla aspernatur.\n\nEt natus quod omnis et quis sint. Beatae deserunt qui porro. Quo reprehenderit quia atque cupiditate consequuntur maxime. Quisquam sunt et ullam qui sit delectus.\n\nSed blanditiis ea aut porro. Nihil harum maxime repellendus.\n\nTotam sunt blanditiis sit nisi et. Quod doloremque et quisquam id qui dignissimos ut.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (38, 72, 1, 1, 'Officia doloribus consequuntur quidem corporis. Sit quia distinctio tempore labore sit ratione debitis. Unde laudantium nihil dolores nihil repudiandae eos est. Magni ab qui dolorem sed velit laudantium. Quis qui incidunt explicabo ut.\n\nPorro cumque consectetur officia suscipit et rerum. Molestias omnis laboriosam atque voluptas delectus repudiandae a. Mollitia ut rerum temporibus vitae. Nisi saepe perspiciatis officia quidem consequatur libero.\n\nSaepe provident voluptates est ut est magni nisi quae. Harum aut perspiciatis et sed corrupti aspernatur. Suscipit et atque consequatur enim enim inventore impedit.\n\nNam aut ut architecto laborum ullam corporis sed. Culpa consequatur modi non tenetur. Sit enim officiis placeat praesentium ex quia. Error dicta minima aut quis voluptatem veritatis.\n\nQuas qui id et error necessitatibus aliquid. Numquam et hic facere. Et nam corrupti unde beatae sunt ea mollitia consectetur. Hic libero rerum eveniet.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (39, 39, 1, 4, 'Vitae velit consequatur nulla labore hic praesentium. Debitis et voluptas ab quis cupiditate eos numquam. Id cupiditate sint laboriosam officia. In maxime harum qui illum ut in. Corporis non iste culpa atque ad et.\n\nNon tempora voluptatem sunt sunt cupiditate. Est sed dolore consequatur. Ut qui culpa excepturi assumenda.\n\nVoluptate quisquam in necessitatibus ut. Tempora debitis est deserunt tempora omnis totam qui. Accusantium possimus id consequatur accusantium omnis. Tenetur qui cum doloribus ut.\n\nSimilique ipsum incidunt unde molestiae. Dolorum possimus delectus neque molestiae quam molestiae. Praesentium amet quos dolores dolorem. Et esse at est enim.\n\nDoloribus sit voluptatem incidunt iste. Iure porro dolore sunt labore. Enim non esse molestiae sunt voluptatum debitis.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (40, 7, 1, 2, 'Omnis maiores tempore incidunt consequatur possimus alias. Rem consequatur hic a eveniet. Velit labore quas quasi. Nihil et a dolore sunt quaerat eius. Recusandae soluta ut porro qui quo nam ipsam ratione.\n\nIllo velit in ut ab blanditiis nemo consequatur. Magnam ut dolor occaecati quia qui. Repellendus nisi itaque dolorum voluptas eum expedita error nihil.\n\nDelectus et eveniet a repellat hic similique nihil. Vitae excepturi optio ratione. Libero et voluptate sunt tempora numquam et omnis.\n\nQuae in repudiandae eum sapiente. Dicta iste hic velit temporibus enim ducimus. Error omnis amet aut adipisci voluptatem.\n\nTotam enim fugit eum ut. Sit molestias quia eos inventore. In impedit voluptates ab qui. Eveniet et nesciunt expedita assumenda.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (41, 30, 1, 1, 'Vero illum id commodi beatae. Cum sed sed quo beatae distinctio consequatur quas ipsa. Dicta eos id fugiat iste accusamus.\n\nQuo iusto in non molestias. Ut quo ducimus nemo et nesciunt explicabo aut. Et sed perferendis cupiditate fuga consequatur ut odit. Consequatur dolorum et libero vel.\n\nOmnis dolor alias nostrum totam consectetur cumque. Sequi et et quia consequuntur consectetur possimus aspernatur. Qui delectus suscipit et est consectetur quia. Magnam aut ut voluptatem quasi dicta aut ducimus.\n\nQuidem culpa dolores iusto eos aliquam et aliquid est. Et sit non quis incidunt repellendus itaque. Omnis asperiores sit qui. Rerum molestiae est aspernatur.\n\nVelit odit et voluptas et. Rerum nemo earum perspiciatis molestiae qui.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (42, 20, 1, 2, 'Exercitationem sint itaque nemo velit et quam id. Provident consequatur eum officiis quo vero sed dolorum quia. Cupiditate consequatur a rerum voluptatibus ipsum ut. Et earum nulla in corrupti. Minima dolores ratione itaque.\n\nRatione sunt quo molestiae dolores officiis eveniet consequatur. Officia veniam ipsam soluta quisquam omnis ut est. Rerum id modi quae eos voluptatem soluta et unde. Molestiae eius dignissimos odio ad.\n\nDebitis dolores praesentium voluptas ut saepe ipsum sed possimus. Non deleniti assumenda et sunt laboriosam alias. Placeat vitae accusamus ut autem et quasi et.\n\nDolore assumenda voluptas officiis incidunt ad cumque. Deserunt rem debitis ex adipisci. Voluptate perspiciatis voluptatem ut est accusantium totam fugit.\n\nAut harum unde exercitationem dolor laudantium. Aperiam est autem deserunt sapiente quia recusandae.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (43, 57, 1, 3, 'Vel ut quaerat doloremque officia. Enim officiis unde saepe et quasi fugit accusantium. Dignissimos dolorum minus sed quis. Rerum dolorem maxime amet illum.\n\nEaque et iusto excepturi rerum vero nihil. Dignissimos est fuga facilis qui. Explicabo nesciunt eveniet necessitatibus sapiente. Culpa voluptatem ullam cupiditate est nihil. Officiis quia velit dignissimos quasi repellendus aut aut.\n\nMagnam ut aspernatur voluptatem velit. Sunt et voluptatem consectetur et consequatur sunt. Et maiores quo omnis illum est nisi veniam.\n\nEst non iure quisquam rem quo modi perspiciatis aspernatur. Expedita illum ab mollitia necessitatibus esse earum unde. Consequuntur assumenda quas id sed. Commodi est eos suscipit voluptates libero qui et.\n\nEst perspiciatis nulla eum consequatur. Enim id quis voluptatibus corporis omnis atque inventore dolores. Dolorem consequuntur molestias animi molestiae numquam velit. Corrupti repellat quam facilis nihil praesentium ea nihil.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (44, 55, 1, 1, 'Modi assumenda dolorem culpa. Dolor asperiores quas at. Iusto et qui sequi sit.\n\nCommodi quibusdam asperiores ullam aliquam repellat. Esse dolor et dolor deserunt consequatur dicta dignissimos. Et veniam earum laudantium soluta maxime temporibus temporibus.\n\nNulla eius voluptatem vel quis consequatur. Quia ex omnis necessitatibus sapiente eius labore ab.\n\nProvident perferendis rem nulla. Voluptatem nobis a voluptatem earum qui. Mollitia in autem consequatur rem consequatur ducimus.\n\nQui incidunt modi ad aliquam eaque ipsa provident. Velit possimus ut libero possimus odit voluptate voluptatum. Corrupti aut possimus illo sequi nihil odit quia. Nesciunt voluptas cupiditate veritatis.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (45, 44, 1, 2, 'Occaecati beatae veniam aut quia expedita veritatis. Pariatur et voluptatem porro ex. Numquam et voluptatem nisi consequuntur et. Ducimus minima quia autem amet sed odit repudiandae.\n\nExplicabo temporibus tenetur quis. Error impedit possimus a recusandae unde. Placeat recusandae distinctio adipisci odio.\n\nVoluptatum rerum voluptatibus omnis sed illum est facilis. Dolor molestias voluptas at omnis nesciunt error magnam quo. Maxime doloremque rerum accusamus hic distinctio cupiditate neque eaque.\n\nQuam temporibus ullam sit molestiae a aliquam. Molestiae eum rerum nam aut. In sed magni et rerum est aperiam.\n\nIllo rerum adipisci ad et id autem. Unde ut quo non iure adipisci. Cupiditate exercitationem inventore corporis nihil. Blanditiis non distinctio est sint nesciunt non voluptate. Sit ipsum repellat veniam laborum rerum sint.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (46, 69, 1, 2, 'Voluptas corporis illo molestiae labore tenetur. Recusandae a est aspernatur omnis sint odit. Incidunt perspiciatis nesciunt aut aliquam.\n\nMinima quam deserunt quasi consequatur sint quas incidunt. Occaecati qui vitae quisquam. Eum libero libero est repellat unde molestiae expedita natus.\n\nDicta velit et id possimus minima mollitia. Nam aut natus cumque tempora. Recusandae necessitatibus ab quas sit tempore autem. Minus dolores adipisci sed est nostrum.\n\nTotam est natus ipsum quaerat et qui. Laudantium consequatur est temporibus aut illum odit aut vel. Sit possimus suscipit tempore aut nihil eligendi nihil.\n\nPariatur vel quidem est assumenda consequatur nihil ipsam. Qui quas molestiae similique est eaque. Eveniet blanditiis quos debitis.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (47, 8, 1, 2, 'Vel expedita veritatis non. Harum praesentium aut saepe repellendus est animi. Ex delectus est fugit dolorem.\n\nUt error ut assumenda accusamus alias. Maxime eveniet dolores eum vitae dicta itaque laudantium. Delectus qui porro ut repellat voluptates. Et dolor soluta illo perspiciatis.\n\nNisi dolor ab expedita ratione fuga. Nihil dicta velit optio qui illum. Inventore reiciendis hic laboriosam nisi in consequatur.\n\nMinus aut quam ea dolore facilis accusamus. Incidunt ut culpa eum at cupiditate. Excepturi sed perspiciatis explicabo tenetur. Est qui adipisci et at.\n\nSed voluptatem qui repudiandae et similique aut accusantium sunt. Incidunt quaerat iure nihil qui eum. Voluptas velit harum voluptatem aliquid ducimus nisi.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (48, 46, 1, 3, 'Sunt veritatis voluptatem et temporibus sit qui ad. Quisquam alias et recusandae nemo commodi voluptatum nobis. Nesciunt qui laborum illum voluptas saepe ipsum omnis.\n\nQui autem aperiam maiores error repellat quos. Assumenda qui et ipsa velit repudiandae deserunt consequuntur tenetur. Ea aliquid optio voluptatum nihil ullam aspernatur accusantium. Sit suscipit earum magnam ea consequatur. Nemo quaerat provident quas officiis eum cupiditate doloribus.\n\nVoluptas vero quod ut perspiciatis adipisci natus hic. Maiores ut cumque velit itaque et. Est non maxime quia doloremque odio. Nam amet animi et eum. Libero laboriosam reiciendis itaque et molestiae.\n\nIpsa ea quaerat eaque quo magni. Dolor fuga quia eligendi non. Enim aut quo eaque est.\n\nAutem dolorum eveniet et. Provident deleniti sint quis ut sint. Fuga repellat fuga suscipit eligendi hic deserunt maiores.', 'Dolores voluptatem iure aut suscipit voluptas et ad. Enim rerum est expedita ab optio. Consequatur ut quis vel est sunt excepturi pariatur.\n\nAnimi non eos porro aut assumenda aut. Officiis quo voluptatem omnis qui et est distinctio. Amet voluptas sint qui et id aut.\n\nMollitia et cupiditate itaque consequatur odio. Adipisci explicabo sunt provident repudiandae. Amet dicta eaque consequatur. Ipsam quia omnis sunt assumenda eaque.\n\nNon voluptatem dolorem voluptates quis recusandae ut. Et cumque pariatur itaque itaque. Sequi eveniet deleniti et nihil itaque fuga adipisci. Sint aut a nam ut neque aut. Corrupti et aut quia officiis laudantium magnam consequatur sint.\n\nEt dolore facere nulla laboriosam consequatur voluptatum corporis. Corporis repudiandae a repudiandae quibusdam.', '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (49, 7, 1, 4, 'Eius tempora quis alias voluptates rerum fuga. Sunt rerum esse voluptatem et. Et maxime consequatur tempore.\n\nRerum labore sapiente in. Atque voluptatem maxime voluptates ipsum ullam. Corrupti sit doloribus eaque beatae id.\n\nIn quia provident sunt tempore vero. Esse quo dolorem quos quibusdam sit qui. Maiores nihil facere delectus. Repellat itaque similique deleniti exercitationem.\n\nOfficiis expedita tenetur ut occaecati assumenda sit enim. Suscipit veritatis cum molestiae.\n\nEos veniam ex pariatur doloribus assumenda non assumenda. Possimus quas pariatur iste nisi quaerat.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');
INSERT INTO `reviews` VALUES (50, 18, 1, 1, 'Recusandae assumenda non in dicta sit necessitatibus. Dignissimos repudiandae beatae dignissimos quo omnis. Et in non labore nobis.\n\nEligendi facilis non rerum. Quas ad fugit voluptatem et est corporis. Autem cupiditate accusantium molestias enim rerum quia. Hic repellendus excepturi voluptatem.\n\nNobis consequatur dolor magni et omnis omnis ut. Et qui hic iure modi. Voluptatem odit id iure minima.\n\nTempora ut qui ut quibusdam corporis rerum adipisci. Voluptatem accusamus deserunt eos rem aliquid praesentium. Consequatur eligendi molestiae ipsam similique. Et quis amet natus rerum.\n\nVel enim magni et necessitatibus quaerat et. Odio cumque velit repudiandae nulla minus. Est nisi tempore rerum et molestias. Repellat molestiae voluptatem ullam. Nostrum aperiam quaerat sit sed ad ut est alias.', NULL, '2025-01-31 13:08:32', '2025-01-31 13:08:32');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'web', '2025-01-31 13:08:12', '2025-01-31 13:08:12');
INSERT INTO `roles` VALUES (2, 'owner', 'web', '2025-01-31 13:08:12', '2025-01-31 13:08:12');
INSERT INTO `roles` VALUES (3, 'employee', 'web', '2025-01-31 13:08:12', '2025-01-31 13:08:12');
INSERT INTO `roles` VALUES (4, 'customer', 'web', '2025-01-31 13:08:12', '2025-01-31 13:08:12');

-- ----------------------------
-- Table structure for transaction_details
-- ----------------------------
DROP TABLE IF EXISTS `transaction_details`;
CREATE TABLE `transaction_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint UNSIGNED NULL DEFAULT NULL,
  `customer_id` bigint UNSIGNED NULL DEFAULT NULL,
  `package_id` bigint UNSIGNED NULL DEFAULT NULL,
  `coupon_id` bigint UNSIGNED NULL DEFAULT NULL,
  `amount` int NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `transaction_details_transaction_id_index`(`transaction_id` ASC) USING BTREE,
  INDEX `transaction_details_customer_id_index`(`customer_id` ASC) USING BTREE,
  INDEX `transaction_details_package_id_index`(`package_id` ASC) USING BTREE,
  INDEX `transaction_details_coupon_id_index`(`coupon_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3977 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction_details
-- ----------------------------
INSERT INTO `transaction_details` VALUES (3971, 1, 74, 1, 78, 1000000, '2025-02-23 16:21:02', '2025-02-23 16:21:02');
INSERT INTO `transaction_details` VALUES (3976, 6, 5, 2, 102, 100000, '2025-02-23 16:44:48', '2025-02-23 16:44:48');

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` enum('sunday','monday','tuesday','wednesday','thursday','friday','saturday') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int NOT NULL,
  `price` int NOT NULL,
  `coupon` enum('used','not used') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processed','completed','retrieved') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES (1, 'TRC-001', 'Aditya', '088133506311', 'Cuci Kering', 'sunday', '23 February 2025', 12, 22000, 'used', 'pending', '2025-02-23 16:21:02', '2025-02-23 16:21:02');
INSERT INTO `transactions` VALUES (6, 'TRC-002', 'Pelanggan', '085183342649', 'Cuci Basah', 'sunday', '23 February 2025', 12, 16500, 'used', 'pending', '2025-02-23 16:44:48', '2025-02-23 16:44:48');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `gender` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'Admin', '$2y$10$U79OjLdq1OXvjN.fSye8S.gUh1Awk1CCb1gNT3DadHOEeKdQg/Vl.', 'avatar.png', 'male', '081234567890', 'Simpang Pulai', 'active', '2025-01-31 13:08:14', '2025-02-15 20:22:40', 0, 'avatar.png', 1, NULL);
INSERT INTO `users` VALUES (2, 'pemilik', 'Pemilik', '$2y$10$QRVKtZPd83EXzH/rq2iKB.O7BpOHvN1vbaq6UTPBAbyjFVhhL59Vu', 'avatar.png', 'female', '081234567890', 'Simpang Pulai', 'active', '2025-01-31 13:08:14', '2025-01-31 13:08:14', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (3, 'karyawan1', 'Karyawan 1', '$2y$10$5pZFYoTeo2ey8rSVo78XIehTlahMImxMPj6ZmQFexVbeaPNlUDFRi', 'avatar.png', 'female', '081234567890', 'Simpang Pulai', 'active', '2025-01-31 13:08:14', '2025-01-31 13:08:14', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (4, 'karyawan2', 'Karyawan 2', '$2y$10$mjsi7R5asYxticJqzEFN.eULC/yhIQJYnVpAHsGrEMsCPe7OMvNd6', 'avatar.png', 'female', '081234567890', 'Simpang Pulai', 'active', '2025-01-31 13:08:14', '2025-01-31 13:08:14', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (5, 'pelanggan', 'Pelanggan', '$2y$10$IkR3Baaa.gtVG.XgQzb/JeZFRU0Hgl92R08uKzS9uFZKmcQRLTIoW', 'avatar.png', 'female', '085183342649', 'Simpang Pulai', 'active', '2025-01-31 13:08:14', '2025-01-31 13:08:14', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (6, 'unjani456', 'Unjani', '$2y$10$Ly2ONPMxZE7C75k687KlA.Q8L27x4F1.U4LmQCRR67SgYGd8KM6kW', 'avatar.png', 'male', '084648024542', 'Ki. Sutoyo No. 597, Bukittinggi 48016, Sultra', 'active', '2025-01-31 13:08:14', '2025-01-31 13:08:14', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (7, 'hendri924', 'Hendri', '$2y$10$giaUx52NITnhAz5v3cMYLOr7iodY6Fs5uLiVltvaLmnjeWLqAPmou', 'avatar.png', 'male', '080161486799', 'Ki. Tubagus Ismail No. 578, Parepare 96139, Jateng', 'active', '2025-01-31 13:08:14', '2025-01-31 13:08:14', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (8, 'agnes478', 'Agnes', '$2y$10$DvF03EsLtPlGU73YBtQdwOfinMeTABoLgDJX96mVfYzlr.WFGPCme', 'avatar.png', 'male', '088464795703', 'Ds. Abdul No. 739, Jambi 46790, Sultra', 'active', '2025-01-31 13:08:14', '2025-01-31 13:08:14', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (9, 'eka578', 'Eka', '$2y$10$axfZVe0KvHq.hsDaT5zZyOE10TWI4qmTVhZmsnEj3xc7Z7P9ViHVu', 'avatar.png', 'male', '081138044082', 'Psr. Ikan No. 581, Sungai Penuh 17325, Sulsel', 'active', '2025-01-31 13:08:14', '2025-02-15 20:58:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (10, 'julia628', 'Julia', '$2y$10$bhT50TLN/QYMJwYnDt/tju2zgmUkuvU9htqquiNKEJxCXVpS392Wi', 'avatar.png', 'male', '082882506913', 'Jr. Sugiyopranoto No. 258, Pangkal Pinang 30384, Sumut', 'active', '2025-01-31 13:08:14', '2025-01-31 13:08:14', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (11, 'yulia506', 'Yulia', '$2y$10$/n6RNz.i1tMtj.g60h72i.A4W0VXSXTAgC3oBn6mXt/zhMM0p7lmq', 'avatar.png', 'male', '082186990813', 'Jln. Sugiono No. 359, Sukabumi 60083, Bali', 'active', '2025-01-31 13:08:14', '2025-01-31 13:08:14', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (12, 'jagapati950', 'Jagapati', '$2y$10$uTn0ueiZB58.aGhpy/WYQusFhyjcQMAhTrJ7YFcwvuPUhLBFxbm7y', 'avatar.png', 'female', '084788915864', 'Dk. Camar No. 567, Palopo 14226, Kalbar', 'active', '2025-01-31 13:08:14', '2025-01-31 13:08:14', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (13, 'rendy343', 'Rendy', '$2y$10$hg6unwRbr51Lt5ftunwe3e7v1IY1gvEB6JkMatUDH8LNBxSCyLD7.', 'avatar.png', 'male', '083487854563', 'Dk. Raya Setiabudhi No. 839, Denpasar 86608, Riau', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (14, 'diah368', 'Diah', '$2y$10$VQGqvfyasljIK5HLgkYttOsXkxB0s2JxTh9ReC4Ki9/dit./nSqr2', 'avatar.png', 'male', '087062177896', 'Gg. Pasteur No. 302, Serang 37036, Sulbar', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (15, 'salsabila749', 'Salsabila', '$2y$10$h3d3pa7iRhftFWCTuYALXeelUAcosNU3VRYD8jlCQnU0T6fWkZoCC', 'avatar.png', 'male', '089176680322', 'Ds. Sutan Syahrir No. 413, Palembang 90862, Pabar', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (16, 'salwa467', 'Salwa', '$2y$10$cknXrKig.G52VbU8qUTvH.Klnytp6mRUsaX.JkR8xuVn94oLw8tfm', 'avatar.png', 'female', '087799454594', 'Psr. Banda No. 141, Sorong 46576, Gorontalo', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (17, 'rina324', 'Rina', '$2y$10$cOfGYRoFZbxMP9hXW/pdVu7cCiBrGrl/D1HyltFt6KGJ7XimgGB1G', 'avatar.png', 'female', '084050379241', 'Kpg. Jakarta No. 741, Pontianak 87286, Malut', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (18, 'zahra774', 'Zahra', '$2y$10$PUMWbnTE3gWjexujhJpAAuIsCLQc3Kcp8SBqRpWaJ4vrskijDE0ze', 'avatar.png', 'male', '087232325552', 'Gg. Flores No. 436, Binjai 65906, Kalbar', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (19, 'jaya559', 'Jaya', '$2y$10$kphGKgPfSwDkxvGjcOM.0urEVn2D3emx4tmrCMkyJjmYEf/KwcaZS', 'avatar.png', 'female', '087369808499', 'Gg. Bara No. 26, Surakarta 14911, Sulbar', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (20, 'clara997', 'Clara', '$2y$10$LRq7Mro9wMzrlWRirtbumuGj2x7AO5n6lKO/pTYXNpVImtfF49doS', 'avatar.png', 'male', '080504045152', 'Psr. Laswi No. 124, Tangerang 94286, Malut', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (21, 'michelle776', 'Michelle', '$2y$10$LnMTfesRPik1LsgZ9FJ9ROiKNChWnuzBFTzNdQiEcDqknDdpLZNS.', 'avatar.png', 'female', '085879105972', 'Psr. Industri No. 544, Administrasi Jakarta Timur 76197, Babel', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (22, 'kania50', 'Kania', '$2y$10$aZ7/5qz42joBYJbvRhhFsO5Zi0WfvupnoknUwKPF9duYnaWItkzF.', 'avatar.png', 'male', '086758516374', 'Gg. Kalimalang No. 219, Tanjungbalai 65545, Papua', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (23, 'salimah292', 'Salimah', '$2y$10$x1HBZmWggtWwXsLoawuLl.3HQPXD436EpFMr8v4hqt7M9sy4N0Uiu', 'avatar.png', 'female', '085225881894', 'Ds. Yoga No. 778, Sungai Penuh 95183, Gorontalo', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (24, 'kamila997', 'Kamila', '$2y$10$IPvrAw5T.6egBxtKRn6tv.6mSsJyp0WfiJETiHJKPRgwm7dAd2a8i', 'avatar.png', 'male', '085717889474', 'Psr. Imam Bonjol No. 835, Administrasi Jakarta Utara 49042, Kaltim', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (25, 'pandu537', 'Pandu', '$2y$10$FzecG8fXqDBNx4/CahdfNeDNl7qu/TlFhBhvgNFuWDwmbLdZRQgv6', 'avatar.png', 'male', '084005423502', 'Gg. Abdullah No. 474, Gorontalo 88539, Sulsel', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (26, 'kezia825', 'Kezia', '$2y$10$pM3z/V2Sx650OzQylAiRfeaDky28HgsA05pxt/KC26Ep/WCCOInHG', 'avatar.png', 'female', '084702551202', 'Dk. Hasanuddin No. 314, Administrasi Jakarta Pusat 39804, DKI', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (27, 'kiandra904', 'Kiandra', '$2y$10$d6YSGA9kIOXEBWPZoskV5Oq1gtl5hJ9QIw/WBex1cTTNJu7bWpyni', 'avatar.png', 'female', '084411686278', 'Psr. Kyai Gede No. 338, Jambi 42959, Jateng', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (28, 'cindy806', 'Cindy', '$2y$10$n5KvC.jjEig6NIYinuZR5uTz0GtYKawKId0qsflFK0SuhzNNrz58G', 'avatar.png', 'female', '081102481926', 'Jln. Cokroaminoto No. 33, Mojokerto 39705, Jatim', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (29, 'prayitna991', 'Prayitna', '$2y$10$nyEgO/qCim.8W0k.Tv3IouVWUu8v5UVbkbp4waMp1l1DXdgHtOQbW', 'avatar.png', 'female', '080944695367', 'Dk. Kartini No. 253, Mojokerto 97713, Sumut', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (30, 'citra612', 'Citra', '$2y$10$PuS75YyYMFZQZMGuwno8Aektet1R09kSCgRTEqfTaNg2muQs0pFIq', 'avatar.png', 'female', '087722888311', 'Gg. Gajah Mada No. 288, Administrasi Jakarta Timur 69167, Kalsel', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (31, 'dian681', 'Dian', '$2y$10$hc8LOjrLaVr.RyHHi.oye.qAo.XDAxmvqyc02kUifskR3ZeHM0.Cu', 'avatar.png', 'female', '088627888918', 'Kpg. Jend. Sudirman No. 525, Banjarmasin 16782, Kalbar', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (32, 'rendy916', 'Rendy', '$2y$10$woQ4hLdChg4OJgF9blrtju.Lmnl5KhRCQ52NwVP7Y/LS90HFtiTku', 'avatar.png', 'male', '087485516210', 'Dk. Sukabumi No. 493, Pagar Alam 32175, Kalteng', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (33, 'raina606', 'Raina', '$2y$10$joMhC.mS8piSMU6eZvjxt.SR37Dk7vYgqQrfn9Ehf.54RbfYO1AX2', 'avatar.png', 'female', '088613215368', 'Gg. Urip Sumoharjo No. 44, Jambi 52103, Kaltim', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (34, 'dinda383', 'Dinda', '$2y$10$ebabjw1omfVKE84YKnWUk.8.Mmf5e9VWjKKhSVzbzwMmNTteeoM2W', 'avatar.png', 'male', '087821542154', 'Ds. Banceng Pondok No. 681, Padangsidempuan 46108, Malut', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (35, 'prabawa324', 'Prabawa', '$2y$10$2xHQ64e0F6G7R3xR.XKheeTK3XX41WipeTNyFmv7ghcl0TbzWg7mW', 'avatar.png', 'female', '082477011574', 'Ki. Ronggowarsito No. 584, Cimahi 85207, Kalteng', 'active', '2025-01-31 13:08:15', '2025-01-31 13:08:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (36, 'kayla326', 'Kayla', '$2y$10$DTkGlsDLeSQoqD.Ve9zJ4uR24xDk8UoGwEHQ6jWO9tl2wUyjW2UQy', 'avatar.png', 'male', '087218151047', 'Gg. Ters. Pasir Koja No. 368, Padang 69600, Sumbar', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (37, 'nugraha436', 'Nugraha', '$2y$10$UBYN70HmwmnyWWbTfCYpx.cB6HHo2zhfalU0jkr9Iqj4fgkSoMqIC', 'avatar.png', 'male', '089006020835', 'Jln. Orang No. 47, Manado 35688, DKI', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (38, 'gasti782', 'Gasti', '$2y$10$aCgtNFtOPOLMSanCQFgQYeT2af8ItgkLoAKv3JG13YbzLybROoFm6', 'avatar.png', 'female', '084325083865', 'Kpg. Nangka No. 537, Tomohon 48922, Kaltim', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (39, 'jinawi499', 'Jinawi', '$2y$10$F1IC.hSyQFBiK2ZsU817N.hn6cx.ys128hQ4evbuaR4GaxSJ10Z7u', 'avatar.png', 'female', '089074340573', 'Jln. Bakaru No. 681, Kotamobagu 94102, Sulut', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (40, 'yuliana846', 'Yuliana', '$2y$10$SOVARUwpLdIgeOSo.Zri0.cfWjhrtfP1UpP.7ZH1mJl0SlNBAeB8e', 'avatar.png', 'female', '087611775148', 'Gg. Sukabumi No. 830, Tangerang Selatan 27971, Sulsel', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (41, 'olga651', 'Olga', '$2y$10$srDESLWxoEzB.XSRQ/zt0OdApoBm52R8SYF/uMqWz3V5WxZyqidLW', 'avatar.png', 'female', '087891632726', 'Jr. Ir. H. Juanda No. 905, Manado 34622, Kaltim', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (42, 'dwi924', 'Dwi', '$2y$10$pM/3jXMt6ImBvlfQpcxIVepbmgi6NAyxhJKKLPfxy536B0XECtvDG', 'avatar.png', 'female', '081805508360', 'Kpg. Bakit  No. 356, Parepare 39467, Kaltara', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (43, 'yunita379', 'Yunita', '$2y$10$EGYNd729iYy6dfwHPYYktOnzOhMy7QfYp3aCPgd9FsdB9nNbuePN.', 'avatar.png', 'female', '082908505547', 'Dk. Pacuan Kuda No. 906, Probolinggo 75940, Gorontalo', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (44, 'bella74', 'Bella', '$2y$10$WKppLtBhOxxQItgC08uuM.QvplyHWQiQRNnqt7K5AIptTB1sptqOS', 'avatar.png', 'female', '081190596311', 'Gg. Jagakarsa No. 41, Palopo 69405, DKI', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (45, 'violet394', 'Violet', '$2y$10$r8F4R3MeR86eAIHaT3W7yOR88TUV8/qF.AjrTsduMj/IgDwdyMxwu', 'avatar.png', 'female', '083499923911', 'Kpg. Babakan No. 935, Probolinggo 60980, Sulteng', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (46, 'paiman342', 'Paiman', '$2y$10$tg6YbAYGJSfgPubkpMIKNe9.mO4DyjXCeCSuXQW0osZ60gtdSiF1W', 'avatar.png', 'female', '084911811948', 'Jln. Yosodipuro No. 882, Administrasi Jakarta Barat 54959, Aceh', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (47, 'maria129', 'Maria', '$2y$10$SttZCAb0oFQ9TMZ8sWA.6uaPLvXOA3R22uFt4QX72J8BYSHumjRcu', 'avatar.png', 'female', '086773352803', 'Jln. BKR No. 443, Bandar Lampung 28990, Sumbar', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (48, 'cici984', 'Cici', '$2y$10$F6KpHmnhKtjxOfH3Qb0M6.FQfU43Bj/QrIhVizWXgE40z5hPvxJc2', 'avatar.png', 'female', '083471952180', 'Gg. Basuki Rahmat  No. 977, Singkawang 51938, Bengkulu', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (49, 'kayla375', 'Kayla', '$2y$10$e7n1o0RWh6krHrbK/iFyS.b9g9M7l414loKDnX1r4k460kjG2CYw6', 'avatar.png', 'female', '087527538873', 'Gg. Pasir Koja No. 690, Tegal 37175, DIY', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (50, 'laksana977', 'Laksana', '$2y$10$veOwmu71Y7TerTdrpF5Cp.XJMxI9FsX2PnliE9kzumU5XatcYzf.C', 'avatar.png', 'female', '089996083646', 'Kpg. B.Agam 1 No. 193, Bandar Lampung 48126, Sumut', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (51, 'putri283', 'Putri', '$2y$10$En5PnZC4VoFnQDjmT/7lm..r4BXifhRFNz3CZRQs.FSBgouSlBf8G', 'avatar.png', 'male', '086848195414', 'Jr. Baung No. 140, Pematangsiantar 70101, Sulbar', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (52, 'raharja121', 'Raharja', '$2y$10$aWxMu8A8LBLNtkBD8mgcHetlH9hddp.APx7KqDdpvJYjzyrqwalt.', 'avatar.png', 'male', '085394314244', 'Ki. Baya Kali Bungur No. 275, Banda Aceh 96929, Jateng', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (53, 'ratna906', 'Ratna', '$2y$10$hHKCUmJPwyE/DjAVn.MZl.PUITR7HeZpRVgLbdvqDcO7y/0pUPYkW', 'avatar.png', 'male', '089911278799', 'Kpg. Lumban Tobing No. 211, Bima 21576, Sulsel', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (54, 'pranawa490', 'Pranawa', '$2y$10$EewNhIfKpSw.zqUm8uejheRjRqIKdW10A.NBiL89NEsCZXVDBaBrm', 'avatar.png', 'male', '087873528386', 'Psr. B.Agam 1 No. 804, Pariaman 74970, Kepri', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (55, 'galih682', 'Galih', '$2y$10$p8ZAB8DY4/wLXH/pmYzCD.pA99n.z4uvrv/MNLrdIr8aUYGszefNi', 'avatar.png', 'male', '080672801663', 'Jln. Baja Raya No. 449, Palembang 84320, DIY', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (56, 'restu737', 'Restu', '$2y$10$5OOgYzDU.RRMvz0/rj/PTO3RRbAJjLu/MP2Usf1i43y1./SOJVZbK', 'avatar.png', 'male', '087140402130', 'Ki. Baiduri No. 918, Administrasi Jakarta Utara 38675, Sulsel', 'active', '2025-01-31 13:08:16', '2025-01-31 13:08:16', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (57, 'rika820', 'Rika', '$2y$10$3ORKH/N0sGS2MWI8juNzMO/OVRMtNit3eD7SE7XHavA266LH6TQbG', 'avatar.png', 'female', '086366096716', 'Ki. Abdul Muis No. 136, Sukabumi 39070, Malut', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (58, 'gasti228', 'Gasti', '$2y$10$ATSofNphPE6ORJBsCDHGNuUXuReutuKsTQmsKRASYF.kBYr0Be4WK', 'avatar.png', 'male', '082440163234', 'Ds. Tangkuban Perahu No. 841, Administrasi Jakarta Selatan 97399, Bengkulu', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (59, 'kemba781', 'Kemba', '$2y$10$13xbA3jBF1H1xnMzGDpls.dGNAdGwchmfrhZsC8Nu9ZXjafwVzU2m', 'avatar.png', 'female', '088683522150', 'Gg. Bara Tambar No. 940, Prabumulih 39312, Sulsel', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (60, 'bagus422', 'Bagus', '$2y$10$zhf9jVHxlAy1LABymfMvZueSBh.SUKQ4.hc3nETJr.sBfQ9wGXaTu', 'avatar.png', 'male', '089764630585', 'Gg. Basuki Rahmat  No. 471, Serang 79122, Sumut', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (61, 'amalia718', 'Amalia', '$2y$10$EDamThCd/ULJtPMxIOKbb.WFbGusKNpLEZcBkdRC0yRPL/DgPRdXO', 'avatar.png', 'male', '087329254932', 'Dk. Bazuka Raya No. 425, Jambi 53994, Kalbar', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (62, 'cahyo868', 'Cahyo', '$2y$10$NbBtWSKQxH5G0aK6xXP4ke7K8Ioj7fTSjsKPNBksC/i1QxiP1258W', 'avatar.png', 'male', '082289547028', 'Kpg. Baing No. 353, Bogor 29647, Sulsel', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (63, 'soleh373', 'Soleh', '$2y$10$5KKHyGqgRErFFpV0kbxcbOLpcpbp.ETROU0M8d/wnAm3urd.WS2v6', 'avatar.png', 'male', '083781245898', 'Jln. Sumpah Pemuda No. 435, Palangka Raya 54482, Jatim', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (64, 'uchita71', 'Uchita', '$2y$10$ivJR/ZFcIlqexeq8Yp2kHOXB0uvYtLBF8VC/SRd0Yg0kNjkAQeyCm', 'avatar.png', 'female', '088109206371', 'Jr. Babadak No. 534, Pekanbaru 39057, Kalsel', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (65, 'bella265', 'Bella', '$2y$10$nLfUzOG3t3RvDvhFJDwL9uhOzdVTgnDKb/NmSAbAaDUVvIlbpc6pC', 'avatar.png', 'female', '084318661657', 'Kpg. Pasirkoja No. 758, Bengkulu 52754, Papua', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (66, 'titi295', 'Titi', '$2y$10$09ODmYp9MBJffrlaQ5eBzuqTrbTe2e9cA8oK80yIx240SvItJvUva', 'avatar.png', 'male', '081768407578', 'Jln. Hang No. 60, Kupang 89205, NTB', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (67, 'winda175', 'Winda', '$2y$10$OTtzq/uEtoC6uTGNGdOFrOMlQuACZp02X2fyfTpZ7SqW/oAlKDxl2', 'avatar.png', 'female', '084517045953', 'Jr. Imam No. 664, Administrasi Jakarta Pusat 37217, NTB', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (68, 'hesti692', 'Hesti', '$2y$10$eQB/bYTd7G0G9fEo1jYYDeXQm2w9eY3pB2UfkBa/IIj9PZKYwVwuO', 'avatar.png', 'female', '081134096653', 'Jln. Sukajadi No. 25, Pekanbaru 69350, Jateng', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (69, 'bahuwirya534', 'Bahuwirya', '$2y$10$FUCWpf4T7zmQm36c1hmaUeYuNiLh2NxuC.QoJJEXHPUl/Yvpbuloe', 'avatar.png', 'female', '081878642907', 'Dk. Gotong Royong No. 166, Padangsidempuan 45130, Aceh', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (70, 'balamantri404', 'Balamantri', '$2y$10$c8kmcniLEgyTQxAabDh0ZuERCVbX90VoYWHoT16mMSbMowLC88A16', 'avatar.png', 'male', '082718784580', 'Dk. Cikutra Timur No. 371, Magelang 12508, Kepri', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (71, 'kusuma523', 'Kusuma', '$2y$10$Oe9k.L3wzQ5XJBmc4bA5D.sHoXJ49SN4aAP57ZmSsGdVEubJ9cHOy', 'avatar.png', 'male', '080398510241', 'Jr. Pattimura No. 872, Sawahlunto 80408, Sultra', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (72, 'cici370', 'Cici', '$2y$10$E3BD4h1LMyRDnpooRSvu1.nywCpeXYV6SSbjcMZbWWyx.IVuqerxO', 'avatar.png', 'female', '084497187050', 'Gg. Lumban Tobing No. 425, Kotamobagu 18996, Sulbar', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (73, 'lasmono338', 'Lasmono', '$2y$10$wNYKehbNPp8M57aob5xJhOtnFBD4zUaccbcPsOY6Ml3uAK6nM8QDm', 'avatar.png', 'female', '084109960593', 'Dk. Ki Hajar Dewantara No. 816, Tegal 89096, Jabar', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (74, 'aditya56', 'Aditya', '$2y$10$pyvY4lN2b/A/qVQBipnAhei40QiTG947uM8DHckUn85ZhKKlZbSeC', 'avatar.png', 'male', '088133506311', 'Jln. Moch. Ramdan No. 995, Semarang 48077, Sulteng', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (75, 'opan445', 'Opan', '$2y$10$/VyJHjAnPYrho4Ol7VbaeuGHMp3KeY3gEqb/iutJj6RJ1caN27Tfy', 'avatar.png', 'female', '083957432316', 'Jr. W.R. Supratman No. 211, Bogor 19544, Bengkulu', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (76, 'siska869', 'Siska', '$2y$10$HxslzQA/tMlfFe07U2P2TObUgWgFYfuOn1HNLXMYoNqt7P5kM9DKm', 'avatar.png', 'male', '088362522937', 'Psr. Padang No. 467, Serang 51180, Malut', 'active', '2025-01-31 13:08:17', '2025-01-31 13:08:17', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (77, 'laila679', 'Laila', '$2y$10$cDQk798WtQhIvb3YMR3Z3uQ3zce74pQe9jDQ.4TwufYO4BanznX9q', 'avatar.png', 'male', '085941179939', 'Psr. Jend. A. Yani No. 127, Madiun 93042, Aceh', 'active', '2025-01-31 13:08:18', '2025-01-31 13:08:18', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (78, 'guru98', 'Guru', '$2y$10$rZKG6LhMjLpSvF06CAWqTeKLLGAnF0WgHjgRWb4T71Kyc2QOjQnja', 'guru-7237.jpg', 'male', '087861540874', 'sumbawa kub', 'active', '2025-02-15 15:57:15', '2025-02-15 15:57:15', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (79, 'framework981', 'framework', '$2y$10$fFj1FJvhdZxrjxWUZFd1KOVp8FVejUlj4Xfc3DnGQvBMmHSJuH/Ya', 'framework-66730.jpg', 'male', '087861540874', 'kadfmkladsfkldjfkldes', 'active', '2025-02-15 16:02:24', '2025-02-15 16:02:24', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (80, 'yuuuu403', 'yuuuu', '$2y$10$fLQqea1wGu8fcQILuLtYTebWFBHx8CHpagwhFjvjbVEX1f6HIYLcK', 'yuuuu-83374.jpg', 'male', '087861540874', 'sumbawa', 'active', '2025-02-15 19:42:30', '2025-02-15 19:42:30', 0, 'avatar.png', 0, NULL);
INSERT INTO `users` VALUES (81, 'guru169', 'Guru', '$2y$10$57Zpec7SfxjKH4YuKmCHCexDT.lxjTvIymO0mFzYbKvxsTgR/96wy', 'guru-21993.jpg', 'male', '087861540874', 'sassadasfsafsa', 'active', '2025-02-15 19:43:21', '2025-02-15 19:43:21', 0, 'avatar.png', 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
