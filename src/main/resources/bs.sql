/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MariaDB
 Source Server Version : 100605
 Source Host           : localhost:3306
 Source Schema         : db_commonweb

 Target Server Type    : MariaDB
 Target Server Version : 100605
 File Encoding         : 65001

 Date: 08/02/2022 17:50:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `adminname` varchar(255) DEFAULT NULL COMMENT '管理员用户名',
  `admineamil` varchar(255) DEFAULT NULL COMMENT '管理员邮箱',
  `adminpassword` varchar(255) DEFAULT NULL COMMENT '管理员密码',
  `adminphone` varchar(255) DEFAULT NULL COMMENT '管理员电话',
  `createtime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT 0 COMMENT '状态0为可用 1位不可用',
  `role` varchar(255) DEFAULT NULL COMMENT '角色类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB COMMENT '管理员表';

-- ----------------------------
-- Records of admininfo
-- ----------------------------
BEGIN;
INSERT INTO `admin_info` VALUES (1, 'admin', 'admin@qq.com', '0adc3949ba59abbe56e057f20f883e', '18513506991', '2022-02-03 08:39:18', 0, '管理员');
COMMIT;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `outline` varchar(255) DEFAULT NULL COMMENT '大纲',
  `picurl` varchar(255) DEFAULT NULL COMMENT '文章主图',
  `type` varchar(255) DEFAULT NULL COMMENT '文章分类',
  `content` longtext DEFAULT NULL COMMENT '文章内容',
  `author` varchar(255) DEFAULT NULL COMMENT '文章作者',
  `hits` int(11) DEFAULT NULL COMMENT '点击数',
  `state` varchar(255) DEFAULT NULL COMMENT '文章状态',
  `intro` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB COMMENT '文章表';

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES (66, '海空学院海浪花志愿服务队“点亮心灯，爱满星空', '海空学院海浪花志愿服务队“点亮心灯，爱满星空', '/CommonWeb/uploads/1637311378857_1.jpg', '校园生活', '<p style=\"text-align: center;\"><img src=\"http://news.upc.edu.cn/__local/0/6B/1E/BB72A51B7C79C3F79C7CFAB3DDD_D545F65B_628A0.jpg\" width=\"700\" vsbhref=\"vurl\" vurl=\"/_vsl/06B1EBB72A51B7C79C3F79C7CFAB3DDD/D545F65B/628A0\" vheight=\"\" vwidth=\"700\" orisrc=\"/__local/0/6B/1E/BB72A51B7C79C3F79C7CFAB3DDD_D545F65B_628A0.jpg\" class=\"img_vsb_content\"></p><p style=\"text-align: center;\">制作教具 孙骞摄影<br></p><p style=\"text-align: center;\"><img src=\"http://news.upc.edu.cn/__local/D/7A/9D/0DFECC5CB9D84DB4BAAB50B09E8_9F52C4BC_3B2AA.jpg\" width=\"700\" vsbhref=\"vurl\" vurl=\"/_vsl/D7A9D0DFECC5CB9D84DB4BAAB50B09E8/9F52C4BC/3B2AA\" vheight=\"\" vwidth=\"700\" orisrc=\"/__local/D/7A/9D/0DFECC5CB9D84DB4BAAB50B09E8_9F52C4BC_3B2AA.jpg\" class=\"img_vsb_content\"></p><p style=\"text-align: center;\"><span>合影留念 孙骞摄影</span></p><p style=\"text-align: center;\"><img src=\"http://news.upc.edu.cn/__local/0/BA/71/F1F36E9230C855187722FB86C7F_5A7BC342_53EC1.jpg\" width=\"700\" vsbhref=\"vurl\" vurl=\"/_vsl/0BA71F1F36E9230C855187722FB86C7F/5A7BC342/53EC1\" vheight=\"\" vwidth=\"700\" orisrc=\"/__local/0/BA/71/F1F36E9230C855187722FB86C7F_5A7BC342_53EC1.jpg\" class=\"img_vsb_content\"></p><p style=\"text-align: center;\"><span>布置现场 孙骞摄影</span></p><p class=\"vsbcontent_start\">【本站讯】为发扬积极服务社会奉献社会精神，海空学院海浪花志愿服务队的十名志愿者于10月26日来到青岛市西海岸新区彤馨悦儿童康复中心进行志愿活动。</p><p>本次志愿活动主要任务为搬运教具和帮老师们布置教室。志愿者们先进行了活动现场的布置和准备。随后，工作人员带领志愿者们参观了部分教室。首先参观的是儿童娱乐教室，在这里志愿者们体会到自闭症儿童内心童真的乐趣，感受孩子们的成长过程，了解孩子们的日常生活。接着工作人员带领他们来到旁听教室，让志愿者们学习如何与自闭症儿童正常交流，帮助志愿者们了解自闭症儿童的内心，拉近与孩子们的距离。</p><p>最后工作人员将志愿者们分成了两组，并给每个组分配了相应的服务任务。其中一组志愿者来到教室，在辅导老师进行教学时，志愿者们在旁辅助，陪着自闭症儿童进行玩耍，和孩子们一起唱歌，耐心地引导孩子们与自己交流沟通。虽然大部分志愿者都是第一次参加本次活动，但是他们很快地和这些儿童融为一体，并配合老师完成了教学工作。另一组志愿者负责制作教具，在空教室中进行制作圆角卡片，以避免这些儿童在使用卡片时割伤。</p><p>活动结束后，儿童康复中心的胡甜老师说：“感谢石油大学的志愿者们来到这里进行志愿服务，耐心地为我们的孩子准备教具，帮助老师进行教学，也欢迎更多的志愿者来到我们康复中心！”</p><p class=\"vsbcontent_end\">本次活动，有利于志愿者们增强社会服务意识和培养爱心，同时也有利于他们了解自闭症儿童这一弱势群体，为以后的社会志愿服务活动积攒更多经验以更好付出爱心、奉献社会。</p> ', 'java程序猿', 0, '正常', '无', '2021-11-19 08:43:22');
INSERT INTO `article` VALUES (67, '新能源学院于古镇口校区举办“秋华杯”新生篮球赛', '新能源学院于古镇口校区举办“秋华杯”新生篮球赛', '/CommonWeb/uploads/1637311440590_9.jpg', '校园生活', '<p class=\"vsbcontent_start\">继上周古镇口校区“新生杯”落幕后，为丰富课余生活，提高学生锻炼身体的意识，增加各学院之间的联系，于10月24日、25日，由校研会主办、新能源学院和材料学院承办的“秋华杯”新生篮球赛在古镇口校区举行。校团委副书记姜士绅、学院辅导员于振兴、校研究生会主席范静蕾等出席本次篮球赛现场。</p><p>本次比赛面向新能源学院和材料学院在“新生杯”中分别取得前两名的四支队伍。比赛采取淘汰赛制，分为半决赛和决赛两场，24日上午，电气工程及其自动化第一名的队伍与材料第二名的队伍、电气第二名的队伍与材料第一名的队伍分别进行对决。随着裁判一声令下，比赛开始。各队队员互相配合，运球、传球、投篮，组织进攻，场外观众关注场上局势，为队员打气助威。裁判员关注篮球场上的局势，保证比赛的公正性、连续性和观赏性，并记录各轮比赛结果。经过数场比赛后，电气两支队伍包揽冠亚军。25日，电气1队和电气2队进行冠军争夺赛，各队队员在战略战术上不断地进行调整，随着最后一声哨响，电气2队获得冠军。本次“秋华杯”结束，姜士绅为各队颁发奖状及奖杯。</p><p class=\"vsbcontent_end\">本次篮球比赛有助于促进学院新生之间的交流，展示研究生的良好风貌，丰富研究生的课余生活，培养参赛队员拼搏进取的精神，有助于让新生以更加饱满的精神和积极向上的态度投入到之后的科研和学习生活中。</p> ', 'java程序猿', 0, '正常', '无', '2021-11-19 08:44:13');
INSERT INTO `article` VALUES (68, '新能源学院学生干部开展红色研学活动', '新能源学院学生干部开展红色研学活动', '/CommonWeb/uploads/1637311496690_7.jpg', '校园生活', '<p class=\"vsbcontent_img\" style=\"text-align: center;\"><img src=\"http://news.upc.edu.cn/__local/1/0E/2A/7940A6377298E7D4CD1F7E73350_E3BE9E3E_1CB35.jpg\" width=\"600\" vsbhref=\"vurl\" vurl=\"/_vsl/10E2A7940A6377298E7D4CD1F7E73350/E3BE9E3E/1CB35\" vheight=\"\" vwidth=\"600\" orisrc=\"/__local/1/0E/2A/7940A6377298E7D4CD1F7E73350_E3BE9E3E_1CB35.jpg\" class=\"img_vsb_content\"></p><p style=\"text-align: center;\">博物馆合照 陈勇奇摄影</p><p>【本站讯】为进一步加强学院学生干部党史学习教育、传承领悟红色精神，10月23日，新能源学院组织各学生组织开展红色研学活动。此次活动由2020级辅导员陶志雄发起并组织开展、青年之家负责协调开展，学院各学生组织及部分团支部学生干部代表参与。</p><p>此次活动包括参观百年党史展、海军公园游园、古镇口校区，进行红色观影等内容。学生干部首先来到此次研学活动第一站“光辉的历程——西海岸新区百年党史展”进行参观。展厅按照历史发展顺序为轴带，分为“浴血荣光旗帜扬”、“艰辛探索创基业”、“改革开放立潮头”、“砥砺奋进新时代”四大党史篇章，浓缩西海岸新区百年党史精华。学生干部们彼此之间相互讨论交流，深刻领悟中国共产党为人民谋幸福、为民族谋复兴的初心与使命。</p><p>“少年智则国智，少年富则国富……”学生们响亮的朗诵声回荡在海军公园上空，吸引众多在场群众。在随后的海军公园游园活动中，学生们在自主探索海军武器发展史的同时，进一步认识我国的强军之路，提升了内心的民族使命感。此外，学生们在海军公园进行《少年中国说》诗朗诵，使红色青春精神得到更加广泛地传播。随后，学生们来到古镇口校区参观学习，在学院研究生辅导员于振兴的带领、讲解下，学生们了解到我院各专业实验室情况、研究生科研情况、宿舍居住环境与食堂就餐环境等。古镇口研学结束后，学院师生前往观看红色电影——《我和我的父辈们》。学生会成员董雨奇感慨道：“正是因为有先辈们一代又一代的付出才有今天的幸福安详。如今实现中华民族伟大复兴的任务落在了我们的肩上，我们也应该传承这种伟大精神，为实现祖国复兴的伟大事业而奋斗。”</p><p class=\"vsbcontent_end\">据悉，此次学生干部红色研学活动的举办，旨在将红色基因注入我院学子体内，传承红色精神，同时有利益促进唐岛湾、古镇口两校区学生干部交流、加深学生干部对于学院发展的认识程度。其学生干部外出研学的形式，有利于展现学院师生风采，对学生思想建设以及学生工作进一步开展具有积极意义。</p>  ', '李四', 0, '正常', '无', '2022-02-03 07:09:22');
INSERT INTO `article` VALUES (69, '第七届中国MPAcc学生案例大赛再获佳绩', '第七届中国MPAcc学生案例大赛再获佳绩', '/CommonWeb/uploads/1637311617553_8.jpg', '校园学习', '<p class=\"vsbcontent_start\">月27日，第七届中国MPAcc学生案例大赛传来喜讯，由我校经济管理学院王军会、刘福东老师指导，由李晓悦、邓文悦扬、肖玉梅、黄博博组成的中国石油大学（华东）——青云队在全国550支参赛队中脱颖而出，取得华东赛区第1名、全国前20强的好成绩。</p><p>中国MPAcc学生案例大赛是由全国会计专业学位研究生教育指导委员会、教育部学位与研究生教育发展中心主办，中国人民大学等14家培养单位联合发起组织的全国性公益赛事，是“中国研究生创新实践系列大赛”主题赛事之一，也是MPAcc领域含金量最高的学生赛事，此前已成功举办六届，本届比赛由湖南大学承办。</p><p class=\"vsbcontent_end\">我校作为MPAcc培养单位，自2013年以来积极组织学生参加中国MPAcc学生案例大赛，已连续5届获得全国前20强的优异成绩。这是继我校圆满完成全国MPAcc研究生教育综合改革试点任务，深入建设全国MPAcc实践教育联合培养示范性基地后，在专业硕士学位建设中着力打造的又一个支点，此次获奖也为我校申请通过会计专业学位教育质量认证（AAPEQ）又增加一个宝贵的加分项。</p>  ', '李四', 0, '正常', '无', '2022-02-03 07:09:05');
INSERT INTO `article` VALUES (74, '关于开展对2021届非公安专业毕业生国考、省考笔试内容网上在线辅导的通知', '招聘信息', 'http://i1.go2yd.com/image.php?url=0XPizjTtGT', '招警信息', '<p><span>各系部并非公安专业学员大队：</span></p><p><span>根据目前疫情以及下学期开始实习的现实情况，不宜集中学习，为了毕业生在实习期能够更好地学习，备战2021年国考、省考，招生就业处邀请中公教育为广大毕业生免费提供国考、省考笔试内容网上在线辅导课程，具体情况如下：</span></p><p><span>一、学生仅需提供姓名与手机号码（开课用）即可。各系部负责统计2021届非公安专业信息（姓名与手机号码、excel版本、）于6月15日（周一）下班前电子版发送到招生就业处李家保老师。</span></p><p><span>二、上课方式</span></p><p><span>1、手机端：微信扫描二维码下载“中公网校在线课堂”APP，进入频道学习</span></p><p><span>2、电脑端：浏览器搜“中公网校”网页版并登录，点【我的课程】-找到课程-【展开】-上课【学习】</span></p><p><span>3、中公优课小程序: 【我的】-【精品课】-【待上课】&nbsp;</span></p><p><span>三、讲义、图书和模拟卷以系部为单位，到指定地点领取。（时间地点待定）</span></p><p><span>四、课程设置及内容：</span></p><p><span>90课时网课、两个月学习时间，专项理论讲解，线下习题练习，线上例题解析，线上集中模考</span></p>  ', '本站原创', 0, '正常', '无', '2022-02-03 07:14:59');
INSERT INTO `article` VALUES (75, '山西省2022年届高校毕业生校园招聘月活动', '招聘月', 'https://n.sinaimg.cn/sinakd10122/151/w1080h671/20200421/665d-isqivxf8915977.jpg', '校园生活', '<p><span>根据太原市招生考试管理中心安排，2021年5月18日我院878名参加专升本考生在太原市第七人民医院圆满完成了入学体检工作。</span></p><p><span>为了保证体检工作安全、顺利地进行，招生就业处提前进行了周密的部署及准备工作，向学院各有关部门通报了学生体检安排的相关事宜。考虑到体检医院路途遥远，学生出行不便，我院为此次体检统一安排了车辆进行人员接送，指定老师到体检医院现场组织，让学生安全便捷地完成了体检流程。</span></p><p><span>根据院党委工作部署，招生就业处坚持学党史、悟思想、办实事、开新局，践行“以人为本”的理念，想学生所想，急学生所急，从学生的角度出发，做到了办实事、出实效，切实解决好学生在专升本报考过程中面临的困难和问题，解决好每一件学生关心的事、需要的事，体现了学院春风化雨、润物无声式的人文关怀。</span></p><p><br></p>   ', '小张', 0, '正常', '无', '2022-02-03 07:52:54');
INSERT INTO `article` VALUES (76, '习近平春节前夕赴山西看望慰问基层干部群众  向全国各族人民致以美好的新春祝福  祝各族人民幸福安康祝伟大祖国繁荣富', '123', 'http://jyt.shanxi.gov.cn/xwzx/ywsd/202201/W020220128612166634903.jpg', '校园生活', '<p style=\"text-align: center;\"><span data-index=\"\"><strong>习近平春节前夕赴山西看望慰问基层干部群众</strong></span></p><p style=\"text-align: center;\"><span data-index=\"\"><strong>向全国各族人民致以美好的新春祝福</strong></span></p><p style=\"text-align: center;\"><span data-index=\"\"><strong>祝各族人民幸福安康祝伟大祖国繁荣富强</strong></span></p><p>新华社太原1月27日电中华民族传统节日春节即将到来之际，中共中央总书记、国家主席、中央军委主席习近平来到山西，看望慰问基层干部群众，向全国各族人民、向港澳台同胞和海外侨胞致以美好的新春祝福，祝福大家身体健康、工作顺利、阖家幸福、虎年吉祥！祝愿伟大祖国山河锦绣、风调雨顺、国泰民安、繁荣富强！</p><p style=\"text-align: center;\"><img src=\"http://jyt.shanxi.gov.cn/xwzx/ywsd/202201/W020220128612166533318.jpg\" data-uploadpic=\"U020220128603031966725.jpg\" needdownload=\"true\" data-needdownload=\"true\" title=\"ef7dda41d1f54c48b04a2bb076cdf6ec.jpg\" alt=\"\" picname=\"ef7dda41d1f54c48b04a2bb076cdf6ec.jpg\" oldsrc=\"W020220128612166533318.jpg\"></p><p><span data-index=\"\">1月26日至27日，中共中央总书记、国家主席、中央军委主席习近平来到山西，看望慰问基层干部群众。这是26日下午，习近平在临汾市汾西县僧念镇段村文化广场，给乡亲们拜年，向全国各族人民、向港澳台同胞和海外侨胞致以美好的新春祝福。新华社记者 李学仁 摄</span></p><p><span data-index=\"\"></span></p><p style=\"text-align: center;\"><img src=\"http://jyt.shanxi.gov.cn/xwzx/ywsd/202201/W020220128612166634903.jpg\" data-uploadpic=\"U020220128603429534310.jpg\" needdownload=\"true\" data-needdownload=\"true\" title=\"988a3362e4fd442bae2e6886bf50a568.jpg\" alt=\"\" picname=\"988a3362e4fd442bae2e6886bf50a568.jpg\" oldsrc=\"W020220128612166634903.jpg\"></p><p><span data-index=\"\">1月26日至27日，中共中央总书记、国家主席、中央军委主席习近平来到山西，看望慰问基层干部群众。这是27日下午，习近平在山西瑞光热电有限责任公司储煤场察看煤场储煤情况。新华社记者 谢环驰 摄</span></p><p>1月26日至27日，习近平在山西省委书记林武和省长蓝佛安陪同下，来到临汾、晋中等地，深入农村、文物保护单位、企业等考察调研，给基层干部群众送去党中央的关心和慰问。</p><p>26日下午，习近平冒雪来到临汾市考察调研。去年10月，山西出现有气象记录以来最强秋汛，全省11市受灾。霍州市师庄乡冯南垣村是临汾市农房受损较为严重的村庄之一，习近平专程来到这里看望慰问受灾群众。他听取了山西灾后恢复重建、秋冬补种、确保群众安全温暖过冬、加强防灾减灾和应急体系建设等情况汇报，随后来到受灾村民师红兵家中看望。</p><p style=\"text-align: center;\"><img src=\"http://jyt.shanxi.gov.cn/xwzx/ywsd/202201/W020220128612166726270.jpg\" data-uploadpic=\"U020220128603790919375.jpg\" needdownload=\"true\" data-needdownload=\"true\" title=\"39bca2a8430e427498cf59054c5391a7.jpg\" alt=\"\" picname=\"39bca2a8430e427498cf59054c5391a7.jpg\" oldsrc=\"W020220128612166726270.jpg\"></p><p><span data-index=\"\">1月26日至27日，中共中央总书记、国家主席、中央军委主席习近平来到山西，看望慰问基层干部群众。这是26日下午，习近平冒雪在临汾市霍州市师庄乡冯南垣村考察。新华社记者 李学仁 摄</span></p><p><span data-index=\"\"></span></p><p style=\"text-align: center;\"><img src=\"http://jyt.shanxi.gov.cn/xwzx/ywsd/202201/W020220128612166806855.jpg\" data-uploadpic=\"U020220128604303113685.jpg\" needdownload=\"true\" data-needdownload=\"true\" title=\"1f7cdde58b9c42919d9318a021dcaca7.jpg\" alt=\"\" picname=\"1f7cdde58b9c42919d9318a021dcaca7.jpg\" oldsrc=\"W020220128612166806855.jpg\"></p><p><span data-index=\"\">1月26日至27日，中共中央总书记、国家主席、中央军委主席习近平来到山西，看望慰问基层干部群众。这是26日下午，习近平冒雪在临汾市霍州市师庄乡冯南垣村考察。新华社记者 李学仁 摄</span></p><p>师红兵家4间窑洞去年因强降雨全部倒塌，在政府补助和各方援助下重建了2间装配式住房，目前全家已经入住。习近平仔细察看院落、住房。看到师红兵一家正在做年馍，习近平加入进来，捏了一个枣花，并为面团点上红枣。欢声笑语中，一个个年馍制作出来，格外喜庆。</p><p style=\"text-align: center;\"><img src=\"http://jyt.shanxi.gov.cn/xwzx/ywsd/202201/W020220128612166876827.jpg\" data-uploadpic=\"U020220128606043926200.jpg\" needdownload=\"true\" data-needdownload=\"true\" title=\"7b774ead55e74155ba2508cb5b617593.jpg\" alt=\"\" picname=\"7b774ead55e74155ba2508cb5b617593.jpg\" oldsrc=\"W020220128612166876827.jpg\"></p><p><span data-index=\"\">1月26日至27日，中共中央总书记、国家主席、中央军委主席习近平来到山西，看望慰问基层干部群众。这是26日下午，习近平在临汾市霍州市师庄乡冯南垣村受灾村民师红兵家看望。新华社记者 谢环驰 摄</span></p><p><span data-index=\"\"></span></p><p style=\"text-align: center;\"><img src=\"http://jyt.shanxi.gov.cn/xwzx/ywsd/202201/W020220128612166945077.jpg\" data-uploadpic=\"U020220128606307715061.jpg\" needdownload=\"true\" data-needdownload=\"true\" title=\"944fbf1e9a3e4f3caca1bd5874aa88a7.jpg\" alt=\"\" picname=\"944fbf1e9a3e4f3caca1bd5874aa88a7.jpg\" oldsrc=\"W020220128612166945077.jpg\"></p><p><span data-index=\"\">1月26日至27日，中共中央总书记、国家主席、中央军委主席习近平来到山西，看望慰问基层干部群众。这是26日下午，习近平在临汾市霍州市师庄乡冯南垣村，同师红兵一家做年馍。新华社记者 李学仁 摄</span></p><p>习近平同师红兵一家老小坐下来拉家常，亲切询问他们重建住房质量好不好、年货置办齐了没有、还有什么困难。师红兵告诉总书记，这房子又结实又暖和，一家人可以踏踏实实过年了，衷心感谢党和政府。习近平指出，我一直牵挂着灾区群众，今天到山西第一站就来到这里，是要实地看一看灾后恢复重建情况。看到村容村貌干净整洁，生产生活秩序得到恢复，重建修缮的房屋安全暖和，家家都在忙年，年货备得也很齐全，庄稼地里孕育着生机，我感到很欣慰。乡亲们在生产生活上还有什么困难，党和政府要继续帮助解决。要统筹灾后恢复重建和乡村振兴，加强流域综合治理，补齐防灾基础设施短板，提升防灾减灾救灾能力，带领人民群众用勤劳双手重建美好家园，用不懈奋斗创造幸福生活。</p><p>离开村子时，村民们高声向总书记问好。习近平给乡亲们拜年，希望大家以生龙活虎、龙腾虎跃的干劲把日子过得越来越好。</p>   ', '小张', 0, '正常', '无', '2022-02-03 07:50:49');
INSERT INTO `article` VALUES (77, '习近平春节前夕赴山西看望慰问基层干部群众  向全国各族人民致以美好的新春祝福  祝各族人民幸福安康祝伟大祖国繁荣富', '45', ' http://jyt.shanxi.gov.cn/xwzx/ywsd/202201/W020220128612166533318.jpg', '校园生活', '<p style=\"text-align: center;\"><span data-index=\"\"><strong>习近平春节前夕赴山西看望慰问基层干部群众</strong></span></p><p style=\"text-align: center;\"><span data-index=\"\"><strong>向全国各族人民致以美好的新春祝福</strong></span></p><p style=\"text-align: center;\"><span data-index=\"\"><strong>祝各族人民幸福安康祝伟大祖国繁荣富</strong></span></p> ', '1', 0, '正常', '无', '2022-02-03 07:30:06');
INSERT INTO `article` VALUES (78, '大学校园趣事大盘点：快来看看发生了哪些趣事，你经历过吗？ ', '校园趣事', 'http://5b0988e595225.cdn.sohucs.com/images/20190905/8a69b70d16044734ad5a3741e63b42aa.png', '校园趣事', '<p><span>高校的生活总是丰富多彩的。有趣的同学和有趣的故事，丰富的校园活动总是让人对生活充满希望。那让我们来盘点一下大学校园里发生了哪些趣事啦！</span></p><p>趣事一：宿舍</p><p>自古宿舍出妖孽！你经历过吗？</p><p>滑稽抱枕自问世以来，简直是在高校宿舍引领了一股狂潮……</p><p>还有些人拿来在宿舍里开演唱会的 .....</p><p>趣事二：食堂</p><p>你们还记得食堂里的黑暗料理嘛？</p><p class=\"ql-align-justify\" style=\"text-align: justify;\">红烧汤圆：福建集美大学</p><p class=\"ql-align-center\" style=\"text-align: center;\"><img src=\"https://p8.itc.cn/images01/20211119/1fc7c95b0fa740d5ba5f290309000269.png\" max-width=\"600\"></p><p>青菜炒橘子：中国人民大学</p><p class=\"ql-align-center\" style=\"text-align: center;\"><img src=\"https://p6.itc.cn/images01/20211119/b504385259e84d508bab722f78fba33a.png\" max-width=\"600\"></p><p>这些“黑暗料理”你们吃过吗？</p><p>趣事三：高校开学趣事</p><p>温大新生军训增学女子防身术。她一人<span>行6人抬，9个鞋盒一拿 。</span></p><p class=\"ql-align-center\" style=\"text-align: center;\"><img src=\"https://p7.itc.cn/images01/20211119/df6531afe9634889b6bfc49414410c2a.png\" max-width=\"600\"></p><p>女子防身术的最大特点就是:实用。无招无式无规则，无时间无特定环境，一切以杀敌、伤敌或逃跑为最终目的。使用所有可以使用的手段，对敌人实现最大程度的伤害，没有任何武术框架，没有任何搏斗约束，为达目的自由发挥，随意使用身体的各个器官，随意使用各种道具等等都可以成为上乘的搏斗技术，正所谓:法无定法。这也是有些高校军训增女子防身术的原因我们要的只是结果。</p> ', '胡浩子', 0, '正常', '无', '2022-02-03 07:55:58');
INSERT INTO `article` VALUES (79, '测试', '124', ' http://jyt.shanxi.gov.cn/xwzx/ywsd/202201/W020220128612166533318.jpg', '校园生活', '12345678', '112', 0, '正常', '无', '2022-02-03 08:23:00');
INSERT INTO `article` VALUES (80, '啊啊啊啊', '234', ' http://jyt.shanxi.gov.cn/xwzx/ywsd/202201/W020220128612166533318.jpg', '校园生活', '45阿道夫个单身狗的风格表达方式发给撒手不管粉红色的好地方好吧单身狗的感人。', '1234556', 0, '正常', '无', '2022-02-03 08:27:20');
INSERT INTO `article` VALUES (81, '新年快乐', '123456789', 'https://img1.baidu.com/it/u=1405090389,3304215773&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=361', '校园生活', '<p>飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v 飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v 飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v 飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v 飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v 飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v 飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v 飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v 飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v 飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v 飞机哦佛教寺洞附近的斯大事件第哦舒服Jodis v你都是v你都塞vi哦的撒v呢哦i啊的v哦是v哦速度和v iOS端和vi烧仙草v&nbsp;</p>', '测试', 0, '正常', '无', '2022-02-07 12:37:32');
INSERT INTO `article` VALUES (82, '测试0207', '21234', 'https://img0.baidu.com/it/u=652268921,658139031&fm=253&fmt=auto&app=138&f=JPEG?w=630&h=399', '校园生活', '<p>谁能懂你的数控机床技术课程都是快乐才看到诗礼传家但是成熟的谁能懂你的数控机床技术课程都是快乐才看到诗礼传家但是成熟的谁能懂你的数控机床技术课程都是快乐才看到诗礼传家但是成熟的谁能懂你的数控机床技术课程都是快乐才看到诗礼传家但是成熟的谁能懂你的数控机床技术课程都是快乐才看到诗礼传家但是成熟的谁能懂你的数控机床技术课程都是快乐才看到诗礼传家但是成熟的谁能懂你的数控机床技术课程都是快乐才看到诗礼传家但是成熟的谁能懂你的数控机床技术课程都是快乐才看到诗礼传家但是成熟的谁能懂你的数控机床技术课程都是快乐才看到诗礼传家但是成熟的谁能懂你的数控机床技术课程都是快乐才看到诗礼传家但是成熟的</p>', '测试', 0, '正常', '无', '2022-02-07 12:48:42');
COMMIT;

-- ----------------------------
-- Table structure for inform
-- ----------------------------
DROP TABLE IF EXISTS `inform`;
CREATE TABLE `inform` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '通知ID',
  `title` varchar(255) DEFAULT NULL COMMENT '通知标题',
  `content` text DEFAULT NULL COMMENT '通知内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `intro` varchar(255) DEFAULT NULL COMMENT '备注',
  `picurl` varchar(255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB  COMMENT '通知公告表';;

-- ----------------------------
-- Records of inform
-- ----------------------------
BEGIN;
INSERT INTO `inform` VALUES (4, '关于做好当前疫情防控工作的通告', '根据县新冠肺炎疫情防控指挥部安排部署，结合当前新冠肺炎疫情防控形势，为全面落实好“外防输入、内防反弹”的防控策略，避免人群聚集、防止交叉传染，确保全县广大人民群众的身体健康和生命安全，进一步做好冬春季及春节期间疫情防控工作，现就相关事项通告如下：\n一、非必要不外出，如确需外出的，合理安排个人行程，不到疫情发生地区或中高风险地区出差、旅行。离开本县要主动向居住地所在村（社区）报备，返回后，第一时间进行核酸检测，结果呈阴性的，再返回居住地，同时向所在村（社区）报备。\n二、由于近期我县多名居民因同乘公共交通工具与新冠肺炎确诊病例或密切接触者接触，增加了我县新冠肺炎疫情传播风险。为避免再次发生此类事件，倡导广大居民近期出行避免乘坐火车、飞机、客车等公共交通工具，如必须乘坐时请佩戴N95口罩，做好个人防护。到（返）围后，第一时间向村（社区）、单位报告。尤其是辽宁省大连市疫情防控形势仍然严峻复杂，请广大居民密接关注，外出时切勿乘坐北京至辽宁省区间运行的旅客列车。\n三、严格管控演出、会议、论坛、培训等聚集性活动。确需举办的，主办单位要严格落实疫情防控主体责任，制定详细的疫情防控工作方案和应急预案，参会人员需进行核酸检测，并严格落实防控措施，要缩短会议时间、控制规模，落实通风消毒、限制人流量等措施，减少人员聚集。提倡召开视频或电话会议，不举行节日祈福、庙会灯会、体育赛事、宗教、农村集市等大型聚集性活动，取消线下年会、团拜、慰问、茶话会、联欢会等节日聚集性活动，禁止举办群众性庆祝庆典和大规模聚集性展销促销活动。\n四、提倡“红事缓办、白事简办、宴请不办”，减少家庭私人聚会聚餐，确需举办的，人数控制在10人以下，并做好个人防护，有感冒、咳嗽等症状的人员应避免参加。\n五、农贸市场、商场超市、酒店宾馆、餐饮服务、文化娱乐等公共场所要切实履行疫情防控主体责任，安排专人值班值守，严格落实验码、测温、佩戴口罩及日常清洁、通风消毒、限制瞬时客流量、减少排队等候时间等防控措施。\n六、严禁村内聚集性活动，暂时关闭村内公共活动场所，禁止室内扎堆聊天、打牌等各种形式的聚集活动，各村（社区）通过微信群、大喇叭、明白纸等多种形式引导村民少摆席、少串门、少走动，最大限度减少人员流动和聚集。\n七、暂停各类校外培训机构线下教学活动，切实保障人民群众身体健康和生命安全。\n八、殡仪馆暂停举行遗体告别仪式，殡仪馆整容、守灵、祭奠及公墓祭扫等活动人数严格控制10人以内。\n九、疫情防控期间严禁党员干部、公职人员组织或参与各类聚集、聚餐、聚会（必要的生产、工作活动除外，但也要保持足够的人员空间间隔，并做好疫情防控相关工作）。各乡镇、县直各部门要主动担当尽责，主动加强对干部职工的思想教育，引导干部职工拒绝组织或参与聚集、聚餐、聚会活动，全身心投入到疫情防控工作中。\n十、全县党员干部和公职人员要以身作则，自觉遵守各项防控规定，加强对家人、亲戚、朋友等人员的思想引导，充分形成群防群控的强大合力，最大限度降低疫情扩散风险。\n十一、县纪委监委、县委组织部将加强监督检查，凡是发现存在违反本通告要求的党员干部，一经调查核实，视情给予组织处理或党纪政纪处分，并追究有关单位主要负责同志和分管负责同志的责任；公安机关将对违反疫情防控政策规定，对全县疫情防控造成严重后果的行为进行查处，并依法给予严厉打击。', '2021-11-19 01:53:47', NULL, NULL);
INSERT INTO `inform` VALUES (6, '山西警察学院简介', '山西警察学院前身是1949年成立的山西省公安学校。1978年，山西省政法干部学校附设公安专业中专班，开始学历教育招生。1981年，山西省人民警察学校成立，开始单独招生。1988年，公安部管理干部学院山西分院成立。1991年，公安部管理干部学院山西分院和山西省人民警察学校合并办学，实行两块牌子、一套班子管理体制。2000年，山西警官高等专科学校建立。2006年山西警官高等专科学校与太原警官职业学院合并办学。\n\n2016年，教育部批准山西警官高等专科学校升格为本科层次普通高校，山西警察学院建立。\n\n学院隶属山西省公安厅管理，1978年以来，为全省乃至全国公安政法机关输送了一大批专门人才，其中培养全日制毕业生共5.42万人，函授、自考生2.5万余人，培训在职民警6.7万余人次。成为山西公安队伍重要力量，毕业生中涌现出了一大批公安英雄模范，相当一部分走上了领导岗位，更多的成为全省各级公安机关的业务骨干。学院被誉为“三晋警官的摇篮”。\n\n学院现有2个校区，占地总面积886亩，总建筑面积23.1万平方米。有全日制在校生6500余人，专任教师310 人，有11个本科专业和4个专科专业，其中本科专业为：治安学、侦查学、公安管理学、交通管理工程、警务指挥与战术、刑事科学技术、网络安全与执法、禁毒学、信息安全、社会工作和法学。有3个国家级训练基地，分别是：全国公安民警心理训练山西实验中心、公安部爆炸物品公共安全教育训练基地和国家文物局文博人才培训示范基地。实验仪器设备总值6532.8万元；图书馆纸质藏书63.2万册，电子图书15.49万册。有校内实验实训场所45个，在全省公安机关建有26个校外教学基地和实践教基地。山西省警官培训中心建在学院，主要依托学院师资和教学资源进行在职民警训练，为公安部、全国部分公安机关以及山西省、市、县公安机关举行各类民警培训班。设有司法鉴定中心，为基层公安机关和社会服务。\n\n学院内设机构34个，其中党政管理机构（含群团组织）18个，教学业务机构12个，教学辅助机构4个。学院有党总支11个，直属党支部2个、基层党支部30个、临时党支部1个，教师和学生党员774人。\n\n学院获公安部“全国公安教育训练工作先进集体”、山西省“平安校园”创建先进单位和省城“创安”活动“平安标兵单位”、山西省法制教育先进单位、山西省依法治校示范校、国家禁毒委 “全国学校毒品预防教育创新单位”、 教育部 “山西省预防艾滋病宣传教育先进高校”、全省学生军训工作先进单位等荣誉称号。2011年以来，学院连续获得“山西省省直文明和谐标兵单位”荣誉称号。还获太原市园林化标兵单位、创建安全文明小区先进单位和综合治理模范单位称号。\n\n学院坚持“政治建校、依法治校”的办学方针，坚持“质量立校、科研强校、特色兴校、开放活校”的办学理念，坚持“德法兼修、专博相济、学战结合、滴灌培育”的教学理念，坚持“服从服务公安工作和公安队伍建设”的办学思想，坚持“公安学历教育与在职民警培训教育协调发展”的办学模式，坚持“教、学、练、战”一体化的人才培养模式，秉承“忠诚、正义、厚德、博学” 的校训，弘扬以忠诚为核心的“红色”文化和以奉献为核心的“蓝色”文化，立足山西，面向全国，以培养“对党忠诚、服务人民、执法公正、纪律严明”的高素质应用型公安专门人才为目标，努力建设全省高素质应用型公安专门人才培养基地、在职民警培训基地、警务理论与实践研究基地，逐步向“区域一流、特色鲜明”的应用型本科公安高校建设目标迈进。', '2022-02-03 07:04:03', NULL, NULL);
INSERT INTO `inform` VALUES (7, '山西警察学院2020年招生章程', '第一章  总则\n\n第一条 为了保证山西警察学院2020年招生工作的顺利进行，规范招生行为，提高生源质量，维护学院和考生的合法权益，根据《中华人民共和国教育法》、《中华人民共和国高等教育法》、《国务院关于深化考试招生制度改革的实施意见》、《普通高等学校学生管理规定》和《关于加强公安机关人民警察招录工作的意见》、《关于公安院校公安专业人才招录培养制度改革的意见》等有关文件精神，结合学院实际，制定本章程。\n\n第二条 山西警察学院招生工作，突出政治标准，遵循“公平竞争、公正选拔、公开透明”的原则，坚持全面考核，综合评价，择优录取。\n\n第三条 山西警察学院招生工作接受教育招生考试部门、纪检监察部门、考生及其家长和社会各界的监督。\n\n第四条 学校全称：山西警察学院；\n\n英文名称：Shanxi  Police  College；\n\n学校代码：11928；\n\n办学类型：公办全日制普通高等学校；\n\n办学层次：大学本科；\n\n主管部门：山西省公安厅 ；\n\n学校地址：太原市清徐县清东路西北坊段799号。\n\n第二章  组织机构\n\n第五条 山西警察学院设立招生工作委员会，全面负责学院招生工作，研究决定招生工作中的重大事宜。招委会主任由院长担任，成员为相关院领导和部门负责同志。\n\n第六条 山西警察学院招生办公室设在招生就业处，是学院组织和实施招生工作的常设机构，在招生委员会的领导下负责学院招生日常工作。\n\n第七条 山西警察学院纪检办公室为招生委员会成员单位，负责监督招生工作的各项政策和规定的落实，维护广大考生和学院的合法权益，对学院招生工作实施全面监督。\n\n \n\n第三章  招生计划\n\n第八条 普通本科提前批次公安类专业招生计划，由山西省公安厅以四年为周期测算本地公安机关年度警力需求及录用人民警察计划，并会同山西省编办、公务员局、教育厅等相关部门确定；分专业计划由学院根据办学条件和培养能力拟定，并报省公安厅、省招生主管部门审核和公布，其中女生计划数不超过招生计划总数的10%。\n\n第九条 普通本科、专科批次专业（非公安类）招生计划，学院根据学校发展规划、办学条件、生源情况、人才需求、学科发展等因素，制定分专业计划，招生计划通过省级招生主管部门、学院网站等形式向社会和考生公布。\n\n \n\n第四章  招生专业\n\n第十条 普通本科提前批次公安类招生专业8个：侦查学、治安学、公安管理学、交通管理工程、刑事科学技术、网络安全与执法、警务指挥与战术、禁毒学，学制4年；普通本科招生专业（非公安类）3个：社会工作、信息安全、法学，学制4年；普通本科专升本招生专业2个：社会工作、信息安全，学制2年；普通专科招生专业2个：法律事务、计算机应用技术，学制3年。各专业只提供英语语种教学。\n\n \n\n第五章  招生对象\n\n第十一条 招生对象为参加2020年全国普通高校招生统一考试的山西（本省户籍）考生，志愿报考提前批次本科公安专业的考生，应具备下列资格条件：\n\n  （一）具有中华人民共和国国籍；\n\n  （二）拥护中华人民共和国宪法和法律；\n\n  （三）忠于祖国，热爱人民，热爱中国共产党\n\n（四）遵规守纪，诚实守信，具有良好的道德品行；\n\n  （五）具有较强的组织纪律性和法制观念；\n\n  （六）热爱公安事业，志愿从事公安工作；\n\n  （七）普通高中毕业；\n\n（八）年龄为十六周岁以上、二十二周岁以下（1998年9月1日至2004年8月31日期间出生），未婚；\n\n（九）思想政治素质好，符合公安院校公安专业招生政治条件；\n\n（十）身心健康，符合公安院校公安专业招生体检标准。\n\n \n\n第六章  招生条件\n\n第十二条 报考山西警察学院提前批次公安专业的考生，须参加全省统一组织的公安院校招生政治考察和面试、体检、体能测评。在政治考察和面试、体检、体能测评均合格且分数上线的考生中，按文化分数从高到低按一定比例投档，由学校按照教育主管部门审核备案的招生章程，在已调档考生中择优录取。\n\n第十三条 政治考察。志愿报考山西警察学院本科提前批次公安专业的考生，在高考成绩揭晓后可以通过山西招生考试网，下载并自行打印《公安院校公安专业招生政治考察表》（此表必须用A4纸正方面打印），在招生面试和体能测评工作之前到户籍所在地区、县公安局户籍所在地公安派出所申请政治考察。政治考察完成后，由负责政治考察的派出所按照要求逐级上报，不得交于考生。政治考察参照公安机关录用人民警察的有关规定执行。\n\n第十四条 面试。面试主要从报考动机、言语表达、身体协调性等方面，辨识考生是否适合从事公安工作。面试现场实行全程录像。\n\n第十五条 体检。体检的项目和标准，参照公安机关录用人民警察的有关规定执行，详见《公务员录用体检通用标准（试行）》（人社部发〔2016〕140号）、《公务员录用体检特殊标准（试行）》（人社部发〔2010〕82号）。同时，还应符合下列条件：\n\n（一）身高：男性170厘米及以上，女性160厘米及以上。\n\n（二）体重：男性体重指数（单位：千克/米²）在17.3至27.3之间，女性在17.1至25.7之间。\n\n（三）视力：单侧裸眼视力4.8及以上。\n\n（四）色觉：无色盲、色弱。\n\n省公安院校招生工作领导组在对考生承诺的患病经历和有关情况、省级招生委员会办公室提供的考生高考招生体检表相关内容进行审核的基础上，对考生身高、体重、面容、外观、血压、视力、色觉、听力和嗅觉等重点项目，由体检医师严格按照有关操作规范进行现场检查，并综合作出体检结论。\n\n第十六条 体能测评。公安院校考生体能测评的项目和标准，按照《国家学生体质健康标准（2014年修订）》的有关规定执行，体能测评项目及合格标准具体如下：\n\n（一）50米跑。可测次数：1次\n\n合格标准：男性≤9.2秒，女性≤10.4秒；\n\n（二）立定跳远。可测次数：3次\n\n合格标准：男性≥2.05米，女性≥1.5米；\n\n（三）1000米跑（男）/800米跑（女）\n\n可测次数：1次，合格标准：男性≤4分35秒，女性≤4分36秒；\n\n（四）引体向上（男）/仰卧起坐（女）\n\n可测次数：1次，合格标准：男性≥9次/分钟，女性≥25次/分钟。\n\n以上4个项目须全部进行测评，其中有3个及以上达标的，体能测评结论为合格。体能测评实行全程录像。招生条件如果公安部发布新的标准，以最新颁布的标准为准。\n\n第十七条 报考普通类本科、专科批次的考生不参加政治考察、面试、体检和体能测评，但参照提前本科批次专业招生标准，适当放宽身体条件，要求男性身高不低于1.65米，女性身高不低于1.55米，身材匀称，面部无明显特征和缺陷、无传染病等。\n\n \n\n第七章  录取批次\n\n第十八条 山西警察学院各招生专业录取分3个批次。普通本科公安类8个招生专业--侦查学、治安学、公安管理学、交通管理工程、刑事科学技术、网络安全与执法、警务指挥与战术、禁毒学，在提前第二批本科公安院校进行录取；普通本科3个招生专业（非公安类）--社会工作、信息安全、法学，在第二批本科B类院校进行录取；普通专科2个招生专业--法律事务、计算机应用技术，在普通专科批次进行录取。\n\n \n\n第八章  录取规则\n\n第十九条 在省招委会领导下，由省招办组织实施，实行计算机远程网上录取。\n\n第二十条 本科最低控制分数线为山西省本科第二批B类录取线。\n\n第二十一条 本科提前批次公安类专业在政审、面试、体检和体能测试合格的基础上，根据所报志愿进行专业投档，充分按照志愿优先的分专业原则，坚持从高分至低分择优录取。未按照志愿录取的考生，若服从调配，可调整到相近专业录取。未被提前批次公安院校录取的考生不影响普通批次院校的投档录取。公安专业女生录取比例不超过10%。\n\n第二十二条 报考普通本科、专科（非公安类）的考生不限制男女比例，不参加政治考察、面试、体检和体能测试。学院通过网上阅档查看考生身体条件，若考生自身情况和报考信息与我院招生条件不符，将予清退。因此而耽误考生上其他学校，由考生本人负责。\n\n第二十三条 入学复查。根据教育部学生学籍管理规定，新生入校后，学院在3个月内按照国家招生规定进行复查。复查合格者予以注册，取得学籍；凡不符合条件或有舞弊行为的，学院将按照教育部、公安部有关规定予以处理，直至取消入学资格。\n\n第二十四条 录取公安英烈子女保送生，按照公安部、教育部和山西省人民政府及省公安厅、省教育厅有关文件执行。\n\n第二十五条 录取结果按照山西省教育厅统一规定的形式和学院网站向社会和考生公布。《录取通知书》一律用快递邮寄，录取通知书签发人为院长张惠选。\n\n \n\n第九章  收费标准\n\n第二十六条 根据国家规定，学生入学须交纳学费、住宿费等费用以及书本费等。我院严格按照晋发改收费发【2018】293号文件精神规定的收费标准执行。如果省发改委制定新的收费标准，以最新公布的收费标准执行。\n\n \n\n第十章  管理和奖励\n\n第二十七条 学生在校期间着制式警服，实行严格的警务化管理。以培养“对党忠诚、服务人民、执法公正、纪律严明”的应用型、复合型公安专门人才为目标，满足学生个性化学习需求，增强学生职业适应能力，努力培养优良学风，鼓励学生创新创业。\n\n第二十八条 学院设有优秀学生奖学金、“蓝盾英才奖励基金”和“爱尔眼科奖学金”。德智体美劳综合表现优异的，经评定可享受国家奖学金、国家励志奖学金。学院有完善的勤工助学和特困生国家助学贷款等制度，学生在校期间可申请国家助学贷款、国家助学金、勤工助学、学费减免等资助项目。\n\n \n\n第十一章  毕业就业\n\n第二十九条 学生在校期间修完教育教学计划规定内容，经考试合格，符合毕业要求的毕业生，学院将颁发通过教育部网上学籍学历注册的“山西警察学院”普通全日制本科、专科毕业证书。符合学位授予条件的本科毕业生，颁发山西警察学院学位证书。\n\n第三十条 根据人力资源部、公安部、国家公务员局等部门联合下发《关于加强公安机关人民警察招录工作的意见》和《关于公安院校公安专业人才招录培养制度改革的意见》的文件精神，确保公安院校公安专业毕业生成为公安队伍补充警力的主要渠道，学生毕业前，提前批次录取的公安类专业毕业生参加公安部统一组织的公安机关面向公安院校公安专业应届毕业生招录公务员考试，根据考试成绩，经人民警察招录程序，择优录用，确保绝大多数公安院校公安专业毕业生通过入警考试进入公安机关。普通本科、专科专业毕业生通过参加面向社会招录警务辅助人员（辅警）考试和其他各级各类招聘考试实现就业。\n\n第三十一条 招生咨询联系方式：\n\n咨询电话：0351-2953660（传真） 2953777\n\n邮箱地址：sxjcxyzjc@163.com\n\n网址：www.sxpc.edu.cn\n\n \n\n第十二章  附则\n\n第三十二条 我院不委托任何中介机构或个人进行招生录取工作，不收取国家规定之外的任何费用。对以我院名义进行非法招生宣传等活动的中介机构或个人，我院保留依法追究其责任的权利。\n\n第三十三条 学院以往有关招生工作的要求、规定如与本章程相冲突，以本章程为准。本章程如与国家招生政策相冲突，以国家招生政策为准。\n\n第三十四条 本章程由山西警察学院招生委员会负责解释。', '2022-02-03 07:05:02', NULL, NULL);
INSERT INTO `inform` VALUES (8, '测试', '测试大家都觉得是从历史的啦抽奖啦警察拉开参加阿里课程擦杀菌；阿刺激啊；了', '2022-02-07 12:52:05', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for linkurl
-- ----------------------------
DROP TABLE IF EXISTS `link_url`;
CREATE TABLE `link_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `picurl` varchar(255) DEFAULT NULL COMMENT '图片',
  `intro` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB  COMMENT '外部链接表';;

