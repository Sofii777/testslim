/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : testjojo

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 09/11/2020 08:27:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, 'juaracoding', 'tebet');
INSERT INTO `company` VALUES (2, 'pt dika', 'benhil');

-- ----------------------------
-- Table structure for company_budget
-- ----------------------------
DROP TABLE IF EXISTS `company_budget`;
CREATE TABLE `company_budget`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `amount` decimal(19, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_budget
-- ----------------------------
INSERT INTO `company_budget` VALUES (1, 1, 111111.00);
INSERT INTO `company_budget` VALUES (2, 1, 255155.00);

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `amount` decimal(19, 2) NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES (1, 'R', 1, 42141242.00, '2020-11-08 08:25:13');
INSERT INTO `transaction` VALUES (2, 'C', 2, 4323412.00, '2020-11-08 08:25:36');
INSERT INTO `transaction` VALUES (2, 'S', 1, 62332.00, '2020-11-09 08:26:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_id` bigint(20) NULL DEFAULT NULL,
  `key2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'muhammad', 'sofii', 'sofiiganteng@gmail.com', 'facebook', 1, NULL);
INSERT INTO `user` VALUES (2, 'husein', 'al', 'huesin@gmail.com', 'facebook', 1, NULL);
INSERT INTO `user` VALUES (3, 'somad', 'zakaria', 'somad@gmail.com', 'instagram', 2, NULL);

SET FOREIGN_KEY_CHECKS = 1;
