-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 04:52 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasetinc-blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add blogs category', 7, 'add_blogscategory'),
(26, 'Can change blogs category', 7, 'change_blogscategory'),
(27, 'Can delete blogs category', 7, 'delete_blogscategory'),
(28, 'Can view blogs category', 7, 'view_blogscategory'),
(29, 'Can add users', 8, 'add_users'),
(30, 'Can change users', 8, 'change_users'),
(31, 'Can delete users', 8, 'delete_users'),
(32, 'Can view users', 8, 'view_users'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add blogs', 10, 'add_blogs'),
(38, 'Can change blogs', 10, 'change_blogs'),
(39, 'Can delete blogs', 10, 'delete_blogs'),
(40, 'Can view blogs', 10, 'view_blogs');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$aeIWzOyqLwTvR9MNuwuZZ3$FWqDD/jLrVdD0saZ42EKVjvAuFJiPAWO5sTbP83YVro=', '2021-11-02 03:05:52.731760', 1, 'admin', '', '', '', 1, 1, '2021-11-01 07:20:54.722016'),
(2, 'pbkdf2_sha256$260000$rP7i6Fg6KPeN2kg1yLyWna$iXZYVleBGXP3c83F8RA35LwrS2oG4HNl6CjLHrbCeM4=', '2021-11-02 01:08:32.305395', 0, 'ponnipa', '', '', '', 1, 1, '2021-11-02 01:04:48.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 33),
(2, 2, 34),
(3, 2, 35),
(4, 2, 36),
(5, 2, 37),
(6, 2, 38),
(7, 2, 39),
(8, 2, 40);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_blogs`
--

CREATE TABLE `blogs_blogs` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `coverImage` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `updateDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs_blogs`
--

INSERT INTO `blogs_blogs` (`id`, `name`, `description`, `content`, `author`, `views`, `coverImage`, `createdDate`, `category_id`, `updateDate`) VALUES
(1, 'จุลินทรีย์สังเคราะห์แสง', 'จุลินทรีย์ที่เป็นประโยชน์ต่อพืช เป็นสิ่งมีชีวิตขนาดเล็กที่พบได้ทั่วไปตามธรรมชาติทั้งในดินและน้ำ ทำหน้าที่กำจัดของเสีย ก๊าซและสารพิษต่าง ๆ', 'ประโยชน์ของจุลินทรีย์สังเคราะห์แสง\r\n1. ช่วยตรึงไนโตเจนในดิน เพิ่มไนโตเจนให้กับพืช\r\n2. เร่งการเจริญเติบโต ทำให้พืชแข็งแรงแล้วโตเร็วเป็น 3 เท่า\r\n3. เมื่อใช้ทางดินทำให้รากพืชแข็งแรงและหาอาหารได้ดีขึ้น ใช้กับนาข้าวช่วยเร่งการแตกกอของข้าว\r\n4. ช่วยในการย่อยธาตุอาหารและวัตถุอินทรีย์ในดิน เพื่อให้พืชดูดซึมไปใช้ได้อย่างง่ายดาย\r\n5. ป้องกันพืชโดยการทำลายจุลินทรีย์ไม่ดีในดิน ที่เป็นสาเหตุที่ทำให้เกิดโรคพืช\r\n\r\nref. https://www.organicfarmthailand.com/how-to-make-photosynthetic-microorganisms/', 'opj', 0, 'blogsImg/จลนทรยสงเคราะหแสง.jpg', '2021-11-01 09:18:35.911524', 1, '2021-11-02 03:18:02.468133'),
(2, 'ราสนิม', 'โรคราสนิม \r\n(Soybean Rust)\r\n\r\nชื่อเชื้อสาเหตุ \r\n\r\n- เชื้อรา Phakopsora pachyrhizi Sydow', 'ลักษณะอาการของโรค\r\n\r\nอาการของโรคจะพบได้บนใบกิ่งก้านและลำต้น แต่ส่วนใหญ่จะพบบนใบอาการครั้งแรกจะสังเกตเห็นได้ โดยใต้ใบจะมีจุดสีน้ำตาลเทาเล็ก ๆ โดยจะเริ่มจากใบที่อยู่ด้านล่าง ๆ ของลำต้น จุดนี้จะขยายขึ้นมีลักษณะนูนดูคล้ายผงสีน้ำตาลคล้ายสีสนิมเหล็ก ซึ่งอาจพบได้ทั้งด้านบนและด้านใต้ใบ แต่จะพบเห็นได้ชัดเจนที่ด้านใต้ใบ (ภาพที่ 1) ในระยะหลังนี้เมื่อลองใช้มือลูบที่บริเวณจุดนูนเหล่านี้จะพบผงสปอร์สีน้ำตาลคล้ายสนิมเหล็กติดมือมา ใบถั่วเหลืองที่เป็นโรคมาก ๆ จะมีอาการเหลือง แห้ง และจะล่วงก่อนกำหนด อาจทำให้ฝักและเมล็ดที่ได้จะมีขนาดเล็กลง ผลผลิตลดลง\r\n\r\nอาการของโรคราสนิมในระยะเริ่มแรกจะใกล้เคียงกับโรคใบจุดนูน ทำให้เกิดการสับสนในการวินิจฉัยได้ อย่างไรก็ตามหากดูด้วยแว่นขยายจะพบว่าเนื้อเยื่อรอบจุดแผลของโรคราสนิม จะไม่มีลักษณะช้ำน้ำให้เห็น และลักษณะของจุดแผลจะค่อนข้างแหลม\r\n\r\nการแพร่ระบาด\r\n\r\nโรคราสนิมแพร่ระบาดได้ดีในสภาพพื้นที่ที่มีความชื้นสูง อุณหภูมิค่อนข้างต่ำ โดยอุณหภูมิที่เหมาะสมอยู่ในช่วง 18-21 องศาเซลเซียส ในการแพร่ระบาดจะอาศัยลมเป็นตัวการพัดพาสปอร์จากต้นถั่วเหลืองที่เป็นโรค เชื้อนี้ไม่สามารถอาศัยอยู่ในเมล็ด แต่สปอร์อาจปะปนไปกับเมล็ดพันธุ์ได้\r\n\r\nการป้องกันกำจัด\r\n\r\n1. ใช้ถั่วเหลืองพันธุ์เชียงใหม่ 60, สจ.4 และ สจ.5 ปลูกในแหล่งและฤดูที่มีโรคนี้ระบาดมาก ถั่วเหลืองทั้ง 3 พันธุ์ดังกล่าวมีความทนทานต่อโรคราสนิมดีกว่าพันธุ์แนะนำอื่น ๆ \r\n\r\n2. หลีกเลี่ยงการปลูกถั่วเหลืองปลายฤดูฝน\r\n\r\n3. ไม่ควรปลูกถั่วเหลืองช้ำในที่เดิมตลอดปี\r\n\r\n4. ในช่วงระยะออกดอกและเริ่มมีฝักเล็ก ควรหมั่นตรวจแปลง หากพบถั่วเหลืองแสดง อาการของโรคราสนิม และสภาพอากาศชื้น อุณหภูมิค่อนข้างต่ำ อาจใช้สารเคมีป้องกันและกำจัดเชื้อราฉีดพ่น ได้แก่ mancozeb, oxycarboxin, piperazin และ triadimefon \r\n\r\n ที่มา https://sites.google.com/site/adecmju2601/rokh-ra-snim, http://www.agriqua.doae.go.th/plantclinic/Clinic/plant/bean/dbean2_7.htm', 'opj', 6, 'blogsImg/sanim.png', '2021-11-01 10:10:07.378634', 2, '2021-11-02 03:41:22.495251'),
(3, 'โรคใบจุด', 'ระวัง โรคใบจุดดำ (เชื้อรา Colletotrichum gloeosporioides) ในลำไย\r\n\r\nสภาพอากาศในช่วงนี้ฝนตกต่อเนื่อง และมีฝนตกหนักบางพื้นที่ เตือนผู้ปลูกลำไย ในระยะ การเจริญเติบโตทางใบ–พัฒนาผล รับมือโรคใบจุดดำ (เชื้อรา Colletotrichum gloeosporioides)', 'อาการเริ่มแรก บนใบแก่พบแผลจุดกลมสีน้ำตาลอ่อน มีขอบสีเหลืองล้อมรอบ ต่อมาแผลเปลี่ยนเป็นสีน้ำตาลเข้มถึงดำ หากอาการรุนแรงแผลจะขยายติดกันเป็นแผลขนาดใหญ่ ทำให้ใบบิดเบี้ยวผิดรูป แผลอาจขาดเป็นรู หากสภาพแวดล้อมเหมาะสม มีความชื้นสูง โรคจะระบาดลุกลามไปที่ใบเพสลาดและใบอ่อน ใบจะหลุดร่วงในที่สุด\r\n\r\nแนวทางป้องกัน/แก้ไข\r\n๑. หมั่นตรวจแปลงปลูกอย่างสม่ำเสมอ เมื่อพบอาการของโรคที่ใบแก่ ตัดแต่งและเก็บส่วนที่เป็นโรค นำไปทำลายนอกแปลงปลูก เพื่อลดปริมาณเชื้อสาเหตุโรค\r\n๒. หากพบเริ่มมีอาการของโรคที่ใบเพสลาดและใบอ่อน ให้ตัดแต่งส่วนที่เป็นโรค นำไปทำลายนอกแปลงปลูก แล้วพ่นด้วยสารป้องกันกำจัดโรคพืช เช่น อะซอกซีสโตรบิน ๒๕% เอสซี อัตรา ๕-๑๐ มิลลิลิตรต่อน้ำ ๒๐ ลิตร หรือ แมนโคเซบ ๘๐% ดับเบิ้ลยูพี อัตรา ๕๐ กรัมต่อน้ำ ๒๐ ลิตร หรือโพรคลอราซ ๔๕% อีซี อัตรา ๑๕ มิลลิลิตรต่อน้ำ ๒๐ ลิตร พ่นทุก ๗-๑๐ วัน\r\n๓. กำจัดวัชพืชรอบโคนต้นเพื่อลดความชื้นสะสม\r\n๔. ไม่ควรใส่ปุ๋ยที่มีค่าไนโตรเจนมากเกินไป เพราะจะทำให้พืชอ่อนแอต่อการเกิดโรค\r\n๕. หลังการเก็บเกี่ยวผลผลิต ควรตัดแต่งกิ่งเพื่อให้ทรงพุ่มโปร่ง โดยเฉพาะกิ่งที่มีใบเป็นโรค และเก็บส่วนที่เป็นโรค นำไปทำลายนอกแปลงปลูก เพื่อไม่ให้เป็นแหล่งสะสมของโรคในฤดูกาลผลิตต่อไป\r\n\r\nref. https://www.opsmoac.go.th/pattani-warning-preview-422791791478', 'opj', 2, '', '2021-11-01 10:14:19.384934', 2, '2021-11-02 03:24:09.420779'),
(4, 'จุลินทรีย์นมสด', 'ฮอร์โมนนมสด คือการเอานมสดมาหมักด้วยจุลินทรีย์เพื่อให้เกิดกระบวนการย่อยสลาย ทั้งยังเติมน้ำตาลลงไปเพื่อให้เป็นอาหารของจุลินทรีย์และป้องกันการเน่าเสีย เมื่อเรานำไปใช้ พืชก็สามารถนำธาตุอาหารที่อยู่ในฮอร์โมนนมสดไปใช้ในการเร่งการเจริญเติบโตได้เลย', 'วิธีทำฮอร์โมนนมสด สำหรับพืช\r\n\r\nนมจืดยี่ห้อใดก็ได้ 1 กล่อง\r\nนมเปรี้ยว 1 ช้อนโต๊ะ\r\nน้ำตาลทรายแดง 1 ช้อนโต๊ะ\r\nขวดเปล่า 1 ใบ\r\nวิธีทำ\r\nเทนมลงใส่ขวดที่เตรียมไว้\r\nเติมนมเปรี้ยวและน้ำตาลทรายแดง อย่างละ 1 ช้อนโต๊ะ\r\nเขย่าให้เข้ากัน ตั้งทิ้งไว้ 3 วันนำไปใช้ได้\r\n\r\nref. https://www.opsmoac.go.th/angthong-article_prov-preview-421891791860', 'opj', 1, '', '2021-11-01 10:14:38.794589', 1, '2021-11-02 03:15:10.720703'),
(5, 'ราน้าค้าง', 'เชื้อสาเหตุ : เชื้อรา Peronosporaparasitica', 'ลักษณะอาการ : ใบจะเป็นจุดละเอียดสีดาอยู่รวมกันเป็นกลุ่มเล็กๆ ด้านใต้ใบ ตรงจุดเหล่านี้จะมีราสีขาวอมเทาอ่อนคล้ายผงแป้งขึ้นเป็นกลุ่มๆ กระจายทั่วไป ใบที่อยู่ตอนล่างๆ จะมีแผลเกิดก่อนแล้วลุกลามขึ้นไปยังใบที่อยู่สูงกว่า ใบที่มีเชื้อราขึ้นเป็นกลุ่มกระจายเต็มใบจะมีลักษณะเหลืองและใบจะร่วงหรือแห้ง ในเวลาที่อากาศไม่ชื้นจะไม่พบผงแป้งและแผลแห้งเป็นสีเทาดา\r\n\r\n      การแพร่ระบาด : ระบาดได้ทั้งแต่ระยะที่เป็นต้นกล้าจนเจริญเติบโตเต็มที่ ซึ่งจะทาความเสียหายมากเพราะทาให้ใบเสียมากและเจริญเติบโตช้า โรคนี้ไม่ทาให้ต้นตาย แต่ทาให้น้าหนักผลผลิตลดลง เพราะต้องตัดใบที่เป็นโรคทิ้ง \r\n\r\n     การป้องกันกาจัด : \r\n\r\n     - ให้ฉีดพ่นด้วยชีวภัณฑ์ ป้องกันกาจัดเชื้อราไตรโคเดอร์มา สลับกับบีเอส ซึ่งใช้ได้ระยะที่ยังเป็นต้นกล้า – ระยะการเติบโต \r\n\r\n     - ให้ฉีดพ่นด้วยยาป้องกันกาจัดเชื้อรา เช่น ไซแน็บ , มาแน็บ , ไดโฟลาแทน , เบนโนมิล, แคปแทน หรือยาชนิดอื่นๆ ที่มีสารทองแดงเป็นองค์ประกอบ แต่สารประกอบทองแดงไม่ควรใช้ในระยะที่ยังเป็นต้นกล้า เพราะจะเป็นพิษต่อต้นกล้า\r\n\r\nref. https://www.kubotasolutions.com/knowledge/plants/detail/710', 'opj', 1, 'blogsImg/Downy.jpg', '2021-11-02 03:20:00.260350', 2, '2021-11-02 03:48:24.324225'),
(6, 'โรคเน่าคอดิน', 'เชื้อสาเหตุ: เชื้อรา Pythium sp. หรือ Phytophthora sp.', 'ลักษณะอาการ : เกิดเฉพาะในแปลงต้นกล้า เนื่องจากการหว่านเมล็ดที่แน่น ต้นเบียดกัน ถ้าในแปลงมีเชื้อโรคแล้ว ต้นกล้าจะเกิดอาการเป็นแผลช้าที่โคนต้นระดับดิน เนื้อเยื่อตรงแผลจะเน่าและแห้ง ถ้าถูกแสงแดดทาให้ต้นกล้าหักพับ ต้นเหี่ยวแห้งตายในเวลารวดเร็ว\r\n\r\n       การแพร่ระบาด : เชื้อราติดมากับเมล็ด หรืออยู่ในดิน น้า ฝน ;\r\n\r\n       การป้องกันกาจัด :\r\n\r\n        - เตรียมแปลงให้มีการระบายน้าดี อย่าให้น้าขังแฉะในแปลง ใช้เมล็ดพันธุ์ดีไม่มีเชื้อจุลินทรีย์ติดมากับเมล็ด และมีความงอกสูง ไม่หว่านเมล็ดแน่นเกินไป \r\n\r\n       - ก่อนปลูกคลุกเมล็ดด้วยสารชีวภัณฑ์ อัตรา 100 กรัม : เมล็ด 1 กิโลกรัม\r\n\r\n       - ตรวจแปลงสม่าเสมอพบต้นเป็นโรค ขุดเอาดินและต้นเป็นโรคทาลายหรือฝังลึกนอกแปลง', 'opj', 1, 'blogsImg/Damping.jpg', '2021-11-02 03:20:45.539157', 2, '2021-11-02 03:48:30.377073'),
(7, 'โรคใบจุด', 'เชื้อสาเหตุ : เชื้อรา Alternaria brassicae', 'ลักษณะอาการ : ในต้นกล้าจะพบจุดแผลเล็กๆ สีน้าตาลที่บริเวณใบโคนต้น ต้นที่โตแล้วใบมีแผลวงกลม สีน้าตาลซ้อนกันหลายชั้น เนื้อเยื่อรอบๆ แผลเปลี่ยนเป็นสีเหลือง แผลมีทั้งเล็กและใหญ่ บนแผลมักจะมีเชื้อราชั้นบางๆ เป็นผงสีดา\r\n\r\n       การแพร่ระบาด : สปอร์ของเชื้อสาเหตุ สามารถปลิวไปตามน้า ลม แมลง สัตว์ เครื่องมือเกษตรกร มนุษย์ และสามารถติดไปกับเมล็ดพันธุ์ได้ หรืออาศัยอยู่กับวัชพืชในแปลง\r\n\r\n      สภาพที่เหมาะต่อการเกิดโรค: ความชื้นสูง สภาพอากาศร้อนชื้น โดยเฉพาะในฤดูฝน อุณหภูมิอยู่ระหว่าง 25-30 องศาเซลเซียส\r\n\r\n       การป้องกันกาจัด : \r\n\r\n       - ทาลายต้นเป็นโรคโดยการขุดถอนไปเผาทิ้ง - ไม่ควรให้น้าแบบฉีดพ่นฝอย \r\n\r\n       - แช่เมล็ดในน้าอุ่น 50 องศาเซลเซียส 30 นาที (ยกเว้นกะหล่าดอก) \r\n\r\n       - คลุกมล็ดด้วยชีวภัณฑ์ป้องกันกาจัดเชื้อราไตรโคเดอร์มา\r\n\r\n       - ฉีดพ่นสารชีวภัณฑ์ป้องกันกาจัดเชื้อรไตรโดเดอร์มา ทุกๆ 7 วันจะช่วยป้องกันกาจัดเชื้อรานี้', 'opj', 2, 'blogsImg/Alternaria.jpg', '2021-11-02 03:21:20.713111', 2, '2021-11-02 03:48:00.106397'),
(8, 'โรคราสนิมขาวในผัก', 'เชื้อสาเหตุ : เชื้อรา Albugo ipomoea-aquaticae Sawada', 'ลักษณะอาการ : มีจุดสีเหลืองซีดด้านบนของใบ ด้านใต้ใบตรงกันข้าม จะเป็นตุ่มนูนเล็ก ๆ ขนาด 1-2 มิลลิเมตร อาจพบลักษณะปุ่มปม หรือบวมพองโตขึ้นในส่วนของก้านใบและลาต้น\r\n\r\n     การป้องกันกาจัด :\r\n\r\n       - เมื่อมีโรคระบาดให้ฉีดพ่นใต้ใบด้วย เมตาแล็กซิล สลับกับแมนโคเซ็บ ตามอัตราที่แนะนาบนฉลาก หากมีฝนตกชุกให้ผสมสารจับใบ\r\n\r\n        - คลุกเมล็ดก่อนปลูกด้วยเมตาแล็กซิล และเลือกใช้เมล็ดจากแหล่งที่ไม่มีโรคระบาด\r\n\r\n        - ดูแลระบบการให้น้าในแปลงปลูก อย่าให้ชื้นแฉะจนเกินไป', 'opj', 0, 'blogsImg/White.jpg', '2021-11-02 03:22:00.541912', 2, '2021-11-02 03:22:00.541912'),
(9, 'โรคเหี่ยว', 'เชื้อสาเหตุ : เชื้อรา Fusarium oxysporum', 'ลักษณะอาการ : เกิดอาการเหี่ยวอย่างช้า ๆ ใบที่อยู่โคนต้นเปลี่ยนเป็นสีเหลืองและร่วง ต่อมาใบจะเหี่ยวทั้งต้น เมื่อผ่าลาต้นบริเวณเหนือระดับดินตามยาวจะพบว่าท่อน้าท่ออาหารเป็นสีน้าตาล จนในที่สุดจะแห้งตาย \r\n\r\n      การแพร่ระบาด : การเกิดโรคนี้มักจะเกิดเป็นหย่อม ๆ ถ้าสภาพอากาศมีอุณหภูมิสูงและดินมีความชื้นสูง ทาให้โรคนี้ระบาดได้ดี\r\n\r\n      การป้องกันกาจัด :\r\n\r\n       - ถ้าพบโรคในแปลงต้องถอนต้นที่เป็นโรคเผาทาลาย \r\n\r\n       - ก่อนปลูกพริกควรปรับสภาพดินด้วยปูนขาวและปุ๋ยคอก', 'opj', 0, 'blogsImg/wilt.jpg', '2021-11-02 03:22:37.972527', 2, '2021-11-02 03:22:37.972527');

-- --------------------------------------------------------

--
-- Table structure for table `category_category`
--

CREATE TABLE `category_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_category`
--

INSERT INTO `category_category` (`id`, `name`) VALUES
(1, 'จุลินทรีย์'),
(2, 'โรคพืช');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-11-01 08:18:09.367139', '1', 'จุลินทรีย์', 1, '[{\"added\": {}}]', 9, 1),
(2, '2021-11-01 08:18:48.548101', '2', 'โรคพืช', 1, '[{\"added\": {}}]', 9, 1),
(3, '2021-11-01 09:18:35.912512', '1', 'จุลินทรีย์สังเคราะห์แสง', 1, '[{\"added\": {}}]', 10, 1),
(4, '2021-11-01 10:10:07.380767', '2', 'ราสนิม', 1, '[{\"added\": {}}]', 10, 1),
(5, '2021-11-01 10:14:19.386797', '3', 'โรคใบจุด', 1, '[{\"added\": {}}]', 10, 1),
(6, '2021-11-01 10:14:38.795620', '4', 'จุลินทรีย์นมสด', 1, '[{\"added\": {}}]', 10, 1),
(7, '2021-11-02 01:00:26.550795', '1', 'จุลินทรีย์สังเคราะห์แสง', 2, '[{\"changed\": {\"fields\": [\"Views\"]}}]', 10, 1),
(8, '2021-11-02 01:04:49.096423', '2', 'ponnipa', 1, '[{\"added\": {}}]', 4, 1),
(9, '2021-11-02 01:04:59.246691', '2', 'ponnipa', 2, '[]', 4, 1),
(10, '2021-11-02 01:06:23.267830', '2', 'ponnipa', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(11, '2021-11-02 01:08:01.914626', '2', 'ponnipa', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(12, '2021-11-02 03:08:21.257380', '1', 'จุลินทรีย์สังเคราะห์แสง', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Content\", \"Views\"]}}]', 10, 1),
(13, '2021-11-02 03:10:26.352269', '3', 'โรคใบจุด', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Content\"]}}]', 10, 1),
(14, '2021-11-02 03:12:08.927978', '2', 'ราสนิม', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Content\"]}}]', 10, 1),
(15, '2021-11-02 03:13:34.814153', '4', 'จุลินทรีย์นมสด', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Content\"]}}]', 10, 1),
(16, '2021-11-02 03:15:10.721702', '4', 'จุลินทรีย์นมสด', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(17, '2021-11-02 03:15:32.056852', '3', 'โรคใบจุด', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Content\"]}}]', 10, 1),
(18, '2021-11-02 03:17:15.269604', '2', 'ราสนิม', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Content\", \"Views\"]}}]', 10, 1),
(19, '2021-11-02 03:18:02.470127', '1', 'จุลินทรีย์สังเคราะห์แสง', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(20, '2021-11-02 03:20:00.262325', '5', 'ราน้าค้าง', 1, '[{\"added\": {}}]', 10, 1),
(21, '2021-11-02 03:20:45.542172', '6', 'โรคเน่าคอดิน', 1, '[{\"added\": {}}]', 10, 1),
(22, '2021-11-02 03:21:20.714094', '7', 'โรคใบจุด', 1, '[{\"added\": {}}]', 10, 1),
(23, '2021-11-02 03:22:00.542873', '8', 'โรคราสนิมขาวในผัก', 1, '[{\"added\": {}}]', 10, 1),
(24, '2021-11-02 03:22:37.974521', '9', 'โรคเหี่ยว', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'blogs', 'blogs'),
(7, 'category', 'blogscategory'),
(9, 'category', 'category'),
(8, 'category', 'users'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-01 07:19:05.011632'),
(2, 'auth', '0001_initial', '2021-11-01 07:19:05.586431'),
(3, 'admin', '0001_initial', '2021-11-01 07:19:05.709919'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-01 07:19:05.720901'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-01 07:19:05.731889'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-01 07:19:05.799742'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-01 07:19:05.853826'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-01 07:19:05.911701'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-01 07:19:05.921646'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-01 07:19:05.967022'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-01 07:19:05.970987'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-01 07:19:05.981957'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-01 07:19:06.003895'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-01 07:19:06.026330'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-01 07:19:06.078825'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-01 07:19:06.092789'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-01 07:19:06.236586'),
(18, 'sessions', '0001_initial', '2021-11-01 07:19:06.280987'),
(19, 'category', '0001_initial', '2021-11-01 07:28:07.762429'),
(20, 'category', '0002_users', '2021-11-01 07:59:34.750595'),
(21, 'category', '0002_delete_users', '2021-11-01 08:01:14.631498'),
(22, 'category', '0003_delete_category', '2021-11-01 08:02:12.782136'),
(23, 'category', '0002_delete_blogscategory', '2021-11-01 08:04:00.045682'),
(24, 'blogs', '0001_initial', '2021-11-01 09:08:43.873388'),
(25, 'blogs', '0002_blogs_updatedate', '2021-11-01 09:12:22.431400');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dq0nmf0ka9dmkkwxf6c0dw8hky5g2wvu', '.eJxVjDsOwjAQBe_iGlmsv2tK-pzBsncdHECOFCcV4u4QKQW0b2beS8S0rTVuvSxxYnERIE6_W070KG0HfE_tNkua27pMWe6KPGiXw8zleT3cv4Oaev3WGZFQM3jU2QMX65CzUsERujISZgSvUZM9W2QbEpgRTAAmlYxjo8T7A9bjN1o:1mhk7U:R_kmnktINNq2NUal66RT1OKQiQ-iZT4zXCXU0n9nZao', '2021-11-16 03:05:52.735694');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blogs_blogs`
--
ALTER TABLE `blogs_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blogs_category_id_202287bd_fk_category_category_id` (`category_id`);

--
-- Indexes for table `category_category`
--
ALTER TABLE `category_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogs_blogs`
--
ALTER TABLE `blogs_blogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_category`
--
ALTER TABLE `category_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blogs_blogs`
--
ALTER TABLE `blogs_blogs`
  ADD CONSTRAINT `blogs_blogs_category_id_202287bd_fk_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