-- ----------------------------
-- Records of linkurl
-- ----------------------------
BEGIN;
INSERT INTO `link_url` VALUES (1, '后台登陆', '/CommonWeb/manage/login', '0', '0', '2021-05-20 15:04:31');
INSERT INTO `link_url` VALUES (9, '山西警察学院', 'http://www.sxpc.edu.cn/', '1', '1', '2022-02-03 06:35:35');
COMMIT;

-- ----------------------------
-- Table structure for liuyan
-- ----------------------------
DROP TABLE IF EXISTS `leave_message`;
CREATE TABLE `leave_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fid` int(11) DEFAULT NULL COMMENT '父ID',
  `level` int(11) DEFAULT NULL COMMENT '层级',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `content` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `intro` varchar(255) DEFAULT NULL COMMENT '备注',
  `picurl` varchar(255) DEFAULT NULL COMMENT '图片',
  `score` int(11) DEFAULT NULL COMMENT '评分',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB COMMENT='留言表';

-- ----------------------------
-- Records of liuyan
-- ----------------------------
BEGIN;
INSERT INTO `leave_message` VALUES (37, NULL, NULL, 'test', '加油，大家别乱跑啊', '61', '/CommonWeb/static/img/headicon.jpg', 5, '2021-11-19 02:47:54');
INSERT INTO `leave_message` VALUES (38, 37, 1, 'test', '自己给自己加油', '61', '/CommonWeb/static/img/headicon.jpg', 2, '2021-11-19 02:48:08');
INSERT INTO `leave_message` VALUES (39, NULL, NULL, 'test', '哈哈哈哈', NULL, '/CommonWeb/static/img/headicon.jpg', 2, '2021-11-19 02:50:06');
INSERT INTO `leave_message` VALUES (40, NULL, NULL, 'test', '好像谈一场不分手的恋爱', '72', '/CommonWeb/static/img/headicon.jpg', 2, '2021-11-19 08:59:58');
INSERT INTO `leave_message` VALUES (41, NULL, NULL, 'test', '1235tyui o5678o', NULL, '/CommonWeb/static/img/headicon.jpg', 2, '2022-02-03 07:30:56');
INSERT INTO `leave_message` VALUES (42, 41, 1, 'test', '111111111', NULL, '/CommonWeb/static/img/headicon.jpg', 2, '2022-02-03 07:31:02');
INSERT INTO `leave_message` VALUES (43, NULL, NULL, 'test', '111122222222222', '77', '/CommonWeb/static/img/headicon.jpg', 4, '2022-02-03 07:31:33');
INSERT INTO `leave_message` VALUES (44, NULL, NULL, 'test', '123', '78', '/CommonWeb/static/img/headicon.jpg', 2, '2022-02-03 08:19:27');
INSERT INTO `leave_message` VALUES (45, 44, 1, 'test', '234', '78', '/CommonWeb/static/img/headicon.jpg', 2, '2022-02-03 08:19:46');
INSERT INTO `leave_message` VALUES (46, NULL, NULL, 'test', '12345', NULL, '/CommonWeb/static/img/headicon.jpg', 2, '2022-02-03 08:22:21');
INSERT INTO `leave_message` VALUES (47, NULL, NULL, 'test', '55555555', '79', '/CommonWeb/static/img/headicon.jpg', 2, '2022-02-03 08:23:36');
INSERT INTO `leave_message` VALUES (48, NULL, NULL, 'test', '23', '81', '/CommonWeb/static/img/headicon.jpg', 2, '2022-02-07 12:44:14');
INSERT INTO `leave_message` VALUES (49, NULL, NULL, 'test', '测试嘿嘿嘿', NULL, '/CommonWeb/static/img/headicon.jpg', 2, '2022-02-07 12:47:24');
INSERT INTO `leave_message` VALUES (50, NULL, NULL, 'test', 'hhhhhhhhhhh哈哈哈哈哈哈哈', '82', '/CommonWeb/static/img/headicon.jpg', 2, '2022-02-07 12:49:04');
COMMIT;

