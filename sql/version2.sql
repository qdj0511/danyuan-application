/*
SQLyog Ultimate v10.51 
MySQL - 5.7.11-log : Database - shumeng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shumeng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shumeng`;

/*Table structure for table `sys_advice_mess` */

CREATE TABLE `sys_advice_mess` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `type` varchar(255) DEFAULT NULL,
  `addr_uuid` varchar(255) DEFAULT NULL,
  `execute_sql` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `table_desc` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_advice_mess` */

/*Table structure for table `sys_comn_logs` */

CREATE TABLE `sys_comn_logs` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `args` text COMMENT '请求参数',
  `class_method` varchar(200) DEFAULT NULL COMMENT '方法名',
  `class_name` varchar(500) DEFAULT NULL COMMENT '类名',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `ip` varchar(200) DEFAULT NULL COMMENT 'ip',
  `message` varchar(2000) DEFAULT NULL COMMENT '请求参数',
  `method` varchar(200) DEFAULT NULL COMMENT '请求method',
  `param_list` varchar(2000) DEFAULT NULL COMMENT '请求参数',
  `request_long` int(11) DEFAULT NULL COMMENT '请求响应时间',
  `table_name` varchar(100) DEFAULT NULL COMMENT '请求参数',
  `url` varchar(200) DEFAULT NULL COMMENT '地址',
  `browser` varchar(1000) DEFAULT NULL COMMENT '请求参数',
  `browser_type` varchar(50) DEFAULT NULL COMMENT '请求参数',
  `os` varchar(50) DEFAULT NULL COMMENT '请求参数',
  `model` varchar(50) DEFAULT NULL COMMENT '手机型号',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_comn_logs` */

/*Table structure for table `sys_dic_key_list` */

CREATE TABLE `sys_dic_key_list` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `name_uuid` varchar(36) NOT NULL COMMENT '外键',
  `key_value` varchar(50) DEFAULT NULL COMMENT '列表value',
  `key_order` int(11) NOT NULL COMMENT '排序',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dic_key_list` */

insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('01660cf9-ff94-433a-9b49-95853374e20b','6516a59c-b56e-43c6-a172-55c4784ceec3','chalk',7,'2018-05-22 17:57:15','test',NULL,NULL,'2018-05-22 17:57:15','test','粉笔');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('02bfe0ee-e634-4a7e-bec1-e9a692eb5dae','99313fa6-3004-42d5-ab51-5edc8dd25541','吉林',15,'2018-05-22 18:25:08','test',NULL,NULL,'2018-05-22 18:25:08','test','吉林');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('074dfa16-3b2a-4afc-aeb1-730abae1b3f4','99313fa6-3004-42d5-ab51-5edc8dd25541','北京',2,'2018-05-22 18:23:20','test',NULL,NULL,'2018-05-22 18:23:20','test','北京');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('097f1dda-19a2-4c13-86f8-c5968ba2aea7','6516a59c-b56e-43c6-a172-55c4784ceec3','vintage',6,'2018-05-22 17:46:55','test',NULL,NULL,'2018-05-22 17:57:30','test','酿造的');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('15bcbc9e-1df0-4afd-beac-aac2b64380ff','6516a59c-b56e-43c6-a172-55c4784ceec3','westeros',11,'2018-05-22 17:59:55','test',NULL,NULL,'2018-05-22 17:59:55','test','维斯特洛');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('18a52afe-0c18-48d6-880a-221b2ba660d5','99313fa6-3004-42d5-ab51-5edc8dd25541','上海',25,'2018-05-22 18:26:19','test',NULL,NULL,'2018-05-22 18:26:19','test','上海');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('19cb1d1a-d6d1-44c0-b63c-c37d4511b7a5','99313fa6-3004-42d5-ab51-5edc8dd25541','台湾',33,'2018-05-22 18:27:34','test',NULL,NULL,'2018-05-22 18:27:34','test','台湾');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('1a75caf8-f610-44a6-be07-84b84a99367a','99313fa6-3004-42d5-ab51-5edc8dd25541','湖北',12,'2018-05-22 18:24:53','test',NULL,NULL,'2018-05-22 18:24:53','test','湖北');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('1e8eb781-06c6-4e67-8995-d2ef816ed0c8','99313fa6-3004-42d5-ab51-5edc8dd25541','台湾',38,'2018-05-22 18:28:25','test',NULL,NULL,'2018-05-22 18:28:25','test','台湾');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('243e99b8-6012-4fcc-bbd8-699fc0dd96d3','99313fa6-3004-42d5-ab51-5edc8dd25541','重庆',32,'2018-05-22 18:27:09','test',NULL,NULL,'2018-05-22 18:27:09','test','重庆');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('29649da5-4b20-4e0b-9f59-ce5a735c24b0','99313fa6-3004-42d5-ab51-5edc8dd25541','浙江',31,'2018-05-22 18:27:01','test',NULL,NULL,'2018-05-22 18:27:01','test','浙江');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('2a327d0e-1e85-4c7d-8a0e-f08d4d1e603f','99313fa6-3004-42d5-ab51-5edc8dd25541','江苏',16,'2018-05-22 18:25:14','test',NULL,NULL,'2018-05-22 18:25:14','test','江苏');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('352a0cda-d69d-49dd-8849-60c4477c6102','99313fa6-3004-42d5-ab51-5edc8dd25541','黑龙江',11,'2018-05-22 18:24:44','test',NULL,NULL,'2018-05-22 18:24:44','test','黑龙江');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('355c5650-2b3c-4340-99ad-bf153a3595ad','6516a59c-b56e-43c6-a172-55c4784ceec3','roma',5,'2018-05-22 17:45:59','test',NULL,NULL,'2018-05-22 17:45:59','test','罗马');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('3d894a24-cde0-49b3-9822-5b29e0c8f123','99313fa6-3004-42d5-ab51-5edc8dd25541','天津',27,'2018-05-22 18:26:33','test',NULL,NULL,'2018-05-22 18:26:33','test','天津');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('3e6525d2-53c0-48f6-9496-37c034352645','99313fa6-3004-42d5-ab51-5edc8dd25541','内蒙古',18,'2018-05-22 18:25:37','test',NULL,NULL,'2018-05-22 18:25:37','test','内蒙古');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('43a0dc75-7d20-4fe9-ad9e-3eab4df9bb31','99313fa6-3004-42d5-ab51-5edc8dd25541','福建',3,'2018-05-22 18:23:27','test',NULL,NULL,'2018-05-22 18:23:27','test','福建');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('4c358207-6c47-4388-bead-c0674149d426','6ae40ad7-5d61-4cec-a93e-77aedda734e8','bar',4,'2018-05-21 17:22:22','test',NULL,NULL,'2018-05-23 14:08:14','test','标准柱图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('4dc9c52b-9628-4174-a84c-dab43f601d4d','99313fa6-3004-42d5-ab51-5edc8dd25541','宁夏',19,'2018-05-22 18:25:44','test',NULL,NULL,'2018-05-22 18:25:44','test','宁夏');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('51cc95ff-5928-4ba3-b39a-8045d08f8bf5','6516a59c-b56e-43c6-a172-55c4784ceec3','wonderland',13,'2018-05-22 18:00:23','test',NULL,NULL,'2018-05-22 18:00:23','test','仙境');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('5222c66b-bc90-453c-a8f7-e62fbf30974e','6516a59c-b56e-43c6-a172-55c4784ceec3','walden',10,'2018-05-22 17:59:20','test',NULL,NULL,'2018-05-22 17:59:20','test','沃尔登');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('60542398-663b-409e-bc46-ec8f22b5a466','7c9f2411-82b5-4187-81ca-395e5709db52','1',1,'2018-05-17 10:53:54','test',NULL,NULL,'2018-05-17 10:53:54','test','启用');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('63d8faa3-884b-42f5-8d0a-bb4d533d43aa','99313fa6-3004-42d5-ab51-5edc8dd25541','安徽',1,'2018-05-22 18:23:13','test',NULL,NULL,'2018-05-22 18:23:13','test','安徽');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('63f374bf-9a18-43d2-a3e6-d3f61a6aa016','99313fa6-3004-42d5-ab51-5edc8dd25541','西藏',28,'2018-05-22 18:26:40','test',NULL,NULL,'2018-05-22 18:26:40','test','西藏');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('645f0c4a-94bb-4fad-9753-66d4a485d5d4','6ae40ad7-5d61-4cec-a93e-77aedda734e8','rompie',3,'2018-05-22 18:47:44','test',NULL,NULL,'2018-05-23 13:39:06','test','环形图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('6c85d5a2-2180-4225-87cb-1676f6c6abc6','6516a59c-b56e-43c6-a172-55c4784ceec3','infographic',2,'2018-05-22 17:44:30','test',NULL,NULL,'2018-05-22 17:44:37','test','图表');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('74fb9b66-487c-4775-a577-c0e55768a506','6516a59c-b56e-43c6-a172-55c4784ceec3','purple-passion',9,'2018-05-22 17:58:55','test',NULL,NULL,'2018-05-22 17:58:55','test','紫色激情');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('758cf8cc-9d80-4e1a-b7ff-0c088d77645a','99313fa6-3004-42d5-ab51-5edc8dd25541','江西',17,'2018-05-22 18:25:22','test',NULL,NULL,'2018-05-22 18:25:22','test','江西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7c7bd195-2f8f-4280-8255-e446d333a4f9','99313fa6-3004-42d5-ab51-5edc8dd25541','山东',21,'2018-05-22 18:25:58','test',NULL,NULL,'2018-05-22 18:25:58','test','山东');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7d5c1b1b-b6cb-4f58-8e13-604f3f4eea82','99313fa6-3004-42d5-ab51-5edc8dd25541','四川',26,'2018-05-22 18:26:26','test',NULL,NULL,'2018-05-22 18:26:26','test','四川');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('8a727226-5173-4005-832e-4615f83238ae','6516a59c-b56e-43c6-a172-55c4784ceec3','halloween',10,'2018-05-22 17:58:29','test',NULL,NULL,'2018-05-22 18:43:05','test','万圣节');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('8d317e87-4f95-4934-8fbb-431ef5f9b74e','99313fa6-3004-42d5-ab51-5edc8dd25541','广东',5,'2018-05-22 18:23:41','test',NULL,NULL,'2018-05-22 18:23:41','test','广东');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('90e28afd-9879-4b64-bd1b-96820c7abe95','99313fa6-3004-42d5-ab51-5edc8dd25541','广西',6,'2018-05-22 18:23:49','test',NULL,NULL,'2018-05-22 18:23:49','test','广西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('91c1aee6-fbb6-4b0b-bc65-12ca46c8d530','6ae40ad7-5d61-4cec-a93e-77aedda734e8','pie',1,'2018-05-21 17:22:33','test',NULL,NULL,'2018-05-23 13:51:59','test','标准饼图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('945efe4a-30bc-4c0c-8960-7e5fd918f684','99313fa6-3004-42d5-ab51-5edc8dd25541','辽宁',18,'2018-05-22 18:25:28','test',NULL,NULL,'2018-05-22 18:25:28','test','辽宁');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('95752378-6266-4f44-a739-aa0321bb17e1','99313fa6-3004-42d5-ab51-5edc8dd25541','海南',8,'2018-05-22 18:24:04','test',NULL,NULL,'2018-05-22 18:24:04','test','海南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('9ab1291f-7813-4c6d-8620-dc080208cbd1','99313fa6-3004-42d5-ab51-5edc8dd25541','河南',10,'2018-05-22 18:24:19','test',NULL,NULL,'2018-05-22 18:24:19','test','河南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('9bd41307-496b-4960-805d-c8600042668a','99313fa6-3004-42d5-ab51-5edc8dd25541','山西',23,'2018-05-22 18:26:05','test',NULL,NULL,'2018-05-22 18:26:05','test','山西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('a3241123-b1e4-424f-aa10-1091a77c3faa','6516a59c-b56e-43c6-a172-55c4784ceec3','macarons',3,'2018-05-22 17:45:36','test',NULL,NULL,'2018-05-22 17:45:36','test','通心粉');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('a4284a73-9f0d-4bd1-94d3-99890755daf6','6ae40ad7-5d61-4cec-a93e-77aedda734e8','tree',7,'2018-05-21 17:40:59','test',NULL,NULL,'2018-05-23 13:52:20','test','树图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('a7b93f75-b092-42fe-a277-f2a5af426dba','6516a59c-b56e-43c6-a172-55c4784ceec3','dark',1,'2018-05-22 17:43:52','test',NULL,NULL,'2018-05-22 17:43:52','test','黑暗的');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('aeb14cde-f221-40fd-bb19-22087e7ffbc6','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','senior',3,'2018-05-17 10:56:52','test',NULL,NULL,'2018-05-17 10:56:52','test','高中');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('af8b1bb2-2b43-4637-b29e-4774ad9dae06','99313fa6-3004-42d5-ab51-5edc8dd25541','青海',20,'2018-05-22 18:25:52','test',NULL,NULL,'2018-05-22 18:25:52','test','青海');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b4ca447b-cdbe-4df9-9c7a-f3fbcd34b51a','99313fa6-3004-42d5-ab51-5edc8dd25541','云南',30,'2018-05-22 18:26:54','test',NULL,NULL,'2018-05-22 18:26:54','test','云南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b5252753-f31c-44e1-9992-f969ecf2fee9','7c9f2411-82b5-4187-81ca-395e5709db52','0',2,'2018-05-17 10:54:12','test',NULL,NULL,'2018-05-17 10:54:12','test','停用');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b62edd8e-4a19-40fc-ac30-67d843721b23','6516a59c-b56e-43c6-a172-55c4784ceec3','essos',8,'2018-05-22 17:58:08','test',NULL,NULL,'2018-05-22 17:58:08','test','厄索斯');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ba29343a-e603-43f8-9c4e-6f87073d5196','99313fa6-3004-42d5-ab51-5edc8dd25541','新疆',29,'2018-05-22 18:26:47','test',NULL,NULL,'2018-05-22 18:26:47','test','新疆');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('cc1cb607-0e90-429e-81dc-aaea80afc056','99313fa6-3004-42d5-ab51-5edc8dd25541','陕西',24,'2018-05-22 18:26:12','test',NULL,NULL,'2018-05-22 18:26:12','test','陕西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ce9cb5c6-ffd3-4feb-b98c-b02b5bf63094','99313fa6-3004-42d5-ab51-5edc8dd25541','甘肃',4,'2018-05-22 18:23:34','test',NULL,NULL,'2018-05-22 18:23:34','test','甘肃');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('d3cf7012-140d-435b-88a6-347d0979cc60','99313fa6-3004-42d5-ab51-5edc8dd25541','湖南',14,'2018-05-22 18:25:01','test',NULL,NULL,'2018-05-22 18:25:01','test','湖南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('d698fccf-8ca2-4846-b73f-2aba6e7f8c2b','53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f','1',1,'2018-05-17 10:46:21','test',NULL,NULL,'2018-05-17 10:51:53','test','男');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('da9cc549-b778-48aa-910b-fbeafecad935','53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f','2',2,'2018-05-17 10:51:30','test',NULL,NULL,'2018-05-17 10:52:03','test','女');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('dd5cdf5a-896f-4ce9-b714-25d554a57241','99313fa6-3004-42d5-ab51-5edc8dd25541','贵州',7,'2018-05-22 18:23:56','test',NULL,NULL,'2018-05-22 18:23:56','test','贵州');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('dd7c7cb2-d3dd-4c11-b66b-beec823713fc','6ae40ad7-5d61-4cec-a93e-77aedda734e8','map',2,'2018-05-22 18:20:52','test',NULL,NULL,'2018-05-23 13:52:05','test','地图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('df9dfc99-c90a-4811-980f-07fea0ec3123','99313fa6-3004-42d5-ab51-5edc8dd25541','香港',36,'2018-05-22 18:27:51','test',NULL,NULL,'2018-05-22 18:27:51','test','香港');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e6463d2b-8211-4099-8116-d6cd45a0a2fe','99313fa6-3004-42d5-ab51-5edc8dd25541','澳门',37,'2018-05-22 18:28:11','test',NULL,NULL,'2018-05-22 18:28:11','test','澳门');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e661aa3b-22ab-42e1-a4d3-a60d843d4dfb','6516a59c-b56e-43c6-a172-55c4784ceec3','shine',4,'2018-05-22 17:46:19','test',NULL,NULL,'2018-05-22 17:46:19','test','闪耀');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e6b8a0ca-76bd-4a7b-b2e2-dd8a9541fc0f','6ae40ad7-5d61-4cec-a93e-77aedda734e8','line',3,'2018-05-21 17:22:46','test',NULL,NULL,'2018-05-22 18:48:59','test','标准折线图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e7b7f3a6-f7eb-4d2a-b395-80935d3ea528','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','primary',4,'2018-05-17 11:01:33','test',NULL,NULL,'2018-05-17 11:01:33','test','小学');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ea9260e6-fe33-4df6-a56c-05087e24cf76','99313fa6-3004-42d5-ab51-5edc8dd25541','南海诸岛',34,'2018-05-22 18:27:43','test',NULL,NULL,'2018-05-22 18:27:43','test','南海诸岛');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('eb0733a0-94e1-4ca2-a33e-35d2e302a00a','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','college',1,'2018-05-17 10:55:34','test',NULL,NULL,'2018-05-17 10:55:34','test','大学');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ecb219c1-a2e3-47e2-a127-40790771a3cb','99313fa6-3004-42d5-ab51-5edc8dd25541','河北',9,'2018-05-22 18:24:11','test',NULL,NULL,'2018-05-22 18:24:32','test','河北');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('fb006f0e-2604-4449-93e1-53092a2fef21','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','training',2,'2018-05-17 10:56:27','test',NULL,NULL,'2018-05-17 10:56:27','test','专科');

/*Table structure for table `sys_dic_name` */

CREATE TABLE `sys_dic_name` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '显示名称',
  `code` varchar(100) DEFAULT NULL COMMENT '调用代码',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `button_type` varchar(20) DEFAULT '0' COMMENT '按钮类型',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dic_name` */

insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f','性别','gen','2018-05-16 16:18:29',NULL,NULL,NULL,'2018-05-17 10:34:17','test','radio');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('6516a59c-b56e-43c6-a172-55c4784ceec3','图表主题','chartTheme','2018-05-22 17:43:01','test',NULL,NULL,'2018-05-22 18:15:34','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('6ae40ad7-5d61-4cec-a93e-77aedda734e8','图表类型','chartType','2018-05-21 17:22:09','test',NULL,NULL,'2018-05-22 18:17:17','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('6ba17c34-8d1c-4c22-a37e-d4388f5efcce','学历','education','2018-05-17 10:55:09','test',NULL,NULL,'2018-05-22 18:45:09','test','radio');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('7c9f2411-82b5-4187-81ca-395e5709db52','状态','statue','2018-05-17 10:53:38','test',NULL,NULL,'2018-05-17 10:53:38','test','radio');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('99313fa6-3004-42d5-ab51-5edc8dd25541','省份','province','2018-05-22 18:21:35','test',NULL,NULL,'2018-05-22 18:21:35','test','selected');

/*Table structure for table `sys_dic_user_index_code` */

CREATE TABLE `sys_dic_user_index_code` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `user_index` varchar(200) NOT NULL,
  `user_desc` varchar(255) DEFAULT NULL,
  `user_placeholder` varchar(255) DEFAULT NULL,
  `chart` int(11) DEFAULT NULL,
  `multeity` int(11) DEFAULT NULL,
  `user_order` int(11) NOT NULL,
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` tinyint(1) DEFAULT '1',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dic_user_index_code` */

insert  into `sys_dic_user_index_code`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('1','RYXM','姓名','1111',NULL,NULL,2,'system','2018-03-12 16:51:48',1,'test','2018-05-09 09:50:45');
insert  into `sys_dic_user_index_code`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('174A2FED4B67377743EC4A8E418FECA6','DL','单位','iii',NULL,1,200,'test','2018-05-09 09:51:50',1,'test','2018-05-09 09:51:50');
insert  into `sys_dic_user_index_code`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('2','DHHM','手机','121',NULL,1,2,'system','2018-03-12 16:51:48',1,'test','2018-05-09 09:50:26');
insert  into `sys_dic_user_index_code`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('3','SFZH','身份证号',NULL,NULL,NULL,3,'system','2018-03-12 16:51:48',1,'system','2018-03-12 16:51:48');
insert  into `sys_dic_user_index_code`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('4','QQHM','QQ号码',NULL,NULL,NULL,4,'system','2018-03-12 16:51:48',1,'system','2018-03-12 16:51:48');
insert  into `sys_dic_user_index_code`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('5','GSMC','公司名称',NULL,NULL,NULL,5,'system','2018-03-12 16:51:48',1,'system','2018-03-12 16:51:48');
insert  into `sys_dic_user_index_code`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('6','DZYX','邮箱',NULL,NULL,NULL,6,'system','2018-03-12 16:51:48',1,'system','2018-03-12 16:51:48');
insert  into `sys_dic_user_index_code`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('7','DZ','地址',NULL,NULL,NULL,7,'system','2018-03-12 16:51:48',1,'system','2018-03-12 16:51:48');

/*Table structure for table `sys_menu_info` */

CREATE TABLE `sys_menu_info` (
  `uuid` varchar(50) NOT NULL COMMENT '主键',
  `system_id` varchar(36) DEFAULT '99c74ada3a1411e6bdcb10bf48e1d36a' COMMENT '系统id',
  `parents_id` varchar(36) DEFAULT NULL COMMENT '父id',
  `uri` varchar(2000) DEFAULT NULL COMMENT '地址资源',
  `name` varchar(50) DEFAULT NULL COMMENT '地址名称',
  `icon` varchar(40) DEFAULT NULL COMMENT '显示图标样式',
  `home_page` tinyint(1) DEFAULT NULL COMMENT '首页',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_user` varchar(100) DEFAULT 'system' COMMENT '更新人员',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `type` varchar(50) DEFAULT '菜单' COMMENT '菜单还是方法',
  `icon_skin` varchar(50) DEFAULT NULL COMMENT '显示图标样式',
  `checked` tinyint(1) DEFAULT NULL COMMENT '显示图标样式',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu_info` */

insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('0E76E55D016AB2AB8FF163A19039427B',NULL,'781AB29DCD59B8A747BFBC624ADD977C','/pages/config/userindex/index.html','索引类型设置','fa fa-link',NULL,0,'索引类型设置',NULL,NULL,'system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('151670CA68F8E7422130156B6C7B4EF9',NULL,'781AB29DCD59B8A747BFBC624ADD977C','/pages/config/addr/index.html','数据库地址','fa fa-amazon',0,1,'数据局地址',NULL,'2018-05-04 13:51:03','system','2018-05-04 13:49:34',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('1EDD7309FC703E2C6709F2CE704B4DFF',NULL,'0','/pages/softm/count/index.html','统计分析管理','fa fa-bar-chart',0,4,'','system','2018-05-17 12:04:52','test','2018-05-17 12:04:52',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('1F163DFC80729BC788472376259E1B54',NULL,'781AB29DCD59B8A747BFBC624ADD977C','pages/config/table/index.html','表配置','fa  fa-desktop',NULL,3,'表配置','system','2018-03-01 15:54:22','system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('2146130099979805B1DE119DCB3BA551',NULL,'4CC7D1D106C9A3B8DD28975A1A53FD5F','pages/softm/userbase/index.html','用户角色','fa  fa-sitemap',0,3,'项目权限',NULL,'2018-05-11 13:50:53','system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('261AE5914E7FA703ADAF5F199CA0F88A',NULL,'BE5C79366AFB248EBA3F54BC34978933','2','审核','fa fa-hand-lizard-o',0,1,'',NULL,'2018-05-17 16:37:58','test','2018-05-17 14:50:31',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('2C81E3B6762AF5B2CF9432150BB30EB7',NULL,'4CC7D1D106C9A3B8DD28975A1A53FD5F','/pages/softm/dic/index.html','字典管理','fa fa-key ',0,6,'',NULL,'2018-05-15 17:07:36','test','2018-05-15 17:05:51',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('2EE158BA5FD9A1666D4DD5BB7CF4B1BE',NULL,'6AF2D10C9DA0EE8D75DC790AAE9BC80E','/pages/logs/time/index.html','综合查询响应较慢的','fa fa-calendar-times-o',0,3,'',NULL,'2018-05-09 16:28:03','system','2018-05-09 15:35:12',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('375CA986E518032CC119ADF101B532A1',NULL,'4CC7D1D106C9A3B8DD28975A1A53FD5F','/pages/softm/push/index.html','推荐推送','fa fa-television',0,6,'','system','2018-05-17 12:03:41','test','2018-05-17 12:03:41',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('4106CC33921B551E3527E59282EF2046',NULL,'B6BD95B68E7C85FDF863D64B36045383','/pages/custom/level/index.html','客户级别','fa fa-hourglass-end',0,2,'','system','2018-05-17 11:40:46','test','2018-05-17 11:40:47',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('4c87fb94-6447-11e7-a272-0025d3a93601',NULL,'4CC7D1D106C9A3B8DD28975A1A53FD5F','pages/softm/sysmenu/system_function_ztree.html','系统菜单','fa  fa-navicon ',0,0,'系统导航功能1',NULL,'2018-05-04 13:32:47',NULL,NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('4c882255-6447-11e7-a272-0025d3a93601',NULL,'4CC7D1D106C9A3B8DD28975A1A53FD5F','pages/softm/organization/index.html','单位组织','fa  fa-coffee',0,1,'单位组织',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('4CC7D1D106C9A3B8DD28975A1A53FD5F',NULL,'0','/','系统管理','fa fa-gears',0,11,'标讯配置',NULL,'2018-05-17 11:57:54','test','2018-05-15 16:46:02',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('520AFE3C896ACF93550836FF1858439E',NULL,'6AF2D10C9DA0EE8D75DC790AAE9BC80E','/pages/logs/base/index.html','完整信息','fa fa-calendar-times-o',0,4,'','system','2018-05-09 16:38:22','system','2018-05-09 16:38:22',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('56C716F4231CB4F231BBCA8090242F7C',NULL,'0','/pages/transaction/','交易管理','fa fa-hand-lizard-o',0,8,'','system','2018-05-17 12:07:20','test','2018-05-17 12:07:20',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('5C8D8C9654F4E5C4E97B664E311BAD9F',NULL,'70848229675066D3D02E3FC60BB4C5B3','/templates/zhcx/search/index','综合查询','fa  fa-desktop',NULL,0,'类型配置',NULL,NULL,'system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('5F91ED91FEBF02717DDE1E4D541E0A28',NULL,'0','/pages/bidding','标讯管理','fa fa-hand-pointer-o',0,1,'标讯管理','system','2018-05-17 11:44:11','test','2018-05-17 11:44:12',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('6070415A38CF3FCD016F426995769BA3',NULL,'83C2C3F361C682553ED0F807FC614E44','1','订阅','fa fa-cc-diners-club',0,1,'',NULL,'2018-05-17 16:37:52','test','2018-05-17 14:50:44',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('613E898F5EBCCFE721FE8FDB3539CF2E',NULL,'56C716F4231CB4F231BBCA8090242F7C','1','订阅','fa fa-hourglass-start',0,1,'',NULL,'2018-05-23 16:56:49','test','2018-05-17 14:50:53',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('68FFB61D5D0A8143104F7618201B72F9',NULL,'8797252DF45866B9E0A377F3FC09736F','pages/label/labeltesty/index.html','标签管理审核','fa fa-tag',0,2,'标签页面查询',NULL,'2018-05-10 16:29:06','system','2018-05-10 16:23:18',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('6AF2D10C9DA0EE8D75DC790AAE9BC80E',NULL,'BE5C79366AFB248EBA3F54BC34978933','/pages/logs/error/index.html','日志','fa fa-calendar-times-o',0,1,'错误日志','system','2018-05-04 15:01:52','system','2018-05-04 15:01:52',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('70848229675066D3D02E3FC60BB4C5B3',NULL,'0','pages/zhcx/search.html','综合查询','fa  fa-desktop',0,6,'center','system','2018-03-01 17:05:36','system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('7085113D1CD6039AAE165DFC24416681',NULL,'8797252DF45866B9E0A377F3FC09736F','pages/label/labeltesty/index1.html','标签操作','fa fa-tag',0,3,'','system','2018-05-10 16:31:36','system','2018-05-10 16:31:36',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('781AB29DCD59B8A747BFBC624ADD977C',NULL,'0','pages/config/addr/index.html','综合查询配置','fa  fa-desktop',0,7,'数据库连接地址',NULL,'2018-05-04 13:48:23','system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('83C2C3F361C682553ED0F807FC614E44',NULL,'0','/pages/softm/subscriber/index.html','订阅器管理','fa fa-hand-rock-o',0,10,'','system','2018-05-17 12:00:31','test','2018-05-17 12:00:32',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('8797252DF45866B9E0A377F3FC09736F',NULL,'0','/pages/plant','平台管理','fa fa-male',0,2,'','system','2018-05-18 13:13:00','test','2018-05-18 13:13:01',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('8CD75F918B61C9A04B785B6F7C54C4F8',NULL,'1EDD7309FC703E2C6709F2CE704B4DFF','/pages/plant/chart/index.html','统计分析','fa fa-registered',1,1,'',NULL,'2018-05-21 16:39:27','test','2018-05-17 14:50:17',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('9419DC15C84351C8F038B2B0E5302FEC',NULL,'4CC7D1D106C9A3B8DD28975A1A53FD5F','pages/softm/department/index.html','单位部门','fa fa-map-marker',0,2,'单位部门',NULL,NULL,'system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('98AF03AF0A6EDBA2C6D826C08EC6AD43',NULL,'781AB29DCD59B8A747BFBC624ADD977C','/pages/config/advice/index.html','系统维护建议','fa  fa-desktop',0,5,'',NULL,'2018-05-04 13:53:17','system','2018-05-04 13:52:35',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('AA3A9AE297A0241AC1BBA7D17F4E64FA',NULL,'6AF2D10C9DA0EE8D75DC790AAE9BC80E','/pages/logs/error/index.html','系统错误信息','fa fa-calendar-times-o',0,1,'错误日志','system','2018-05-04 15:02:31','system','2018-05-04 15:02:31',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('B6BD95B68E7C85FDF863D64B36045383',NULL,'0','/pages/custom/','客户管理','fa fa-phone-square',0,5,'客户信息管理','system','2018-05-17 11:13:18','test','2018-05-17 11:13:18',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('BA9C570A6BC91B7CF0C9DD38B838C86D',NULL,'5F91ED91FEBF02717DDE1E4D541E0A28','/pages/Markretrieve/index.html','标讯检索','fa fa-hand-lizard-o',0,1,'',NULL,'2018-05-17 17:05:52','test','2018-05-17 11:44:56',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('BE5C79366AFB248EBA3F54BC34978933',NULL,'0','/pages/audit/operation/index.html','操作审核','fa fa-star-half-empty',0,9,'','system','2018-05-17 11:48:45','test','2018-05-17 11:48:46',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('C432A21A52B414821DF69EBD85DFB438',NULL,'B6BD95B68E7C85FDF863D64B36045383','/pages/custom/account/index.html','客户账户管理','fa fa-hand-rock-o',0,1,'','system','2018-05-17 11:38:57','test','2018-05-17 11:38:57',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('C6FBA01B0007F026AF0C411EB07CDEEF',NULL,'781AB29DCD59B8A747BFBC624ADD977C','pages/config/type/index.html','表类型配置','fa  fa-desktop',0,2,'类型配置','system','2018-03-01 15:55:13','system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('C76AC0E7C8ECD487736030D75F517EF9',NULL,'0','/pages/crawler/task/index.html','爬虫管理','fa fa-spinner',0,0,'','system','2018-05-02 16:59:44','system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('CB0E802574E88285ED27BF602BA7B8C9',NULL,'6AF2D10C9DA0EE8D75DC790AAE9BC80E','/pages/logs/zhcx/index.html','综合查询参数查询','fa fa-calendar-times-o',0,2,'',NULL,'2018-05-09 15:34:22','system','2018-05-09 15:33:46',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('DE59ED276ACE09B7350F89BE538E186D',NULL,'C76AC0E7C8ECD487736030D75F517EF9','/pages/crawler/task/index.html','任务','fa fa-spinner',0,1,'',NULL,'2018-05-04 13:32:09','system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('E2481888A833EC5C7AD2AFF38537BE3D',NULL,'781AB29DCD59B8A747BFBC624ADD977C','pages/config/column/index.html','字段配置','fa  fa-desktop',0,4,'列配置','system','2018-03-01 15:54:45','system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('E47C2FD01AF9664A7ABBC71BEA492392',NULL,'8797252DF45866B9E0A377F3FC09736F','/pages/plant/lable/index.html','标签维度管理','fa fa-hand-pointer-o',0,1,'',NULL,'2018-05-21 13:57:12','test','2018-05-18 13:14:12',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('EEEBDEF1919CB1F974B90525A86BB3DC',NULL,'B6BD95B68E7C85FDF863D64B36045383','/pages/custom/transaction/index.html','客户交易记录','fa fa-hand-stop-o',0,4,'','system','2018-05-17 11:41:54','test','2018-05-17 11:41:55',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('F8950693EC6D0A9B0C013482BBF69EF2',NULL,'B6BD95B68E7C85FDF863D64B36045383','/pages/custom/operation/index.html','客户操作记录','fa fa-genderless',0,3,'',NULL,'2018-05-17 11:52:06','test','2018-05-17 11:41:20',0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('FBFFAB698318F26CC3999BBF3F60694D',NULL,'70848229675066D3D02E3FC60BB4C5B3','pages/zhcx/search/more.html','更多','fa  fa-desktop',0,1,'更多',NULL,NULL,'system',NULL,0,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`uri`,`name`,`icon`,`home_page`,`sort`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`) values ('FE486FD344558C4AF68A904E91BEDDA5',NULL,'8797252DF45866B9E0A377F3FC09736F','/pages/plant/bind/index.html','标讯管理','fa fa-map',0,0,'',NULL,'2018-05-21 09:51:37','test','2018-05-18 13:14:40',0,NULL,NULL,NULL);

/*Table structure for table `sys_organization_info` */

CREATE TABLE `sys_organization_info` (
  `uuid` varchar(32) NOT NULL,
  `organization_code` varchar(50) NOT NULL COMMENT '组织机构代码',
  `organization_name` varchar(50) NOT NULL COMMENT '组织机构名称',
  `organization_address` varchar(300) DEFAULT NULL COMMENT '组织机构地址',
  `organization_email` varchar(150) DEFAULT NULL COMMENT '组织机构联系邮箱',
  `organization_phone` varchar(20) DEFAULT NULL COMMENT '组织机构联系电话',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_organization_info` */

insert  into `sys_organization_info`(`uuid`,`organization_code`,`organization_name`,`organization_address`,`organization_email`,`organization_phone`,`discription`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('3CE6C80F33B624C1BB1B016A79083694','admin','admin','admin','admin','admin','admin','system','2018-05-11 16:33:57',NULL,NULL,'2018-05-17 11:35:55');

/*Table structure for table `sys_roles_info` */

CREATE TABLE `sys_roles_info` (
  `uuid` varchar(32) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `role_name` varchar(32) NOT NULL,
  `checked` tinyint(1) DEFAULT NULL COMMENT '角色名称',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles_info` */

insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1A5693C0C9E05009D474899A0CF5F19F','BD174B512EB1A0B87FF6E6CE6B171393','admin',0,'admin','2018-02-12 16:23:06',NULL,1,'2018-05-22 18:43:59','system');
insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','214F6F1048626F0C6792E19BF57C1F07','user',1,'user','2018-02-23 11:47:25',NULL,NULL,'2018-05-22 18:44:01',NULL);
insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BEB0D81B918DD968D24D6F95AC15A753','2476DC8ED9FE9483FB956C2EFEB8E39E','test',0,'test','2018-02-22 10:59:31',NULL,1,'2018-05-22 18:44:00','system');

/*Table structure for table `sys_roles_jurisdiction_info` */

CREATE TABLE `sys_roles_jurisdiction_info` (
  `menu_id` varchar(36) NOT NULL COMMENT '菜单id',
  `role_id` varchar(36) NOT NULL COMMENT '角色id',
  `checked` int(11) DEFAULT '0' COMMENT '资源功能描述',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`menu_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles_jurisdiction_info` */

insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('0E76E55D016AB2AB8FF163A19039427B','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-03-12 17:58:43',NULL,NULL,'2018-05-17 12:08:57',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('0E76E55D016AB2AB8FF163A19039427B','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 17:59:00',NULL,NULL,'2018-05-09 17:59:00',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('0E76E55D016AB2AB8FF163A19039427B','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-03-12 16:43:06',NULL,NULL,'2018-05-17 15:00:32',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('102F0D6B58817A998413C6CA1EEC8CBB','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:12',NULL,NULL,'2018-02-12 16:23:12','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('102F0D6B58817A998413C6CA1EEC8CBB','4E83F3C688D1D3E86D02F05F8AC74156',1,NULL,'2018-02-23 15:32:25',NULL,NULL,'2018-02-23 15:32:25','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('102F0D6B58817A998413C6CA1EEC8CBB','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 14:45:27',NULL,NULL,'2018-02-13 11:12:36',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('102F0D6B58817A998413C6CA1EEC8CBB','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:36',NULL,NULL,'2018-02-22 10:59:36','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('10960844B57C7A55C9F72C5CED6FD1B8','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-23 11:45:12',NULL,NULL,'2018-02-23 11:45:12','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('10960844B57C7A55C9F72C5CED6FD1B8','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-25 21:56:42',NULL,NULL,'2018-02-25 21:56:43',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('10960844B57C7A55C9F72C5CED6FD1B8','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-23 11:47:32',NULL,NULL,'2018-02-23 11:47:32','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('10960844B57C7A55C9F72C5CED6FD1B8','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 11:19:54',NULL,NULL,'2018-02-22 11:19:54','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('151670CA68F8E7422130156B6C7B4EF9','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-05-17 12:08:57',NULL,NULL,'2018-05-17 12:08:57',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('151670CA68F8E7422130156B6C7B4EF9','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 17:59:00',NULL,NULL,'2018-05-09 17:59:00',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('151670CA68F8E7422130156B6C7B4EF9','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-05-04 13:49:48',NULL,NULL,'2018-05-17 15:00:32',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1EDD7309FC703E2C6709F2CE704B4DFF','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 12:08:27',NULL,NULL,'2018-05-17 12:08:27',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1EDD7309FC703E2C6709F2CE704B4DFF','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 12:05:09',NULL,NULL,'2018-05-17 14:51:22',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1F163DFC80729BC788472376259E1B54','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-03-01 16:06:48',NULL,NULL,'2018-05-17 12:08:57',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1F163DFC80729BC788472376259E1B54','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 17:59:00',NULL,NULL,'2018-05-09 17:59:00',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1F163DFC80729BC788472376259E1B54','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-03-01 16:06:03',NULL,NULL,'2018-05-17 15:00:32',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2146130099979805B1DE119DCB3BA551','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-03-01 17:06:09',NULL,NULL,'2018-05-17 11:16:25',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2146130099979805B1DE119DCB3BA551','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-13 11:12:42',NULL,NULL,'2018-02-25 21:56:45',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2146130099979805B1DE119DCB3BA551','7EC06172A9CCD45EBF0952A463F4CF95',0,NULL,'2018-05-07 11:09:34',NULL,NULL,'2018-05-07 11:09:36',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2146130099979805B1DE119DCB3BA551','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:37',NULL,NULL,'2018-05-17 14:51:19',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2146130099979805B1DE119DCB3BA551','D5DB0E0726FAD166517BC7A49DD75132',0,NULL,'2018-02-25 21:26:16',NULL,NULL,'2018-03-01 11:38:33',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('24898AE2D779238DC4AA443CE053C6AC','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:17',NULL,NULL,'2018-02-12 16:23:17','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('24898AE2D779238DC4AA443CE053C6AC','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:38',NULL,NULL,'2018-02-22 10:59:38','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('261AE5914E7FA703ADAF5F199CA0F88A','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 14:51:21',NULL,NULL,'2018-05-17 14:51:21',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2C81E3B6762AF5B2CF9432150BB30EB7','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-15 17:06:02',NULL,NULL,'2018-05-17 14:51:19',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2CFFD9D78EC73AA9E0F034C890434B04','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-25 21:53:15',NULL,NULL,'2018-02-25 21:53:15','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2CFFD9D78EC73AA9E0F034C890434B04','81092EBC8FEF970EDA6656EBD1508368',1,NULL,'2018-02-25 21:32:25',NULL,NULL,'2018-02-25 21:32:25','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2CFFD9D78EC73AA9E0F034C890434B04','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-25 21:31:47',NULL,NULL,'2018-02-25 21:31:49',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2CFFD9D78EC73AA9E0F034C890434B04','D5DB0E0726FAD166517BC7A49DD75132',1,NULL,'2018-02-25 21:32:33',NULL,NULL,'2018-02-25 21:32:33','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2CFFD9D78EC73AA9E0F034C890434B04','DAE3AA13AB893DE1065F0E93FE28BDED',1,NULL,'2018-02-25 21:32:19',NULL,NULL,'2018-02-25 21:32:19','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('2EE158BA5FD9A1666D4DD5BB7CF4B1BE','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-05-09 15:35:28',NULL,NULL,'2018-05-17 15:01:34',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('31964624594EC568E6C63571BC28E461','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-23 13:30:31',NULL,NULL,'2018-02-23 13:30:31','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('31964624594EC568E6C63571BC28E461','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-25 21:56:42',NULL,NULL,'2018-02-25 21:56:43',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('31964624594EC568E6C63571BC28E461','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-23 13:30:40',NULL,NULL,'2018-02-23 13:30:40','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('31964624594EC568E6C63571BC28E461','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-23 13:27:07',NULL,NULL,'2018-02-23 13:27:07','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('36882FDCB61EF181592FEE79B0462BDA','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:12',NULL,NULL,'2018-02-12 16:23:12','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('36882FDCB61EF181592FEE79B0462BDA','4E83F3C688D1D3E86D02F05F8AC74156',1,NULL,'2018-02-23 15:32:25',NULL,NULL,'2018-02-23 15:32:25','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('36882FDCB61EF181592FEE79B0462BDA','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 14:45:27',NULL,NULL,'2018-02-13 11:12:36',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('36882FDCB61EF181592FEE79B0462BDA','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:36',NULL,NULL,'2018-02-22 10:59:36','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('375CA986E518032CC119ADF101B532A1','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 12:08:34',NULL,NULL,'2018-05-17 12:08:34',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('375CA986E518032CC119ADF101B532A1','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 14:51:17',NULL,NULL,'2018-05-17 14:51:19',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('39FC2A8FCCCBA07F109261B26A5F5E66','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:17',NULL,NULL,'2018-02-12 16:23:17','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('39FC2A8FCCCBA07F109261B26A5F5E66','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:38',NULL,NULL,'2018-02-22 10:59:38','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','4E83F3C688D1D3E86D02F05F8AC74156',1,NULL,'2018-02-25 21:53:29',NULL,NULL,'2018-02-25 21:53:29','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-25 21:53:08',NULL,NULL,'2018-02-25 21:53:08','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','81092EBC8FEF970EDA6656EBD1508368',1,NULL,'2018-02-25 21:51:57',NULL,NULL,'2018-02-25 21:51:57','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-26 09:56:58',NULL,NULL,'2018-02-26 09:56:58','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','D5DB0E0726FAD166517BC7A49DD75132',1,NULL,'2018-02-25 21:51:51',NULL,NULL,'2018-02-25 21:51:51','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','DAE3AA13AB893DE1065F0E93FE28BDED',1,NULL,'2018-02-25 21:52:05',NULL,NULL,'2018-02-25 21:52:05','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4106CC33921B551E3527E59282EF2046','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 11:42:11',NULL,NULL,'2018-05-17 11:42:11',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4106CC33921B551E3527E59282EF2046','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 11:42:06',NULL,NULL,'2018-05-17 11:42:07',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('47D31B12F4FFBA3A63FA33592B0B1C41','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-23 13:30:28',NULL,NULL,'2018-02-23 13:30:28','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('47D31B12F4FFBA3A63FA33592B0B1C41','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-23 13:30:42',NULL,NULL,'2018-02-23 13:30:42','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('47D31B12F4FFBA3A63FA33592B0B1C41','81092EBC8FEF970EDA6656EBD1508368',1,NULL,'2018-02-25 21:26:39',NULL,NULL,'2018-02-25 21:26:39','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('47D31B12F4FFBA3A63FA33592B0B1C41','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-23 13:30:21',NULL,NULL,'2018-02-23 13:30:22',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('47D31B12F4FFBA3A63FA33592B0B1C41','D5DB0E0726FAD166517BC7A49DD75132',1,NULL,'2018-02-25 21:26:14',NULL,NULL,'2018-02-25 21:26:14','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:17',NULL,NULL,'2018-02-12 16:23:17','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:38',NULL,NULL,'2018-02-22 10:59:38','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:12',NULL,NULL,'2018-02-23 13:30:31',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 16:18:11',NULL,NULL,'2018-02-25 21:56:43',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-23 11:47:32',NULL,NULL,'2018-02-23 13:30:40',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:36',NULL,NULL,'2018-02-23 13:27:07',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fa16-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:12',NULL,NULL,'2018-02-12 16:23:12','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fa16-6447-11e7-a272-0025d3a93601','4E83F3C688D1D3E86D02F05F8AC74156',1,NULL,'2018-02-23 15:32:25',NULL,NULL,'2018-02-23 15:32:25','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fa16-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 14:45:27',NULL,NULL,'2018-02-13 11:12:36',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fa16-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:36',NULL,NULL,'2018-02-22 10:59:36','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-03-01 17:06:08',NULL,NULL,'2018-05-07 11:09:53',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 14:47:45',NULL,NULL,'2018-02-25 21:56:41',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','7EC06172A9CCD45EBF0952A463F4CF95',0,NULL,'2018-05-07 11:09:34',NULL,NULL,'2018-05-07 11:09:36',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','94CB00CC360FBDE489B42C4FA8E50C60',0,NULL,'2018-02-12 15:02:50',NULL,NULL,'2018-02-25 21:56:17',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-03-01 14:16:11',NULL,NULL,'2018-05-17 14:51:18',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132',0,NULL,'2018-02-25 21:26:11',NULL,NULL,'2018-03-01 11:38:33',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fd09-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-02-12 16:23:12',NULL,NULL,'2018-02-22 10:25:19',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fd09-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 16:18:11',NULL,NULL,'2018-02-25 21:56:43',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87fd09-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:36',NULL,NULL,'2018-02-22 10:59:36','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:12',NULL,NULL,'2018-02-12 16:23:12','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 16:18:11',NULL,NULL,'2018-02-25 21:56:43',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-23 11:47:33',NULL,NULL,'2018-02-23 11:47:33','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:36',NULL,NULL,'2018-02-22 10:59:36','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c881551-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-03-01 17:06:09',NULL,NULL,'2018-05-07 11:09:53',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c881551-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 16:18:16',NULL,NULL,'2018-02-25 21:56:44',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c881551-6447-11e7-a272-0025d3a93601','7EC06172A9CCD45EBF0952A463F4CF95',0,NULL,'2018-05-07 11:09:34',NULL,NULL,'2018-05-07 11:09:36',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c881551-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:37',NULL,NULL,'2018-02-22 10:59:37','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c881551-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132',0,NULL,'2018-02-25 21:26:15',NULL,NULL,'2018-03-01 11:38:33',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c881c82-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-02-12 16:23:11',NULL,NULL,'2018-02-22 11:00:35',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c881c82-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 14:47:45',NULL,NULL,'2018-02-25 21:56:41',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c881c82-6447-11e7-a272-0025d3a93601','94CB00CC360FBDE489B42C4FA8E50C60',0,NULL,'2018-02-12 15:02:50',NULL,NULL,'2018-02-25 21:56:17',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c881c82-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:35',NULL,NULL,'2018-02-22 10:59:35','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c881c82-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132',0,NULL,'2018-02-25 21:26:11',NULL,NULL,'2018-02-25 21:35:17',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c8820df-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:11',NULL,NULL,'2018-02-22 11:00:35',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c8820df-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 14:47:45',NULL,NULL,'2018-02-25 21:56:41',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c8820df-6447-11e7-a272-0025d3a93601','94CB00CC360FBDE489B42C4FA8E50C60',0,NULL,'2018-02-12 15:02:50',NULL,NULL,'2018-02-25 21:56:17',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c8820df-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:35',NULL,NULL,'2018-02-22 10:59:35','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c8820df-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132',1,NULL,'2018-02-25 21:26:11',NULL,NULL,'2018-02-25 21:35:17',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c882255-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-03-01 17:06:08',NULL,NULL,'2018-05-17 11:16:24',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c882255-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 16:18:16',NULL,NULL,'2018-02-25 21:56:44',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c882255-6447-11e7-a272-0025d3a93601','7EC06172A9CCD45EBF0952A463F4CF95',0,NULL,'2018-05-07 11:09:34',NULL,NULL,'2018-05-07 11:09:36',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c882255-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:37',NULL,NULL,'2018-05-17 14:51:18',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4c882255-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132',0,NULL,'2018-02-25 21:26:15',NULL,NULL,'2018-03-01 11:38:33',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('4CC7D1D106C9A3B8DD28975A1A53FD5F','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-15 16:47:53',NULL,NULL,'2018-05-17 14:51:19',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('520AFE3C896ACF93550836FF1858439E','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-09 16:38:31',NULL,NULL,'2018-05-17 12:10:09',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('56C716F4231CB4F231BBCA8090242F7C','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 12:08:20',NULL,NULL,'2018-05-17 12:08:20',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('56C716F4231CB4F231BBCA8090242F7C','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 12:08:14',NULL,NULL,'2018-05-17 14:51:19',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('5C8D8C9654F4E5C4E97B664E311BAD9F','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-03-01 17:06:10',NULL,NULL,'2018-05-17 12:08:53',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('5C8D8C9654F4E5C4E97B664E311BAD9F','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-03-01 17:05:59',NULL,NULL,'2018-03-01 17:05:59',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('5C8D8C9654F4E5C4E97B664E311BAD9F','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-03-01 17:05:50',NULL,NULL,'2018-05-17 15:00:33',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('5C8D8C9654F4E5C4E97B664E311BAD9F','D9B6E309164DAE8447D513F2F3682F33',1,NULL,'2018-05-04 15:25:15',NULL,NULL,'2018-05-04 15:25:15',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('5C8D8C9654F4E5C4E97B664E311BAD9F','EC4A34C8351F54172B42E627DDF08D9F',1,NULL,'2018-05-14 17:01:26',NULL,NULL,'2018-05-14 17:01:26',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('5F91ED91FEBF02717DDE1E4D541E0A28','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 12:08:20',NULL,NULL,'2018-05-17 12:08:20',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('5F91ED91FEBF02717DDE1E4D541E0A28','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-17 17:06:10',NULL,NULL,'2018-05-17 17:06:10',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('5F91ED91FEBF02717DDE1E4D541E0A28','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 11:45:06',NULL,NULL,'2018-05-17 11:45:06',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('6037672475C5DA5493ECD7CC77C8D02D','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 15:52:25',NULL,NULL,'2018-05-09 15:52:25',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('6070415A38CF3FCD016F426995769BA3','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 14:51:19',NULL,NULL,'2018-05-17 14:51:20',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('613E898F5EBCCFE721FE8FDB3539CF2E','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 14:51:18',NULL,NULL,'2018-05-17 14:51:19',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('68FFB61D5D0A8143104F7618201B72F9','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-10 16:50:47',NULL,NULL,'2018-05-17 12:08:24',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('68FFB61D5D0A8143104F7618201B72F9','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-10 16:24:02',NULL,NULL,'2018-05-10 16:24:02',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('6AF2D10C9DA0EE8D75DC790AAE9BC80E','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-04 15:02:38',NULL,NULL,'2018-05-17 12:10:09',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('70848229675066D3D02E3FC60BB4C5B3','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-03-01 17:06:10',NULL,NULL,'2018-05-17 12:08:53',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('70848229675066D3D02E3FC60BB4C5B3','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-03-01 17:05:59',NULL,NULL,'2018-03-01 17:05:59',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('70848229675066D3D02E3FC60BB4C5B3','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-03-01 17:05:50',NULL,NULL,'2018-05-17 15:00:33',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('70848229675066D3D02E3FC60BB4C5B3','D9B6E309164DAE8447D513F2F3682F33',1,NULL,'2018-05-04 15:25:15',NULL,NULL,'2018-05-04 15:25:15',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('70848229675066D3D02E3FC60BB4C5B3','EC4A34C8351F54172B42E627DDF08D9F',1,NULL,'2018-05-14 17:01:26',NULL,NULL,'2018-05-14 17:01:26',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('7085113D1CD6039AAE165DFC24416681','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-10 16:50:14',NULL,NULL,'2018-05-17 12:08:24',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('7085113D1CD6039AAE165DFC24416681','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-10 16:31:50',NULL,NULL,'2018-05-10 16:31:50',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('781AB29DCD59B8A747BFBC624ADD977C','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-03-01 16:06:48',NULL,NULL,'2018-05-17 12:08:57',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('781AB29DCD59B8A747BFBC624ADD977C','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 17:59:00',NULL,NULL,'2018-05-09 17:59:00',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('781AB29DCD59B8A747BFBC624ADD977C','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-03-01 16:06:03',NULL,NULL,'2018-05-17 15:00:32',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('7D275171D2FB5547F061E7137F16DE67','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 12:08:23',NULL,NULL,'2018-05-17 12:08:24',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('7D275171D2FB5547F061E7137F16DE67','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 11:58:41',NULL,NULL,'2018-05-17 14:51:23',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('83C2C3F361C682553ED0F807FC614E44','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 12:08:46',NULL,NULL,'2018-05-17 12:08:46',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('83C2C3F361C682553ED0F807FC614E44','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 12:05:10',NULL,NULL,'2018-05-17 14:51:20',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('8797252DF45866B9E0A377F3FC09736F','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-18 13:14:56',NULL,NULL,'2018-05-18 13:14:56',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('8CD75F918B61C9A04B785B6F7C54C4F8','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 14:51:22',NULL,NULL,'2018-05-17 14:51:22',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('8D3AE4DC62C1DE34FC8613D182CF574F','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-10 16:50:47',NULL,NULL,'2018-05-17 12:08:24',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('8D3AE4DC62C1DE34FC8613D182CF574F','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-10 16:19:10',NULL,NULL,'2018-05-10 16:19:10',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('91257EC58A61079D778D4DD08FB7652B','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:12',NULL,NULL,'2018-02-12 16:23:12','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('91257EC58A61079D778D4DD08FB7652B','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 16:18:11',NULL,NULL,'2018-02-25 21:56:43',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('91257EC58A61079D778D4DD08FB7652B','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-23 11:47:33',NULL,NULL,'2018-02-23 11:47:33','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('91257EC58A61079D778D4DD08FB7652B','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:36',NULL,NULL,'2018-02-22 10:59:36','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('928759095B55540F52242E3E54DCE432','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-23 13:30:28',NULL,NULL,'2018-02-23 13:30:28','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('928759095B55540F52242E3E54DCE432','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-23 11:47:34',NULL,NULL,'2018-02-23 13:30:42',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('928759095B55540F52242E3E54DCE432','81092EBC8FEF970EDA6656EBD1508368',1,NULL,'2018-02-25 21:26:39',NULL,NULL,'2018-02-25 21:26:39','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('928759095B55540F52242E3E54DCE432','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 16:58:44',NULL,NULL,'2018-02-23 13:30:22',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('928759095B55540F52242E3E54DCE432','D5DB0E0726FAD166517BC7A49DD75132',1,NULL,'2018-02-25 21:26:14',NULL,NULL,'2018-02-25 21:26:14','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('9419DC15C84351C8F038B2B0E5302FEC','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-03-01 17:06:09',NULL,NULL,'2018-05-17 11:16:25',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('9419DC15C84351C8F038B2B0E5302FEC','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-12 16:18:16',NULL,NULL,'2018-02-25 21:56:44',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('9419DC15C84351C8F038B2B0E5302FEC','7EC06172A9CCD45EBF0952A463F4CF95',0,NULL,'2018-05-07 11:09:34',NULL,NULL,'2018-05-07 11:09:36',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('9419DC15C84351C8F038B2B0E5302FEC','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:37',NULL,NULL,'2018-05-17 14:51:19',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('9419DC15C84351C8F038B2B0E5302FEC','D5DB0E0726FAD166517BC7A49DD75132',0,NULL,'2018-02-25 21:26:15',NULL,NULL,'2018-03-01 11:38:33',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('984A53E9EF51C43CF2907838C1899D4C','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 14:51:23',NULL,NULL,'2018-05-17 14:51:23',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('98AF03AF0A6EDBA2C6D826C08EC6AD43','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-05-17 12:08:57',NULL,NULL,'2018-05-17 12:08:57',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('98AF03AF0A6EDBA2C6D826C08EC6AD43','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 17:59:00',NULL,NULL,'2018-05-09 17:59:00',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('98AF03AF0A6EDBA2C6D826C08EC6AD43','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-05-04 13:52:42',NULL,NULL,'2018-05-17 15:00:32',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('99CA0042E7149D33C9919A9D41B47F66','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-07 11:07:01',NULL,NULL,'2018-05-07 11:09:54',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('99CA0042E7149D33C9919A9D41B47F66','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-07 11:06:29',NULL,NULL,'2018-05-07 11:09:37',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('99CA0042E7149D33C9919A9D41B47F66','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-07 11:27:43',NULL,NULL,'2018-05-07 11:27:43',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('99CA0042E7149D33C9919A9D41B47F66','D9B6E309164DAE8447D513F2F3682F33',1,NULL,'2018-05-07 11:07:49',NULL,NULL,'2018-05-07 11:07:49',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-25 21:53:15',NULL,NULL,'2018-02-25 21:53:15','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','81092EBC8FEF970EDA6656EBD1508368',1,NULL,'2018-02-25 21:32:25',NULL,NULL,'2018-02-25 21:32:25','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-25 21:31:47',NULL,NULL,'2018-02-25 21:31:49',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','D5DB0E0726FAD166517BC7A49DD75132',1,NULL,'2018-02-25 21:32:33',NULL,NULL,'2018-02-25 21:32:33','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','DAE3AA13AB893DE1065F0E93FE28BDED',1,NULL,'2018-02-25 21:32:19',NULL,NULL,'2018-02-25 21:32:19','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('A3621F23A4BC0580D08EEF948C0FD30B','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-12 16:23:16',NULL,NULL,'2018-02-12 16:23:16','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('A3621F23A4BC0580D08EEF948C0FD30B','54971E77F847C3FC4EE56003A33B35E8',0,NULL,'2018-02-13 11:12:42',NULL,NULL,'2018-02-25 21:56:45',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('A3621F23A4BC0580D08EEF948C0FD30B','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-22 10:59:37',NULL,NULL,'2018-02-22 10:59:37','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('A3621F23A4BC0580D08EEF948C0FD30B','D5DB0E0726FAD166517BC7A49DD75132',1,NULL,'2018-02-25 21:26:16',NULL,NULL,'2018-02-25 21:26:16','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('A3B16033F9CB4FFF80B3234E034BE45D','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-09 15:54:01',NULL,NULL,'2018-05-09 15:54:01',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('AA3A9AE297A0241AC1BBA7D17F4E64FA','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-04 15:02:38',NULL,NULL,'2018-05-17 12:10:09',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('B6BD95B68E7C85FDF863D64B36045383','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 11:16:04',NULL,NULL,'2018-05-17 11:42:11',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('B6BD95B68E7C85FDF863D64B36045383','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 11:36:18',NULL,NULL,'2018-05-17 11:42:07',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-25 21:53:15',NULL,NULL,'2018-02-25 21:53:15','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','81092EBC8FEF970EDA6656EBD1508368',1,NULL,'2018-02-25 21:32:25',NULL,NULL,'2018-02-25 21:32:25','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-25 21:28:07',NULL,NULL,'2018-02-25 21:31:49',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','D5DB0E0726FAD166517BC7A49DD75132',1,NULL,'2018-02-25 21:32:33',NULL,NULL,'2018-02-25 21:32:33','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','DAE3AA13AB893DE1065F0E93FE28BDED',1,NULL,'2018-02-25 21:32:19',NULL,NULL,'2018-02-25 21:32:19','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BA9C570A6BC91B7CF0C9DD38B838C86D','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 12:08:20',NULL,NULL,'2018-05-17 12:08:20',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BA9C570A6BC91B7CF0C9DD38B838C86D','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-17 17:06:10',NULL,NULL,'2018-05-17 17:06:10',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BA9C570A6BC91B7CF0C9DD38B838C86D','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 11:45:06',NULL,NULL,'2018-05-17 11:45:06',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BE5C79366AFB248EBA3F54BC34978933','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 12:08:29',NULL,NULL,'2018-05-17 12:08:29',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BE5C79366AFB248EBA3F54BC34978933','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 11:55:27',NULL,NULL,'2018-05-17 14:51:21',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C085C0FE0B3918B29881A69D16634B05','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-09 15:42:33',NULL,NULL,'2018-05-09 15:42:33',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C085C0FE0B3918B29881A69D16634B05','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 15:48:20',NULL,NULL,'2018-05-09 15:48:20',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C085C0FE0B3918B29881A69D16634B05','D9B6E309164DAE8447D513F2F3682F33',0,NULL,'2018-05-09 15:47:01',NULL,NULL,'2018-05-09 15:50:58',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C0B06AA5F08A65F77262DD34192D69D4','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-09 15:32:51',NULL,NULL,'2018-05-09 15:32:51',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C0B06AA5F08A65F77262DD34192D69D4','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-09 15:32:44',NULL,NULL,'2018-05-09 15:32:44',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C432A21A52B414821DF69EBD85DFB438','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 11:42:11',NULL,NULL,'2018-05-17 11:42:11',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C432A21A52B414821DF69EBD85DFB438','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 11:42:06',NULL,NULL,'2018-05-17 11:42:07',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C6FBA01B0007F026AF0C411EB07CDEEF','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-03-01 16:06:48',NULL,NULL,'2018-05-17 12:08:57',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C6FBA01B0007F026AF0C411EB07CDEEF','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 17:59:00',NULL,NULL,'2018-05-09 17:59:00',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C6FBA01B0007F026AF0C411EB07CDEEF','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-03-01 16:06:03',NULL,NULL,'2018-05-17 15:00:32',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C76AC0E7C8ECD487736030D75F517EF9','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-04 13:41:09',NULL,NULL,'2018-05-04 13:41:09',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C76AC0E7C8ECD487736030D75F517EF9','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 17:58:56',NULL,NULL,'2018-05-09 17:58:56',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C76AC0E7C8ECD487736030D75F517EF9','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-02 17:00:07',NULL,NULL,'2018-05-02 17:00:07',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('C76AC0E7C8ECD487736030D75F517EF9','D9B6E309164DAE8447D513F2F3682F33',1,NULL,'2018-05-04 15:25:17',NULL,NULL,'2018-05-04 15:25:17',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('CB0E802574E88285ED27BF602BA7B8C9','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-05-09 15:33:53',NULL,NULL,'2018-05-17 15:01:33',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('D7BB3D50D78062958D52FA3B6467DCB5','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-10 16:14:57',NULL,NULL,'2018-05-10 16:14:57',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('DE59ED276ACE09B7350F89BE538E186D','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-04 13:41:09',NULL,NULL,'2018-05-04 13:41:09',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('DE59ED276ACE09B7350F89BE538E186D','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 17:58:56',NULL,NULL,'2018-05-09 17:58:56',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('DE59ED276ACE09B7350F89BE538E186D','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-02 18:24:22',NULL,NULL,'2018-05-02 18:24:22',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('DE59ED276ACE09B7350F89BE538E186D','D9B6E309164DAE8447D513F2F3682F33',1,NULL,'2018-05-04 15:25:17',NULL,NULL,'2018-05-04 15:25:17',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('E2481888A833EC5C7AD2AFF38537BE3D','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-03-01 16:06:48',NULL,NULL,'2018-05-17 12:08:57',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('E2481888A833EC5C7AD2AFF38537BE3D','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-05-09 17:59:00',NULL,NULL,'2018-05-09 17:59:00',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('E2481888A833EC5C7AD2AFF38537BE3D','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-03-01 16:06:03',NULL,NULL,'2018-05-17 15:00:32',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('E47C2FD01AF9664A7ABBC71BEA492392','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-18 13:14:56',NULL,NULL,'2018-05-18 13:14:56',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('E79EBF5311CEF25AA15F08F773C7799F','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-25 21:53:15',NULL,NULL,'2018-02-25 21:53:15','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('E79EBF5311CEF25AA15F08F773C7799F','81092EBC8FEF970EDA6656EBD1508368',1,NULL,'2018-02-25 21:32:25',NULL,NULL,'2018-02-25 21:32:25','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('E79EBF5311CEF25AA15F08F773C7799F','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-25 21:31:47',NULL,NULL,'2018-02-25 21:31:49',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('E79EBF5311CEF25AA15F08F773C7799F','D5DB0E0726FAD166517BC7A49DD75132',1,NULL,'2018-02-25 21:32:33',NULL,NULL,'2018-02-25 21:32:33','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('E79EBF5311CEF25AA15F08F773C7799F','DAE3AA13AB893DE1065F0E93FE28BDED',1,NULL,'2018-02-25 21:32:19',NULL,NULL,'2018-02-25 21:32:19','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('EEEBDEF1919CB1F974B90525A86BB3DC','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 11:42:11',NULL,NULL,'2018-05-17 11:42:11',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('EEEBDEF1919CB1F974B90525A86BB3DC','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 11:42:06',NULL,NULL,'2018-05-17 11:42:07',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('EFF56658C76EAB6EE4E62419E9FB47C6','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-02-23 13:30:28',NULL,NULL,'2018-02-23 13:30:28','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('EFF56658C76EAB6EE4E62419E9FB47C6','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-02-23 13:30:42',NULL,NULL,'2018-02-23 13:30:42','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('EFF56658C76EAB6EE4E62419E9FB47C6','81092EBC8FEF970EDA6656EBD1508368',1,NULL,'2018-02-25 21:26:39',NULL,NULL,'2018-02-25 21:26:39','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('EFF56658C76EAB6EE4E62419E9FB47C6','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-02-23 13:30:21',NULL,NULL,'2018-02-23 13:30:22',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('EFF56658C76EAB6EE4E62419E9FB47C6','D5DB0E0726FAD166517BC7A49DD75132',1,NULL,'2018-02-25 21:26:14',NULL,NULL,'2018-02-25 21:26:14','system');
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('F150DD22E5255A083A499B908F564BB1','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-03-01 16:06:49',NULL,NULL,'2018-03-01 16:06:49',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('F150DD22E5255A083A499B908F564BB1','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-03-01 16:06:09',NULL,NULL,'2018-03-01 16:06:09',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('F8950693EC6D0A9B0C013482BBF69EF2','1A5693C0C9E05009D474899A0CF5F19F',1,NULL,'2018-05-17 11:42:11',NULL,NULL,'2018-05-17 11:42:11',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('F8950693EC6D0A9B0C013482BBF69EF2','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-17 11:42:06',NULL,NULL,'2018-05-17 11:42:07',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('FBFFAB698318F26CC3999BBF3F60694D','1A5693C0C9E05009D474899A0CF5F19F',0,NULL,'2018-03-01 17:06:10',NULL,NULL,'2018-05-17 12:08:53',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('FBFFAB698318F26CC3999BBF3F60694D','7EC06172A9CCD45EBF0952A463F4CF95',1,NULL,'2018-03-01 17:05:59',NULL,NULL,'2018-03-01 17:05:59',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('FBFFAB698318F26CC3999BBF3F60694D','BEB0D81B918DD968D24D6F95AC15A753',0,NULL,'2018-03-01 17:05:50',NULL,NULL,'2018-05-17 15:00:33',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('FBFFAB698318F26CC3999BBF3F60694D','D9B6E309164DAE8447D513F2F3682F33',1,NULL,'2018-05-04 15:25:15',NULL,NULL,'2018-05-04 15:25:15',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('FBFFAB698318F26CC3999BBF3F60694D','EC4A34C8351F54172B42E627DDF08D9F',1,NULL,'2018-05-14 17:01:26',NULL,NULL,'2018-05-14 17:01:26',NULL);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('FE486FD344558C4AF68A904E91BEDDA5','BEB0D81B918DD968D24D6F95AC15A753',1,NULL,'2018-05-18 13:14:56',NULL,NULL,'2018-05-18 13:14:56',NULL);

/*Table structure for table `sys_user_base_info` */

CREATE TABLE `sys_user_base_info` (
  `uuid` varchar(32) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `persion_name` varchar(50) NOT NULL,
  `head_pic` varchar(1024) DEFAULT NULL COMMENT '头像',
  `age` int(11) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(18) DEFAULT NULL COMMENT '电话',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_filjsx4kbabuqh2fkxgd72dx5` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_base_info` */

insert  into `sys_user_base_info`(`uuid`,`user_name`,`password`,`persion_name`,`head_pic`,`age`,`sex`,`email`,`phone`,`discription`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('0ff36f5ed8f34bd49d1d41b71c49f256','user','$2a$10$bX5Q2K6M5HcQxa7R09YzPuiEAdWwB8KZ879aDuF1qwsqKRbb87oqy','user',NULL,19,'男','qqq@qq.com','1','user',NULL,'2018-02-23 11:48:35',NULL,'system','2018-05-18 11:41:33');
insert  into `sys_user_base_info`(`uuid`,`user_name`,`password`,`persion_name`,`head_pic`,`age`,`sex`,`email`,`phone`,`discription`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('755d44e925c8406cb774ce326e388090','yanshi2','$2a$10$1zl62iFOOdD4msGh.nb/MOPmJ5Ite4tzmKVStPeYoQlrWQPuKf/rq','yanshi2',NULL,NULL,'男','gfdsqqq@qq','','',NULL,'2018-05-04 15:27:59',NULL,NULL,'2018-05-14 15:15:11');
insert  into `sys_user_base_info`(`uuid`,`user_name`,`password`,`persion_name`,`head_pic`,`age`,`sex`,`email`,`phone`,`discription`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('9988e4e2469e428ab117a1804c5a7b96','test','$2a$10$c0osS.T6Z6z7K607hPMEj.erW7NcvlxzYBXZ0sK41JqLPY3sxucF.','test',NULL,NULL,'女','das@qq','','',NULL,'2018-02-22 10:59:53',NULL,'system','2018-05-14 15:16:03');
insert  into `sys_user_base_info`(`uuid`,`user_name`,`password`,`persion_name`,`head_pic`,`age`,`sex`,`email`,`phone`,`discription`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('bad9e4ada9b94719b5239bfaba91c3a8','yanshi1','$2a$10$MgbEGNvftUepfyqh/JR3Lu30w1lkO4A6EtoP8mgrmn/RWJF9bs62K','yanshi1',NULL,NULL,'女','1qq@qq','','',NULL,'2018-05-04 15:26:56',NULL,NULL,'2018-05-14 15:16:16');
insert  into `sys_user_base_info`(`uuid`,`user_name`,`password`,`persion_name`,`head_pic`,`age`,`sex`,`email`,`phone`,`discription`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('fb48fff75ae24e40b975a9c6ce1a124d','admin','$2a$10$CNidVdUK3y5ByE0DY8CzHuEJuFiKGAflYFa/or7bRYhrD9r9EDyLO','admin',NULL,22,'男','admin@qq','admin','admin',NULL,'2018-02-12 16:27:07',NULL,'system','2018-05-14 16:06:31');

/*Table structure for table `sys_user_roles_info` */

CREATE TABLE `sys_user_roles_info` (
  `roles_id` varchar(36) NOT NULL COMMENT '角色id',
  `user_id` varchar(36) NOT NULL COMMENT '用户id',
  `checked` tinyint(1) DEFAULT NULL COMMENT '选中',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`roles_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_roles_info` */

insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('01379690597B8CBFDD6614C46161DA3E','0ff36f5ed8f34bd49d1d41b71c49f256',1,NULL,'2018-05-14 17:01:49',NULL,NULL,'2018-05-14 17:01:49',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('01379690597B8CBFDD6614C46161DA3E','755d44e925c8406cb774ce326e388090',0,NULL,'2018-05-14 11:57:32',NULL,NULL,'2018-05-14 11:57:33',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('01379690597B8CBFDD6614C46161DA3E','9988e4e2469e428ab117a1804c5a7b96',1,NULL,'2018-05-14 15:18:28',NULL,NULL,'2018-05-14 15:18:28',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1A5693C0C9E05009D474899A0CF5F19F','0ff36f5ed8f34bd49d1d41b71c49f256',0,NULL,'2018-05-04 15:33:55',NULL,NULL,'2018-05-04 15:33:55',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1A5693C0C9E05009D474899A0CF5F19F','755d44e925c8406cb774ce326e388090',0,NULL,'2018-05-04 15:33:59',NULL,NULL,'2018-05-04 15:33:59',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1A5693C0C9E05009D474899A0CF5F19F','9988e4e2469e428ab117a1804c5a7b96',0,NULL,'2018-05-04 15:34:02',NULL,NULL,'2018-05-04 15:34:02',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1A5693C0C9E05009D474899A0CF5F19F','bad9e4ada9b94719b5239bfaba91c3a8',0,NULL,'2018-05-04 15:34:05',NULL,NULL,'2018-05-04 15:34:05',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('1A5693C0C9E05009D474899A0CF5F19F','fb48fff75ae24e40b975a9c6ce1a124d',1,NULL,'2018-05-04 15:34:08',NULL,NULL,'2018-05-08 15:08:43',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','0ff36f5ed8f34bd49d1d41b71c49f256',1,NULL,'2018-05-04 15:33:56',NULL,NULL,'2018-05-18 11:41:35',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','755d44e925c8406cb774ce326e388090',0,NULL,'2018-05-04 15:34:00',NULL,NULL,'2018-05-04 15:34:00',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','9988e4e2469e428ab117a1804c5a7b96',0,NULL,'2018-05-04 15:34:03',NULL,NULL,'2018-05-04 15:34:03',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','bad9e4ada9b94719b5239bfaba91c3a8',0,NULL,'2018-05-04 15:34:06',NULL,NULL,'2018-05-04 15:34:06',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','fb48fff75ae24e40b975a9c6ce1a124d',0,NULL,'2018-05-04 15:34:09',NULL,NULL,'2018-05-08 15:08:42',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BEB0D81B918DD968D24D6F95AC15A753','0ff36f5ed8f34bd49d1d41b71c49f256',0,NULL,'2018-05-04 15:47:25',NULL,NULL,'2018-05-07 11:05:52',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BEB0D81B918DD968D24D6F95AC15A753','755d44e925c8406cb774ce326e388090',0,NULL,'2018-05-04 15:47:16',NULL,NULL,'2018-05-04 15:47:16',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BEB0D81B918DD968D24D6F95AC15A753','9988e4e2469e428ab117a1804c5a7b96',1,NULL,'2018-05-04 15:34:34',NULL,NULL,'2018-05-04 15:34:34',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BEB0D81B918DD968D24D6F95AC15A753','bad9e4ada9b94719b5239bfaba91c3a8',0,NULL,'2018-05-04 15:47:55',NULL,NULL,'2018-05-04 15:47:55',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('BEB0D81B918DD968D24D6F95AC15A753','fb48fff75ae24e40b975a9c6ce1a124d',0,NULL,'2018-05-04 15:46:17',NULL,NULL,'2018-05-07 11:04:23',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('D9B6E309164DAE8447D513F2F3682F33','0ff36f5ed8f34bd49d1d41b71c49f256',0,NULL,'2018-05-04 15:33:56',NULL,NULL,'2018-05-07 11:03:28',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('D9B6E309164DAE8447D513F2F3682F33','755d44e925c8406cb774ce326e388090',1,NULL,'2018-05-04 15:34:00',NULL,NULL,'2018-05-04 15:34:24',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('D9B6E309164DAE8447D513F2F3682F33','9988e4e2469e428ab117a1804c5a7b96',0,NULL,'2018-05-04 15:34:03',NULL,NULL,'2018-05-04 15:34:03',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('D9B6E309164DAE8447D513F2F3682F33','bad9e4ada9b94719b5239bfaba91c3a8',0,NULL,'2018-05-04 15:34:06',NULL,NULL,'2018-05-04 15:34:06',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`discription`,`create_time`,`create_user`,`delete_flag`,`update_time`,`update_user`) values ('D9B6E309164DAE8447D513F2F3682F33','fb48fff75ae24e40b975a9c6ce1a124d',0,NULL,'2018-05-04 15:34:09',NULL,NULL,'2018-05-04 15:34:09',NULL);

/*Table structure for table `sys_zhcx_addr` */

CREATE TABLE `sys_zhcx_addr` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `db_name` varchar(255) DEFAULT NULL,
  `db_type` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_zhcx_addr` */

insert  into `sys_zhcx_addr`(`uuid`,`db_name`,`db_type`,`ip`,`port`,`username`,`password`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`) values ('070A0AD9B837449C3221E41D3207D72D','application','mysql','localhost','3306','root','514840279@q.com','test','2018-05-04 13:50:38',NULL,'test','2018-05-04 13:50:38');

/*Table structure for table `sys_zhcx_cols` */

CREATE TABLE `sys_zhcx_cols` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `tabs_uuid` varchar(255) DEFAULT NULL,
  `cols_name` varchar(255) DEFAULT NULL,
  `cols_desc` varchar(255) DEFAULT NULL,
  `cold_length` int(11) DEFAULT NULL,
  `cold_type` varchar(255) DEFAULT NULL,
  `cols_order` int(11) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `page_input` varchar(255) DEFAULT NULL,
  `page_list` varchar(255) DEFAULT NULL,
  `page_view` varchar(255) DEFAULT NULL,
  `user_index` varchar(255) DEFAULT NULL,
  `user_icon` varchar(255) DEFAULT NULL,
  `cols_align` varchar(255) DEFAULT NULL,
  `cols_switchable` varchar(255) DEFAULT NULL,
  `cols_valign` varchar(255) DEFAULT NULL,
  `cols_width` varchar(255) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `index_all` varchar(255) DEFAULT NULL,
  `index_geopoint` varchar(255) DEFAULT NULL,
  `index_ikmaxword` varchar(255) DEFAULT NULL,
  `index_index` varchar(255) DEFAULT NULL,
  `index_ipaddress` varchar(255) DEFAULT NULL,
  `index_keyword` varchar(255) DEFAULT NULL,
  `index_pinyin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_zhcx_cols` */

insert  into `sys_zhcx_cols`(`uuid`,`tabs_uuid`,`cols_name`,`cols_desc`,`cold_length`,`cold_type`,`cols_order`,`max_length`,`page_input`,`page_list`,`page_view`,`user_index`,`user_icon`,`cols_align`,`cols_switchable`,`cols_valign`,`cols_width`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`index_all`,`index_geopoint`,`index_ikmaxword`,`index_index`,`index_ipaddress`,`index_keyword`,`index_pinyin`) values ('1','    1       \r\n    1       \r\n    qwetest \r\n    qwetest \r\n    qwetest \r\n    qwetest \r\n    score   \r\n    score   \r\n','链接','链接',1,'CHAR',1,1,'1','1','1','SFZH','glyphicon glyphicon-credit-card',NULL,NULL,NULL,NULL,'system','2018-03-08 17:24:18',0,'system','2018-03-08 17:24:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `sys_zhcx_cols`(`uuid`,`tabs_uuid`,`cols_name`,`cols_desc`,`cold_length`,`cold_type`,`cols_order`,`max_length`,`page_input`,`page_list`,`page_view`,`user_index`,`user_icon`,`cols_align`,`cols_switchable`,`cols_valign`,`cols_width`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`index_all`,`index_geopoint`,`index_ikmaxword`,`index_index`,`index_ipaddress`,`index_keyword`,`index_pinyin`) values ('2','1','标题','标题',1,'CHAR',1,1,'1','1','1','RYXM','fa fa-expeditedssl','','','','','system','2018-03-08 17:24:18',0,'system','2018-05-04 14:57:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `sys_zhcx_cols`(`uuid`,`tabs_uuid`,`cols_name`,`cols_desc`,`cold_length`,`cold_type`,`cols_order`,`max_length`,`page_input`,`page_list`,`page_view`,`user_index`,`user_icon`,`cols_align`,`cols_switchable`,`cols_valign`,`cols_width`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`index_all`,`index_geopoint`,`index_ikmaxword`,`index_index`,`index_ipaddress`,`index_keyword`,`index_pinyin`) values ('3','qwetest','书名','书名',1,'CHAR',1,1,'1','1','1','RYXM','fa fa-commenting','','','','','system','2018-03-08 17:24:18',0,'system','2018-05-11 18:23:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `sys_zhcx_cols`(`uuid`,`tabs_uuid`,`cols_name`,`cols_desc`,`cold_length`,`cold_type`,`cols_order`,`max_length`,`page_input`,`page_list`,`page_view`,`user_index`,`user_icon`,`cols_align`,`cols_switchable`,`cols_valign`,`cols_width`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`index_all`,`index_geopoint`,`index_ikmaxword`,`index_index`,`index_ipaddress`,`index_keyword`,`index_pinyin`) values ('4','qwetest','连接','连接',1,'CHAR',1,1,'1','0','1','RYXM',NULL,NULL,NULL,NULL,NULL,'system','2018-03-08 17:24:18',0,'system','2018-03-08 17:24:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `sys_zhcx_cols`(`uuid`,`tabs_uuid`,`cols_name`,`cols_desc`,`cold_length`,`cold_type`,`cols_order`,`max_length`,`page_input`,`page_list`,`page_view`,`user_index`,`user_icon`,`cols_align`,`cols_switchable`,`cols_valign`,`cols_width`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`index_all`,`index_geopoint`,`index_ikmaxword`,`index_index`,`index_ipaddress`,`index_keyword`,`index_pinyin`) values ('5','qwetest','作者','作者',1,'CHAR',1,1,'1','1','1','RYXM',NULL,NULL,NULL,NULL,NULL,'system','2018-03-08 17:24:18',0,'system','2018-03-08 17:24:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `sys_zhcx_cols`(`uuid`,`tabs_uuid`,`cols_name`,`cols_desc`,`cold_length`,`cold_type`,`cols_order`,`max_length`,`page_input`,`page_list`,`page_view`,`user_index`,`user_icon`,`cols_align`,`cols_switchable`,`cols_valign`,`cols_width`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`index_all`,`index_geopoint`,`index_ikmaxword`,`index_index`,`index_ipaddress`,`index_keyword`,`index_pinyin`) values ('6','qwetest','简介','简介',1,'CHAR',1,1,'1','1','1','RYXM',NULL,NULL,NULL,NULL,NULL,'system','2018-03-08 17:24:18',0,'system','2018-03-08 17:24:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `sys_zhcx_cols`(`uuid`,`tabs_uuid`,`cols_name`,`cols_desc`,`cold_length`,`cold_type`,`cols_order`,`max_length`,`page_input`,`page_list`,`page_view`,`user_index`,`user_icon`,`cols_align`,`cols_switchable`,`cols_valign`,`cols_width`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`index_all`,`index_geopoint`,`index_ikmaxword`,`index_index`,`index_ipaddress`,`index_keyword`,`index_pinyin`) values ('7','score','图片','图片',1,'CHAR',1,1,'1','1','1','RYXM',NULL,NULL,NULL,NULL,NULL,'system','2018-03-08 17:24:18',0,'system','2018-03-08 17:24:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `sys_zhcx_cols`(`uuid`,`tabs_uuid`,`cols_name`,`cols_desc`,`cold_length`,`cold_type`,`cols_order`,`max_length`,`page_input`,`page_list`,`page_view`,`user_index`,`user_icon`,`cols_align`,`cols_switchable`,`cols_valign`,`cols_width`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`index_all`,`index_geopoint`,`index_ikmaxword`,`index_index`,`index_ipaddress`,`index_keyword`,`index_pinyin`) values ('8','score','评分','评分',1,'CHAR',1,1,'1','1','1','RYXM',NULL,NULL,NULL,NULL,NULL,'system','2018-03-08 17:24:18',0,'system','2018-03-08 17:24:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sys_zhcx_tabs` */

CREATE TABLE `sys_zhcx_tabs` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `type_uuid` varchar(36) DEFAULT NULL COMMENT '主键',
  `addr_uuid` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `table_desc` varchar(255) DEFAULT NULL,
  `table_rows` int(11) DEFAULT NULL,
  `table_space` int(11) DEFAULT NULL,
  `table_order` int(11) DEFAULT NULL,
  `db_type` varchar(255) DEFAULT NULL,
  `es_name` varchar(255) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`),
  KEY `FKgy19na31ayysc7jadb0gjbil2` (`type_uuid`),
  CONSTRAINT `FKgy19na31ayysc7jadb0gjbil2` FOREIGN KEY (`type_uuid`) REFERENCES `sys_zhcx_type` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_zhcx_tabs` */

insert  into `sys_zhcx_tabs`(`uuid`,`type_uuid`,`addr_uuid`,`table_name`,`table_desc`,`table_rows`,`table_space`,`table_order`,`db_type`,`es_name`,`create_user`,`create_time`,`delete_flag`,`update_time`,`update_user`) values ('1','1A4C0A6314D79E2102B86CFF93FA6693','070A0AD9B837449C3221E41D3207D72D','baidu_linba','百度测试',1,1,1,'mysql','1','system','2018-03-08 17:23:55',0,'2018-05-10 13:16:35','system');
insert  into `sys_zhcx_tabs`(`uuid`,`type_uuid`,`addr_uuid`,`table_name`,`table_desc`,`table_rows`,`table_space`,`table_order`,`db_type`,`es_name`,`create_user`,`create_time`,`delete_flag`,`update_time`,`update_user`) values ('qwetest','88CE4D3673DCD0DFFFC3FDA8736F4AB4','070A0AD9B837449C3221E41D3207D72D','qwetest','起点测试',1,1,2,'mysql','1','system','2018-03-08 17:23:55',0,'2018-03-08 17:23:55','system');
insert  into `sys_zhcx_tabs`(`uuid`,`type_uuid`,`addr_uuid`,`table_name`,`table_desc`,`table_rows`,`table_space`,`table_order`,`db_type`,`es_name`,`create_user`,`create_time`,`delete_flag`,`update_time`,`update_user`) values ('score','88CE4D3673DCD0DFFFC3FDA8736F4AB4','070A0AD9B837449C3221E41D3207D72D','score','起点评分测试',1,1,3,'mysql','1','system','2018-03-08 17:23:55',0,'2018-03-08 17:23:55','system');

/*Table structure for table `sys_zhcx_type` */

CREATE TABLE `sys_zhcx_type` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `type_class` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `type_order` varchar(255) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_zhcx_type` */

insert  into `sys_zhcx_type`(`uuid`,`type_class`,`type_name`,`type_order`,`create_user`,`update_time`,`delete_flag`,`create_time`,`update_user`) values ('1A4C0A6314D79E2102B86CFF93FA6693','1','百度','2','test','2018-03-12 18:02:39',1,'2018-03-08 16:04:31','test');
insert  into `sys_zhcx_type`(`uuid`,`type_class`,`type_name`,`type_order`,`create_user`,`update_time`,`delete_flag`,`create_time`,`update_user`) values ('88CE4D3673DCD0DFFFC3FDA8736F4AB4','1','起点','1','test','2018-03-08 11:13:08',1,'2018-03-08 11:13:08','test');

/*Table structure for table `v_sys_comn_logs` */

DROP TABLE IF EXISTS `v_sys_comn_logs`;

/*!50001 CREATE TABLE  `v_sys_comn_logs`(
 `create_user` varchar(50) ,
 `ip` varchar(200) ,
 `param_list` varchar(2000) ,
 `date1` varchar(10) ,
 `time1` varchar(5) ,
 `num` bigint(21) ,
 `id` varchar(36) 
)*/;

/*View structure for view v_sys_comn_logs */

/*!50001 DROP TABLE IF EXISTS `v_sys_comn_logs` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_sys_comn_logs` AS (select `t`.`create_user` AS `create_user`,`t`.`ip` AS `ip`,`t`.`param_list` AS `param_list`,date_format(`t`.`create_time`,'%Y-%c-%d') AS `date1`,date_format(`t`.`create_time`,'%h:%i') AS `time1`,count(1) AS `num`,`t`.`uuid` AS `id` from `sys_comn_logs` `t` where (`t`.`class_method` = 'findAllTableRow') group by `t`.`create_user`,`t`.`ip`,`t`.`param_list`,date_format(`t`.`create_time`,'%Y-%c-%d'),date_format(`t`.`create_time`,'%h:%i') order by date_format(`t`.`create_time`,'%Y-%c-%d') desc,date_format(`t`.`create_time`,'%h:%i') desc) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
