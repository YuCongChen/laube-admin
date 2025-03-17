/*
 Navicat MySQL Dump SQL

 Source Server         : 本地MySQL
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3306
 Source Schema         : testdb

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 17/03/2025 17:24:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `auth_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `parent_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1349978954290696192', 'System', NULL, 0, 1, '2025-03-14 05:34:24.100', '2025-03-16 07:43:15.745', 'system', '\"{\\\"title\\\":\\\"系统管理\\\",\\\"icon\\\":\\\"carbon:settings-adjust\\\"}\"', NULL, 'catalog', '/system');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1349991635110334464', 'SystemUser', '/system/user/index', 0, 1, '2025-03-14 06:24:47.443', '2025-03-14 09:41:28.023', 'system:user:page', '\"{\\\"title\\\":\\\"用户管理\\\",\\\"icon\\\":\\\"carbon:user-profile-alt\\\"}\"', '1349978954290696192', 'menu', '/system/user');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1349993956447883265', 'SystemRole', '/system/role/index', 0, 1, '2025-03-14 06:34:00.893', '2025-03-14 09:41:37.438', 'system:role:page', '\"{\\\"title\\\":\\\"角色管理\\\",\\\"icon\\\":\\\"carbon:user-role\\\"}\"', '1349978954290696192', 'menu', '/system/role');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1349994151491407874', 'SystemMenu', '/system/menu/index', 0, 1, '2025-03-14 06:34:47.394', '2025-03-14 09:41:44.457', 'system:menu:page', '\"{\\\"title\\\":\\\"菜单管理\\\",\\\"icon\\\":\\\"carbon:menu\\\"}\"', '1349978954290696192', 'menu', '/system/menu');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1350017631649796096', 'SystemUserCreate', NULL, 0, 1, '2025-03-14 08:08:05.501', '2025-03-14 08:08:05.501', 'system:user:create', '\"{\\\"title\\\":\\\"新增用户\\\"}\"', '1349991635110334464', 'button', '');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1350018316160208896', 'SystemUserUpdate', NULL, 0, 1, '2025-03-14 08:10:48.701', '2025-03-14 08:10:48.701', 'system:user:update', '\"{\\\"title\\\":\\\"编辑用户\\\"}\"', '1349991635110334464', 'button', '');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1350018389740883969', 'SystemUserDelete', NULL, 0, 1, '2025-03-14 08:11:06.244', '2025-03-14 08:11:06.244', 'system:user:delete', '\"{\\\"title\\\":\\\"删除用户\\\"}\"', '1349991635110334464', 'button', '');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1350025220441772032', '', NULL, 0, 1, '2025-03-14 08:38:14.816', '2025-03-14 08:38:14.816', 'system:role:create', '\"{\\\"title\\\":\\\"新增角色\\\"}\"', '1349993956447883265', 'button', '');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1350025253258006529', '', NULL, 0, 1, '2025-03-14 08:38:22.634', '2025-03-14 08:38:22.634', 'system:role:update', '\"{\\\"title\\\":\\\"编辑角色\\\"}\"', '1349993956447883265', 'button', '');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1350025304738893826', '', NULL, 0, 1, '2025-03-14 08:38:34.908', '2025-03-14 08:38:34.908', 'system:role:delete', '\"{\\\"title\\\":\\\"删除角色\\\"}\"', '1349993956447883265', 'button', '');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1350025433709547523', '', NULL, 0, 1, '2025-03-14 08:39:05.657', '2025-03-14 08:39:05.657', 'system:menu:create', '\"{\\\"title\\\":\\\"新增菜单\\\"}\"', '1349994151491407874', 'button', '');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1350025470124494852', '', NULL, 0, 1, '2025-03-14 08:39:14.339', '2025-03-14 08:39:14.339', 'system:menu:update', '\"{\\\"title\\\":\\\"编辑菜单\\\"}\"', '1349994151491407874', 'button', '');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1350025510494670853', '', NULL, 0, 1, '2025-03-14 08:39:23.964', '2025-03-14 08:39:23.964', 'system:menu:delete', '\"{\\\"title\\\":\\\"删除菜单\\\"}\"', '1349994151491407874', 'button', '');
INSERT INTO `menu` (`id`, `name`, `component`, `order`, `status`, `created_at`, `updated_at`, `auth_code`, `meta`, `parent_id`, `type`, `path`) VALUES ('1350821494241890304', 'Auth', '/system/auth/index', 0, 1, '2025-03-16 13:22:21.278', '2025-03-16 13:22:21.278', 'system:auth:page', '\"{\\\"title\\\":\\\"权限测试\\\"}\"', '1349978954290696192', 'menu', '/system/auth');
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_name_key` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` (`id`, `name`, `description`, `created_at`, `updated_at`, `status`) VALUES ('1349672361363771392', '管理员', '超级管理员', '2025-03-13 09:16:06.658', '2025-03-16 13:22:33.292', 1);
INSERT INTO `role` (`id`, `name`, `description`, `created_at`, `updated_at`, `status`) VALUES ('1349672448643043329', '部门经理', '部门经理', '2025-03-13 09:16:27.459', '2025-03-17 03:50:26.725', 1);
INSERT INTO `role` (`id`, `name`, `description`, `created_at`, `updated_at`, `status`) VALUES ('1349672483879391234', '普通用户', '普通用户', '2025-03-13 09:16:35.860', '2025-03-17 04:03:08.126', 1);
COMMIT;

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `menu_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `role_menu_menu_id_fkey` (`menu_id`),
  CONSTRAINT `role_menu_menu_id_fkey` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `role_menu_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
BEGIN;
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1349978954290696192', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1349978954290696192', '1349672448643043329');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1349978954290696192', '1349672483879391234');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1349991635110334464', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1349991635110334464', '1349672448643043329');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1349991635110334464', '1349672483879391234');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1349993956447883265', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1349993956447883265', '1349672448643043329');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1349994151491407874', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350017631649796096', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350017631649796096', '1349672448643043329');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350017631649796096', '1349672483879391234');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350018316160208896', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350018316160208896', '1349672448643043329');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350018316160208896', '1349672483879391234');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350018389740883969', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350018389740883969', '1349672448643043329');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350018389740883969', '1349672483879391234');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350025220441772032', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350025220441772032', '1349672448643043329');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350025253258006529', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350025253258006529', '1349672448643043329');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350025304738893826', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350025304738893826', '1349672448643043329');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350025433709547523', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350025470124494852', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350025510494670853', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350821494241890304', '1349672361363771392');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350821494241890304', '1349672448643043329');
INSERT INTO `role_menu` (`menu_id`, `role_id`) VALUES ('1350821494241890304', '1349672483879391234');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `real_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username_key` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `email`, `status`, `created_at`, `updated_at`, `real_name`, `remark`) VALUES ('1349310041714331648', 'admin', '$argon2id$v=19$m=65536,t=3,p=4$eMsjUVve8DnKA03IQHf6wg$/D2GFARUumBoISluXoXfuYsGl6/tDKt2RsRv4owqwnc', '19911111111', '123@qq.com', 1, '2025-03-12 09:16:22.954', '2025-03-16 06:41:46.935', '超级管理员', NULL);
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `email`, `status`, `created_at`, `updated_at`, `real_name`, `remark`) VALUES ('1349311574044577792', 'alice', '$argon2id$v=19$m=65536,t=3,p=4$AbiZrYIJqL+4+JrlKrhDfA$YH+cYY0sHX7XL552L/3mrEiaojb8/wFK02NXFVSgTJI', '13311111111', '123@qq.com', 1, '2025-03-12 09:22:28.288', '2025-03-16 07:05:41.668', '普通用户1', NULL);
INSERT INTO `user` (`id`, `username`, `password`, `phone`, `email`, `status`, `created_at`, `updated_at`, `real_name`, `remark`) VALUES ('1349311663764934657', 'bob', '$argon2id$v=19$m=65536,t=3,p=4$/mSfTb1YkrFOPcq9cn42qg$qoM/wTDIJ3Li+TiMPzCG6azRfmtMR08t2m8e0FVzu90', '13322222222', '111@qq.com', 1, '2025-03-12 09:22:49.680', '2025-03-16 13:19:48.781', '普通用户2', '123');
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `userId` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`userId`,`roleId`),
  KEY `user_role_roleId_fkey` (`roleId`),
  CONSTRAINT `user_role_roleId_fkey` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `user_role_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_role
-- ----------------------------
BEGIN;
INSERT INTO `user_role` (`userId`, `roleId`) VALUES ('1349310041714331648', '1349672361363771392');
INSERT INTO `user_role` (`userId`, `roleId`) VALUES ('1349311574044577792', '1349672448643043329');
INSERT INTO `user_role` (`userId`, `roleId`) VALUES ('1349311663764934657', '1349672483879391234');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