-- ----------------------------
-- Table structure for sorttype
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sortname` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `intro` varchar(255) DEFAULT NULL COMMENT '分类描述',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB  COMMENT '分类表';;

-- ----------------------------
-- Records of sorttype
-- ----------------------------
BEGIN;
INSERT INTO `classify` VALUES (20, '校园生活', '校园生活', '2021-11-19 08:18:12');
INSERT INTO `classify` VALUES (21, '校园学习', '校园学习校园学习', '2021-11-19 08:18:29');
INSERT INTO `classify` VALUES (22, '招警信息', '招警信息板块', '2022-02-03 06:34:25');
INSERT INTO `classify` VALUES (23, '校园趣事', '校园趣事板块', '2021-11-19 08:19:18');
COMMIT;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `picurl` varchar(255) DEFAULT NULL COMMENT '头像',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `role` varchar(255) DEFAULT NULL COMMENT '角色',
  `money` varchar(255) DEFAULT NULL COMMENT '金额',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `intro` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB  COMMENT '用户表';;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES (1, 'test', '18314463515', '/CommonWeb/static/img/headicon.jpg', 'test555@qq.com', NULL, '66666', '男', '123456', NULL, '2021-05-20 15:04:31');
INSERT INTO `user_info` VALUES (2, '张三', '18314463788', '/CommonWeb/static/img/headicon.jpg', 'zhagnsan@qq.com', NULL, '10000', '女', '123456', NULL, '2021-05-20 15:04:31');
INSERT INTO `user_info` VALUES (3, '纸飞机', '18314469999', '/CommonWeb/static/img/address.jpg', '123456@qq.com', NULL, '9000', '男', '123456', NULL, '2021-05-20 15:04:31');
INSERT INTO `user_info` VALUES (4, '小明', '18314463888', '/CommonWeb/static/img/headicon.jpg', 'xiaoming@qq.com', NULL, '5200', '男', '123456', NULL, '2021-05-20 15:04:31');
INSERT INTO `user_info` VALUES (7, 'xiaoming01', '18314463888', '/CommonWeb/static/img/headicon.jpg', 'xiaoming01@qq.com', NULL, NULL, NULL, '123456', NULL, '2021-05-20 15:04:31');
INSERT INTO `user_info` VALUES (8, '张三', '18380557880', '/CommonWeb/uploads/1621498223960_5.jpg', '2118119173@qq.com', NULL, NULL, NULL, '123456', NULL, '2021-05-20 08:10:35');
INSERT INTO `user_info` VALUES (9, 'guohuan', '18513506991', '/CommonWeb/uploads/1643872612056_6.jpeg', 'guohuan0126@163.com', NULL, NULL, NULL, 'gh123456', NULL, '2022-02-03 07:17:10');
INSERT INTO `user_info` VALUES (10, '小静', '17177777777', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg0.pcauto.com.cn%2Fpcauto%2F2104%2F27%2F24949171_5.jpeg&refer=http%3A%2F%2Fimg0.pcauto.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646830114&t=53e5337ac8db5523b77d8a11b5f5e5b0', '133@163.co m', NULL, '123', '女', '123', NULL, '2022-02-07 12:50:21');
COMMIT;

-- ----------------------------
-- Table structure for videoinfo
-- ----------------------------
DROP TABLE IF EXISTS `video_info`;
CREATE TABLE `video_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `picurl` varchar(255) DEFAULT NULL COMMENT '封面图',
  `fid` int(11) DEFAULT NULL COMMENT '上级ID',
  `videourl` varchar(255) DEFAULT NULL COMMENT '视频路径',
  `content` varchar(255) DEFAULT NULL COMMENT '介绍',
  `intro` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB COMMENT '多媒体表';;

