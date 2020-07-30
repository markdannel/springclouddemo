/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50622
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50622
 File Encoding         : 65001

 Date: 30/07/2020 15:47:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `SNO` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SNAME` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SSEX` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('001', 'KangKang', 'M');
INSERT INTO `student` VALUES ('002', 'Mike', 'M');
INSERT INTO `student` VALUES ('003', 'Jane', 'F');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `OPERATION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TIME` int(11) NULL DEFAULT NULL,
  `METHOD` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PARAMS` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `IP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CREATE_TIME` date NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 'mrbird', '访问fix', 0, 'com.markfish.fir.controller.HelloController.indexxx()', '', '0.0.0.0', '2020-07-30');
INSERT INTO `sys_log` VALUES (2, 'fish', 'index访问', 0, 'com.markfish.fir.controller.HelloController.index()', '', '0.0.0.0', '2020-07-30');
INSERT INTO `sys_log` VALUES (3, 'fish', '查询student', 49, 'com.markfish.fir.controller.HelloController.queryStudentBySno()', '  sno: 001', '0.0.0.0', '2020-07-30');

-- ----------------------------
-- Table structure for tess
-- ----------------------------
DROP TABLE IF EXISTS `tess`;
CREATE TABLE `tess`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `comm` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `s` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tess
-- ----------------------------
INSERT INTO `tess` VALUES (1, '??', '^_^', NULL);

SET FOREIGN_KEY_CHECKS = 1;
