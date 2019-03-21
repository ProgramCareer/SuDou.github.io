/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : texmanager

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2019-02-20 21:12:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `complain`
-- ----------------------------
DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain` (
  `comp_id` varchar(32) NOT NULL,
  `comp_company` varchar(100) DEFAULT NULL,
  `comp_name` varchar(20) DEFAULT NULL,
  `comp_mobile` varchar(20) DEFAULT NULL,
  `is_NM` tinyint(1) DEFAULT NULL,
  `comp_time` datetime DEFAULT NULL,
  `comp_title` varchar(200) NOT NULL,
  `to_comp_name` varchar(20) DEFAULT NULL,
  `to_comp_dept` varchar(100) DEFAULT NULL,
  `comp_content` text,
  `state` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of complain
-- ----------------------------
INSERT INTO `complain` VALUES ('0202s1ad2', '部门B', null, null, '1', '2018-06-20 01:37:18', '2626', '关羽', null, '<pre class=\"brush:html;toolbar:false\">爱上了肯德基路口附近的森林了苏打绿</pre><p><br/></p>', '0');
INSERT INTO `complain` VALUES ('1515545sad', '部门A', '管理员', '1234567796', '1', '2019-02-15 01:20:17', '二', '关羽', null, '<pre class=\"brush:html;toolbar:false\">爱上了肯德基路口附近的森林了苏打绿</pre><p><br/></p>', '0');
INSERT INTO `complain` VALUES ('1c2xz55s4ad', '部门A', '曹操', '1234567796', '1', '2019-02-23 01:21:04', '98', null, null, '<pre class=\"brush:html;toolbar:false\">爱上了肯德基路口附近的森林了苏打绿</pre><p><br/></p>', '0');
INSERT INTO `complain` VALUES ('1sa51x6sa51c551sa65', '部门A', '曹操', '1234567796', '1', '2019-01-01 01:15:02', '按错', null, null, '<p>关羽败走麦城，蜀军大败！</p>', '0');
INSERT INTO `complain` VALUES ('213asd56as42c1s351sac6', '部门B', '曹操', '1234567796', '1', '2019-01-05 01:14:27', '54545', null, null, '<p>关羽败走麦城，蜀军大败！</p>', '0');
INSERT INTO `complain` VALUES ('2561651a', '部门A', '曹操', '1234567796', '1', '2018-06-29 01:37:57', '626', null, null, '<p>关羽败走麦城，蜀军大败！</p>', '0');
INSERT INTO `complain` VALUES ('4028a58168482f430168485427350001', '管理部门', '管理员', '1234567796', '1', '2019-01-14 01:48:21', '刘毅晚上打呼噜', null, '部门B', '<p><strong>刘毅晚上打呼噜</strong><span style=\"text-decoration: none;\"><u>，</u><u>而且很响亮！</u></span><u><span style=\"text-decoration: none;\"></span></u></p>', '1');
INSERT INTO `complain` VALUES ('4028a5816849c9df016849cde8c50001', '管理部门', '管理员', '1234567796', '1', '2019-01-14 08:40:57', '123456', null, '部门B', '<p><strong>7894654165132</strong></p><pre class=\"brush:html;toolbar:false\"><br/></pre><p><br/></p>', '0');
INSERT INTO `complain` VALUES ('4028a5816849c9df016849de45770002', '管理部门', '管理员', '1234567796', '1', '2019-01-14 08:58:50', '00000', null, '部门B', '<pre class=\"brush:html;toolbar:false\">爱上了肯德基路口附近的森林了苏打绿</pre><p><br/></p>', '0');
INSERT INTO `complain` VALUES ('4028a581684a0c0301684a2106120005', '部门B', '曹操', '1234567796', '0', '2019-01-14 10:11:44', '曹操', '曹操', '部门B', '<p>林俊杰</p>', '1');
INSERT INTO `complain` VALUES ('4028a581684a39ac01684a3e75990002', '部门B', '曹操', '1234567796', '1', '2019-01-14 10:43:53', '关羽', 'admin', '部门A', '<p>压榨</p>', '1');
INSERT INTO `complain` VALUES ('4028a5816855f31a016855f43eaf0001', '部门A', 'admin', '1234567796', '1', '2019-01-16 17:18:16', 'caocao', 'admin', '部门A', '<p>sadsa</p>', '0');
INSERT INTO `complain` VALUES ('4028a581687e026201687e034cb00001', '部门B', '曹操', '1234567796', '1', '2019-01-24 11:59:32', '关羽败走麦城', '关羽', '部门A', '<p>关羽败走麦城，蜀军大败！</p>', '1');
INSERT INTO `complain` VALUES ('4028a581687e026201687e034cb00002', '部门B', '曹操', '8792313', '1', '2018-11-23 01:18:00', '撒', null, null, '<p>林俊杰</p>', '0');
INSERT INTO `complain` VALUES ('4028acxzdascxvdv2154', '部门A', '曹操', '1234567796', '1', '2018-12-08 01:12:46', '000000', null, null, '<p>林俊杰</p>', '0');
INSERT INTO `complain` VALUES ('465c14651', '部门B', '曹操', '1234567796', '1', '2018-05-31 01:21:36', '7845', null, null, '<p>压榨</p>', '0');
INSERT INTO `complain` VALUES ('51561sa516', '部门B', '曹操', '1234567796', '1', '2018-10-05 01:19:03', '8789从', null, null, '<p>压榨</p>', '0');
INSERT INTO `complain` VALUES ('5165165sad', '部门B', '曹操', '1234567796', '1', '2018-09-19 01:23:27', '2525', null, null, '<p>关羽败走麦城，蜀军大败！</p>', '0');
INSERT INTO `complain` VALUES ('5465121cda', '部门A', '曹操', '1234567796', '1', '2018-07-20 01:22:35', '0212', null, null, '<p>关羽败走麦城，蜀军大败！</p>', '0');
INSERT INTO `complain` VALUES ('651621d321a321', '部门B', '曹操', '1234567796', '1', '2018-09-11 01:23:10', '888', null, null, '<p>关羽败走麦城，蜀军大败！</p>', '0');
INSERT INTO `complain` VALUES ('84156165dsa', '部门B', '曹操', '1234567796', '1', '2018-05-26 01:38:35', '888', null, null, '<p>关羽败走麦城，蜀军大败！</p>', '0');
INSERT INTO `complain` VALUES ('8929s8a', '部门A', null, '1234567796', '1', '2018-01-19 01:39:03', '0202', null, null, '<p>林俊杰</p>', '1');
INSERT INTO `complain` VALUES ('a1s521a5c6s184', '部门B', '曹操', '1234567796', '1', '2018-11-14 01:15:44', '1sa23132', null, null, '<p>林俊杰</p>', '0');
INSERT INTO `complain` VALUES ('a1s6516', '部门B', null, '1234567796', '1', '2018-02-23 01:39:33', '9494', null, null, '<p>林俊杰</p>', '0');
INSERT INTO `complain` VALUES ('csa651231', '部门A', null, null, '1', '2018-06-13 01:36:27', '02020', null, null, '<pre class=\"brush:html;toolbar:false\">爱上了肯德基路口附近的森林了苏打绿</pre><p><br/></p', '0');
INSERT INTO `complain` VALUES ('d5sa31321321s', '部门A', '曹操', null, '1', '2018-10-11 01:18:35', '撒旦', null, null, '<pre class=\"brush:html;toolbar:false\">爱上了肯德基路口附近的森林了苏打绿</pre><p><br/></p', '0');
INSERT INTO `complain` VALUES ('sadas23546', '部门B', '曹操', null, '1', '2018-11-17 01:17:23', '874898', null, null, '<pre class=\"brush:html;toolbar:false\">爱上了肯德基路口附近的森林了苏打绿</pre><p><br/></p', '0');
INSERT INTO `complain` VALUES ('sadas5645zxc465456', '部门A', '曹操', null, '1', '2018-12-12 01:16:43', '我确定', null, null, '<pre class=\"brush:html;toolbar:false\">爱上了肯德基路口附近的森林了苏打绿</pre><p><br/></p', '0');

-- ----------------------------
-- Table structure for `complain_reply`
-- ----------------------------
DROP TABLE IF EXISTS `complain_reply`;
CREATE TABLE `complain_reply` (
  `reply_id` varchar(32) NOT NULL,
  `comp_id` varchar(32) NOT NULL,
  `replyer` varchar(20) DEFAULT NULL,
  `reply_dept` varchar(100) DEFAULT NULL,
  `reply_time` datetime DEFAULT NULL,
  `reply_content` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `FK_comp_reply` (`comp_id`),
  CONSTRAINT `FK_comp_reply` FOREIGN KEY (`comp_id`) REFERENCES `complain` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of complain_reply
-- ----------------------------
INSERT INTO `complain_reply` VALUES ('4028a581684a0c0301684a0fdccc0002', '4028a58168482f430168485427350001', '管理员', '管理部门', '2019-01-14 09:53:00', '漂亮');
INSERT INTO `complain_reply` VALUES ('4028a581684a0c0301684a225e930006', '4028a581684a0c0301684a2106120005', '管理员', '部门A', '2019-01-14 10:13:12', '好听');
INSERT INTO `complain_reply` VALUES ('4028a581684a39ac01684a403dad0003', '4028a581684a39ac01684a3e75990002', 'admin', '部门A', '2019-01-14 10:45:50', '好  同意');
INSERT INTO `complain_reply` VALUES ('4028a581684a39ac01684a74f1d90004', '4028a58168482f430168485427350001', 'admin', '部门A', '2019-01-14 11:43:24', '123456');
INSERT INTO `complain_reply` VALUES ('4028a581687e026201687e0526590002', '8929s8a', 'admin', '部门A', '2019-01-24 12:01:33', '嗯');
INSERT INTO `complain_reply` VALUES ('4028a581687e026201687e05a96a0003', '4028a581687e026201687e034cb00001', 'admin', '部门A', '2019-01-24 12:02:06', '嗯 关羽阵亡');

-- ----------------------------
-- Table structure for `emp_role`
-- ----------------------------
DROP TABLE IF EXISTS `emp_role`;
CREATE TABLE `emp_role` (
  `emp_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`,`role_id`),
  KEY `FK_emp_role2` (`role_id`),
  CONSTRAINT `FK_emp_role` FOREIGN KEY (`emp_id`) REFERENCES `t_employee` (`emp_id`),
  CONSTRAINT `FK_emp_role2` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of emp_role
-- ----------------------------

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `info_id` varchar(32) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext,
  `memo` varchar(200) DEFAULT NULL,
  `creator` varchar(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('4028a581684a0c0301684a1d169e0003', 'tzgg', '国务院', '个人税提高', '<p><strong>个人税提高</strong></p>', '个人税提高', '管理员', '2019-01-14 10:06:31', '1');
INSERT INTO `info` VALUES ('4028a581687927940168793434c80002', 'nszd', '政府', '把握新形势展现新作为开启高质量推进新时代税收现代化新征程', '<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">1月17日，全国税务工作会议在北京召开。会议以习近平新时代中国特色社会主义思想为指导，深入学习贯彻党的十九大和十九届二中、三中全会及中央经济工作会议精神，总结2018年税收工作，分析当前和今后一个时期面临的新形势，部署2019年工作任务。国家税务总局党委书记、局长王军作工作报告。《通知》指出，党中央、国务院决定实施更大规模的减税降费措施，国务院常务会议已经推出一批小微企业普惠性减税政策,更大规模减税降费政策将陆续推出，税务部门要把全力推进政策落实作为重要政治任务抓紧、抓实、抓细。\r\n　　</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">《通知》要求，各级税务机关要切实把思想和行动统一到党中央、国务院的决策部署上来，按照1月中旬召开的全国税务工作会议要求，从讲政治的高度，从保持经济持续健康发展和社会大局稳定的高度，进一步增强落实好减税降费措施的政治责任感和工作主动性，确保各项政策措施不折不扣落实到位。\r\n　　税务总局已成立了由总局主要负责同志任组长的实施减税降费工作领导小组，下设办公室和政策制定组、征管核算组、督察督办组、服务宣传组等工作组，统筹抓好减税降费政策措施的落实。各级税务机关也要比照总局建立相应工作机制，由一把手负总责，对标对表开展好每一项工作，确保实而又实、细而又细地将落实减税降费政策措施各项工作抓到位、抓出成效。\r\n　　</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">据税务总局政策法规司负责人介绍，在落实好已出台的小微企业普惠性减税等政策措施的基础上，税务总局将积极配合有关部门抓紧研究完善降低增值税税率、降低社保费费率等实施方案，努力提高政策的科学性和普惠性。\r\n　　</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">据了解，各省税务机关正积极配合当地财政部门研究对增值税小规模纳税人在50%幅度内减征相关地方税种和附加的政策方案，按要求及时制发操作文件并抓好后续落实。同时，将深入开展调查研究，积极主动提出切实可行、简明易行的意见建议，促进减税降费政策措施不断完善。</span></p>', '政策', 'admin', '2019-01-23 13:34:04', '1');
INSERT INTO `info` VALUES ('4028a581687927940168793aab6b0008', 'tzgg', '国务院', '个人所得税提高', '<p>2019年1月3日起，个人所得税提高</p>', '', 'admin', '2019-01-23 13:40:57', '1');
INSERT INTO `info` VALUES ('4028a581687927940168794d0d5c0009', 'zcsd', '国务院', '代表委员话税收：减税强信心 服务很暖心', '<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">随着一系列减税降费政策的出台，在地方“两会”上，税收也成为大家热议的话题。今天，让我们走近各地“两会”的代表委员们。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; overflow: hidden; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp;</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; overflow: hidden; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px;\">追梦路上有信心</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; overflow: hidden; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　“我们都在努力奔跑，我们都是追梦人。”习近平总书记今年的新年贺词感动了不少人。元旦起，6项专项附加扣除走进百姓生活、一批小微企业普惠性税收减免措施出台，让追梦路上的奋斗者感到了税收政策温度，更让他们坚定了对美好生活的向往。</p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', '', 'admin', '2019-01-23 13:59:36', '1');
INSERT INTO `info` VALUES ('4028a581687927940168794e88f8000a', 'zcsd', '国务院', '山东：减税强信心 服务很暖心', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; overflow: hidden; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“两会”时间来了！随着各地“两会”陆续召开，社会各界的目光聚焦于代表委员。他们关心哪些议题？对这些议题有何看法？经走访，发现代表委员们常将“税收”二字挂在嘴边，“减税”“服务”等成为讨论“热词”。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; overflow: hidden; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　<strong style=\"margin: 0px; padding: 0px;\">减税降费更给力</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; overflow: hidden; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　“国家‘组合拳’式的减税政策具有普惠性，涉及税种多，减税规模大！”全国人大代表、山东百多安医疗器械有限公司董事长张海军表示，“多项减税措施集中发力，为企业的发展创造了新机遇，注入了新动力。仅2018年企业研发费用按照75%加计扣除一项，公司就享受了130万的税收优惠，我们要借‘减税降费’的东风，坚定自主创新，专注技术核心竞争力，让世界对‘中国智造’刮目相看！”</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; overflow: hidden; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　减税降费，不仅是给企业负担“<span style=\"text-decoration: underline;\">做减法</span>”，更是给企业发展“做加法”。“我切身感受到了减税政策带来的红利，降低增值税税率、允许单价500万元以下新购进设备器具一次性税前扣除、取消委托境外研发费用加计扣除限制等税收政策，有力激发了企业研发创新的热情。”山东省人大代表、金能科技股份有限公司董事长秦庆平高度重视减税降费对促进企业转型升级的作用，“我们公司致力于打造区别业内其它企业的绿色循环经济产业链，税收优惠政策使我们公司有更多的资金投入到低碳节能新技术研发方面，助推企业向绿色智能企业转型。”</p><p><br/></p>', '', 'admin', '2019-01-23 14:02:40', '1');
INSERT INTO `info` VALUES ('4028a581687b2b5901687b3f74c30000', 'tzgg', '国务院', '税收数据反映经济稳中向好 税制改革彰显减税降负成效', '<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">10月19日上午，国家税务总局举行新闻发布会，介绍税务部门组织税收收入、增值税改革和个税改革最新进展等方面情况。今年前三季度，全国税务部门组织税收收入（已扣减出口退税）</span><span style=\"color: rgb(255, 0, 0);\"><em><strong><span style=\"font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255); text-decoration: underline;\">112336&nbsp;</span></strong></em></span><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">亿元，增长<span style=\"font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255); color: rgb(255, 0, 0);\"><strong>13.2%</strong></span>。其中，第三季度增长8%，比二季度增速回落<span style=\"font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255); color: rgb(255, 0, 0);\">5.1</span>个百分点，体现出我国一系列减税降负措施成效不断显现。</span><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">　　</span><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">税收账单：我国经济保持稳中向好发展态势<br style=\"margin: 0px; padding: 0px;\"/></strong><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">　　税务总局收入规划核算司副司长郑小英介绍，今年以来，在以习近平同志为核心的党中央坚强领导下，我国经济保持总体平稳、稳中向好的发展态势，各项宏观调控政策效应持续显现。</span><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">　　</span><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">一是现代服务业税收收入增长较快。</strong><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">前三季度，现代服务业中的互联网服务、软件和信息技术服务业税收收入分别增长33.3%和20.8%，科学研究和技术服务业税收收入增长18.6%，反映“互联网+”、信息产业、创新产业等快速发展。</span><br style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">　　</span><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">二是消费相关行业税收收入增速较高。</strong><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">前三季度，居民在教育、健康、文化、休闲等方面消费增长较快，教育、卫生、广播影视、文化艺术税收收入增幅均在20%以上；住宿餐饮业税收收入增长9.8%，比上年同期增速回升27.4个百分点。</span></p>', '', 'admin', '2019-01-23 23:02:35', '1');
INSERT INTO `info` VALUES ('4028a581687b2b5901687b48c67c0005', 'zcsd', '国务院', '确保个税改革红利惠及千家万户', '<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">南财经大学教授汤继强表示，我国个人所得税改革既符合国际通行做法，也符合我国税制和税收征管改革趋势。这次改革将是一个长期过程，出现的不少问题是全面深化改革进程中各领域积累问题的阶段性显现。税务、财政、公安、住建、金融、民政、人社、教育、卫生、医保等各政府部门的密切配合，以及广大纳税人支持改革的过程，将不断促进我国国家治理能力和治理体系现代化，必将进一步促进我国经济社会健康发展。</span></p>', '', 'admin', '2019-01-23 23:16:01', '1');
INSERT INTO `info` VALUES ('4028a581687b2b5901687b4ad5e30006', 'zcsd', '国家税务总局', '国家税务总局新闻发布会实录', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">一是积极稳妥推进税制改革。</strong><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">社会普遍关注的增值税改革进展顺利，税务部门先后采取一系列举措，确保将党中央、国务院深化增值税改革措施落到实处，让纳税人充分享受改革红利。扩大水资源税试点和环保税改革运行情况良好，为打赢污染防治攻坚战和蓝天保卫战作出了贡献。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\"><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">二是认真落实各项税收优惠政策。</strong><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">上半年，财税部门出台了20余项税收优惠政策，内容涵盖促进实体经济发展、支持“大众创业、万众创新”、扶持民生领域发展等多个方面。例如，出台物流、文化、动漫、集成电路生产等行业性减税政策，提高企业新购进设备、器具税前扣除单位价值上限，提高企业职工教育经费税前扣除限额等一系列优惠政策。1-5月，支持小微企业发展税收优惠政策减税943亿元，增长25%，有力推动了“大众创业、万众创新”；鼓励高新技术企业税收优惠政策减税2886亿元，增长46%，较好减轻了创新型市场主体负担，增强了企业发展新动能；支持生态文明建设相关税收优惠政策减税536亿元，增长30%，有效助推了经济社会生态协调发展。</span></span></p>', '', 'admin', '2019-01-23 23:16:54', '1');
INSERT INTO `info` VALUES ('4028a581687b2b5901687b4d01b00007', 'zcsd', '国家税务总局', '国家税务总局新闻发布会实录(补充)', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">三是新兴产业税收收入增长形势较好，反映经济新动能茁壮成长。</strong><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">上半年，新兴产业税收收入继续较快增长。其中，软件和信息技术产业税收收入继2016年以来连续9个季度增速超过30%之后，今年上半年仍然增长29.3%。科研和技术服务业税收收入增长26.5%，其中研究和试验发展服务业税收收入增长19.6%，显示基础研究行业迅速发展。</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">四是消费类税收收入持续快速增长，反映国内需求较为旺盛。</strong><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">上半年，零售业税收收入增长20.5%，延续了2017年以来的较高增速，住宿餐饮业税收收入增长8.6%，走出了前几年的低迷状态，反映居民消费较为旺盛。</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">五是四大板块税收收入均平稳较快增长，反映区域协调发展态势较好。</strong><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">上半年，东、中、西和东北四大板块地区税收收入分别增长13.3%、19.5%、19.7%、10.9%。与2017年相比，四大板块税收收入增速均明显提高，其中东部地区税收规模较大，但仍达到了两位数的较快增速；中、西部地区发展势头迅猛，税收收入增速均接近20%；东北地区税收收入也较2017年提高了3.9个百分点，进一步缩小了地区差距。</span></p>', '补充', 'admin', '2019-01-23 23:19:22', '1');
INSERT INTO `info` VALUES ('4028a581687b2b5901687b56c501000b', 'nszd', '国家税务总局办公厅', '经济向好带动税收平稳增长 税改红利增添企业发展动力', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\">“税收账本”五大亮点反映经济向好</strong></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></strong></p><p><strong>税收收入形势总体较好，反映经济质效继续提升</strong>。<span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">据统计，税务部门上半年共组织税收收入（已扣减出口退税）81607亿元，同比增长15.3%，反映出我国经济平稳健康发展态势。上半年累计办理出口退税7800亿元，增长7.3%。同时，与企业盈利水平相关的企业所得税增长13.5%，企业发展活力和经济发展质效继续提升</span></p><p><strong><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">工业和服务业税收收入均较快增长，反映产业发展协调性增强。</span></strong><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">上半年，工业和服务业税收收入增速分别为14.7%和13.2%。其中，随着供给侧结构性改革深入推进，部分行业产能过剩问题逐步缓解，工业税收走出2016年的下降局面，自2017年起连续6个季度增长超过10%；服务业税收收入近年来一直保持较快增长势头，2017年以来连续6个季度增速在10%以上，反映我国经济转型升级态势明显</span></span></p>', '', 'admin', '2019-01-23 23:30:40', '1');
INSERT INTO `info` VALUES ('4028a581687b2b5901687b590219000c', 'zcsd', '经济日报', '小微企业获普惠性税收减免大礼', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; overflow: hidden; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">1月18日，财政部、国家税务总局发布通知，实施小微企业普惠性税收减免政策，对月销售额10万元以下（含本数）的增值税小规模纳税人，免征增值税。同时，放宽可享受企业所得税优惠的小型微利企业标准。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; list-style: none; overflow: hidden; color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　财政部税政司、税务总局政策法规司有关负责人表示，此次推出的政策是今年减税降费政策的重要内容，也是更大力度减税的重要体现。总体来看，此次推出的小微企业普惠性税收减免政策重点聚焦在3个方面：</p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">一是突出普惠性实质性降税。在小微企业减税政策中，进一步放宽小型微利企业条件，与工业和信息化部等4部门小微企业标准高值衔接。这次小微企业的企业所得税减税，惠及1798万家企业，占全国纳税企业总数的95%以上，其中98%是民营企业。</span></p>', '', 'admin', '2019-01-23 23:33:13', '1');
INSERT INTO `info` VALUES ('4028a581687f7fde01687f84bc540000', 'zcsd', '国家税务总局办公厅', '国家税务总局全力推进减税降费政策落实', '<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">为深入贯彻党中央、国务院减税降费重大决策部署，税务总局近日印发《关于深入贯彻落实减税降费政策措施的通知》（以下简称《通知》），要求全国税务系统采取实打实、硬碰硬举措，贯彻落实好各项减税降费政策，确保企业和人民群众有实实在在的获得感，提振市场信心，促进经济实现高质量发展</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\">提升站位打好减税降费主攻战</strong></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">《通知》指出，党中央、国务院决定实施更大规模的减税降费措施，国务院常务会议已经推出一批小微企业普惠性减税政策,更大规模减税降费政策将陆续推出，税务部门要把全力推进政策落实作为重要政治任务抓紧、抓实、抓细。</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\">优化征管服务确保纳税人尽知尽享</strong></span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; text-align: justify; background-color: rgb(255, 255, 255);\">减税降费从政策制定到征管服务落地，每个环节都要紧密相扣。《通知》要求，各级税务机关要牢固树立以纳税人和缴费人为中心的服务理念，持续优化管理服务措施，进一步增强信心、激发活力，在全社会推动形成稳定积极的预期。</span></span></span></p>', '', 'admin', '2019-01-24 18:57:56', '1');

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` varchar(32) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of person
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` varchar(32) NOT NULL,
  `name` varchar(20) NOT NULL,
  `state` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', '1');
INSERT INTO `role` VALUES ('4028a581684a39ac01684a3b08430001', '普通用户', '1');

-- ----------------------------
-- Table structure for `role_pri`
-- ----------------------------
DROP TABLE IF EXISTS `role_pri`;
CREATE TABLE `role_pri` (
  `role_id` varchar(32) NOT NULL,
  `pri_id` varchar(32) NOT NULL,
  PRIMARY KEY (`role_id`,`pri_id`),
  KEY `FK_own` (`pri_id`),
  CONSTRAINT `FK_belong` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`),
  CONSTRAINT `FK_own` FOREIGN KEY (`pri_id`) REFERENCES `t_privilege` (`pri_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of role_pri
-- ----------------------------
INSERT INTO `role_pri` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `role_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `role_privilege`;
CREATE TABLE `role_privilege` (
  `role_id` varchar(32) NOT NULL,
  `code` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`,`code`),
  KEY `FK45FBD62869372004` (`role_id`),
  CONSTRAINT `FK45FBD62869372004` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of role_privilege
-- ----------------------------
INSERT INTO `role_privilege` VALUES ('1', 'nsfw');
INSERT INTO `role_privilege` VALUES ('1', 'spaces');
INSERT INTO `role_privilege` VALUES ('1', 'tjbb');
INSERT INTO `role_privilege` VALUES ('1', 'xwzc');
INSERT INTO `role_privilege` VALUES ('4028a581684a39ac01684a3b08430001', 'spaces');
INSERT INTO `role_privilege` VALUES ('4028a581684a39ac01684a3b08430001', 'xwzc');

-- ----------------------------
-- Table structure for `tmonth`
-- ----------------------------
DROP TABLE IF EXISTS `tmonth`;
CREATE TABLE `tmonth` (
  `imonth` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`imonth`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tmonth
-- ----------------------------
INSERT INTO `tmonth` VALUES ('1');
INSERT INTO `tmonth` VALUES ('2');
INSERT INTO `tmonth` VALUES ('3');
INSERT INTO `tmonth` VALUES ('4');
INSERT INTO `tmonth` VALUES ('5');
INSERT INTO `tmonth` VALUES ('6');
INSERT INTO `tmonth` VALUES ('7');
INSERT INTO `tmonth` VALUES ('8');
INSERT INTO `tmonth` VALUES ('9');
INSERT INTO `tmonth` VALUES ('10');
INSERT INTO `tmonth` VALUES ('11');
INSERT INTO `tmonth` VALUES ('12');

-- ----------------------------
-- Table structure for `t_dept`
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `detp_id` varchar(32) NOT NULL,
  `org_id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`detp_id`),
  KEY `FK_org_dept` (`org_id`),
  CONSTRAINT `FK_org_dept` FOREIGN KEY (`org_id`) REFERENCES `t_org` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_dept
-- ----------------------------

-- ----------------------------
-- Table structure for `t_employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `emp_id` varchar(32) NOT NULL,
  `detp_id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `FK_dept_emp` (`detp_id`),
  CONSTRAINT `FK_dept_emp` FOREIGN KEY (`detp_id`) REFERENCES `t_dept` (`detp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_employee
-- ----------------------------

-- ----------------------------
-- Table structure for `t_leader`
-- ----------------------------
DROP TABLE IF EXISTS `t_leader`;
CREATE TABLE `t_leader` (
  `emp_id` varchar(32) NOT NULL,
  `detp_id` varchar(32) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `FK_Inheritance_1` FOREIGN KEY (`emp_id`) REFERENCES `t_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_leader
-- ----------------------------

-- ----------------------------
-- Table structure for `t_org`
-- ----------------------------
DROP TABLE IF EXISTS `t_org`;
CREATE TABLE `t_org` (
  `org_id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_org
-- ----------------------------

-- ----------------------------
-- Table structure for `t_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `t_privilege`;
CREATE TABLE `t_privilege` (
  `pri_id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pri_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_privilege
-- ----------------------------
INSERT INTO `t_privilege` VALUES ('1', 'nsfw');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `role_id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `account` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `headImg` varchar(100) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '部门A', 'admin', '123', 'user/eaef429cc3f4472287f8789888f02920.png', '', '123589923@qq.com', '1234567796', '2019-01-08 00:00:00', '1', '');
INSERT INTO `user` VALUES ('4028a581684a0c0301684a2026c70004', '曹操', '部门B', 'caocao', '123456', 'user/b04fe4e4a7614acd975c518c07f93675.jpg', '', '2334354554@qq.com', '1234567796', '2019-01-01 00:00:00', '1', '');
INSERT INTO `user` VALUES ('4028a581687b2b5901687de6761d000d', '关羽', '部门A', 'guanyu', '123456', null, '', 'guanyu@qq.com', '13888888888', '1999-10-10 00:00:00', '1', null);
INSERT INTO `user` VALUES ('4028a581687b2b5901687de67635000e', '大乔', '部门B', 'daqiao', '123456', null, '', 'daqiao@qq.com', '13888888888', '1999-10-11 00:00:00', '1', null);
INSERT INTO `user` VALUES ('4028a581687b2b5901687de9a3410011', '张飞', '部门A', 'zhangfei', '123456', null, '', 'zhangfei@qq.com', '13254476666', '1988-01-01 00:00:00', '1', null);
INSERT INTO `user` VALUES ('4028a581687b2b5901687deced390016', '赵云', '部门B', 'zhaoyun', '123456', null, '', 'zhaoyun@qq.com', '18888888888', '1999-10-11 00:00:00', '1', null);

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `role_id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `FK143BF46A69372004` (`role_id`),
  CONSTRAINT `FK143BF46A69372004` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('4028a581684a39ac01684a3b08430001', '4028a581684a0c0301684a2026c70004');