-- ----------------------------
-- Records of videoinfo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wenjuan
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) DEFAULT NULL COMMENT '题目',
  `daan` varchar(100) DEFAULT NULL COMMENT '答案',
  `fenshu` varchar(10) DEFAULT NULL COMMENT '分数',
  `xuanxiang` varchar(100) DEFAULT NULL COMMENT '选项',
  `t_id` int(11) DEFAULT NULL COMMENT '所属id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB  COMMENT '问卷表';;

-- ----------------------------
-- Records of wenjuan
-- ----------------------------
BEGIN;
INSERT INTO `questionnaire` VALUES (1, '在得知上网课时，你的心理状态', 'A 很开心可以学习了', '10', 'A 很开心可以学习了  B没有上课的氛围，我好难集中精力上课 C没必要，网课教学没有用处  D可以逃课了', 0, '2021-11-19 01:48:18');
INSERT INTO `questionnaire` VALUES (2, '线上上课您会做笔记吗？', 'A.从不', '10', 'A.从不 B.偶尔 C.非常认真', 0, '2021-11-19 01:49:24');
INSERT INTO `questionnaire` VALUES (3, '您认为在校园生活中哪种素质比较重要？', 'A形象', '10', 'A形象  B学历  C口才  D性格  E人际  F能力', 0, '2021-11-19 07:47:04');
INSERT INTO `questionnaire` VALUES (4, '.您平时日常校园生活支出为：', 'A500-700', '10', 'A500-700元 B700-900元 C900-1100元  D1100以上', 0, '2021-11-19 07:47:40');
INSERT INTO `questionnaire` VALUES (5, '您觉得在校园生活中很重要与朋友建立良好的友谊重要吗*', 'A重要', '10', 'A重要  B一般  C很不重要', 0, '2021-11-19 07:48:08');
INSERT INTO `questionnaire` VALUES (6, '在大学里您有什么遗憾吗?* ', ' A没有拿过奖学金', '10', ' A没有拿过奖学金  B没有挂过科  C没有谈过恋爱  D挂科了', 0, '2021-11-19 07:48:30');
INSERT INTO `questionnaire` VALUES (7, '在大学里，你考虑了你的就业问题吗* ', 'A有,在准备', '10', 'A有,在准备  B有,但没有明确的目标  C没有考虑过 父母安排', 0, '2021-11-19 07:48:54');
INSERT INTO `questionnaire` VALUES (8, '您的理想与与您的理想校园生活相悖离了吗？', 'A没有', '10', 'A没有  B不会相差太远  C会', 0, '2021-11-19 08:07:36');
INSERT INTO `questionnaire` VALUES (9, '测试', 'A:123', '100', 'A:123 B234', 0, '2022-02-03 09:12:08');
INSERT INTO `questionnaire` VALUES (10, '测试123', '122', '123', '122', 1, '2022-02-07 12:50:45');
COMMIT;

