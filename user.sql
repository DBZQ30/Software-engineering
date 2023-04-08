/*
 Navicat Premium Data Transfer

 Source Server         : database
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : user

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 08/04/2023 17:42:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatetime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_key`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (3, 'admin', '15240860378', '2023-04-08 15:51:33', '2023-04-08 16:26:08', '2743065525@qq.com', '27e6511199acc4e561ba04beb3d045cb');
INSERT INTO `admin` VALUES (4, 'admin1', '15240860374', '2023-04-08 17:25:12', '2023-04-08 17:33:08', '2020040306@mail.buct.edu.cn', '27e6511199acc4e561ba04beb3d045cb');
INSERT INTO `admin` VALUES (5, 'admin2', '17899883344', '2023-04-08 17:38:57', '2023-04-08 17:38:57', '9837498@qq.com', '1eccc2e175fbadb85131855b08e78775');

SET FOREIGN_KEY_CHECKS = 1;
