/*
Navicat MySQL Data Transfer

Source Server         : Mysql-TOM
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : clientmanagesystem

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2016-07-17 22:24:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for f_customer
-- ----------------------------
DROP TABLE IF EXISTS `f_customer`;
CREATE TABLE `f_customer` (
  `CUSTOMER_ID` varchar(255) NOT NULL COMMENT '客户ID',
  `CUSTOMER_NAME` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `CUSTOMER_UNITNAME` varchar(255) DEFAULT NULL COMMENT '单位名称',
  `CUSTOMER_CAPITAL` varchar(100) DEFAULT NULL COMMENT '客户注册资本',
  `CUSTOMER_NATURE` varchar(255) DEFAULT NULL COMMENT '客户性质',
  `CUSTOMER_TYPE` varchar(255) DEFAULT NULL COMMENT '客户类型',
  `CUSTOMER_SOURCE` varchar(100) DEFAULT NULL COMMENT '联系人',
  `CUSTOMER_STATE` varchar(255) DEFAULT NULL COMMENT '客户状态',
  `CUSTOMER_PHONE` varchar(11) DEFAULT NULL COMMENT '客户电话',
  `CUSTOMER_ADDRESS` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '注册时间',
  `EMPLOYEE_ID` varchar(255) DEFAULT NULL COMMENT '跟进人',
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_customer
-- ----------------------------
INSERT INTO `f_customer` VALUES ('1', '唐总2', '出去2', '55', '企业', '老客户', '客户上门', '失败客户', '12321321312', '重庆2', '2016-07-19 22:37:13', '07e2d68c-77d0-4420-b20f-38ca08d2b06e');
INSERT INTO `f_customer` VALUES ('15d8688c-9155-4436-88ef-b87685adecaf', '12312312', '出去', '5', '个人', '普通客户', '客户挖掘', '潜在客户', '123', '123', '2016-07-16 02:15:49', '13825379-3a4b-487b-bcfb-81298321879f');
INSERT INTO `f_customer` VALUES ('163f9f3f-c68c-46b7-a3c6-876798990754', '12', '出去', '5', '个人', '普通客户', '客户挖掘', '潜在客户', '', '阿萨德', '2016-07-16 02:18:35', 'b7d32310-f3a5-4a96-8430-7e7a0a32d149');
INSERT INTO `f_customer` VALUES ('1de7d558-7f05-46e5-8e7e-8a40688e4e8e', '123', '吃去', '5', '个人', '普通客户', '客户挖掘', '潜在客户', '', '', '2016-07-16 02:18:26', null);
INSERT INTO `f_customer` VALUES ('1fd0b203-5815-455d-91eb-0f880bc2b582', '这种', null, '5', '个人', '普通客户', '客户挖掘', '潜在客户', '123', '在', '2016-07-17 01:51:11', null);
INSERT INTO `f_customer` VALUES ('2e25b676-4482-45ca-a21a-cc2d95053c68', '321', '出去', '5', '个人', '普通客户', '客户挖掘', '失败客户', '', '', '2016-07-16 02:18:32', null);
INSERT INTO `f_customer` VALUES ('3f3dd28d-3156-4996-9be0-cd84aaf5f7ac', '123', null, '5', '个人', '普通客户', '客户挖掘', '潜在客户', '123', '123', '2016-07-17 01:00:38', null);
INSERT INTO `f_customer` VALUES ('4a480ad7-ed58-449e-b35e-28fbdcc8dd3e', '', '吃', '5', '个人', '普通客户', '客户挖掘', '潜在客户', '', '', '2016-07-16 02:18:30', null);
INSERT INTO `f_customer` VALUES ('51552277-09d7-408c-b8b2-6c529fcd31b0', '张三', ' 吃', '90', '企业', '老客户', '客户上门', '流失客户', '123', '123', '2016-07-16 17:22:45', null);
INSERT INTO `f_customer` VALUES ('63057ce7-e68e-4773-b4de-f99d91dea320', '', null, '55', '个人', '普通客户', '客户挖掘', '潜在客户', '', '', '2016-07-16 18:00:11', null);
INSERT INTO `f_customer` VALUES ('6d7b82e3-f028-4107-bae0-da45109b4989', '123', '吃', '5', '个人', '普通客户', '客户挖掘', '潜在客户', '123', '123', '2016-07-16 02:15:35', null);
INSERT INTO `f_customer` VALUES ('b47be4b5-9eb1-485b-896c-01221be10b3d', '123', '吃', '5', '企业', '老客户', '客户上门', '失败客户', '123', '123', '2016-07-16 17:22:18', null);
INSERT INTO `f_customer` VALUES ('b8eb33dd-18e1-4837-ad2a-05a675d745e2', '在对方是否', null, '70', '个人', '普通客户', '内荐', '潜在客户', '321312', '312321', '2016-07-17 01:52:34', null);
INSERT INTO `f_customer` VALUES ('dacef6e1-dbc9-4eb7-939d-bdd0089b16ae', '牛牛牛牛', null, '5', '个人', '普通客户', '客户挖掘', '潜在客户', '123', '123', '2016-07-17 01:57:21', '13825379-3a4b-487b-bcfb-81298321879f');
INSERT INTO `f_customer` VALUES ('e75ac108-9a9e-4f9f-87d7-05e73dfead42', '', '吃', '5', '个人', '普通客户', '客户挖掘', '潜在客户', '', '', '2016-07-16 02:31:04', null);

-- ----------------------------
-- Table structure for f_employee
-- ----------------------------
DROP TABLE IF EXISTS `f_employee`;
CREATE TABLE `f_employee` (
  `EMPLOYEE_ID` varchar(255) NOT NULL COMMENT '员工ID',
  `USER_ID` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `EMPLOYEE_CODE` varchar(255) DEFAULT NULL COMMENT '员工编号',
  `EMPLOYEE_NAME` varchar(255) DEFAULT NULL COMMENT '员工姓名',
  `EMPLOYEE_SEX` varchar(4) DEFAULT NULL COMMENT '员工性别',
  `EMPLOYEE_AGE` int(3) DEFAULT NULL COMMENT '员工年龄',
  `EMPLOYEE_PHONE` varchar(11) DEFAULT NULL COMMENT '员工电话',
  `EMPLOYEE_ADDRESS` varchar(255) DEFAULT NULL COMMENT '员工地址',
  `EMPLOYEE_EMAIL` varchar(100) DEFAULT NULL COMMENT '员工邮箱',
  `EMPLOYEE_POSITION` varchar(255) DEFAULT NULL COMMENT '员工的职位',
  `EMPLOYEE_SCHOOL` varchar(255) DEFAULT NULL COMMENT '毕业学校',
  `EMPLOYEE_EDUCATION` varchar(255) DEFAULT NULL COMMENT '学历',
  `EMPLOYEE_CARD` varchar(18) DEFAULT NULL COMMENT '身份证',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '入职时间',
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_employee
-- ----------------------------
INSERT INTO `f_employee` VALUES ('07e2d68c-77d0-4420-b20f-38ca08d2b06e', '8798af10-5130-4008-a1f1-ab4c63344118', 'AAAAAA', '小屋子', '男', '25', '18523970700', '123213', '12321321', 'Web前端', '123213', '博士', '1515151', '2016-07-13 00:03:40');
INSERT INTO `f_employee` VALUES ('13825379-3a4b-487b-bcfb-81298321879f', '1952c700-cf86-46dd-bbf2-372a3fe85548', '123', '张晓华', '男', '23', '123', '123', '123', '业务人员', '123', '博士', '123', '2016-07-14 13:24:07');
INSERT INTO `f_employee` VALUES ('345bac0e-db0b-47ea-9f37-1190551e8952', 'a22a5916-a1ee-4e2c-a03d-86897a682f18', '123', '大大的', '男', '22', '123', '12213', '123', '程序开发', '123', '本科', '', '2016-07-13 00:08:46');
INSERT INTO `f_employee` VALUES ('3b4550e4-836b-46b0-af67-25f61e80a167', '42137b6d-9c0a-4760-bfe9-73017972d358', '123', '123s', '男', '23', '123', '123', '123', '业务人员', '123', '高中', '123', '2016-07-14 13:30:16');
INSERT INTO `f_employee` VALUES ('409d5da0-c203-495f-b4b4-bf9c6f6b148e', null, '123', '阿斯达斯', '男', '24', 'asd ', '阿萨德', 'asd ', '业务人员', 'as的', '本科', '', '2016-07-13 14:13:55');
INSERT INTO `f_employee` VALUES ('5e5a66f6-3561-4859-9ad7-a6016e3f3f6d', null, 'A780491', '张三', '男', '24', '13036353072', '重庆', '345684180@qq.com', '业务人员', '电子校', '本科', '511303198906245112', '2016-07-12 01:26:00');
INSERT INTO `f_employee` VALUES ('602fd388-f12f-4aa0-b6c9-7bfa5b0f20d4', null, '123', 's的', '男', '21', '123', '123', '123', '业务人员', '123', '本科', '123', '2016-07-14 13:29:02');
INSERT INTO `f_employee` VALUES ('6042417b-5cae-419a-a553-b73bfa34d435', null, '123', 'sa', '男', '18', '123', '123', '123', '前台接待', '123', '大专', '123', '2016-07-14 13:30:35');
INSERT INTO `f_employee` VALUES ('7b43673b-a183-439c-bd18-01a65bcadabe', null, '123', 's', '男', '18', '123', '123', '123', '业务人员', '123', '高中', '', '2016-07-14 13:31:26');
INSERT INTO `f_employee` VALUES ('7fe61ae6-8c3b-4bc1-8254-b5ed18ab961f', null, '123', 'asa', '男', '22', '123', '123', '123', '业务人员', '123', '高中', '123', '2016-07-14 13:30:04');
INSERT INTO `f_employee` VALUES ('97fce569-8cdb-44e7-b119-7e54ccb23fd8', null, 'asd', 'sda', '男', '18', 'asd', 'asd', 'asd', '业务人员', 'asd', '本科', '', '2016-07-13 02:10:40');
INSERT INTO `f_employee` VALUES ('9ba1bcc1-3dcb-4952-8534-96a7836f165b', null, '123', 's', '男', '18', '123', '123', '123', '业务人员', '123', '大专', '', '2016-07-14 13:30:52');
INSERT INTO `f_employee` VALUES ('a14a1385-a896-4a0a-aa06-b1391628c75e', null, 'A22222', '王晓伟', '女', '34', '15832356565', '成都市', '345684180@qq.com', '数据库DBA', '城管', '博士', '511303198906245112', '2016-07-12 01:43:23');
INSERT INTO `f_employee` VALUES ('b7d32310-f3a5-4a96-8430-7e7a0a32d149', null, '123', '123', '男', '24', '123', '123', '123', '业务人员', '123', '高中', '123', '2016-07-14 13:24:22');
INSERT INTO `f_employee` VALUES ('e42ffa68-8878-4112-a154-4ac84b12214c', null, 'A7804109', '王五', '男', '25', '18523976070', '重庆', '345684180@qq.com', '程序开发', '大学城', '大专', '511303198906245112', '2016-07-12 01:21:27');
INSERT INTO `f_employee` VALUES ('ea04c9d9-dabf-471e-96a3-c892f6ce8e23', null, '123', '张三', '男', '19', '123', '123', '123', '业务人员', '123', '高中', '123', '2016-07-13 13:38:20');

-- ----------------------------
-- Table structure for f_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `f_evaluate`;
CREATE TABLE `f_evaluate` (
  `EVALUATE_ID` varchar(255) NOT NULL COMMENT '评价ID',
  `EMPLOYEE_ID` varchar(255) DEFAULT NULL COMMENT '员工ID',
  `CUSTOMER_ID` varchar(255) DEFAULT NULL COMMENT '客户ID',
  `EVALUATE_DESC` varchar(255) DEFAULT NULL COMMENT '员工评价内容',
  PRIMARY KEY (`EVALUATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_evaluate
-- ----------------------------
INSERT INTO `f_evaluate` VALUES ('5a930169-a14f-425d-8fa2-d462402f6ca7', '07e2d68c-77d0-4420-b20f-38ca08d2b06e', '1', '123');
INSERT INTO `f_evaluate` VALUES ('b2dc3590-2569-4b54-905f-bc0f44c2659f', '13825379-3a4b-487b-bcfb-81298321879f', '15d8688c-9155-4436-88ef-b87685adecaf', '非常好22');

-- ----------------------------
-- Table structure for f_follow
-- ----------------------------
DROP TABLE IF EXISTS `f_follow`;
CREATE TABLE `f_follow` (
  `FOLLOW_ID` varchar(255) NOT NULL COMMENT '跟进记录ID',
  `CUSTOMER_ID` varchar(255) DEFAULT NULL COMMENT '客户ID',
  `FOLLOW_DATE` datetime DEFAULT NULL COMMENT '跟进时间',
  `FOLLOW_STATE` varchar(100) DEFAULT NULL COMMENT '跟进状态',
  `FOLLOW_MESSAGE` varchar(255) DEFAULT NULL COMMENT '跟进情况',
  `FOLLOW_NOTE` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FOLLOW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_follow
-- ----------------------------
INSERT INTO `f_follow` VALUES ('023b579a-e350-4c4d-88eb-1f0e4358dc16', '1', '2016-07-17 00:38:40', '123', '123', '123');
INSERT INTO `f_follow` VALUES ('1baaf025-4e9a-4062-af67-d540b5c64b19', '1', '2016-07-17 00:35:20', '123', '123', '12333');
INSERT INTO `f_follow` VALUES ('22eba5e4-50c7-46b2-985b-ec445280faa3', null, '2016-07-17 00:00:30', null, null, null);
INSERT INTO `f_follow` VALUES ('24be0d8e-5ca1-4a28-963d-43f5bf30b0d4', null, '2016-07-17 00:00:28', null, null, null);
INSERT INTO `f_follow` VALUES ('69327c74-dfe3-4e49-bc8f-570b14fb64e8', '1', '2016-07-17 00:34:46', '123', '123', '123');
INSERT INTO `f_follow` VALUES ('ad6d0bc3-653f-4233-9d8a-4e1cef00fc4c', null, '2016-07-17 00:00:32', null, null, null);
INSERT INTO `f_follow` VALUES ('c304540b-e54a-4ce3-8fcb-621bec78d121', null, '2016-07-17 00:00:31', null, null, null);
INSERT INTO `f_follow` VALUES ('d14717e7-1a66-4e16-bed6-6f353e2609b2', '1', '2016-07-17 00:36:52', '123', '123', '12333');
INSERT INTO `f_follow` VALUES ('e4ea2afc-2a7b-40af-a5ec-0b4b4942fc87', '1', '2016-07-17 00:34:33', '123', '123', '123');
INSERT INTO `f_follow` VALUES ('e5ca2cc2-e050-40c6-a56c-f56dc53fa7bc', null, '2016-07-17 00:00:30', null, null, null);

-- ----------------------------
-- Table structure for m_user_role
-- ----------------------------
DROP TABLE IF EXISTS `m_user_role`;
CREATE TABLE `m_user_role` (
  `USER_ID` varchar(255) NOT NULL COMMENT '用户ID',
  `ROLE_ID` varchar(255) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`USER_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_user_role
-- ----------------------------
INSERT INTO `m_user_role` VALUES ('0aa1691f-c474-4de0-9b9a-9be8256046ab', '3');
INSERT INTO `m_user_role` VALUES ('1952c700-cf86-46dd-bbf2-372a3fe85548', '2');
INSERT INTO `m_user_role` VALUES ('42137b6d-9c0a-4760-bfe9-73017972d358', '3');
INSERT INTO `m_user_role` VALUES ('772d38e2-94e9-4e30-92ea-a1a584bde6c8', '1');
INSERT INTO `m_user_role` VALUES ('8798af10-5130-4008-a1f1-ab4c63344118', '1');
INSERT INTO `m_user_role` VALUES ('a22a5916-a1ee-4e2c-a03d-86897a682f18', '1');
INSERT INTO `m_user_role` VALUES ('ae5b2eb8-58fd-4244-9db1-9cede110a112', '1');
INSERT INTO `m_user_role` VALUES ('ea9e9f93-8ea0-49be-9f97-8163204cf08b', '3');
INSERT INTO `m_user_role` VALUES ('f456d54c-af92-4ee6-a2b0-03cdcf4317dc', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(255) NOT NULL COMMENT '角色ID',
  `ROLE_CODE` int(255) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ROLE_NAME` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `ROLE_DESC` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ROLE_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '1', '业务人员', '操作业务信息', '2016-07-12 19:43:49');
INSERT INTO `sys_role` VALUES ('2', '2', '领导', '一切操作', '2016-07-12 19:44:25');
INSERT INTO `sys_role` VALUES ('3', '3', '普通职工', '不能登录', '2016-07-20 17:04:58');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(255) NOT NULL COMMENT '用户ID',
  `USER_CODE` int(255) DEFAULT NULL,
  `USER_USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名称',
  `USER_PASSWORD` varchar(100) DEFAULT NULL COMMENT '用户密码',
  `USER_PHONE` varchar(11) DEFAULT NULL COMMENT '用户电话',
  `USER_EMAIL` varchar(100) DEFAULT NULL COMMENT '用户邮箱',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '用户创建时间',
  `autologinAuthKey` varchar(255) DEFAULT NULL,
  `user_status` int(1) DEFAULT NULL COMMENT '激活状态',
  `user_validateCode` varchar(255) DEFAULT NULL COMMENT '激活码',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('0aa1691f-c474-4de0-9b9a-9be8256046ab', '70', 'zhangxiaohua', '123', null, '1852397226070@qq.com', '2016-07-12 18:19:16', '0aa1691f-c474-4de0-9b9a-9be8256046ab_1468764206347', '0', null);
INSERT INTO `sys_user` VALUES ('1952c700-cf86-46dd-bbf2-372a3fe85548', '68', 'scxiaoshe', '123', null, '22222', '2016-07-12 00:00:00', null, '0', null);
INSERT INTO `sys_user` VALUES ('42137b6d-9c0a-4760-bfe9-73017972d358', '72', 'scxiaoshe1', '123', null, '345684180@qq.com', '2016-07-13 02:04:18', null, '0', null);
INSERT INTO `sys_user` VALUES ('8798af10-5130-4008-a1f1-ab4c63344118', '71', 'scxiaoshe22', '123', null, '9981@q22q.com', '2016-07-13 00:58:55', null, '0', null);
INSERT INTO `sys_user` VALUES ('a22a5916-a1ee-4e2c-a03d-86897a682f18', '69', 'zhangsan', '123', null, '3456842222180@qq.com', '2016-07-12 00:00:00', null, '1', 'c7f07956-39be-4bd5-9ff9-36d6d29e0d85');
INSERT INTO `sys_user` VALUES ('ae5b2eb8-58fd-4244-9db1-9cede110a112', '73', 'tangbiao', '123', null, 'scxiaoshe@qq.com', '2016-07-13 02:06:45', null, '0', '44561822-9b0f-44bf-9cc7-7a86bf7a51a5');
INSERT INTO `sys_user` VALUES ('ea9e9f93-8ea0-49be-9f97-8163204cf08b', null, 'scxiaoshe222', '123', null, 'scxiaoshe2@qq.com', '2016-07-17 22:00:00', null, '0', null);
INSERT INTO `sys_user` VALUES ('f456d54c-af92-4ee6-a2b0-03cdcf4317dc', '75', null, null, null, null, '2016-07-13 16:58:26', null, '0', '0999d98c-aed7-48ef-b301-da06006378c7');
