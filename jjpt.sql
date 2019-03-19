/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : jjpt

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2019-03-19 21:08:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tadmin`
-- ----------------------------
DROP TABLE IF EXISTS `tadmin`;
CREATE TABLE `tadmin` (
  `id` int(11) unsigned NOT NULL,
  `userName` varchar(450) NOT NULL,
  `userPw` varchar(450) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tadmin
-- ----------------------------
INSERT INTO `tadmin` VALUES ('1', '晋商帮主', '123456');
INSERT INTO `tadmin` VALUES ('2', 'admin', 'admin');
INSERT INTO `tadmin` VALUES ('3', 'admin123', 'admin123');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `sex` varchar(20) default NULL,
  `age` varchar(20) default NULL,
  `tel` varchar(20) default NULL,
  `jingyan` varchar(50) default NULL,
  `fdkm` varchar(200) default NULL,
  `skfs` varchar(100) default NULL,
  `grjj` text,
  `pwd` varchar(50) default NULL,
  `fujian` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('22', '张明明', null, null, '15567666656', '2年家教经验', '2年级数学', '1对1', '北京大学医学部的大二学生，理科成绩优异，高中有过丰富的家教经验。对高中数理化知识有深入的理解，温和有耐心。', null, '/upload/1512661856315.jpg');
INSERT INTO `teacher` VALUES ('23', '刘贝贝', null, null, '15578787778', '2年以上', '初中数学', '1对1', '本人是一名在校女大学生。学习英语专业。热爱语言学。明年将学习第二外语，选择法语或日语。本人性格活泼开朗，热情大方，亲切和蔼，善于和孩子打交道，相信自己独特的教学和饱含热情的讲课能感染学生，使其爱上所学', null, '/upload/101.jpg');
INSERT INTO `teacher` VALUES ('24', '张明', null, null, '18398744545', '2年以上', '初中英语', '1对1', '本人中国石油大学（北京）石油工程专业大四学生。性格开朗，认真负责。高考成绩624/750，本科期间成绩优秀，加权平均分92.4/100。有准备出国考试的经历，英语水平比较好，托福98（阅读26+听力28+口语19+写作25），GRE323（Verbal155+数学168+写作3）', null, '/upload/102.jpg');
INSERT INTO `teacher` VALUES ('25', '张德宏', null, null, '18988585874', '1年', '小学英语', '1对1', '您好，我是北京化工大学的研究生。本科也是在北化度过的，本科成绩良好，高等数学曾得94分，擅长的科目偏理。本科期间之前参加一些过学校举半的支教活动，擅长与学生沟通交流。高中期间成绩良好，火箭理科班前十名，高考成绩565(13年一本线505)。本人乐观开朗，热爱生活，喜欢交朋友，如果有幸能陪您的孩子一起学习，我想我不仅能提供一般科目知识点的讲解，还能帮助其培养一定程度的科研能力～', null, '/upload/103.jpg');
INSERT INTO `teacher` VALUES ('26', '李江', null, null, '15524748898', '1年以上', '初中英语', '1对1', '性格开朗活泼，认真负责。擅长自主学习，有独特的学习方法，擅长总结学习经验。高考为文科考生，语文127数学120英语137。现为中国传媒大学大一英语系学生，擅长文科教学。曾担任过家教。', null, '/upload/104.jpg');
INSERT INTO `teacher` VALUES ('29', 'asd', null, null, '15698475612', '10年', '数学', '视频教学', '张宇，启航考研数学老师，从事高等数学教学和考研辅导多年，在全国核心期刊发表论文多篇，一篇入选“2007年全球可持续发展大会', null, '/upload/1547474924940.jpg');
INSERT INTO `teacher` VALUES ('30', '徐涛', null, null, '18932543645', '5年', '政治', '视频教学', '政治经济学博士，省级政研机构思政教育专员。考研辅导专家，新东方在线名师，考研政治全国巡讲师。长期从事考研政治的教研、讲学工作，善于总结方法，捕捉热点，帮助考生顺利通过考研。', null, '/upload/1547475060457.jpg');
INSERT INTO `teacher` VALUES ('31', '杨老师', null, null, '15698475612', '3年', '物理', '家教', '教师上课充满激情，上课气氛活泼轻松。教师善于与学生打成一片，平易近人，学生会乐于向老师提出问题，与各个年龄层的孩子都能很好的沟通。教师发音纯正，对于译林英语研究很透彻，能够抓住孩子们考试的易错点，提高孩子的成绩。教师熟知新概念英语的课程，从青少版到成人版的考试研究深入。同时专注研究新课标五级考试多年，对新课标考级真题研究透彻，有自己特色的课程安排体系。', null, '/upload/1547736776915.jpg');
INSERT INTO `teacher` VALUES ('32', '李老师', null, null, '15678361569', '6年', '英语', '家教', '能用通俗易懂的方法讲解，上课轻松幽默风趣，有很强的亲和力，帮助学生提高成绩，抓住重点难点考点，能教好各个层次的学生，与家长积极沟通培养学生学习兴趣，有责任心，提优补差，耐心细心讲解，，针对不同的学生制定并调整不同的教学方案，。对新概念，中小学教材非常熟悉，归纳总结了一整套语法知识体系，便于学生牢固掌握。也善于与学生打成一片，从而让学生更喜欢听自己的课，考出好成绩', null, '/upload/1547737404697.jpg');
INSERT INTO `teacher` VALUES ('33', '辛老师', null, null, '15635452510', '8年', '语文', '家教', '真语文真教学。在语文阅读板块，提倡做文本和孩子的桥梁。帮助孩子体会阅读的情感主旨。在理解文心之后，在帮助孩子建立阅读知识框架体系。在阅读中作文，在作文中阅读。理解中学习，逐步积累之后，提升学习能力', null, '/upload/1547739115981.jpg');
INSERT INTO `teacher` VALUES ('34', '任老师', null, null, '175489962318', '6年', '化学', '家教', '毕业于南京师范大学，2006年至今**于南京一所****，**化学教师。学校“青年骨干教师”，“市青优”。 教学特点： 1.循序渐进，由浅入深；以引导性教学为主； 2.善于找出学生存在的问题； 3.将知识点灵活应用于不同类型的习题中，融会贯通； 4、擅长于学生互动，促进师生相互了解，共同进步。', null, '/upload/1547739287999.jpg');
INSERT INTO `teacher` VALUES ('35', '郑老师', null, null, '175489962318', '3年', '生物', '家教', '南师大毕业至今，一直在教学一线执教，擅长考前冲刺，辅导学生获得生物竞赛一、二等奖。', null, '/upload/1547739425660.jpg');
INSERT INTO `teacher` VALUES ('36', '弓老师', null, null, '15698475612', '2年', '地理', '家教', '2006年毕业于江苏教育学院地理学教育专业，毕业至今一直从事于初高中的地理教学工作，工作经验丰富，擅长初中小中考，高中小高考及高考，所带学生都有不同程度的进步。教学特点:多采用启发式教学，重在理解，尤其是在高中自然地理部分；教学工作时富有耐心，细心和责任心；有自己一套的知识总结。', null, '/upload/1547739537058.jpg');
INSERT INTO `teacher` VALUES ('37', '梁老师', null, null, '18936125879', '6年', '历史', '家教', '让学生从不会学习到善于学习，引导学生运用好历史课本，让学生能够看到书本中的考点所在，并结合实际情况制定相应的历史复习规划。', null, '/upload/1547739645801.jpg');

-- ----------------------------
-- Table structure for `tgonggao`
-- ----------------------------
DROP TABLE IF EXISTS `tgonggao`;
CREATE TABLE `tgonggao` (
  `id` int(11) NOT NULL auto_increment,
  `gonggaotitle` varchar(450) default NULL,
  `gonggaocontent` varchar(2295) default NULL,
  `gonggaodata` varchar(450) default NULL,
  `gonggaofabuzhe` varchar(450) default NULL,
  `gonggaodel` varchar(450) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tgonggao
-- ----------------------------
INSERT INTO `tgonggao` VALUES ('4', ' 寒假到了，家长朋友们，你们还在为安排自己孩子的假期学习生活而苦恼吗？你担心自己的孩子迷恋网吧，担心孩子的外出安全吗？贪玩是孩子的天性，假期到了，孩子的学习问题更加要重视，我是一名美术专业的大学生,知识新，专业强，经验丰富，保证教学质量。让孩子的寒假生活不在无味，并学到的知识', '', '2019-1-18 1:04:49', null, null);
INSERT INTO `tgonggao` VALUES ('5', '测试1', '大幅度发', '2019-3-1 18:21:31', null, null);

-- ----------------------------
-- Table structure for `tiwen`
-- ----------------------------
DROP TABLE IF EXISTS `tiwen`;
CREATE TABLE `tiwen` (
  `id` int(11) NOT NULL auto_increment,
  `tid` int(11) default NULL,
  `tname` varchar(20) default NULL,
  `title` varchar(200) default NULL,
  `contents` varchar(5000) default NULL,
  `twsj` varchar(20) default NULL,
  `replays` varchar(1000) default NULL,
  `uid` int(11) default NULL,
  `uname` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiwen
-- ----------------------------
INSERT INTO `tiwen` VALUES ('4', '23', '刘贝贝', '学生题提', '测试1', '2019-01-18 01:35:00', null, '38', 'student1');
INSERT INTO `tiwen` VALUES ('5', '23', '刘贝贝', '学生提问2', '测试2', '2019-01-18 01:35:41', '教师回复测试2', '38', 'student1');

-- ----------------------------
-- Table structure for `tliuyan`
-- ----------------------------
DROP TABLE IF EXISTS `tliuyan`;
CREATE TABLE `tliuyan` (
  `id` int(11) NOT NULL auto_increment,
  `liuyantitle` varchar(450) default NULL,
  `liuyancontent` varchar(2295) default NULL,
  `liuyandate` varchar(450) default NULL,
  `liuyanuser` varchar(450) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tliuyan
-- ----------------------------
INSERT INTO `tliuyan` VALUES ('1', '作业问题', '修改', '2019-1-14 21:50:09', '晋商帮主');
INSERT INTO `tliuyan` VALUES ('2', '留言', '留言测试1', '2019-1-18 1:36:18', 'Suser');

-- ----------------------------
-- Table structure for `tuser`
-- ----------------------------
DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(450) default NULL,
  `userpw` varchar(450) default NULL,
  `usertype` int(11) default NULL,
  `userrealname` varchar(450) default NULL,
  `useraddress` varchar(450) default NULL,
  `usersex` varchar(450) default NULL,
  `usertel` varchar(450) default NULL,
  `useremail` varchar(450) default NULL,
  `userqq` varchar(450) default NULL,
  `userman` varchar(450) default NULL,
  `userage` varchar(450) default NULL,
  `userbirthday` varchar(450) default NULL,
  `userxueli` varchar(450) default NULL,
  `utype` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser
-- ----------------------------
INSERT INTO `tuser` VALUES ('22', 'jiajiao', '123456', '0', '张明明', null, null, '15567666656', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('23', 'jiajiao1', '123456', '0', '刘贝贝', '北京市朝阳区', null, '15578787778', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('24', 'jiajiao2', '123456', '0', '张明', null, null, '18398744545', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('25', 'jiajiao3', '123456', '0', '张德宏', null, null, '18988585874', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('26', 'jiajiao4', '123456', '0', '李江', null, null, '15524748898', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('27', 'jiajiaott', '123456', null, '李东', null, null, '155555655555', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('28', '晋商帮主', '123123', null, 'susu', null, null, '15635452510', null, null, null, null, null, null, '0');
INSERT INTO `tuser` VALUES ('29', '浙商帮主', '123123', null, 'asd', null, null, '15698475612', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('30', '徽商帮主', '123123', null, '徐涛', null, null, '18932543645', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('31', '001', '123', null, '杨老师', null, null, '15698475612', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('32', '002', '456', null, '李老师', null, null, '15678361569', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('33', '003', '789', null, '辛老师', null, null, '15635452510', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('34', '005', '123456', null, '任老师', null, null, '175489962318', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('35', '006', '123', null, '郑老师', null, null, '175489962318', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('36', '007', '123', null, '弓老师', null, null, '15698475612', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('37', '008', '123', null, '梁老师', null, null, '18936125879', null, null, null, null, null, null, '1');
INSERT INTO `tuser` VALUES ('38', 'Suser', '123456', null, 'student1', '北京市朝阳区', null, '18932543645', null, null, null, null, null, null, '0');
INSERT INTO `tuser` VALUES ('39', 'Suser2', '123321', null, 'student2', '北京市朝阳区', null, '15635452510', null, null, null, null, null, null, '0');
INSERT INTO `tuser` VALUES ('40', 'ceshi11', '123', null, 'susu', null, null, '15678361569', null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for `yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `yuyue`;
CREATE TABLE `yuyue` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(50) default NULL,
  `tel` varchar(20) default NULL,
  `yysj` varchar(20) default NULL,
  `xdsj` varchar(20) default NULL,
  `remark` varchar(300) default NULL,
  `state` varchar(20) default NULL,
  `tid` int(11) default NULL,
  `tname` varchar(50) default NULL,
  `uid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuyue
-- ----------------------------
INSERT INTO `yuyue` VALUES ('8', 'susu', '15698475612', null, '2019-01-14 22:12:35', null, null, '29', 'asd', '28');
INSERT INTO `yuyue` VALUES ('10', 'student1', '15524748898', null, '2019-01-18 02:12:02', null, null, '26', '李江', '38');
INSERT INTO `yuyue` VALUES ('12', 'student2', '15578787778', null, '2019-01-18 02:47:01', null, null, '23', '刘贝贝', '39');
INSERT INTO `yuyue` VALUES ('14', 'student1', '15578787778', null, '2019-03-02 17:22:36', null, null, '23', '刘贝贝', '38');
