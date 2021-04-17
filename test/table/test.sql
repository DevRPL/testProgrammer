/*
 Navicat Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100508
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 100508
 File Encoding         : 65001

 Date: 11/12/2020 21:46:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `floors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES (1, 1, 'Bidakara', '30');
INSERT INTO `building` VALUES (2, 1, 'Mulia Tower', '40');
INSERT INTO `building` VALUES (3, 2, 'Cihampelas Apart', '20');
INSERT INTO `building` VALUES (4, 4, 'Petronas', '70');
INSERT INTO `building` VALUES (5, 5, 'Standard Chartered', '35');
INSERT INTO `building` VALUES (6, 7, 'Marina Bays', '50');
INSERT INTO `building` VALUES (7, 7, 'Allianz Tower', '60');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NULL DEFAULT NULL,
  `population` int(255) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, 1, 1000, 'Jakarta');
INSERT INTO `city` VALUES (2, 1, 400, 'Bandung');
INSERT INTO `city` VALUES (3, 1, 200, 'Medan');
INSERT INTO `city` VALUES (4, 2, 600, 'Kuala Lumpur');
INSERT INTO `city` VALUES (5, 2, 300, 'Penang');
INSERT INTO `city` VALUES (6, 2, 200, 'Johor Bahru');
INSERT INTO `city` VALUES (7, 3, 400, 'Singapura');

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES (1, 'Indonesia');
INSERT INTO `country` VALUES (2, 'Malaysia');
INSERT INTO `country` VALUES (3, 'Singapura');

SET FOREIGN_KEY_CHECKS = 1;