-- ----------------------------
-- Table structure for wenjuanjieguo
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userid` int(11) DEFAULT 0 COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `wenjuanid` int(11) DEFAULT 0 COMMENT '问卷id',
  `result` varchar(255) DEFAULT NULL COMMENT '答案',
  `score` int(11) DEFAULT 0 COMMENT '分数',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB  COMMENT '结果表';

-- ----------------------------
-- Records of wenjuanjieguo
-- ----------------------------
BEGIN;
INSERT INTO `result` VALUES (1, 1, 'test', 1, 'D可以逃课了.', 10, '2022-02-08 07:39:21');
INSERT INTO `result` VALUES (2, 1, 'test', 2, 'C.非常认真', 10, '2022-02-08 07:39:21');
INSERT INTO `result` VALUES (3, 1, 'test', 3, 'F能力.', 0, '2022-02-08 07:39:21');
INSERT INTO `result` VALUES (4, 1, 'test', 4, 'D1100以上.', 10, '2022-02-08 07:39:21');
INSERT INTO `result` VALUES (5, 1, 'test', 5, 'C很不重要.', 0, '2022-02-08 07:39:21');
INSERT INTO `result` VALUES (6, 1, 'test', 6, 'D挂科了.', 0, '2022-02-08 07:39:21');
INSERT INTO `result` VALUES (7, 1, 'test', 7, '父母安排.', 10, '2022-02-08 07:39:21');
INSERT INTO `result` VALUES (8, 1, 'test', 8, 'C会.', 0, '2022-02-08 07:39:21');
INSERT INTO `result` VALUES (9, 1, 'test', 9, 'B234.', 0, '2022-02-08 07:39:21');
INSERT INTO `result` VALUES (10, 1, 'test', 10, '122.', 0, '2022-02-08 07:39:21');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
