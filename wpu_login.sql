/*
 Navicat Premium Data Transfer

 Source Server         : laragon
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : wpu_login

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 24/09/2022 08:42:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `is_active` int(1) NULL DEFAULT NULL,
  `date_created` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Moch. Firman Firdaus', 'admin@kronus.com', 'default.png', '$2y$10$Lv3S75Gf7lZOgJojkzV.tOjsUCSbBhPXsxQeOWWnwAWBHTwviqoYq', 1, 1, 1663951865);
INSERT INTO `user` VALUES (2, 'Farida Nur Zeha', 'farida@kronus.com', 'default.png', '$2y$10$bgWqjnL1xtKevuB92tYIaupNL31zNurYE8Aiphm6vYR.OFZ0C2iBK', 2, 1, 1663983530);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id_role` int(255) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_role`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 'Admin');
INSERT INTO `user_role` VALUES (2, 'Member');

SET FOREIGN_KEY_CHECKS = 1;
