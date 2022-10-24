/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : wpu_login

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 24/10/2022 21:24:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_testing
-- ----------------------------
DROP TABLE IF EXISTS `tbl_testing`;
CREATE TABLE `tbl_testing`  (
  `id_tes` int(255) NOT NULL AUTO_INCREMENT,
  `nilai1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_tes`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_testing
-- ----------------------------
INSERT INTO `tbl_testing` VALUES (1, '30', '30', '25');
INSERT INTO `tbl_testing` VALUES (2, '67', '98', '98');
INSERT INTO `tbl_testing` VALUES (3, '30', '47', '88');
INSERT INTO `tbl_testing` VALUES (4, '75', '76', '77');
INSERT INTO `tbl_testing` VALUES (5, '89', '90', '44');
INSERT INTO `tbl_testing` VALUES (6, '65', '8', '9');
INSERT INTO `tbl_testing` VALUES (7, '10', '15', '14');
INSERT INTO `tbl_testing` VALUES (8, '1', '2', '4');
INSERT INTO `tbl_testing` VALUES (9, '19', '20', '66');
INSERT INTO `tbl_testing` VALUES (10, '88', '76', '54');
INSERT INTO `tbl_testing` VALUES (11, '56', '44', '32');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Moch. Firman Firdaus', 'admin@kronus.com', 'default.png', '$2y$10$Lv3S75Gf7lZOgJojkzV.tOjsUCSbBhPXsxQeOWWnwAWBHTwviqoYq', 1, 1, 1663951865);
INSERT INTO `user` VALUES (2, 'Farida Nur Zeha', 'farida@kronus.com', 'default.png', '$2y$10$bgWqjnL1xtKevuB92tYIaupNL31zNurYE8Aiphm6vYR.OFZ0C2iBK', 2, 1, 1663983530);
INSERT INTO `user` VALUES (3, 'Moch. Firman', 'firman@kronus.com', 'default.png', '$2y$10$voWANz2VrGzJe97KDcNXSO.DqMrTQiLj6nxX4gbI8AGK7cdmKa5Gq', 1, 1, 1666615643);

-- ----------------------------
-- Table structure for user_access_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_access_menu`;
CREATE TABLE `user_access_menu`  (
  `id_user_access` int(255) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `menu_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user_access`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_access_menu
-- ----------------------------
INSERT INTO `user_access_menu` VALUES (1, 1, 1);
INSERT INTO `user_access_menu` VALUES (2, 1, 2);
INSERT INTO `user_access_menu` VALUES (3, 2, 2);
INSERT INTO `user_access_menu` VALUES (4, 1, 3);

-- ----------------------------
-- Table structure for user_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu`  (
  `id_menu` int(255) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_menu
-- ----------------------------
INSERT INTO `user_menu` VALUES (1, 'Admin');
INSERT INTO `user_menu` VALUES (2, 'User');
INSERT INTO `user_menu` VALUES (3, 'Menu');
INSERT INTO `user_menu` VALUES (4, 'New Menu');
INSERT INTO `user_menu` VALUES (5, 'Role');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id_role` int(255) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_role`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 'Admin');
INSERT INTO `user_role` VALUES (2, 'Member');

-- ----------------------------
-- Table structure for user_sub_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_sub_menu`;
CREATE TABLE `user_sub_menu`  (
  `id_user_sub_menu` int(255) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NULL DEFAULT NULL,
  `title` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `icon` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `is_active` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user_sub_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_sub_menu
-- ----------------------------
INSERT INTO `user_sub_menu` VALUES (1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1);
INSERT INTO `user_sub_menu` VALUES (2, 2, 'My Profile', 'user', 'fas fa-file-invoice', 1);
INSERT INTO `user_sub_menu` VALUES (3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1);
INSERT INTO `user_sub_menu` VALUES (4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1);
INSERT INTO `user_sub_menu` VALUES (5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1);
INSERT INTO `user_sub_menu` VALUES (6, 2, 'Hapus Profile', 'user/hapus_profile', '', 1);
INSERT INTO `user_sub_menu` VALUES (7, 1, 'Role', 'admin/role', 'fas fa-fw fa-cog', 1);

SET FOREIGN_KEY_CHECKS = 1;
