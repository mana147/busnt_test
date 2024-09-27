-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 23, 2023 lúc 05:40 PM
-- Phiên bản máy phục vụ: 5.6.50-log
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `exchanges7`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_admin`
--

CREATE TABLE `tw_admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL DEFAULT '',
  `username` char(16) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL,
  `last_login_time` int(11) UNSIGNED NOT NULL,
  `last_login_ip` int(11) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员表';

--
-- Đang đổ dữ liệu cho bảng `tw_admin`
--

INSERT INTO `tw_admin` (`id`, `email`, `username`, `nickname`, `moble`, `password`, `sort`, `addtime`, `last_login_time`, `last_login_ip`, `endtime`, `status`) VALUES
(1, '', 'admin', '', '', 'd0970714757783e6cf17b26fb8e2298f', 0, 0, 1703322803, 36, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_adver`
--

CREATE TABLE `tw_adver` (
  `id` int(11) UNSIGNED NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'zh-cn',
  `name` varchar(20) NOT NULL DEFAULT '',
  `subhead` varchar(20) NOT NULL COMMENT '副标题描述',
  `url` varchar(100) NOT NULL DEFAULT '',
  `img` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `onlinetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `look` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 电脑端 1手机端'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告图片表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_appc`
--

CREATE TABLE `tw_appc` (
  `id` int(11) NOT NULL,
  `web_name` varchar(64) DEFAULT NULL,
  `web_title` varchar(64) DEFAULT NULL,
  `web_icp` varchar(64) DEFAULT NULL,
  `index_img` varchar(256) DEFAULT NULL,
  `pay` varchar(256) DEFAULT NULL,
  `withdraw_notice` varchar(256) DEFAULT NULL,
  `charge_notice` varchar(256) DEFAULT NULL,
  `show_coin` varchar(255) DEFAULT NULL,
  `show_market` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_appc`
--

INSERT INTO `tw_appc` (`id`, `web_name`, `web_title`, `web_icp`, `index_img`, `pay`, `withdraw_notice`, `charge_notice`, `show_coin`, `show_market`) VALUES
(2, '数字资产交易平台', '数字资产交易平台', '', '', '{\"alipay\":{\"name\":\"\\u5f20\\u4e09\",\"value\":\"123456@163.com\"},\"bank\":{\"name\":\"\\u674e\\u56db\",\"value\":\"88888888666666\"}}', '提现说明文字后台可配置', '充值说明文字 后台可配置', '[\"2\",\"39\",\"41\"]', '[\"1\",\"31\",\"33\"]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_area`
--

CREATE TABLE `tw_area` (
  `id` int(11) NOT NULL,
  `name_zh` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `name_abbr` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `international_area_code` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_area`
--

INSERT INTO `tw_area` (`id`, `name_zh`, `name_en`, `name_abbr`, `international_area_code`) VALUES
(1, '阿富汗', 'Afghanistan', 'AFG', '93'),
(2, '阿尔巴尼亚', 'Albania', 'ALB', '355'),
(3, '阿尔及利亚', 'Algeria', 'DZA', '213'),
(4, '安道尔', 'Andorra', 'AND', '376'),
(5, '安哥拉', 'Angola', 'AGO', '244'),
(6, '安提瓜和巴布达', 'Antigua and Barbuda', 'ATG', '1268'),
(7, '阿根廷', 'Argentina', 'ARG', '54'),
(8, '亚美尼亚', 'Armenia', 'ARM', '374'),
(9, '澳大利亚', 'Australia', 'AUS', '61'),
(10, '奥地利', 'Austria', 'AUT', '43'),
(11, '阿塞拜疆', 'Azerbaijan', 'AZE', '994'),
(12, '巴哈马', 'Bahamas', 'BHS', '1242'),
(13, '巴林', 'Bahrain', 'BHR', '973'),
(14, '孟加拉', 'Bangladesh', 'BGD', '880'),
(15, '巴巴多斯', 'Barbados', 'BRB', '1246'),
(16, '白俄罗斯', 'Belarus', 'BLR', '375'),
(17, '比利时', 'Belgium', 'BEL', '32'),
(18, '伯利兹', 'Belize', 'BLZ', '501'),
(19, '贝宁', 'Benin', 'BEN', '229'),
(20, '不丹', 'Bhutan', 'BTN', '975'),
(21, '玻利维亚', 'Bolivia', 'BOL', '591'),
(22, '波黑', 'Bosnia and Herzegovina', 'BIH', '387'),
(23, '博茨瓦纳', 'Botswana', 'BWA', '267'),
(24, '巴西', 'Brazil', 'BRA', '55'),
(25, '文莱', 'Brunei', 'BRN', '673'),
(26, '保加利亚', 'Bulgaria', 'BGR', '359'),
(27, '布基纳法索', 'Burkina Faso', 'BFA', '226'),
(28, '布隆迪', 'Burundi', 'BDI', '257'),
(29, '柬埔寨', 'Cambodia', 'KHM', '855'),
(30, '喀麦隆', 'Cameroon', 'CMR', '237'),
(31, '加拿大', 'Canada', 'CAN', '1'),
(32, '佛得角', 'Cape Verde', 'CPV', '238'),
(33, '中非', 'Central African Republic', 'CAF', '236'),
(34, '乍得', 'Chad', 'TCD', '235'),
(35, '智利', 'Chile', 'CHL', '56'),
(36, '中国', 'China', 'CHN', '86'),
(37, '哥伦比亚', 'Colombia', 'COL', '57'),
(38, '科摩罗', 'Comoros', 'COM', '269'),
(39, '刚果（布）', 'Congo (Brazzaville)', 'COG', '242'),
(40, '刚果（金）', 'Congo (Kinshasa)', 'COD', '243'),
(41, '库克群岛（新西兰）', 'Cook Islands', 'COK', '682'),
(42, '哥斯达黎加', 'Costa Rica', 'CRI', '506'),
(43, '科特迪瓦', 'Coate d\'Ivoire', 'CIV', '225'),
(44, '克罗地亚', 'Croatia', 'HRV', '385'),
(45, '古巴', 'Cuba', 'CUB', '53'),
(46, '塞浦路斯', 'Cyprus', 'CYP', '357'),
(47, '捷克', 'Czech Republic', 'CZE', '420'),
(48, '丹麦', 'Denmark', 'DNK', '45'),
(49, '吉布提', 'Djibouti', 'DJI', '253'),
(50, '多米尼克', 'Dominica', 'DMA', '1767'),
(51, '多米尼加', 'Dominican Republic', 'DOM', '1809'),
(52, '厄瓜多尔', 'Ecuador', 'ECU', '593'),
(53, '埃及', 'Egypt', 'EGY', '20'),
(54, '萨尔瓦多', 'El Salvador', 'SLV', '503'),
(55, '赤道几内亚', 'Equatorial Guinea', 'GNQ', '240'),
(56, '厄立特里亚', 'Eritrea', 'ERI', '291'),
(57, '爱沙尼亚', 'Estonia', 'EST', '372'),
(58, '埃塞俄比亚', 'Ethiopia', 'ETH', '251'),
(59, '斐济', 'Fiji', 'FJI', '679'),
(60, '芬兰', 'Finland', 'FIN', '358'),
(61, '法国', 'France', 'FRA', '33'),
(62, '加蓬', 'Gabon', 'GAB', '241'),
(63, '冈比亚', 'Gambia, The', 'GMB', '220'),
(64, '格鲁吉亚', 'Georgia', 'GEO', '995'),
(65, '德国', 'Germany', 'DEU', '49'),
(66, '加纳', 'Ghana', 'GHA', '233'),
(67, '希腊', 'Greece', 'GRC', '30'),
(68, '格林纳达', 'Grenada', 'GRD', '1473'),
(69, '危地马拉', 'Guatemala', 'GTM', '502'),
(70, '几内亚', 'Guinea', 'GIN', '224'),
(71, '几内亚比绍', 'Guinea-Bissau', 'GNB', '245'),
(72, '圭亚那', 'Guyana', 'GUY', '592'),
(73, '海地', 'Haiti', 'HTI', '509'),
(74, '洪都拉斯', 'Honduras', 'HND', '504'),
(75, '匈牙利', 'Hungary', 'HUN', '36'),
(76, '冰岛', 'Iceland', 'ISL', '354'),
(77, '印度', 'India', 'IND', '91'),
(78, '印尼', 'Indonesia', 'IDN', '62'),
(79, '伊朗', 'Iran', 'IRN', '98'),
(80, '伊拉克', 'Iraq', 'IRQ', '964'),
(81, '爱尔兰', 'Ireland', 'IRL', '353'),
(82, '以色列', 'Israel', 'ISR', '972'),
(83, '意大利', 'Italy', 'ITA', '39'),
(84, '牙买加', 'Jamaica', 'JAM', '1876'),
(85, '日本', 'Japan', 'JPN', '81'),
(86, '约旦', 'Jordan', 'JOR', '962'),
(87, '哈萨克斯坦', 'Kazakhstan', 'KAZ', '7'),
(88, '肯尼亚', 'Kenya', 'KEN', '254'),
(89, '基里巴斯', 'Kiribati', 'KIR', '686'),
(90, '科索沃', 'Kosovo', NULL, '384'),
(91, '科威特', 'Kuwait', 'KWT', '965'),
(92, '吉尔吉斯斯坦', 'Kyrgyzstan', 'KGZ', '996'),
(93, '老挝', 'Laos', 'LAO', '856'),
(94, '拉脱维亚', 'Latvia', 'LVA', '371'),
(95, '黎巴嫩', 'Lebanon', 'LBN', '961'),
(96, '莱索托', 'Lesotho', 'LSO', '266'),
(97, '利比里亚', 'Liberia', 'LBR', '231'),
(98, '利比亚', 'Libya', 'LBY', '218'),
(99, '列支敦士登', 'Liechtenstein', 'LIE', '423'),
(100, '立陶宛', 'Lithuania', 'LTU', '370'),
(101, '卢森堡', 'Luxembourg', 'LUX', '352'),
(102, '马其顿', 'Macedonia', 'MKD', '389'),
(103, '马达加斯加', 'Madagascar', 'MDG', '261'),
(104, '马拉维', 'Malawi', 'MWI', '265'),
(105, '马来西亚', 'Malaysia', 'MYS', '60'),
(106, '马尔代夫', 'Maldives', 'MDV', '960'),
(107, '马里', 'Mali', 'MLI', '223'),
(108, '马耳他', 'Malta', 'MLT', '356'),
(109, '毛里塔尼亚', 'Mauritania', 'MRT', '222'),
(110, '毛里求斯', 'Mauritius', 'MUS', '230'),
(111, '墨西哥', 'Mexico', 'MEX', '52'),
(112, '摩尔多瓦', 'Moldova', 'MDA', '373'),
(113, '摩纳哥', 'Monaco', 'MCO', '377'),
(114, '蒙古', 'Mongolia', 'MNG', '976'),
(115, '黑山', 'Montenegro', 'MNE', '382'),
(116, '摩洛哥', 'Morocco', 'MAR', '212'),
(117, '莫桑比克', 'Mozambique', 'MOZ', '258'),
(118, '缅甸', 'Myanmar', 'MMR', '95'),
(119, '纳米比亚', 'Namibia', 'NAM', '264'),
(120, '尼泊尔', 'Nepal', 'NPL', '977'),
(121, '荷兰', 'Netherlands', 'NLD', '31'),
(122, '新西兰', 'New Zealand', 'NZL', '64'),
(123, '尼加拉瓜', 'Nicaragua', 'NIC', '505'),
(124, '尼日尔', 'Niger', 'NER', '227'),
(125, '尼日利亚', 'Nigeria', 'NGA', '234'),
(126, '纽埃（新西兰）', 'Niue', 'NIU', '683'),
(127, '朝鲜', 'Nouth Korea', 'PRK', '850'),
(128, '挪威', 'Norway', 'NOR', '47'),
(129, '阿曼', 'Oman', 'OMN', '968'),
(130, '巴基斯坦', 'Pakistan', 'PAK', '92'),
(131, '帕劳', 'Palau', 'PLW', '680'),
(132, '巴勒斯坦', 'Palestine', 'PSE', '970'),
(133, '巴拿马', 'Panama', 'PAN', '507'),
(134, '巴布亚新几内亚', 'Papua New Guinea', 'PNG', '675'),
(135, '巴拉圭', 'Paraguay', 'PRY', '595'),
(136, '秘鲁', 'Peru', 'PER', '51'),
(137, '菲律宾', 'Philippines', 'PHL', '63'),
(138, '波兰', 'Poland', 'POL', '48'),
(139, '葡萄牙', 'Portugal', 'PRT', '351'),
(140, '卡塔尔', 'Qatar', 'QAT', '974'),
(141, '罗马尼亚', 'Romania', 'ROU', '40'),
(142, '俄罗斯', 'Russia', 'RUS', '7'),
(143, '卢旺达', 'Rwanda', 'RWA', '250'),
(144, '圣基茨和尼维斯', 'Saint Christopher and Nevis', 'KNA', '1869'),
(145, '圣卢西亚', 'Saint Lucia', 'LCA', '1758'),
(146, '圣文森特和格林纳丁斯', 'Saint Vincent and the Grenadines', 'VCT', '1784'),
(147, '萨摩亚', 'Samoa', 'WSM', '685'),
(148, '圣马力诺', 'San Marino', 'SMR', '378'),
(149, '沙特阿拉伯', 'Saudi Arabia', 'SAU', '966'),
(150, '塞内加尔', 'Senegal', 'SEN', '221'),
(151, '塞尔维亚', 'Serbia', 'SRB', '381'),
(152, '塞舌尔', 'Seychelles', 'SYC', '248'),
(153, '塞拉利昂', 'Sierra Leone', 'SLE', '232'),
(154, '新加坡', 'Singapore', 'SGP', '65'),
(155, '斯洛伐克', 'Slovakia', 'SVK', '421'),
(156, '斯洛文尼亚', 'Slovenia', 'SVN', '386'),
(157, '所罗门群岛', 'Solomon Islands', 'SLB', '677'),
(158, '索马里', 'Somali', 'SOM', '252'),
(159, '南非', 'South Africa', 'ZAF', '27'),
(160, '韩国', 'South Korea', 'KOR', '82'),
(161, '南苏丹', 'South Sudan', 'SSD', '211'),
(162, '西班牙', 'Spain', 'ESP', '34'),
(163, '斯里兰卡', 'Sri Lanka', 'LKA', '94'),
(164, '苏丹', 'Sudan', 'SDN', '249'),
(165, '苏里南', 'Suriname', 'SUR', '597'),
(166, '斯威士兰', 'Swaziland', 'SWZ', '268'),
(167, '瑞典', 'Sweden', 'SWE', '46'),
(168, '瑞士', 'Switzerland', 'CHE', '41'),
(169, '叙利亚', 'Syria', 'SYR', '963'),
(170, '台湾', 'Taiwan', 'TWN', '886'),
(171, '塔吉克斯坦', 'Tajikistan', 'TJK', '992'),
(172, '坦桑尼亚', 'Tanzania', 'TZA', '255'),
(173, '泰国', 'Thailand', 'THA', '66'),
(174, '东帝汶', 'Timor-Leste', 'TLS', '670'),
(175, '多哥', 'Togo', 'TGO', '228'),
(176, '汤加', 'Tonga', 'TON', '676'),
(177, '特立尼达和多巴哥', 'Trinidad and Tobago', 'TTO', '1868'),
(178, '突尼斯', 'Tunisia', 'TUN', '216'),
(179, '土耳其', 'Turkey', 'TUR', '90'),
(180, '土库曼斯坦', 'Turkmenistan', 'TKM', '993'),
(181, '乌干达', 'Uganda', 'UGA', '256'),
(182, '乌克兰', 'Ukraine', 'UKR', '380'),
(183, '阿联酋', 'United Arab Emirates', 'ARE', '971'),
(184, '英国', 'United Kingdom', 'GBR', '44'),
(185, '美国', 'United States', 'USA', '1'),
(186, '乌拉圭', 'Uruguay', 'URY', '598'),
(187, '乌兹别克斯坦', 'Uzbekistan', 'UZB', '998'),
(188, '瓦努阿图', 'Vanuatu', 'VUT', '678'),
(189, '委内瑞拉', 'Venezuela', 'VEN', '58'),
(190, '越南', 'Vietnam', 'VNM', '84'),
(191, '也门', 'Yemen', 'YEM', '967'),
(192, '赞比亚', 'Zambia', 'ZMB', '260'),
(193, '津巴布韦', 'Zimbabwe', 'ZWE', '263'),
(194, '美属萨摩亚（美国）', 'American Samoa', 'ASM', '1684'),
(195, '安圭拉 （英国）', 'Anguilla', 'AIA', '1264'),
(196, '阿鲁巴（荷兰）', 'Aruba', 'ABW', '297'),
(197, '百慕大（英国）', 'Bermuda', 'BMU', '1441'),
(198, '开曼群岛（英国）', 'Cayman Islands', 'CYM', '1345'),
(199, '福克兰群岛（英国、阿根廷争议）', 'Falkland Islands (Islas Malvinas)', 'FLK', '500'),
(200, '法罗群岛（丹麦）', 'Faroe Islands', 'FRO', '298'),
(201, '直布罗陀（英国）', 'Gibraltar', 'GIB', '350'),
(202, '格陵兰（丹麦）', 'Greenland', 'GRL', '299'),
(203, '香港（中国）', 'Hong Kong', 'HKG', '852'),
(204, '澳门（中国）', 'Macao', 'MAC', '853'),
(205, '蒙特塞拉特（英国）', 'Montserrat', 'MSR', '1664'),
(206, '新喀里多尼亚（法国）', 'New Caledonia', 'NCL', '687'),
(207, '波多黎各（美国）', 'Puerto Rico', 'PRI', '1787'),
(208, '托克劳（新西兰）', 'Tokelau', 'TKL', '690'),
(209, '特克斯和凯科斯群岛（英国）', 'Turks and Caicos Islands', 'TCA', '1649'),
(210, '留尼旺和马约特（法国）', NULL, NULL, '262'),
(211, '爱沙尼亚', 'Republic of Estonia', NULL, '372');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_auth_extend`
--

CREATE TABLE `tw_auth_extend` (
  `group_id` mediumint(10) UNSIGNED NOT NULL COMMENT '用户id',
  `extend_id` mediumint(8) UNSIGNED NOT NULL COMMENT '扩展表中数据的id',
  `type` tinyint(1) UNSIGNED NOT NULL COMMENT '扩展类型标识 1:栏目分类权限;2:模型权限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_auth_extend`
--

INSERT INTO `tw_auth_extend` (`group_id`, `extend_id`, `type`) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 2, 1),
(1, 2, 2),
(1, 3, 1),
(1, 3, 2),
(1, 4, 1),
(1, 37, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_auth_group`
--

CREATE TABLE `tw_auth_group` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(1000) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_auth_group`
--

INSERT INTO `tw_auth_group` (`id`, `module`, `type`, `title`, `description`, `status`, `rules`) VALUES
(1, 'admin', 1, 'superadmin', '超级管理员组,拥有系统所有权限', 1, '1519,1580,1581,1582,1624,1674,2268,2269,2275,2276,2277,2279,2281,2283,2284,2285,2286,2287,2288,2291,2292,2293,2300,2301,2302,2303,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2334,2335,2336,2339,2340,2341,2348,2349,2352,2356,2358,2359,2362,2365,2367,2370,2372,2373,2374,2375,2376,2379,2389,2390,2392,2393,2394,2397,2399,2406,2407,2408,2409,2410,2411,2412,2415,2416,2420,2422,2424,2425,2426,2427,2428,2429,2430,2431,2432,2434,2435,2438,2439,2440,2441,2443,2444,2445,2449,2451,2452,2453,2454,2455,2456,2457,2458,2459,2460,2461,2462,2463'),
(16, 'admin', 1, 'information', '文档组管理员', 1, '2275,2276,2285,2286,2287,2288,2289,2290,2318,2319,2321,2336,2339,2362,2375,2435,2438,2439,2440,2441'),
(17, 'admin', 1, 'kefu', '客户服务', 1, '2275,2276,2279,2285,2286,2287,2288,2289,2290,2310,2318,2319,2321,2336,2339,2349,2362,2375,2435,2438,2439,2440,2441'),
(18, 'admin', 1, 'shichang', '市场组管理员', 1, '1580,1581,1582,1624,1674,2268,2269,2275,2276,2277,2279,2285,2286,2287,2288,2289,2290,2291,2292,2300,2301,2302,2303,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2314,2315,2316,2317,2318,2319,2321,2322,2323,2324,2325,2326,2334,2335,2336,2339,2340,2341,2348,2349,2356,2359,2362,2365,2367,2375,2376,2399,2420,2426,2432,2433,2434,2435,2438,2439,2440,2441,2451,2452,2456,2458,2461,2462,2463'),
(19, 'admin', 1, 'caiwu', '财务管理员', 1, '1519,2275,2279,2285,2293,2349,2422,2424,2427,2449,2453,2454,2455'),
(22, 'admin', 1, 'low', '只有查看交易市场权限', 1, '2275,2279,2285,2310,2349,2356,2359,2451,2452,2456,2458');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_auth_group_access`
--

CREATE TABLE `tw_auth_group_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL COMMENT '用户组id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_auth_group_access`
--

INSERT INTO `tw_auth_group_access` (`id`, `uid`, `group_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_auth_rule`
--

CREATE TABLE `tw_auth_rule` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_auth_rule`
--

INSERT INTO `tw_auth_rule` (`id`, `module`, `type`, `name`, `title`, `status`, `condition`) VALUES
(425, 'admin', 1, 'Admin/article/add', '新增', -1, ''),
(427, 'admin', 1, 'Admin/article/setStatus', '改变状态', -1, ''),
(428, 'admin', 1, 'Admin/article/update', '保存', -1, ''),
(429, 'admin', 1, 'Admin/article/autoSave', '保存草稿', -1, ''),
(430, 'admin', 1, 'Admin/article/move', '移动', -1, ''),
(432, 'admin', 2, 'Admin/Article/mydocument', '内容', -1, ''),
(437, 'admin', 1, 'Admin/Trade/config', '交易配置', -1, ''),
(449, 'admin', 1, 'Admin/Index/operate', '市场统计', -1, ''),
(455, 'admin', 1, 'Admin/Issue/config', '认购配置', -1, ''),
(457, 'admin', 1, 'Admin/Index/database/type/export', '数据备份', -1, ''),
(461, 'admin', 1, 'Admin/Article/chat', '聊天列表', -1, ''),
(464, 'admin', 1, 'Admin/Index/database/type/import', '数据还原', -1, ''),
(471, 'admin', 1, 'Admin/Mytx/config', '提现配置', -1, ''),
(472, 'admin', 2, 'Admin/Mytx/index', '提现', -1, ''),
(473, 'admin', 1, 'Admin/Config/market', '市场配置', -1, ''),
(477, 'admin', 1, 'Admin/User/myzr', '转入虚拟币', -1, ''),
(479, 'admin', 1, 'Admin/User/myzc', '转出虚拟币', -1, ''),
(482, 'admin', 2, 'Admin/ExtA/index', '扩展', -1, ''),
(488, 'admin', 1, 'Admin/Auth_manager/createGroup', '新增用户组', -1, ''),
(499, 'admin', 1, 'Admin/ExtA/index', '扩展管理', -1, ''),
(509, 'admin', 1, 'Admin/Article/adver_edit', '编辑', -1, ''),
(510, 'admin', 1, 'Admin/Article/adver_status', '修改', -1, ''),
(513, 'admin', 1, 'Admin/Issue/index_edit', '认购编辑', -1, ''),
(514, 'admin', 1, 'Admin/Issue/index_status', '认购修改', -1, ''),
(515, 'admin', 1, 'Admin/Article/chat_edit', '编辑', -1, ''),
(516, 'admin', 1, 'Admin/Article/chat_status', '修改', -1, ''),
(517, 'admin', 1, 'Admin/User/coin_edit', 'coin修改', -1, ''),
(519, 'admin', 1, 'Admin/Mycz/type_status', '状态修改', -1, ''),
(520, 'admin', 1, 'Admin/Issue/log_status', '认购状态', -1, ''),
(521, 'admin', 1, 'Admin/Issue/log_jiedong', '认购解冻', -1, ''),
(522, 'admin', 1, 'Admin/Tools/database/type/export', '数据备份', -1, ''),
(525, 'admin', 1, 'Admin/Config/coin_edit', '编辑', -1, ''),
(526, 'admin', 1, 'Admin/Config/coin_add', '编辑币种', -1, ''),
(527, 'admin', 1, 'Admin/Config/coin_status', '状态修改', -1, ''),
(528, 'admin', 1, 'Admin/Config/market_edit', '编辑', -1, ''),
(530, 'admin', 1, 'Admin/Tools/database/type/import', '数据还原', -1, ''),
(541, 'admin', 2, 'Admin/Trade/config', '交易', -1, ''),
(569, 'admin', 1, 'Admin/ADVERstatus', '修改', -1, ''),
(570, 'admin', 1, 'Admin/Tradelog/index', '交易记录', -1, ''),
(585, 'admin', 1, 'Admin/Config/mycz', '充值配置', -1, ''),
(590, 'admin', 1, 'Admin/Mycztype/index', '充值类型', -1, ''),
(600, 'admin', 1, 'Admin/Usergoods/index', '用户联系地址', -1, ''),
(1379, 'admin', 1, 'Admin/Bazaar/index', '集市管理', -1, ''),
(1405, 'admin', 1, 'Admin/Bazaar/config', '集市配置', -1, ''),
(1425, 'admin', 1, 'Admin/Bazaar/log', '集市记录', -1, ''),
(1451, 'admin', 1, 'Admin/Bazaar/invit', '集市推广', -1, ''),
(1519, 'admin', 2, 'Admin/Finance/index', '财务', 1, ''),
(1575, 'admin', 1, 'Admin/Shop/index', '商品管理', -1, ''),
(1578, 'admin', 1, 'Admin/Huafei/index', '充值记录', -1, ''),
(1579, 'admin', 1, 'Admin/Huafei/config', '充值配置', -1, ''),
(1580, 'admin', 1, 'Admin/Vote/index', '投票记录', 1, ''),
(1581, 'admin', 1, 'Admin/Vote/type', '投票配置', 1, ''),
(1582, 'admin', 1, 'Admin/Money/index', '理财中心', 1, ''),
(1599, 'admin', 1, 'Admin/Config/moble', '短信配置', -1, ''),
(1606, 'admin', 1, 'Admin/Shop/config', '商城配置', -1, ''),
(1607, 'admin', 1, 'Admin/Money/log', '理财记录', -1, ''),
(1623, 'admin', 1, 'Admin/Shop/type', '商品类型', -1, ''),
(1624, 'admin', 1, 'Admin/Fenhong/index', '分红配置', 1, ''),
(1625, 'admin', 1, 'Admin/Huafei/type', '充值金额', -1, ''),
(1626, 'admin', 1, 'Admin/Money/fee', '理财明细', -1, ''),
(1651, 'admin', 1, 'Admin/Shop/coin', '付款方式', -1, ''),
(1652, 'admin', 1, 'Admin/Huafei/coin', '付款方式', -1, ''),
(1673, 'admin', 1, 'Admin/Shop/log', '购物记录', -1, ''),
(1674, 'admin', 1, 'Admin/Fenhong/log', '分红记录', 1, ''),
(1681, 'admin', 1, 'Admin/Shop/goods', '收货地址', -1, ''),
(2092, 'admin', 2, 'Admin/Game/index', '应用', -1, ''),
(2168, 'admin', 1, 'Admin/Config/mobile', '短信配置', -1, ''),
(2251, 'admin', 1, 'Admin/Ptpbc/list', '点对点交易记录', -1, ''),
(2255, 'admin', 1, 'Admin/AuthManager/createGroup', '新增用户组', 1, ''),
(2256, 'admin', 1, 'Admin/AuthManager/editgroup', '编辑用户组', 1, ''),
(2257, 'admin', 1, 'Admin/AuthManager/writeGroup', '更新用户组', 1, ''),
(2258, 'admin', 1, 'Admin/AuthManager/changeStatus', '改变状态', 1, ''),
(2259, 'admin', 1, 'Admin/AuthManager/access', '访问授权', 1, ''),
(2260, 'admin', 1, 'Admin/AuthManager/category', '分类授权', 1, ''),
(2261, 'admin', 1, 'Admin/AuthManager/user', '成员授权', 1, ''),
(2262, 'admin', 1, 'Admin/AuthManager/tree', '成员列表授权', 1, ''),
(2263, 'admin', 1, 'Admin/AuthManager/group', '用户组', 1, ''),
(2264, 'admin', 1, 'Admin/AuthManager/addToGroup', '添加到用户组', 1, ''),
(2265, 'admin', 1, 'Admin/AuthManager/removeFromGroup', '用户组移除', 1, ''),
(2266, 'admin', 1, 'Admin/AuthManager/addToCategory', '分类添加到用户组', 1, ''),
(2267, 'admin', 1, 'Admin/AuthManager/addToModel', '模型添加到用户组', 1, ''),
(2268, 'admin', 1, 'Admin/Trade/status', '修改状态', 1, ''),
(2269, 'admin', 1, 'Admin/Trade/chexiao', '撤销挂单', 1, ''),
(2270, 'admin', 1, 'Admin/Shop/images', '图片', 1, ''),
(2271, 'admin', 1, 'Admin/Login/index', '用户登录', -1, ''),
(2272, 'admin', 1, 'Admin/Login/loginout', '用户退出', -1, ''),
(2273, 'admin', 1, 'Admin/User/setpwd', '修改管理员密码', -1, ''),
(2274, 'admin', 1, 'Admin/Analog/console', '行情调整', -1, ''),
(2275, 'admin', 2, 'Admin/Index/index', '首页', 1, ''),
(2276, 'admin', 2, 'Admin/Article/index', '内容', 1, ''),
(2277, 'admin', 2, 'Admin/User/index', '用户', 1, ''),
(2278, 'admin', 2, 'Admin/Finance/mycz', '财务', -1, ''),
(2279, 'admin', 2, 'Admin/Trade/index', '交易', 1, ''),
(2280, 'admin', 2, 'Admin/Issue/index', '应用', -1, ''),
(2281, 'admin', 2, 'Admin/Config/index', '系统', 1, ''),
(2282, 'admin', 2, 'Admin/Operate/index', '运营', -1, ''),
(2283, 'admin', 2, 'Admin/Tools/index', '数据备份', 1, ''),
(2284, 'admin', 2, 'Admin/Cloud/index', '扩展', 1, ''),
(2285, 'admin', 1, 'Admin/Index/index', '后台首页', 1, ''),
(2286, 'admin', 1, 'Admin/Article/index', '文章管理', 1, ''),
(2287, 'admin', 1, 'Admin/Article/edit', '编辑添加', 1, ''),
(2288, 'admin', 1, 'Admin/Text/index', '提示文字', 1, ''),
(2289, 'admin', 1, 'Admin/Text/edit', '编辑', -1, ''),
(2290, 'admin', 1, 'Admin/Text/status', '修改', -1, ''),
(2291, 'admin', 1, 'Admin/User/index', '用户管理', 1, ''),
(2292, 'admin', 1, 'Admin/User/config', '用户配置', 1, ''),
(2293, 'admin', 1, 'Admin/Finance/index', '财务明细', 1, ''),
(2294, 'admin', 1, 'Admin/Finance/myczTypeEdit', '编辑添加', 1, ''),
(2295, 'admin', 1, 'Admin/Cloud/index', '扩展', -1, ''),
(2296, 'admin', 1, 'Admin/Finance/config', '配置', 1, ''),
(2297, 'admin', 1, 'Admin/Tools/index', '清理缓存', -1, ''),
(2298, 'admin', 1, 'Admin/Finance/type', '类型', 1, ''),
(2299, 'admin', 1, 'Admin/Finance/type_status', '状态修改', 1, ''),
(2300, 'admin', 1, 'Admin/User/edit', '编辑添加', 1, ''),
(2301, 'admin', 1, 'Admin/User/status', '修改状态', 1, ''),
(2302, 'admin', 1, 'Admin/User/adminEdit', '编辑添加', 1, ''),
(2303, 'admin', 1, 'Admin/User/adminStatus', '修改状态', 1, ''),
(2304, 'admin', 1, 'Admin/User/authEdit', '编辑添加', 1, ''),
(2305, 'admin', 1, 'Admin/User/authStatus', '修改状态', 1, ''),
(2306, 'admin', 1, 'Admin/User/authStart', '重新初始化权限', 1, ''),
(2307, 'admin', 1, 'Admin/User/logEdit', '编辑添加', 1, ''),
(2308, 'admin', 1, 'Admin/User/logStatus', '修改状态', 1, ''),
(2309, 'admin', 1, 'Admin/User/qianbaoEdit', '编辑添加', 1, ''),
(2310, 'admin', 1, 'Admin/Trade/index', '委托管理', 1, ''),
(2311, 'admin', 1, 'Admin/User/qianbaoStatus', '修改状态', 1, ''),
(2312, 'admin', 1, 'Admin/User/bankEdit', '编辑添加', 1, ''),
(2313, 'admin', 1, 'Admin/User/bankStatus', '修改状态', 1, ''),
(2314, 'admin', 1, 'Admin/User/coinEdit', '编辑添加', 1, ''),
(2315, 'admin', 1, 'Admin/User/coinLog', '财产统计', 1, ''),
(2316, 'admin', 1, 'Admin/User/goodsEdit', '编辑添加', 1, ''),
(2317, 'admin', 1, 'Admin/User/goodsStatus', '修改状态', 1, ''),
(2318, 'admin', 1, 'Admin/Article/typeEdit', '编辑添加', 1, ''),
(2319, 'admin', 1, 'Admin/Article/youqingEdit', '编辑添加', 1, ''),
(2320, 'admin', 1, 'Admin/Config/index', '网站信息', 1, ''),
(2321, 'admin', 1, 'Admin/Article/adverEdit', '编辑添加', 1, ''),
(2322, 'admin', 1, 'Admin/User/authAccess', '访问授权', 1, ''),
(2323, 'admin', 1, 'Admin/User/authAccessUp', '访问授权修改', 1, ''),
(2324, 'admin', 1, 'Admin/User/authUser', '成员授权', 1, ''),
(2325, 'admin', 1, 'Admin/User/authUserAdd', '成员授权增加', 1, ''),
(2326, 'admin', 1, 'Admin/User/authUserRemove', '成员授权解除', 1, ''),
(2327, 'admin', 1, 'Admin/Operate/index', '推广奖励', -1, ''),
(2328, 'admin', 1, 'Admin/App/config', 'APP配置', -1, ''),
(2329, 'admin', 1, 'AdminUser/detail', '后台用户详情', -1, ''),
(2330, 'admin', 1, 'AdminUser/status', '后台用户状态', -1, ''),
(2331, 'admin', 1, 'AdminUser/add', '后台用户新增', -1, ''),
(2332, 'admin', 1, 'AdminUser/edit', '后台用户编辑', -1, ''),
(2333, 'admin', 1, 'Admin/Articletype/edit', '编辑', -1, ''),
(2334, 'admin', 1, 'Admin/Issue/index', '认购配置', 1, ''),
(2335, 'admin', 1, 'Admin/Issue/log', '认购记录', 1, ''),
(2336, 'admin', 1, 'Admin/Article/images', '上传图片', 1, ''),
(2337, 'admin', 1, 'Admin/Adver/edit', '编辑', 1, ''),
(2338, 'admin', 1, 'Admin/Adver/status', '修改', 1, ''),
(2339, 'admin', 1, 'Admin/Article/type', '栏目类型', 1, ''),
(2340, 'admin', 1, 'Admin/User/index_edit', '编辑', 1, ''),
(2341, 'admin', 1, 'Admin/User/index_status', '修改', 1, ''),
(2342, 'admin', 1, 'Admin/Finance/mycz', '人民币充值', -1, ''),
(2343, 'admin', 1, 'Admin/Finance/myczTypeStatus', '状态修改', 1, ''),
(2344, 'admin', 1, 'Admin/Finance/myczTypeImage', '上传图片', 1, ''),
(2345, 'admin', 1, 'Admin/Finance/mytxStatus', '修改状态', 1, ''),
(2346, 'admin', 1, 'Admin/Tools/dataExport', '备份数据库', -1, ''),
(2347, 'admin', 1, 'Admin/Tools/dataImport', '还原数据库', -1, ''),
(2348, 'admin', 1, 'Admin/User/admin', '管理员管理', 1, ''),
(2349, 'admin', 1, 'Admin/Trade/log', '成交记录', 1, ''),
(2350, 'admin', 1, 'Admin/Issue/edit', '认购编辑', -1, ''),
(2351, 'admin', 1, 'Admin/Issue/status', '认购修改', -1, ''),
(2352, 'admin', 1, 'Admin/Invit/config', '推广配置', 1, ''),
(2353, 'admin', 1, 'Admin/App/vip_config_list', 'APP等级', -1, ''),
(2354, 'admin', 1, 'Admin/Link/edit', '编辑', 1, ''),
(2355, 'admin', 1, 'Admin/Link/status', '修改', 1, ''),
(2356, 'admin', 1, 'Admin/Index/coin', '币种统计', 1, ''),
(2357, 'admin', 1, 'Admin/Cloud/update', '自动升级', -1, ''),
(2358, 'admin', 1, 'Admin/Config/hq', '行情配置', 1, ''),
(2359, 'admin', 1, 'Admin/Index/market', '市场统计', 1, ''),
(2360, 'admin', 1, 'Admin/Chat/edit', '编辑', 1, ''),
(2361, 'admin', 1, 'Admin/Chat/status', '修改', 1, ''),
(2362, 'admin', 1, 'Admin/Article/adver', '广告管理', 1, ''),
(2363, 'admin', 1, 'Admin/Trade/chat', '交易聊天', -1, ''),
(2364, 'admin', 1, 'Admin/Finance/myczType', '人民币充值方式', -1, ''),
(2365, 'admin', 1, 'Admin/Usercoin/edit', '财产修改', 1, ''),
(2366, 'admin', 1, 'Admin/Finance/mytxExcel', '导出选中', 1, ''),
(2367, 'admin', 1, 'Admin/User/auth', '权限列表', 1, ''),
(2368, 'admin', 1, 'Admin/Mycz/status', '修改', 1, ''),
(2369, 'admin', 1, 'Admin/Mycztype/status', '状态修改', 1, ''),
(2370, 'admin', 1, 'Admin/Config/contact', '客服配置', 1, ''),
(2371, 'admin', 1, 'Admin/App/adsblock_list', 'APP广告板块', -1, ''),
(2372, 'admin', 1, 'Admin/Tools/queue', '服务器队列', 1, ''),
(2373, 'admin', 1, 'Admin/Tools/qianbao', '钱包检查', 1, ''),
(2374, 'admin', 1, 'Admin/Cloud/game', '应用管理', 1, ''),
(2375, 'admin', 1, 'Admin/Article/youqing', '友情链接', 1, ''),
(2376, 'admin', 1, 'Admin/User/log', '登录日志', 1, ''),
(2377, 'admin', 1, 'Admin/Finance/mytx', '人民币提现', -1, ''),
(2378, 'admin', 1, 'Admin/Finance/mytxChuli', '正在处理', 1, ''),
(2379, 'admin', 1, 'Admin/Config/bank', '银行配置', 1, ''),
(2380, 'admin', 1, 'Admin/Config/bank_edit', '编辑', 1, ''),
(2381, 'admin', 1, 'Admin/Coin/edit', '编辑', 1, ''),
(2382, 'admin', 1, 'Admin/Coin/status', '状态修改', 1, ''),
(2383, 'admin', 1, 'Admin/Market/edit', '编辑市场', 1, ''),
(2384, 'admin', 1, 'Admin/Config/market_add', '状态修改', 1, ''),
(2385, 'admin', 1, 'Admin/Tools/invoke', '其他模块调用', -1, ''),
(2386, 'admin', 1, 'Admin/Tools/optimize', '优化表', -1, ''),
(2387, 'admin', 1, 'Admin/Tools/repair', '修复表', -1, ''),
(2388, 'admin', 1, 'Admin/Tools/del', '删除备份文件', -1, ''),
(2389, 'admin', 1, 'Admin/Tools/export', '数据备份', 1, ''),
(2390, 'admin', 1, 'Admin/Tools/import', '数据恢复', 1, ''),
(2391, 'admin', 1, 'Admin/Tools/excel', '导出数据库', -1, ''),
(2392, 'admin', 1, 'Admin/Tools/exportExcel', '导出Excel', 1, ''),
(2393, 'admin', 1, 'Admin/Tools/importExecl', '导入Excel', 1, ''),
(2394, 'admin', 1, 'Admin/Config/coin', '币种配置', 1, ''),
(2395, 'admin', 1, 'Admin/User/detail', '用户详情', -1, ''),
(2396, 'admin', 1, 'Admin/App/ads_user', 'APP广告用户', -1, ''),
(2397, 'admin', 1, 'Admin/Cloud/theme', '主题模板', 1, ''),
(2398, 'admin', 1, 'Admin/Trade/comment', '币种评论', -1, ''),
(2399, 'admin', 1, 'Admin/User/qianbao', '用户钱包', 1, ''),
(2400, 'admin', 1, 'Admin/Trade/market', '市场配置', -1, ''),
(2401, 'admin', 1, 'Admin/Finance/mytxConfig', '人民币提现配置', -1, ''),
(2402, 'admin', 1, 'Admin/Finance/mytxChexiao', '撤销提现', 1, ''),
(2403, 'admin', 1, 'Admin/Mytx/status', '状态修改', 1, ''),
(2404, 'admin', 1, 'Admin/Mytx/excel', '取消', 1, ''),
(2405, 'admin', 1, 'Admin/Mytx/exportExcel', '导入excel', -1, ''),
(2406, 'admin', 1, 'Admin/Menu/index', '菜单管理', 1, ''),
(2407, 'admin', 1, 'Admin/Menu/sort', '排序', 1, ''),
(2408, 'admin', 1, 'Admin/Menu/add', '添加', 1, ''),
(2409, 'admin', 1, 'Admin/Menu/edit', '编辑', 1, ''),
(2410, 'admin', 1, 'Admin/Cloud/kefu', '客服代码', 1, ''),
(2411, 'admin', 1, 'Admin/Menu/del', '删除', 1, ''),
(2412, 'admin', 1, 'Admin/Cloud/kefuUp', '使用', 1, ''),
(2413, 'admin', 1, 'Admin/Menu/toogleHide', '是否隐藏', -1, ''),
(2414, 'admin', 1, 'Admin/Menu/toogleDev', '是否开发', -1, ''),
(2415, 'admin', 1, 'Admin/Menu/importFile', '导入文件', 1, ''),
(2416, 'admin', 1, 'Admin/Menu/import', '导入', 1, ''),
(2417, 'admin', 1, 'Admin/Config/text', '提示文字', -1, ''),
(2418, 'admin', 1, 'Admin/Ptpbc/log', '点对点交易记录', -1, ''),
(2419, 'admin', 1, 'Admin/Ptpbc/index', '点对点交易', -1, ''),
(2420, 'admin', 1, 'Admin/User/bank', '提现地址', 1, ''),
(2421, 'admin', 1, 'Admin/Trade/invit', '交易推荐', -1, ''),
(2422, 'admin', 1, 'Admin/Finance/myzr', '虚拟币转入', 1, ''),
(2423, 'admin', 1, 'Admin/Finance/mytxQueren', '确认提现', 1, ''),
(2424, 'admin', 1, 'Admin/Finance/myzcQueren', '确认转出', 1, ''),
(2425, 'admin', 1, 'Admin/Config/qita', '系统配置', 1, ''),
(2426, 'admin', 1, 'Admin/User/coin', '用户财产', 1, ''),
(2427, 'admin', 1, 'Admin/Finance/myzc', '虚拟币转出', 1, ''),
(2428, 'admin', 1, 'Admin/Verify/code', '图形验证码', 1, ''),
(2429, 'admin', 1, 'Admin/Verify/mobile', '手机验证码', 1, ''),
(2430, 'admin', 1, 'Admin/Verify/email', '邮件验证码', 1, ''),
(2431, 'admin', 1, 'Admin/Config/daohang', '前端导航配置', 1, ''),
(2432, 'admin', 1, 'Admin/User/goods', '联系地址', 1, ''),
(2433, 'admin', 1, 'Admin/User/myzc_qr', '确认转出', 1, ''),
(2434, 'admin', 1, 'Admin/User/amountlog', '资金变更日志', 1, ''),
(2435, 'admin', 1, 'Admin/Article/status', '修改状态', 1, ''),
(2436, 'admin', 1, 'Admin/Finance/myczStatus', '修改状态', 1, ''),
(2437, 'admin', 1, 'Admin/Finance/myczQueren', '确认到账', 1, ''),
(2438, 'admin', 1, 'Admin/Article/typeStatus', '修改状态', 1, ''),
(2439, 'admin', 1, 'Admin/Article/youqingStatus', '修改状态', 1, ''),
(2440, 'admin', 1, 'Admin/Article/adverStatus', '修改状态', 1, ''),
(2441, 'admin', 1, 'Admin/Article/adverImage', '上传图片', 1, ''),
(2442, 'admin', 2, 'Admin/Finance/myzr', '财务', -1, ''),
(2443, 'admin', 1, 'Admin/Config/smss', '短信群发', 1, ''),
(2444, 'admin', 1, 'Admin/Config/dhfooter', '页脚导航配置', 1, ''),
(2445, 'admin', 1, 'Admin/Config/dhadmin', '后端导航配置', 1, ''),
(2446, 'admin', 2, 'Admin/Issue/log', '应用', -1, ''),
(2447, 'admin', 1, 'Admin/Exchange/myzr', '充值记录', -1, ''),
(2448, 'admin', 1, 'Admin/Exchange/myzc', '提现记录', -1, ''),
(2449, 'admin', 1, 'Admin/Exchange/agent', 'C2C代理商', 1, ''),
(2450, 'admin', 1, 'Admin/Exchange/log', 'C2C配置', -1, ''),
(2451, 'admin', 2, 'Admin/Invit/index', '运营', 1, ''),
(2452, 'admin', 1, 'Admin/Invit/index', '推广奖励', 1, ''),
(2453, 'admin', 1, 'Admin/Exchange/mycz', '充值记录', 1, ''),
(2454, 'admin', 1, 'Admin/Exchange/mytx', '提现记录', 1, ''),
(2455, 'admin', 1, 'Admin/Exchange/config', 'C2C配置', 1, ''),
(2456, 'admin', 1, 'Admin/Invit/mining', '交易挖矿', 1, ''),
(2457, 'admin', 1, 'Admin/Config/marketo', '市场配置', 1, ''),
(2458, 'admin', 1, 'Admin/Invit/recharge', '充值挖矿', 1, ''),
(2459, 'admin', 1, 'Admin/Config/joggle', '接口配置', 1, ''),
(2460, 'admin', 1, 'Admin/Tools/cache', '清理缓存', 1, ''),
(2461, 'admin', 1, 'Admin/Apps/index', '应用首页', 1, ''),
(2462, 'admin', 1, 'Admin/Config/mining', '交易挖矿', 1, ''),
(2463, 'admin', 2, 'Admin/Apps/index', '应用', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_bborder`
--

CREATE TABLE `tw_bborder` (
  `id` int(11) NOT NULL COMMENT '记录ID',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `account` varchar(30) NOT NULL COMMENT '会员账号',
  `type` int(11) NOT NULL COMMENT '订单类型1买2卖',
  `ordertype` int(11) NOT NULL COMMENT '交易类别1限价2市价',
  `symbol` varchar(30) NOT NULL COMMENT '交易对',
  `coin` varchar(30) NOT NULL COMMENT '币名称',
  `coinnum` decimal(20,8) NOT NULL COMMENT '交易币数量',
  `usdtnum` decimal(20,8) NOT NULL COMMENT '交易USDT数量',
  `price` decimal(20,8) NOT NULL COMMENT '交易单价',
  `xjprice` decimal(20,8) NOT NULL COMMENT '限价单价',
  `addtime` datetime NOT NULL COMMENT '添加交易',
  `tradetime` datetime NOT NULL COMMENT '成交时间',
  `fee` decimal(20,8) NOT NULL COMMENT '手续费',
  `sxfbl` float(10,2) NOT NULL COMMENT '手续费比例',
  `status` int(11) NOT NULL COMMENT '1委托2交易完成3已撤消'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='币币交易记录';

--
-- Đang đổ dữ liệu cho bảng `tw_bborder`
--

INSERT INTO `tw_bborder` (`id`, `uid`, `account`, `type`, `ordertype`, `symbol`, `coin`, `coinnum`, `usdtnum`, `price`, `xjprice`, `addtime`, `tradetime`, `fee`, `sxfbl`, `status`) VALUES
(1, 255, '138881', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '10000.00000000', '0.00000000', '16770.06000000', '2022-11-10 14:05:19', '2022-11-10 14:06:58', '0.00000000', 0.00, 3),
(2, 318, 'qq878412', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '100.00000000', '0.00000000', '16847.38000000', '2022-11-12 16:51:00', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(3, 355, '3422260640', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '25.00000000', '0.00000000', '25.00000000', '2022-11-14 15:35:06', '2022-11-14 15:38:54', '0.00000000', 0.00, 3),
(4, 437, 'kaluvala.123n@gmail.com', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '10.00000000', '0.00000000', '10.00000000', '2022-11-15 21:09:52', '2022-11-15 21:10:02', '0.00000000', 0.00, 3),
(5, 389, '8888881', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '2540.00000000', '0.00000000', '10.00000000', '2022-11-15 23:14:08', '2022-11-15 23:14:12', '0.00000000', 0.00, 2),
(6, 417, 'simhasriram@gmail.com', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '16488.52000000', '0.00000000', '16488.52000000', '2022-11-16 22:15:02', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(7, 417, 'simhasriram@gmail.com', 1, 1, 'BTC/USDT', 'BTC', '1.00022202', '16488.52000000', '16484.86000000', '16488.52000000', '2022-11-16 22:15:05', '2022-11-16 22:15:43', '0.00000000', 0.00, 2),
(8, 417, 'simhasriram@gmail.com', 2, 1, 'BTC/USDT', 'BTC', '1.00020000', '16461.08155800', '16457.79000000', '16451.81000000', '2022-11-16 22:51:38', '2022-11-16 22:51:42', '0.00000000', 0.00, 2),
(9, 543, '123123', 1, 1, 'BTC/USDT', 'BTC', '0.18091841', '3000.00000000', '16582.06000000', '16586.47000000', '2022-11-24 17:43:43', '2022-11-24 17:43:52', '0.00000000', 0.00, 2),
(10, 543, '123123', 1, 2, 'BTC/USDT', 'BTC', '0.18084316', '3000.00000000', '16588.96000000', '16588.96000000', '2022-11-24 17:44:15', '2022-11-24 17:44:15', '0.00000000', 0.00, 2),
(11, 543, '123123', 2, 2, 'BTC/USDT', 'BTC', '0.09040000', '1499.24603200', '16584.58000000', '16584.58000000', '2022-11-24 17:51:46', '2022-11-24 17:51:46', '0.00000000', 0.00, 2),
(12, 543, '123123', 2, 2, 'BTC/USDT', 'BTC', '0.09040000', '1499.24603200', '16584.58000000', '16584.58000000', '2022-11-24 17:51:47', '2022-11-24 17:51:47', '0.00000000', 0.00, 2),
(13, 543, '123123', 2, 1, 'BTC/USDT', 'BTC', '0.18000000', '2988.70560000', '16603.92000000', '16597.02000000', '2022-11-24 17:53:21', '2022-11-24 17:53:21', '0.00000000', 0.00, 2),
(14, 551, '0995995995', 1, 1, 'BTC/USDT', 'BTC', '0.00191969', '50.00000000', '26045.90000000', '26045.91000000', '2023-09-01 12:48:32', '2023-09-01 12:49:01', '0.00000000', 0.00, 2),
(15, 551, '0995995995', 2, 1, 'BTC/USDT', 'BTC', '0.00040000', '10.41958000', '26048.95000000', '26044.02000000', '2023-09-01 12:56:36', '2023-09-01 13:02:01', '0.00000000', 0.00, 2),
(16, 552, '0911223344', 1, 1, 'BTC/USDT', 'BTC', '0.09501229', '2474.50000000', '26044.00000000', '26044.18000000', '2023-09-01 13:07:05', '2023-09-01 13:10:01', '0.00000000', 0.00, 3),
(17, 551, '0995995995', 2, 1, 'BTC/USDT', 'BTC', '0.00150000', '0.00000000', '0.00000000', '26048.24000000', '2023-09-01 13:09:52', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(18, 551, '0995995995', 2, 1, 'BTC/USDT', 'BTC', '0.00300000', '78.11793000', '26039.31000000', '26039.31000000', '2023-09-01 13:15:19', '2023-09-01 13:16:02', '0.00000000', 0.00, 2),
(19, 553, '0868450300', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '5207.86400000', '0.00000000', '26039.32000000', '2023-09-01 13:15:33', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(20, 553, '0868450300', 1, 2, 'BTC/USDT', 'BTC', '0.09307082', '2423.50000000', '26039.31000000', '26039.31000000', '2023-09-01 13:15:57', '2023-09-01 13:15:57', '0.00000000', 0.00, 2),
(21, 553, '0868450300', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '1817.62500000', '0.00000000', '26044.62000000', '2023-09-01 13:23:13', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(22, 553, '0868450300', 1, 2, 'BTC/USDT', 'BTC', '0.05233003', '1363.21880000', '26050.41000000', '26050.41000000', '2023-09-01 13:24:17', '2023-09-01 13:24:17', '0.00000000', 0.00, 2),
(23, 553, '0868450300', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '1476.82030000', '0.00000000', '26049.80000000', '2023-09-01 13:25:14', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(24, 553, '0868450300', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '1476.82030000', '0.00000000', '26049.80000000', '2023-09-01 13:25:14', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(25, 553, '0868450300', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '1476.82030000', '0.00000000', '26049.50000000', '2023-09-01 13:27:36', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(26, 555, '0876612347', 1, 1, 'BTC/USDT', 'BTC', '0.01400218', '364.12690000', '26005.02000000', '26009.06300000', '2023-09-01 19:34:56', '2023-09-01 20:45:01', '0.00000000', 0.00, 2),
(27, 554, '0978123123', 2, 1, 'ETH/USDT', 'ETH', '0.01220000', '0.00000000', '0.00000000', '1620.44000000', '2023-09-02 02:57:34', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(28, 554, '0978123123', 1, 2, 'ETH/USDT', 'ETH', '3.23421498', '5236.00000000', '1618.94000000', '1618.94000000', '2023-09-02 02:57:46', '2023-09-02 02:57:46', '0.00000000', 0.00, 2),
(29, 554, '0978123123', 2, 1, 'ETH/USDT', 'ETH', '2.43480000', '0.00000000', '0.00000000', '1619.83000000', '2023-09-02 02:58:43', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(30, 554, '0978123123', 2, 2, 'ETH/USDT', 'ETH', '3.24600000', '5256.83208000', '1619.48000000', '1619.48000000', '2023-09-02 03:00:20', '2023-09-02 03:00:20', '0.00000000', 0.00, 2),
(31, 554, '0978123123', 2, 1, 'ETH/USDT', 'ETH', '0.00045400', '0.73489888', '1618.72000000', '1618.27000000', '2023-09-02 03:01:52', '2023-09-02 03:02:01', '0.00000000', 0.00, 3),
(32, 554, '0978123123', 1, 1, 'BTC/USDT', 'BTC', '0.00000000', '2590.21250000', '0.00000000', '25726.74000000', '2023-09-05 17:17:30', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(33, 554, '0978123123', 1, 2, 'BTC/USDT', 'BTC', '0.10067386', '2590.21250000', '25728.75000000', '25728.75000000', '2023-09-05 17:17:42', '2023-09-05 17:17:42', '0.00000000', 0.00, 2),
(34, 554, '0978123123', 2, 1, 'BTC/USDT', 'BTC', '0.07550000', '0.00000000', '0.00000000', '25722.50000000', '2023-09-05 17:33:39', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(35, 554, '0978123123', 2, 2, 'BTC/USDT', 'BTC', '0.07550000', '1941.87887500', '25720.25000000', '25720.25000000', '2023-09-05 17:34:03', '2023-09-05 17:34:03', '0.00000000', 0.00, 2),
(36, 554, '0978123123', 2, 1, 'BTC/USDT', 'BTC', '0.02500000', '643.01275000', '25720.51000000', '25719.25000000', '2023-09-05 17:34:29', '2023-09-05 17:34:33', '0.00000000', 0.00, 2),
(37, 554, '0978123123', 2, 1, 'BTC/USDT', 'BTC', '0.00017300', '4.45046825', '25725.25000000', '25720.50000000', '2023-09-05 17:35:04', '2023-09-05 17:36:08', '0.00000000', 0.00, 2),
(38, 554, '0978123123', 1, 2, 'ETH/USDT', 'ETH', '1.12243712', '1833.99490000', '1633.94000000', '1633.94000000', '2023-09-08 03:17:29', '2023-09-08 03:17:29', '0.00000000', 0.00, 2),
(39, 554, '0978123123', 2, 2, 'ETH/USDT', 'ETH', '1.32690000', '2167.14615600', '1633.24000000', '1633.24000000', '2023-09-08 03:18:34', '2023-09-08 03:18:34', '0.00000000', 0.00, 2),
(40, 554, '0978123123', 1, 1, 'ETH/USDT', 'ETH', '0.00000000', '3834.56550000', '0.00000000', '1633.92000000', '2023-09-08 03:20:02', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(41, 554, '0978123123', 1, 2, 'ETH/USDT', 'ETH', '3.05976954', '5000.00000000', '1634.11000000', '1634.11000000', '2023-09-08 03:20:32', '2023-09-08 03:20:32', '0.00000000', 0.00, 2),
(42, 554, '0978123123', 2, 1, 'ETH/USDT', 'ETH', '3.05980000', '5000.04977800', '1634.11000000', '1634.11000000', '2023-09-08 03:20:52', '2023-09-08 03:20:56', '0.00000000', 0.00, 2),
(43, 554, '0978123123', 1, 1, 'ETH/USDT', 'ETH', '0.00000000', '1629.48000000', '0.00000000', '1629.48000000', '2023-09-08 21:23:59', '0000-00-00 00:00:00', '0.00000000', 0.00, 3),
(44, 554, '0978123123', 1, 2, 'ETH/USDT', 'ETH', '1.04300877', '1700.00000000', '1629.90000000', '1629.90000000', '2023-09-08 21:24:20', '2023-09-08 21:24:20', '0.00000000', 0.00, 2),
(45, 552, '0911223344', 1, 1, 'BTC/USDT', 'BTC', '0.00387853', '100.00000000', '25782.98000000', '25790.00000000', '2023-09-11 13:33:39', '2023-09-11 16:16:02', '0.00000000', 0.00, 2),
(46, 552, '0911223344', 1, 1, 'BTC/USDT', 'BTC', '0.09182417', '2355.75000000', '25655.01000000', '25662.01000000', '2023-09-11 19:27:34', '2023-09-11 19:28:03', '0.00000000', 0.00, 3),
(47, 552, '0911223344', 1, 1, 'BTC/USDT', 'BTC', '0.06123643', '1570.50000000', '25646.50000000', '25647.26000000', '2023-09-11 19:33:25', '2023-09-11 19:40:02', '0.00000000', 0.00, 2),
(48, 552, '0911223344', 2, 1, 'BTC/USDT', 'BTC', '0.10000000', '2565.60000000', '25656.00000000', '25653.41000000', '2023-09-11 19:39:35', '2023-09-11 20:13:01', '0.00000000', 0.00, 2),
(49, 552, '0911223344', 1, 1, 'BTC/USDT', 'BTC', '0.01723058', '457.05000000', '26525.51000000', '26526.27000000', '2023-09-16 20:25:24', '2023-09-16 20:25:26', '0.00000000', 0.00, 2),
(50, 552, '0911223344', 2, 1, 'BTC/USDT', 'BTC', '0.01700000', '451.17099000', '26539.47000000', '26539.47000000', '2023-09-16 20:36:58', '2023-09-16 20:37:01', '0.00000000', 0.00, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_bbsetting`
--

CREATE TABLE `tw_bbsetting` (
  `id` int(11) NOT NULL COMMENT '记录ID',
  `bb_kstime` varchar(30) NOT NULL COMMENT '开市时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='币币交易设置';

--
-- Đang đổ dữ liệu cho bảng `tw_bbsetting`
--

INSERT INTO `tw_bbsetting` (`id`, `bb_kstime`) VALUES
(1, '00:00~24:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_bill`
--

CREATE TABLE `tw_bill` (
  `id` int(11) NOT NULL COMMENT '记录ID',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `username` varchar(60) NOT NULL COMMENT '会员账号',
  `num` decimal(10,4) NOT NULL COMMENT '操作金额',
  `coinname` varchar(30) NOT NULL COMMENT '币名称',
  `afternum` decimal(10,4) NOT NULL COMMENT '操作后余额',
  `type` int(11) NOT NULL COMMENT '1充币2提币3购买合约4出售合约5购买矿机6购机奖励7矿机收益冻结8释放冻结收益9币币交易USDT10币币交易币种11认购扣除12认购增加13一代认购奖励14二代认购奖励15三代认购奖励16提币退回17充币成功',
  `addtime` datetime NOT NULL COMMENT '操作时间',
  `st` int(11) NOT NULL COMMENT '1增加2减少',
  `remark` varchar(225) NOT NULL COMMENT '操作说明',
  `trc20id` varchar(200) DEFAULT NULL COMMENT 'trc交易id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='操作日志';

--
-- Đang đổ dữ liệu cho bảng `tw_bill`
--

INSERT INTO `tw_bill` (`id`, `uid`, `username`, `num`, `coinname`, `afternum`, `type`, `addtime`, `st`, `remark`, `trc20id`) VALUES
(1, 551, '0995995995', '2000.0000', 'USDT', '2000.0000', 1, '2023-09-01 12:46:28', 1, '管理员手动增加', NULL),
(2, 551, '0995995995', '1000.0000', 'usdt', '3000.0000', 17, '2023-09-01 12:47:49', 1, '充币到账', NULL),
(3, 551, '0995995995', '0.0019', 'btc', '0.0019', 10, '2023-09-01 12:49:01', 1, 'Currency transaction price limit purchase entrustment transaction', NULL),
(4, 551, '0995995995', '50.0000', 'usdt', '2900.0000', 9, '2023-09-01 12:49:01', 2, 'Currency transaction price limit purchase entrustment transaction', NULL),
(5, 551, '0995995995', '100.0000', 'usdt', '2850.0000', 3, '2023-09-01 12:55:39', 2, 'MuaBTC/USDTHợp đồng giây', NULL),
(6, 552, '0911223344', '10000.0000', 'USDT', '10000.0000', 1, '2023-09-01 12:57:45', 1, '管理员手动增加', NULL),
(7, 553, '0868450300', '10000.0000', 'usdt', '10000.0000', 17, '2023-09-01 13:00:53', 1, '充币到账', NULL),
(8, 552, '0911223344', '100.0000', 'usdt', '9900.0000', 3, '2023-09-01 13:01:45', 2, 'MuaBTC/USDTHợp đồng giây', NULL),
(9, 551, '0995995995', '10.4196', 'usdt', '2858.4196', 9, '2023-09-01 13:02:01', 1, 'Currency trading limit sale entrustment transaction', NULL),
(10, 551, '0995995995', '0.0004', 'btc', '0.0011', 10, '2023-09-01 13:02:01', 2, 'Currency trading limit sale entrustment transaction', NULL),
(11, 553, '0868450300', '100.0000', 'usdt', '9900.0000', 3, '2023-09-01 13:03:10', 2, 'MuaBTC/USDTHợp đồng giây', NULL),
(12, 552, '0911223344', '0.0950', 'btc', '0.0950', 10, '2023-09-01 13:10:01', 1, 'Currency transaction price limit purchase entrustment transaction', NULL),
(13, 552, '0911223344', '2474.5000', 'usdt', '4949.0000', 9, '2023-09-01 13:10:01', 2, 'Currency transaction price limit purchase entrustment transaction', NULL),
(14, 553, '0868450300', '100.0000', 'usdt', '9798.0000', 3, '2023-09-01 13:11:26', 2, 'MuaBTC/USDTHợp đồng giây', NULL),
(15, 553, '0868450300', '100.0000', 'usdt', '9696.0000', 3, '2023-09-01 13:11:32', 2, 'MuaBTC/USDTHợp đồng giây', NULL),
(16, 553, '0868450300', '2423.5000', 'usdt', '7270.5000', 9, '2023-09-01 13:15:57', 2, 'Giao dịch mua tiền tệBTC', NULL),
(17, 553, '0868450300', '0.0931', 'btc', '0.0931', 10, '2023-09-01 13:15:57', 1, 'Giao dịch mua tiền tệBTC', NULL),
(18, 551, '0995995995', '78.1179', 'usdt', '2936.5375', 9, '2023-09-01 13:16:02', 1, 'Currency trading limit sale entrustment transaction', NULL),
(19, 551, '0995995995', '0.0030', 'btc', '-0.0030', 10, '2023-09-01 13:16:02', 2, 'Currency trading limit sale entrustment transaction', NULL),
(20, 554, '0978123123', '10000.0000', 'USDT', '10000.0000', 1, '2023-09-01 13:16:44', 1, '管理员手动增加', NULL),
(21, 554, '0978123123', '1000.0000', 'usdt', '9000.0000', 3, '2023-09-01 13:23:25', 2, 'BuyBTC/USDTQuick Margin', NULL),
(22, 553, '0868450300', '1363.2188', 'usdt', '4089.6562', 9, '2023-09-01 13:24:17', 2, 'Giao dịch mua tiền tệBTC', NULL),
(23, 553, '0868450300', '0.0523', 'btc', '0.1454', 10, '2023-09-01 13:24:17', 1, 'Giao dịch mua tiền tệBTC', NULL),
(24, 551, '0995995995', '100.0000', 'usdt', '2836.5375', 3, '2023-09-01 13:26:52', 2, 'MuaBTC/USDTHợp đồng giây', NULL),
(25, 553, '0868450300', '500.0000', 'usdt', '5407.2812', 5, '2023-09-01 14:00:56', 2, 'Mua máy đào', NULL),
(26, 554, '0978123123', '500.0000', 'usdt', '8480.0000', 5, '2023-09-01 14:25:39', 2, 'Purchase miner', NULL),
(27, 554, '0978123123', '1000.0000', 'usdt', '7480.0000', 5, '2023-09-01 14:26:33', 2, 'Purchase miner', NULL),
(28, 554, '0978123123', '1000.0000', 'usdt', '6480.0000', 3, '2023-09-01 14:34:54', 2, 'BuyBTC/USDTQuick Margin', NULL),
(29, 554, '0978123123', '1000.0000', 'usdt', '5460.0000', 3, '2023-09-01 17:22:52', 2, 'MuaBTC/USDTHợp đồng', NULL),
(30, 554, '0978123123', '100.0000', 'usdt', '5340.0000', 3, '2023-09-01 17:26:21', 2, 'MuaBTC/USDTHợp đồng', NULL),
(31, 554, '0978123123', '100.0000', 'usdt', '5238.0000', 3, '2023-09-01 17:26:54', 2, 'MuaBTC/USDTHợp đồng', NULL),
(32, 555, '0876612347', '10000.0000', 'USDT', '10000.0000', 1, '2023-09-01 19:29:44', 1, '管理员手动增加', NULL),
(33, 555, '0876612347', '100.0000', 'usdt', '9535.8731', 3, '2023-09-01 19:41:12', 2, 'MuaBTC/USDTHợp đồng', NULL),
(34, 555, '0876612347', '200.0000', 'usdt', '9333.8731', 3, '2023-09-01 19:41:27', 2, 'MuaBTC/USDTHợp đồng', NULL),
(35, 555, '0876612347', '0.0140', 'btc', '0.0140', 10, '2023-09-01 20:45:01', 1, 'Currency transaction price limit purchase entrustment transaction', NULL),
(36, 555, '0876612347', '364.1269', 'usdt', '8965.7462', 9, '2023-09-01 20:45:01', 2, 'Currency transaction price limit purchase entrustment transaction', NULL),
(37, 446, '8790558251', '2.0000', 'usdt', '2.0000', 8, '2023-09-02 01:00:01', 1, 'Mining machine revenue release', NULL),
(38, 333, '陈总333', '2.0000', 'usdt', '2.0000', 8, '2023-09-02 01:00:01', 1, 'Mining machine revenue release', NULL),
(39, 287, '王总287', '2.0000', 'usdt', '2.0000', 8, '2023-09-02 01:00:01', 1, 'Mining machine revenue release', NULL),
(40, 180, '444444@qq.com', '100000.0000', 'mbn', '100000.0000', 18, '2023-09-02 01:00:01', 1, 'Release of subscribed assets', NULL),
(41, 186, '740026296@qq.com', '10000.0000', 'mbn', '10000.0000', 18, '2023-09-02 01:00:01', 1, 'Release of subscribed assets', NULL),
(42, 186, '740026296@qq.com', '10000.0000', 'mbn', '10000.0000', 18, '2023-09-02 01:00:01', 1, 'Release of subscribed assets', NULL),
(43, 180, '444444@qq.com', '1000.0000', 'mbn', '1000.0000', 18, '2023-09-02 01:00:01', 1, 'Release of subscribed assets', NULL),
(44, 174, 'heima1@gmail.com', '100.0000', 'mbn', '100.0000', 18, '2023-09-02 01:00:01', 1, 'Release of subscribed assets', NULL),
(45, 174, 'heima1@gmail.com', '1000.0000', 'mbn', '1000.0000', 18, '2023-09-02 01:00:01', 1, 'Release of subscribed assets', NULL),
(46, 286, '杜总286', '10000.0000', 'mbn', '10000.0000', 18, '2023-09-02 01:00:01', 1, 'Release of subscribed assets', NULL),
(47, 334, '9191916666', '0.0038', 'eth', '0.0038', 8, '2023-09-02 01:00:01', 1, 'Mining machine revenue release', NULL),
(48, 167, '13888888888', '0.0038', 'eth', '0.0038', 8, '2023-09-02 01:00:01', 1, 'Mining machine revenue release', NULL),
(49, 551, '0995995995', '2.0000', 'usdt', '2836.5375', 8, '2023-09-02 01:00:01', 1, 'Mining machine revenue release', NULL),
(50, 552, '0911223344', '2.0000', 'usdt', '14849.0000', 8, '2023-09-02 01:00:01', 1, 'Mining machine revenue release', NULL),
(51, 553, '0868450300', '2.0000', 'usdt', '5409.2812', 8, '2023-09-02 01:00:01', 1, 'Mining machine revenue release', NULL),
(52, 554, '0978123123', '2.0000', 'usdt', '5238.0000', 8, '2023-09-02 01:00:01', 1, 'Mining machine revenue release', NULL),
(53, 553, '0868450300', '0.0038', 'eth', '0.0038', 8, '2023-09-02 01:00:02', 1, 'Mining machine revenue release', NULL),
(54, 554, '0978123123', '0.0038', 'eth', '0.0038', 8, '2023-09-02 01:00:02', 1, 'Mining machine revenue release', NULL),
(55, 554, '0978123123', '0.0085', 'eth', '0.0122', 8, '2023-09-02 01:00:02', 1, 'Mining machine revenue release', NULL),
(56, 555, '0876612347', '100.0000', 'usdt', '9229.8731', 3, '2023-09-02 01:26:37', 2, 'MuaBTC/USDTHợp đồng', NULL),
(57, 555, '0876612347', '100.0000', 'usdt', '9127.8731', 3, '2023-09-02 01:27:52', 2, 'MuaBTC/USDTHợp đồng', NULL),
(58, 554, '0978123123', '2.0000', 'usdt', '5236.0000', 5, '2023-09-02 02:54:32', 2, 'Mua máy đào', NULL),
(59, 554, '0978123123', '5236.0000', 'usdt', '0.0000', 9, '2023-09-02 02:57:46', 2, 'Giao dịch mua tiền tệETH', NULL),
(60, 554, '0978123123', '3.2342', 'eth', '3.2465', 10, '2023-09-02 02:57:46', 1, 'Giao dịch mua tiền tệETH', NULL),
(61, 554, '0978123123', '3.2460', 'eth', '0.0005', 10, '2023-09-02 03:00:20', 2, 'Giao dịch bán tiền tệETH', NULL),
(62, 554, '0978123123', '5256.8321', 'usdt', '5256.8321', 9, '2023-09-02 03:00:20', 1, 'Giao dịch bán tiền tệETH', NULL),
(63, 554, '0978123123', '0.7349', 'usdt', '5257.5670', 9, '2023-09-02 03:02:01', 1, 'Currency trading limit sale entrustment transaction', NULL),
(64, 554, '0978123123', '0.0005', 'eth', '-0.0005', 10, '2023-09-02 03:02:01', 2, 'Currency trading limit sale entrustment transaction', NULL),
(65, 554, '0978123123', '1000.0000', 'usdt', '4257.5670', 3, '2023-09-02 03:26:17', 2, 'MuaBTC/USDTHợp đồng', NULL),
(66, 554, '0978123123', '1000.0000', 'usdt', '3257.5670', 3, '2023-09-02 03:26:28', 2, 'MuaBTC/USDTHợp đồng', NULL),
(67, 554, '0978123123', '1000.0000', 'usdt', '2257.5670', 3, '2023-09-02 03:28:54', 2, 'MuaBTC/USDTHợp đồng', NULL),
(68, 554, '0978123123', '1000.0000', 'usdt', '1257.5670', 3, '2023-09-02 03:29:10', 2, 'MuaBTC/USDTHợp đồng', NULL),
(69, 554, '0978123123', '1000.0000', 'usdt', '257.5670', 3, '2023-09-02 03:29:17', 2, 'MuaBTC/USDTHợp đồng', NULL),
(70, 554, '0978123123', '1950.0000', 'usdt', '4157.5670', 4, '2023-09-02 03:32:02', 1, 'Contract sale', NULL),
(71, 554, '0978123123', '1639.7168', 'usdt', '567.8502', 11, '2023-09-02 04:10:39', 2, 'MORBIONĐăng ký mua', NULL),
(72, 554, '0978123123', '101.0000', 'mbn', '-101.0000', 12, '2023-09-02 04:10:39', 1, 'MORBIONĐăng ký mua', NULL),
(73, 446, '8790558251', '2.0000', 'usdt', '2.0000', 8, '2023-09-03 01:00:01', 1, 'Mining machine revenue release', NULL),
(74, 333, '陈总333', '2.0000', 'usdt', '2.0000', 8, '2023-09-03 01:00:01', 1, 'Mining machine revenue release', NULL),
(75, 287, '王总287', '2.0000', 'usdt', '2.0000', 8, '2023-09-03 01:00:01', 1, 'Mining machine revenue release', NULL),
(76, 334, '9191916666', '0.0037', 'eth', '0.0037', 8, '2023-09-03 01:00:02', 1, 'Mining machine revenue release', NULL),
(77, 167, '13888888888', '0.0037', 'eth', '0.0037', 8, '2023-09-03 01:00:02', 1, 'Mining machine revenue release', NULL),
(78, 551, '0995995995', '2.0000', 'usdt', '2838.5375', 8, '2023-09-03 01:00:02', 1, 'Mining machine revenue release', NULL),
(79, 552, '0911223344', '2.0000', 'usdt', '14851.0000', 8, '2023-09-03 01:00:02', 1, 'Mining machine revenue release', NULL),
(80, 553, '0868450300', '2.0000', 'usdt', '5411.2812', 8, '2023-09-03 01:00:02', 1, 'Mining machine revenue release', NULL),
(81, 554, '0978123123', '2.0000', 'usdt', '569.8502', 8, '2023-09-03 01:00:02', 1, 'Mining machine revenue release', NULL),
(82, 553, '0868450300', '0.0037', 'eth', '0.0075', 8, '2023-09-03 01:00:02', 1, 'Mining machine revenue release', NULL),
(83, 554, '0978123123', '0.0037', 'eth', '0.0051', 8, '2023-09-03 01:00:02', 1, 'Mining machine revenue release', NULL),
(84, 554, '0978123123', '0.0084', 'eth', '0.0135', 8, '2023-09-03 01:00:02', 1, 'Mining machine revenue release', NULL),
(85, 554, '0978123123', '0.0000', 'usdt', '569.8502', 8, '2023-09-03 01:00:02', 1, 'Mining machine revenue release', NULL),
(86, 554, '0978123123', '10.0000', 'usdt', '559.8502', 3, '2023-09-03 04:36:34', 2, 'MuaBTC/USDTHợp đồng', NULL),
(87, 554, '0978123123', '10.0000', 'usdt', '549.8502', 3, '2023-09-03 04:36:40', 2, 'MuaBTC/USDTHợp đồng', NULL),
(88, 554, '0978123123', '10.0000', 'usdt', '539.8502', 3, '2023-09-03 04:36:45', 2, 'MuaBTC/USDTHợp đồng', NULL),
(89, 554, '0978123123', '10.0000', 'usdt', '529.8502', 3, '2023-09-03 04:36:50', 2, 'MuaBTC/USDTHợp đồng', NULL),
(90, 554, '0978123123', '10.0000', 'usdt', '519.8502', 3, '2023-09-03 04:36:53', 2, 'MuaBTC/USDTHợp đồng', NULL),
(91, 554, '0978123123', '10.0000', 'usdt', '509.8502', 3, '2023-09-03 04:36:55', 2, 'MuaBTC/USDTHợp đồng', NULL),
(92, 554, '0978123123', '10.0000', 'usdt', '499.8502', 3, '2023-09-03 04:36:56', 2, 'MuaBTC/USDTHợp đồng', NULL),
(93, 554, '0978123123', '10.0000', 'usdt', '489.8502', 3, '2023-09-03 04:36:58', 2, 'MuaBTC/USDTHợp đồng', NULL),
(94, 554, '0978123123', '10.0000', 'usdt', '479.8502', 3, '2023-09-03 04:37:06', 2, 'MuaBTC/USDTHợp đồng', NULL),
(95, 554, '0978123123', '10.0000', 'usdt', '469.8502', 3, '2023-09-03 04:37:08', 2, 'MuaBTC/USDTHợp đồng', NULL),
(96, 554, '0978123123', '10.0000', 'usdt', '459.8502', 3, '2023-09-03 04:37:09', 2, 'MuaBTC/USDTHợp đồng', NULL),
(97, 554, '0978123123', '10.0000', 'usdt', '449.8502', 3, '2023-09-03 04:37:10', 2, 'MuaBTC/USDTHợp đồng', NULL),
(98, 554, '0978123123', '19.5000', 'usdt', '488.8502', 4, '2023-09-03 04:38:02', 1, 'Contract sale', NULL),
(99, 554, '0978123123', '19.5000', 'usdt', '508.3502', 4, '2023-09-03 04:38:02', 1, 'Contract sale', NULL),
(100, 554, '0978123123', '19.5000', 'usdt', '527.8502', 4, '2023-09-03 04:38:02', 1, 'Contract sale', NULL),
(101, 554, '0978123123', '19.5000', 'usdt', '547.3502', 4, '2023-09-03 04:38:02', 1, 'Contract sale', NULL),
(102, 554, '0978123123', '19.5000', 'usdt', '566.8502', 4, '2023-09-03 04:38:02', 1, 'Contract sale', NULL),
(103, 554, '0978123123', '19.5000', 'usdt', '586.3502', 4, '2023-09-03 04:39:02', 1, 'Contract sale', NULL),
(104, 554, '0978123123', '19.5000', 'usdt', '605.8502', 4, '2023-09-03 04:39:02', 1, 'Contract sale', NULL),
(105, 554, '0978123123', '10.0000', 'usdt', '576.3502', 3, '2023-09-03 04:44:33', 2, 'MuaBTC/USDTHợp đồng', NULL),
(106, 554, '0978123123', '10.0000', 'usdt', '566.3502', 3, '2023-09-03 04:44:35', 2, 'MuaBTC/USDTHợp đồng', NULL),
(107, 554, '0978123123', '10.0000', 'usdt', '556.3502', 3, '2023-09-03 04:44:35', 2, 'MuaBTC/USDTHợp đồng', NULL),
(108, 554, '0978123123', '10.0000', 'usdt', '546.3502', 3, '2023-09-03 04:44:35', 2, 'MuaBTC/USDTHợp đồng', NULL),
(109, 554, '0978123123', '10.0000', 'usdt', '536.3502', 3, '2023-09-03 04:44:35', 2, 'MuaBTC/USDTHợp đồng', NULL),
(110, 554, '0978123123', '10.0000', 'usdt', '526.3502', 3, '2023-09-03 04:44:36', 2, 'MuaBTC/USDTHợp đồng', NULL),
(111, 554, '0978123123', '10.0000', 'usdt', '516.3502', 3, '2023-09-03 04:44:36', 2, 'MuaBTC/USDTHợp đồng', NULL),
(112, 554, '0978123123', '10.0000', 'usdt', '506.3502', 3, '2023-09-03 04:44:36', 2, 'MuaBTC/USDTHợp đồng', NULL),
(113, 554, '0978123123', '10.0000', 'usdt', '496.3502', 3, '2023-09-03 04:44:36', 2, 'MuaBTC/USDTHợp đồng', NULL),
(114, 554, '0978123123', '10.0000', 'usdt', '486.3502', 3, '2023-09-03 04:44:37', 2, 'MuaBTC/USDTHợp đồng', NULL),
(115, 554, '0978123123', '10.0000', 'usdt', '476.3502', 3, '2023-09-03 04:44:37', 2, 'MuaBTC/USDTHợp đồng', NULL),
(116, 554, '0978123123', '10.0000', 'usdt', '466.3502', 3, '2023-09-03 04:44:38', 2, 'MuaBTC/USDTHợp đồng', NULL),
(117, 554, '0978123123', '10.0000', 'usdt', '456.3502', 3, '2023-09-03 04:44:38', 2, 'MuaBTC/USDTHợp đồng', NULL),
(118, 554, '0978123123', '10.0000', 'usdt', '446.3502', 3, '2023-09-03 04:44:39', 2, 'MuaBTC/USDTHợp đồng', NULL),
(119, 554, '0978123123', '10.0000', 'usdt', '436.3502', 3, '2023-09-03 04:44:42', 2, 'MuaBTC/USDTHợp đồng', NULL),
(120, 554, '0978123123', '10.0000', 'usdt', '426.3502', 3, '2023-09-03 04:44:42', 2, 'MuaBTC/USDTHợp đồng', NULL),
(121, 554, '0978123123', '10.0000', 'usdt', '416.3502', 3, '2023-09-03 04:44:43', 2, 'MuaBTC/USDTHợp đồng', NULL),
(122, 554, '0978123123', '10.0000', 'usdt', '406.3502', 3, '2023-09-03 04:44:43', 2, 'MuaBTC/USDTHợp đồng', NULL),
(123, 554, '0978123123', '10.0000', 'usdt', '396.3502', 3, '2023-09-03 04:44:44', 2, 'MuaBTC/USDTHợp đồng', NULL),
(124, 554, '0978123123', '10.0000', 'usdt', '386.3502', 3, '2023-09-03 04:44:44', 2, 'MuaBTC/USDTHợp đồng', NULL),
(125, 554, '0978123123', '10.0000', 'usdt', '376.3502', 3, '2023-09-03 04:44:44', 2, 'MuaBTC/USDTHợp đồng', NULL),
(126, 554, '0978123123', '10.0000', 'usdt', '366.3502', 3, '2023-09-03 04:44:45', 2, 'MuaBTC/USDTHợp đồng', NULL),
(127, 554, '0978123123', '10.0000', 'usdt', '356.3502', 3, '2023-09-03 04:44:45', 2, 'MuaBTC/USDTHợp đồng', NULL),
(128, 554, '0978123123', '10.0000', 'usdt', '346.3502', 3, '2023-09-03 04:44:45', 2, 'MuaBTC/USDTHợp đồng', NULL),
(129, 554, '0978123123', '10.0000', 'usdt', '336.3502', 3, '2023-09-03 04:44:46', 2, 'MuaBTC/USDTHợp đồng', NULL),
(130, 554, '0978123123', '10.0000', 'usdt', '326.3502', 3, '2023-09-03 04:44:46', 2, 'MuaBTC/USDTHợp đồng', NULL),
(131, 554, '0978123123', '10.0000', 'usdt', '316.3502', 3, '2023-09-03 04:44:47', 2, 'MuaBTC/USDTHợp đồng', NULL),
(132, 554, '0978123123', '10.0000', 'usdt', '306.3502', 3, '2023-09-03 04:44:48', 2, 'MuaBTC/USDTHợp đồng', NULL),
(133, 554, '0978123123', '10.0000', 'usdt', '296.3502', 3, '2023-09-03 04:44:54', 2, 'MuaBTC/USDTHợp đồng', NULL),
(134, 554, '0978123123', '10.0000', 'usdt', '286.3502', 3, '2023-09-03 04:44:55', 2, 'MuaBTC/USDTHợp đồng', NULL),
(135, 554, '0978123123', '10.0000', 'usdt', '276.3502', 3, '2023-09-03 04:44:55', 2, 'MuaBTC/USDTHợp đồng', NULL),
(136, 554, '0978123123', '10.0000', 'usdt', '266.3502', 3, '2023-09-03 04:44:56', 2, 'MuaBTC/USDTHợp đồng', NULL),
(137, 554, '0978123123', '10.0000', 'usdt', '256.3502', 3, '2023-09-03 04:44:56', 2, 'MuaBTC/USDTHợp đồng', NULL),
(138, 554, '0978123123', '10.0000', 'usdt', '246.3502', 3, '2023-09-03 04:44:57', 2, 'MuaBTC/USDTHợp đồng', NULL),
(139, 554, '0978123123', '10.0000', 'usdt', '236.3502', 3, '2023-09-03 04:44:57', 2, 'MuaBTC/USDTHợp đồng', NULL),
(140, 554, '0978123123', '10.0000', 'usdt', '226.3502', 3, '2023-09-03 04:44:58', 2, 'MuaBTC/USDTHợp đồng', NULL),
(141, 554, '0978123123', '10.0000', 'usdt', '216.3502', 3, '2023-09-03 04:44:59', 2, 'MuaBTC/USDTHợp đồng', NULL),
(142, 554, '0978123123', '10.0000', 'usdt', '206.3502', 3, '2023-09-03 04:45:00', 2, 'MuaBTC/USDTHợp đồng', NULL),
(143, 554, '0978123123', '19.5000', 'usdt', '245.3502', 4, '2023-09-03 04:47:01', 1, 'Contract sale', NULL),
(144, 554, '0978123123', '19.5000', 'usdt', '264.8502', 4, '2023-09-03 04:47:01', 1, 'Contract sale', NULL),
(145, 554, '0978123123', '19.5000', 'usdt', '284.3502', 4, '2023-09-03 04:47:02', 1, 'Contract sale', NULL),
(146, 554, '0978123123', '19.5000', 'usdt', '303.8502', 4, '2023-09-03 04:47:02', 1, 'Contract sale', NULL),
(147, 554, '0978123123', '19.5000', 'usdt', '323.3502', 4, '2023-09-03 04:47:02', 1, 'Contract sale', NULL),
(148, 554, '0978123123', '19.5000', 'usdt', '342.8502', 4, '2023-09-03 04:47:02', 1, 'Contract sale', NULL),
(149, 554, '0978123123', '19.5000', 'usdt', '362.3502', 4, '2023-09-03 04:47:02', 1, 'Contract sale', NULL),
(150, 554, '0978123123', '19.5000', 'usdt', '381.8502', 4, '2023-09-03 04:47:02', 1, 'Contract sale', NULL),
(151, 554, '0978123123', '19.5000', 'usdt', '401.3502', 4, '2023-09-03 04:47:02', 1, 'Contract sale', NULL),
(152, 554, '0978123123', '19.5000', 'usdt', '420.8502', 4, '2023-09-03 04:47:02', 1, 'Contract sale', NULL),
(153, 554, '0978123123', '19.5000', 'usdt', '440.3502', 4, '2023-09-03 04:47:02', 1, 'Contract sale', NULL),
(154, 554, '0978123123', '19.5000', 'usdt', '459.8502', 4, '2023-09-03 04:47:02', 1, 'Contract sale', NULL),
(155, 554, '0978123123', '19.5000', 'usdt', '479.3502', 4, '2023-09-03 04:47:03', 1, 'Contract sale', NULL),
(156, 554, '0978123123', '19.5000', 'usdt', '498.8502', 4, '2023-09-03 04:47:03', 1, 'Contract sale', NULL),
(157, 554, '0978123123', '19.5000', 'usdt', '518.3502', 4, '2023-09-03 04:47:03', 1, 'Contract sale', NULL),
(158, 554, '0978123123', '19.5000', 'usdt', '537.8502', 4, '2023-09-03 04:47:03', 1, 'Contract sale', NULL),
(159, 554, '0978123123', '19.5000', 'usdt', '557.3502', 4, '2023-09-03 04:47:03', 1, 'Contract sale', NULL),
(160, 554, '0978123123', '19.5000', 'usdt', '576.8502', 4, '2023-09-03 04:47:03', 1, 'Contract sale', NULL),
(161, 554, '0978123123', '19.5000', 'usdt', '596.3502', 4, '2023-09-03 04:47:05', 1, 'Contract sale', NULL),
(162, 554, '0978123123', '500.0000', 'usdt', '76.8502', 3, '2023-09-03 04:49:24', 2, 'MuaBTC/USDTHợp đồng', NULL),
(163, 553, '0868450300', '20.8300', 'usdt', '5432.1112', 17, '2023-09-03 11:11:03', 1, '充币到账', NULL),
(164, 553, '0868450300', '20.8300', 'usdt', '5452.9412', 17, '2023-09-03 17:24:41', 1, '充币到账', NULL),
(165, 554, '0978123123', '101.0000', 'mbn', '101.0000', 18, '2023-09-04 01:00:02', 1, 'Release of subscribed assets', NULL),
(166, 333, '陈总333', '2.0000', 'usdt', '2.0000', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(167, 287, '王总287', '2.0000', 'usdt', '2.0000', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(168, 334, '9191916666', '0.0037', 'eth', '0.0037', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(169, 167, '13888888888', '0.0037', 'eth', '0.0037', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(170, 551, '0995995995', '2.0000', 'usdt', '2840.5375', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(171, 552, '0911223344', '2.0000', 'usdt', '14853.0000', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(172, 553, '0868450300', '2.0000', 'usdt', '5454.9412', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(173, 554, '0978123123', '2.0000', 'usdt', '78.8502', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(174, 553, '0868450300', '0.0037', 'eth', '0.0112', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(175, 554, '0978123123', '0.0037', 'eth', '0.0173', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(176, 554, '0978123123', '0.0085', 'eth', '0.0257', 8, '2023-09-04 01:00:02', 1, 'Mining machine revenue release', NULL),
(177, 553, '0868450300', '10.0000', 'usdt', '5444.9412', 3, '2023-09-05 00:00:15', 2, 'MuaBTC/USDTHợp đồng', NULL),
(178, 287, '王总287', '2.0000', 'usdt', '2.0000', 8, '2023-09-05 00:03:13', 1, 'Mining machine revenue release', NULL),
(179, 334, '9191916666', '0.0038', 'eth', '0.0038', 8, '2023-09-05 00:03:13', 1, 'Mining machine revenue release', NULL),
(180, 167, '13888888888', '0.0038', 'eth', '0.0038', 8, '2023-09-05 00:03:13', 1, 'Mining machine revenue release', NULL),
(181, 551, '0995995995', '2.0000', 'usdt', '2842.5375', 8, '2023-09-05 00:03:13', 1, 'Mining machine revenue release', NULL),
(182, 552, '0911223344', '2.0000', 'usdt', '14855.0000', 8, '2023-09-05 00:03:13', 1, 'Mining machine revenue release', NULL),
(183, 553, '0868450300', '2.0000', 'usdt', '5446.9412', 8, '2023-09-05 00:03:13', 1, 'Mining machine revenue release', NULL),
(184, 554, '0978123123', '2.0000', 'usdt', '80.8502', 8, '2023-09-05 00:03:13', 1, 'Mining machine revenue release', NULL),
(185, 553, '0868450300', '0.0038', 'eth', '0.0150', 8, '2023-09-05 00:03:13', 1, 'Mining machine revenue release', NULL),
(186, 554, '0978123123', '0.0038', 'eth', '0.0295', 8, '2023-09-05 00:03:14', 1, 'Mining machine revenue release', NULL),
(187, 554, '0978123123', '0.0085', 'eth', '0.0380', 8, '2023-09-05 00:03:14', 1, 'Mining machine revenue release', NULL),
(188, 553, '0868450300', '10.0000', 'usdt', '5436.9412', 3, '2023-09-05 00:11:58', 2, 'MuaBTC/USDTHợp đồng', NULL),
(189, 553, '0868450300', '10.0000', 'usdt', '5426.9412', 3, '2023-09-05 00:15:42', 2, 'MuaBTC/USDTHợp đồng', NULL),
(190, 553, '0868450300', '10.0000', 'usdt', '5416.9412', 3, '2023-09-05 00:15:42', 2, 'MuaBTC/USDTHợp đồng', NULL),
(191, 553, '0868450300', '10.0000', 'usdt', '5406.9412', 3, '2023-09-05 00:15:49', 2, 'MuaBTC/USDTHợp đồng', NULL),
(192, 553, '0868450300', '19.5000', 'usdt', '5445.9412', 4, '2023-09-05 00:20:02', 1, 'Contract sale', NULL),
(193, 553, '0868450300', '19.5000', 'usdt', '5465.4412', 4, '2023-09-05 00:20:02', 1, 'Contract sale', NULL),
(194, 553, '0868450300', '10.0000', 'usdt', '5435.9412', 3, '2023-09-05 00:24:11', 2, 'MuaBTC/USDTHợp đồng', NULL),
(195, 551, '0995995995', '10.0000', 'usdt', '2832.5375', 3, '2023-09-05 00:25:35', 2, 'MuaBTC/USDTHợp đồng', NULL),
(196, 554, '0978123123', '10.0000', 'usdt', '70.8502', 3, '2023-09-05 01:07:42', 2, 'MuaBTC/USDTHợp đồng', NULL),
(197, 554, '0978123123', '10.0000', 'usdt', '60.8502', 3, '2023-09-05 01:19:51', 2, 'MuaBTC/USDTHợp đồng', NULL),
(198, 554, '0978123123', '10.0000', 'usdt', '50.8502', 3, '2023-09-05 03:50:36', 2, 'MuaBTC/USDTHợp đồng', NULL),
(199, 554, '0978123123', '10.0000', 'usdt', '40.8502', 3, '2023-09-05 03:50:38', 2, 'MuaBTC/USDTHợp đồng', NULL),
(200, 554, '0978123123', '10.0000', 'usdt', '30.8502', 3, '2023-09-05 03:50:39', 2, 'MuaBTC/USDTHợp đồng', NULL),
(201, 554, '0978123123', '10.0000', 'usdt', '20.8502', 3, '2023-09-05 03:50:43', 2, 'MuaBTC/USDTHợp đồng', NULL),
(202, 554, '0978123123', '10.0000', 'usdt', '10.8502', 3, '2023-09-05 03:50:46', 2, 'MuaBTC/USDTHợp đồng', NULL),
(203, 554, '0978123123', '10.0000', 'usdt', '0.8502', 3, '2023-09-05 03:50:48', 2, 'MuaBTC/USDTHợp đồng', NULL),
(204, 554, '0978123123', '19.5000', 'usdt', '39.8502', 4, '2023-09-05 03:51:42', 1, 'Contract sale', NULL),
(205, 554, '0978123123', '19.5000', 'usdt', '59.3502', 4, '2023-09-05 03:51:47', 1, 'Contract sale', NULL),
(206, 554, '0978123123', '19.5000', 'usdt', '78.8502', 4, '2023-09-05 03:51:47', 1, 'Contract sale', NULL),
(207, 554, '0978123123', '19.5000', 'usdt', '98.3502', 4, '2023-09-05 03:51:53', 1, 'Contract sale', NULL),
(208, 554, '0978123123', '19.5000', 'usdt', '117.8502', 4, '2023-09-05 03:51:53', 1, 'Contract sale', NULL),
(209, 554, '0978123123', '10000.0000', 'USDT', '10098.3502', 1, '2023-09-05 03:53:46', 1, '管理员手动增加', NULL),
(210, 554, '0978123123', '10.0000', 'usdt', '10088.3502', 3, '2023-09-05 03:54:06', 2, 'MuaBTC/USDTHợp đồng', NULL),
(211, 554, '0978123123', '10.0000', 'usdt', '10078.3502', 3, '2023-09-05 03:54:08', 2, 'MuaBTC/USDTHợp đồng', NULL),
(212, 554, '0978123123', '10.0000', 'usdt', '10068.3502', 3, '2023-09-05 03:54:09', 2, 'MuaBTC/USDTHợp đồng', NULL),
(213, 554, '0978123123', '10.0000', 'usdt', '10058.3502', 3, '2023-09-05 03:54:10', 2, 'MuaBTC/USDTHợp đồng', NULL),
(214, 554, '0978123123', '10.0000', 'usdt', '10048.3502', 3, '2023-09-05 03:54:12', 2, 'MuaBTC/USDTHợp đồng', NULL),
(215, 554, '0978123123', '10.0000', 'usdt', '10038.3502', 3, '2023-09-05 03:54:13', 2, 'MuaBTC/USDTHợp đồng', NULL),
(216, 554, '0978123123', '10.0000', 'usdt', '10028.3502', 3, '2023-09-05 03:54:14', 2, 'MuaBTC/USDTHợp đồng', NULL),
(217, 554, '0978123123', '10.0000', 'usdt', '10018.3502', 3, '2023-09-05 03:54:16', 2, 'MuaBTC/USDTHợp đồng', NULL),
(218, 554, '0978123123', '10.0000', 'usdt', '10008.3502', 3, '2023-09-05 03:54:17', 2, 'MuaBTC/USDTHợp đồng', NULL),
(219, 554, '0978123123', '10.0000', 'usdt', '9998.3502', 3, '2023-09-05 03:54:18', 2, 'MuaBTC/USDTHợp đồng', NULL),
(220, 554, '0978123123', '10.0000', 'usdt', '9988.3502', 3, '2023-09-05 03:54:24', 2, 'MuaBTC/USDTHợp đồng', NULL),
(221, 554, '0978123123', '10.0000', 'usdt', '9978.3502', 3, '2023-09-05 03:54:25', 2, 'MuaBTC/USDTHợp đồng', NULL),
(222, 554, '0978123123', '10.0000', 'usdt', '9968.3502', 3, '2023-09-05 03:54:26', 2, 'MuaBTC/USDTHợp đồng', NULL),
(223, 554, '0978123123', '10.0000', 'usdt', '9958.3502', 3, '2023-09-05 03:54:28', 2, 'MuaBTC/USDTHợp đồng', NULL),
(224, 554, '0978123123', '10.0000', 'usdt', '9948.3502', 3, '2023-09-05 03:54:28', 2, 'MuaBTC/USDTHợp đồng', NULL),
(225, 554, '0978123123', '10.0000', 'usdt', '9938.3502', 3, '2023-09-05 03:54:30', 2, 'MuaBTC/USDTHợp đồng', NULL),
(226, 554, '0978123123', '10.0000', 'usdt', '9928.3502', 3, '2023-09-05 03:54:30', 2, 'MuaBTC/USDTHợp đồng', NULL),
(227, 554, '0978123123', '10.0000', 'usdt', '9918.3502', 3, '2023-09-05 03:54:31', 2, 'MuaBTC/USDTHợp đồng', NULL),
(228, 554, '0978123123', '10.0000', 'usdt', '9908.3502', 3, '2023-09-05 03:54:32', 2, 'MuaBTC/USDTHợp đồng', NULL),
(229, 554, '0978123123', '10.0000', 'usdt', '9898.3502', 3, '2023-09-05 03:54:34', 2, 'MuaBTC/USDTHợp đồng', NULL),
(230, 554, '0978123123', '10.0000', 'usdt', '9888.3502', 3, '2023-09-05 03:54:34', 2, 'MuaBTC/USDTHợp đồng', NULL),
(231, 554, '0978123123', '10.0000', 'usdt', '9878.3502', 3, '2023-09-05 03:54:36', 2, 'MuaBTC/USDTHợp đồng', NULL),
(232, 554, '0978123123', '10.0000', 'usdt', '9868.3502', 3, '2023-09-05 03:54:37', 2, 'MuaBTC/USDTHợp đồng', NULL),
(233, 554, '0978123123', '10.0000', 'usdt', '9858.3502', 3, '2023-09-05 03:54:37', 2, 'MuaBTC/USDTHợp đồng', NULL),
(234, 554, '0978123123', '10.0000', 'usdt', '9848.3502', 3, '2023-09-05 03:54:42', 2, 'MuaBTC/USDTHợp đồng', NULL),
(235, 554, '0978123123', '10.0000', 'usdt', '9838.3502', 3, '2023-09-05 03:54:43', 2, 'MuaBTC/USDTHợp đồng', NULL),
(236, 554, '0978123123', '10.0000', 'usdt', '9828.3502', 3, '2023-09-05 03:54:45', 2, 'MuaBTC/USDTHợp đồng', NULL),
(237, 554, '0978123123', '10.0000', 'usdt', '9818.3502', 3, '2023-09-05 03:54:47', 2, 'MuaBTC/USDTHợp đồng', NULL),
(238, 554, '0978123123', '19.5000', 'usdt', '9857.3502', 4, '2023-09-05 03:55:17', 1, 'Contract sale', NULL),
(239, 554, '0978123123', '19.5000', 'usdt', '9876.8502', 4, '2023-09-05 03:55:17', 1, 'Contract sale', NULL),
(240, 554, '0978123123', '19.5000', 'usdt', '9896.3502', 4, '2023-09-05 03:55:17', 1, 'Contract sale', NULL),
(241, 554, '0978123123', '19.5000', 'usdt', '9915.8502', 4, '2023-09-05 03:55:17', 1, 'Contract sale', NULL),
(242, 554, '0978123123', '19.5000', 'usdt', '9935.3502', 4, '2023-09-05 03:55:23', 1, 'Contract sale', NULL),
(243, 554, '0978123123', '19.5000', 'usdt', '9954.8502', 4, '2023-09-05 03:55:23', 1, 'Contract sale', NULL),
(244, 554, '0978123123', '19.5000', 'usdt', '9974.3502', 4, '2023-09-05 03:55:24', 1, 'Contract sale', NULL),
(245, 554, '0978123123', '19.5000', 'usdt', '9993.8502', 4, '2023-09-05 03:55:24', 1, 'Contract sale', NULL),
(246, 554, '0978123123', '19.5000', 'usdt', '10013.3502', 4, '2023-09-05 03:55:24', 1, 'Contract sale', NULL),
(247, 554, '0978123123', '19.5000', 'usdt', '10032.8502', 4, '2023-09-05 03:55:29', 1, 'Contract sale', NULL),
(248, 554, '0978123123', '19.5000', 'usdt', '10052.3502', 4, '2023-09-05 03:55:35', 1, 'Contract sale', NULL),
(249, 554, '0978123123', '19.5000', 'usdt', '10071.8502', 4, '2023-09-05 03:55:35', 1, 'Contract sale', NULL),
(250, 554, '0978123123', '19.5000', 'usdt', '10091.3502', 4, '2023-09-05 03:55:35', 1, 'Contract sale', NULL),
(251, 554, '0978123123', '19.5000', 'usdt', '10110.8502', 4, '2023-09-05 03:55:36', 1, 'Contract sale', NULL),
(252, 554, '0978123123', '19.5000', 'usdt', '10130.3502', 4, '2023-09-05 03:55:36', 1, 'Contract sale', NULL),
(253, 554, '0978123123', '19.5000', 'usdt', '10149.8502', 4, '2023-09-05 03:55:36', 1, 'Contract sale', NULL),
(254, 554, '0978123123', '19.5000', 'usdt', '10169.3502', 4, '2023-09-05 03:55:42', 1, 'Contract sale', NULL),
(255, 554, '0978123123', '19.5000', 'usdt', '10188.8502', 4, '2023-09-05 03:55:42', 1, 'Contract sale', NULL),
(256, 554, '0978123123', '19.5000', 'usdt', '10208.3502', 4, '2023-09-05 03:55:42', 1, 'Contract sale', NULL),
(257, 554, '0978123123', '19.5000', 'usdt', '10227.8502', 4, '2023-09-05 03:55:47', 1, 'Contract sale', NULL),
(258, 554, '0978123123', '19.5000', 'usdt', '10247.3502', 4, '2023-09-05 03:55:53', 1, 'Contract sale', NULL),
(259, 554, '0978123123', '10.0000', 'usdt', '10217.8502', 3, '2023-09-05 04:01:01', 2, 'MuaBTC/USDTHợp đồng', NULL),
(260, 554, '0978123123', '10.0000', 'usdt', '10207.8502', 3, '2023-09-05 04:01:03', 2, 'MuaBTC/USDTHợp đồng', NULL),
(261, 554, '0978123123', '10.0000', 'usdt', '10197.8502', 3, '2023-09-05 04:01:04', 2, 'MuaBTC/USDTHợp đồng', NULL),
(262, 554, '0978123123', '10.0000', 'usdt', '10187.8502', 3, '2023-09-05 04:01:05', 2, 'MuaBTC/USDTHợp đồng', NULL),
(263, 554, '0978123123', '10.0000', 'usdt', '10177.8502', 3, '2023-09-05 04:01:06', 2, 'MuaBTC/USDTHợp đồng', NULL),
(264, 554, '0978123123', '10.0000', 'usdt', '10167.8502', 3, '2023-09-05 04:01:06', 2, 'MuaBTC/USDTHợp đồng', NULL),
(265, 554, '0978123123', '10.0000', 'usdt', '10157.8502', 3, '2023-09-05 04:01:07', 2, 'MuaBTC/USDTHợp đồng', NULL),
(266, 554, '0978123123', '10.0000', 'usdt', '10147.8502', 3, '2023-09-05 04:01:11', 2, 'MuaBTC/USDTHợp đồng', NULL),
(267, 554, '0978123123', '10.0000', 'usdt', '10137.8502', 3, '2023-09-05 04:01:12', 2, 'MuaBTC/USDTHợp đồng', NULL),
(268, 554, '0978123123', '10.0000', 'usdt', '10127.8502', 3, '2023-09-05 04:01:13', 2, 'MuaBTC/USDTHợp đồng', NULL),
(269, 554, '0978123123', '10.0000', 'usdt', '10117.8502', 3, '2023-09-05 04:01:14', 2, 'MuaBTC/USDTHợp đồng', NULL),
(270, 554, '0978123123', '10.0000', 'usdt', '10107.8502', 3, '2023-09-05 04:01:15', 2, 'MuaBTC/USDTHợp đồng', NULL),
(271, 554, '0978123123', '10.0000', 'usdt', '10097.8502', 3, '2023-09-05 04:01:17', 2, 'MuaBTC/USDTHợp đồng', NULL),
(272, 554, '0978123123', '10.0000', 'usdt', '10087.8502', 3, '2023-09-05 04:01:17', 2, 'MuaBTC/USDTHợp đồng', NULL),
(273, 554, '0978123123', '19.5000', 'usdt', '10126.8502', 4, '2023-09-05 04:02:01', 1, 'Contract sale', NULL),
(274, 554, '0978123123', '19.5000', 'usdt', '10146.3502', 4, '2023-09-05 04:02:06', 1, 'Contract sale', NULL),
(275, 554, '0978123123', '19.5000', 'usdt', '10165.8502', 4, '2023-09-05 04:02:06', 1, 'Contract sale', NULL),
(276, 554, '0978123123', '19.5000', 'usdt', '10185.3502', 4, '2023-09-05 04:02:06', 1, 'Contract sale', NULL),
(277, 554, '0978123123', '19.5000', 'usdt', '10204.8502', 4, '2023-09-05 04:02:06', 1, 'Contract sale', NULL),
(278, 554, '0978123123', '19.5000', 'usdt', '10224.3502', 4, '2023-09-05 04:02:07', 1, 'Contract sale', NULL),
(279, 554, '0978123123', '19.5000', 'usdt', '10243.8502', 4, '2023-09-05 04:02:12', 1, 'Contract sale', NULL),
(280, 554, '0978123123', '19.5000', 'usdt', '10263.3502', 4, '2023-09-05 04:02:12', 1, 'Contract sale', NULL),
(281, 554, '0978123123', '19.5000', 'usdt', '10282.8502', 4, '2023-09-05 04:02:12', 1, 'Contract sale', NULL),
(282, 554, '0978123123', '19.5000', 'usdt', '10302.3502', 4, '2023-09-05 04:02:17', 1, 'Contract sale', NULL),
(283, 554, '0978123123', '19.5000', 'usdt', '10321.8502', 4, '2023-09-05 04:02:18', 1, 'Contract sale', NULL),
(284, 554, '0978123123', '19.5000', 'usdt', '10341.3502', 4, '2023-09-05 04:02:18', 1, 'Contract sale', NULL),
(285, 554, '0978123123', '19.5000', 'usdt', '10360.8502', 4, '2023-09-05 04:02:18', 1, 'Contract sale', NULL),
(286, 554, '0978123123', '19.5000', 'usdt', '10380.3502', 4, '2023-09-05 04:02:18', 1, 'Contract sale', NULL),
(287, 552, '0911223344', '100.0000', 'usdt', '14755.0000', 3, '2023-09-05 15:10:15', 2, 'MuaBTC/USDTHợp đồng', NULL),
(288, 551, '0995995995', '10.0000', 'usdt', '2822.5375', 3, '2023-09-05 15:46:21', 2, 'MuaBTC/USDTHợp đồng', NULL),
(289, 554, '0978123123', '2590.2125', 'usdt', '7770.6377', 9, '2023-09-05 17:17:42', 2, 'Giao dịch mua tiền tệBTC', NULL),
(290, 554, '0978123123', '0.1007', 'btc', '0.1007', 10, '2023-09-05 17:17:42', 1, 'Giao dịch mua tiền tệBTC', NULL),
(291, 554, '0978123123', '0.0755', 'btc', '0.0252', 10, '2023-09-05 17:34:03', 2, 'Giao dịch bán tiền tệBTC', NULL),
(292, 554, '0978123123', '1941.8789', 'usdt', '9712.5165', 9, '2023-09-05 17:34:03', 1, 'Giao dịch bán tiền tệBTC', NULL),
(293, 554, '0978123123', '643.0128', 'usdt', '10355.5293', 9, '2023-09-05 17:34:33', 1, 'Currency trading limit sale entrustment transaction', NULL),
(294, 554, '0978123123', '0.0250', 'btc', '-0.0248', 10, '2023-09-05 17:34:33', 2, 'Currency trading limit sale entrustment transaction', NULL),
(295, 554, '0978123123', '4.4505', 'usdt', '10359.9798', 9, '2023-09-05 17:36:08', 1, 'Currency trading limit sale entrustment transaction', NULL),
(296, 554, '0978123123', '0.0002', 'btc', '-0.0002', 10, '2023-09-05 17:36:08', 2, 'Currency trading limit sale entrustment transaction', NULL),
(297, 552, '0911223344', '10000.0000', 'usdt', '4755.0000', 3, '2023-09-05 19:37:16', 2, 'BuyETH/USDTQuick Margin', NULL),
(298, 552, '0911223344', '1000.0000', 'usdt', '3755.0000', 3, '2023-09-05 19:38:51', 2, 'BuyETH/USDTQuick Margin', NULL),
(299, 334, '9191916666', '0.0037', 'eth', '0.0037', 8, '2023-09-06 01:00:02', 1, 'Mining machine revenue release', NULL),
(300, 167, '13888888888', '0.0037', 'eth', '0.0037', 8, '2023-09-06 01:00:02', 1, 'Mining machine revenue release', NULL),
(301, 551, '0995995995', '2.0000', 'usdt', '2824.5375', 8, '2023-09-06 01:00:02', 1, 'Mining machine revenue release', NULL),
(302, 552, '0911223344', '2.0000', 'usdt', '3757.0000', 8, '2023-09-06 01:00:02', 1, 'Mining machine revenue release', NULL),
(303, 553, '0868450300', '2.0000', 'usdt', '5437.9412', 8, '2023-09-06 01:00:02', 1, 'Mining machine revenue release', NULL),
(304, 554, '0978123123', '2.0000', 'usdt', '10361.9798', 8, '2023-09-06 01:00:02', 1, 'Mining machine revenue release', NULL),
(305, 553, '0868450300', '0.0037', 'eth', '0.0187', 8, '2023-09-06 01:00:02', 1, 'Mining machine revenue release', NULL),
(306, 554, '0978123123', '0.0037', 'eth', '0.0417', 8, '2023-09-06 01:00:02', 1, 'Mining machine revenue release', NULL),
(307, 554, '0978123123', '0.0084', 'eth', '0.0501', 8, '2023-09-06 01:00:02', 1, 'Mining machine revenue release', NULL),
(308, 551, '0995995995', '10.0000', 'usdt', '2814.5375', 3, '2023-09-06 11:56:43', 2, 'MuaBTC/USDTHợp đồng', NULL),
(309, 554, '0978123123', '1000.0000', 'usdt', '9361.9798', 2, '2023-09-06 12:00:54', 2, '提币申请', NULL),
(310, 554, '0978123123', '1000.0000', 'usdt', '8361.9798', 2, '2023-09-06 13:46:34', 2, '提币申请', NULL),
(311, 554, '0978123123', '10.0000', 'usdt', '8351.9798', 3, '2023-09-06 15:31:54', 2, 'MuaBTC/USDTHợp đồng', NULL),
(312, 554, '0978123123', '10.0000', 'usdt', '8341.9798', 3, '2023-09-06 16:57:07', 2, 'MuaBTC/USDTHợp đồng', NULL),
(313, 554, '0978123123', '50000.0000', 'USDT', '58341.9798', 1, '2023-09-06 22:43:27', 1, '管理员手动增加', NULL),
(314, 554, '0978123123', '2000.0000', 'usdt', '56341.9798', 5, '2023-09-06 22:45:52', 2, 'Mua máy đào', NULL),
(315, 554, '0978123123', '5000.0000', 'usdt', '51341.9798', 5, '2023-09-06 22:46:08', 2, 'Mua máy đào', NULL),
(316, 554, '0978123123', '10000.0000', 'usdt', '41341.9798', 5, '2023-09-06 22:46:14', 2, 'Mua máy đào', NULL),
(317, 554, '0978123123', '20000.0000', 'usdt', '21341.9798', 5, '2023-09-06 22:46:20', 2, 'Mua máy đào', NULL),
(318, 554, '0978123123', '500.0000', 'usdt', '20841.9798', 5, '2023-09-06 22:49:10', 2, 'Mua máy đào', NULL),
(319, 334, '9191916666', '0.0038', 'eth', '0.0038', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(320, 167, '13888888888', '0.0038', 'eth', '0.0038', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(321, 551, '0995995995', '2.0000', 'usdt', '2816.5375', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(322, 552, '0911223344', '2.0000', 'usdt', '3759.0000', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(323, 553, '0868450300', '2.0000', 'usdt', '5439.9412', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(324, 554, '0978123123', '2.0000', 'usdt', '20843.9798', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(325, 553, '0868450300', '0.0038', 'eth', '0.0225', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(326, 554, '0978123123', '0.0038', 'eth', '0.0539', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(327, 554, '0978123123', '0.0085', 'eth', '0.0624', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(328, 554, '0978123123', '0.0112', 'eth', '0.0736', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(329, 554, '0978123123', '0.0145', 'eth', '0.0881', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(330, 554, '0978123123', '0.0174', 'eth', '0.1055', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(331, 554, '0978123123', '0.0203', 'eth', '0.1257', 8, '2023-09-07 01:00:02', 1, 'Mining machine revenue release', NULL),
(332, 554, '0978123123', '0.0038', 'eth', '0.1295', 8, '2023-09-07 01:00:03', 1, 'Mining machine revenue release', NULL),
(333, 554, '0978123123', '2000.0000', 'usdt', '18843.9798', 2, '2023-09-07 14:23:15', 2, '提币申请', NULL),
(334, 554, '0978123123', '10000.0000', 'usdt', '8843.9798', 2, '2023-09-07 14:24:05', 2, '提币申请', NULL),
(335, 334, '9191916666', '0.0037', 'eth', '0.0037', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(336, 167, '13888888888', '0.0037', 'eth', '0.0037', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(337, 551, '0995995995', '2.0000', 'usdt', '2818.5375', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(338, 552, '0911223344', '2.0000', 'usdt', '3761.0000', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(339, 553, '0868450300', '2.0000', 'usdt', '5441.9412', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(340, 554, '0978123123', '2.0000', 'usdt', '8845.9798', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(341, 553, '0868450300', '0.0037', 'eth', '0.0262', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(342, 554, '0978123123', '0.0037', 'eth', '0.1332', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(343, 554, '0978123123', '0.0084', 'eth', '0.1417', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(344, 554, '0978123123', '0.0111', 'eth', '0.1528', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(345, 554, '0978123123', '0.0144', 'eth', '0.1672', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(346, 554, '0978123123', '0.0173', 'eth', '0.1844', 8, '2023-09-08 01:00:02', 1, 'Mining machine revenue release', NULL),
(347, 554, '0978123123', '0.0201', 'eth', '0.2046', 8, '2023-09-08 01:00:03', 1, 'Mining machine revenue release', NULL),
(348, 560, '0935353586', '2.5000', 'usdt', '2.5000', 17, '2023-09-08 01:19:25', 1, '充币到账', NULL),
(349, 560, '0935353586', '6250.0000', 'usdt', '6252.5000', 17, '2023-09-08 01:28:31', 1, '充币到账', NULL),
(350, 560, '0935353586', '1000.0000', 'usdt', '5252.5000', 3, '2023-09-08 01:33:56', 2, 'MuaBTC/USDTHợp đồng', NULL),
(351, 560, '0935353586', '1000.0000', 'usdt', '4252.5000', 3, '2023-09-08 01:33:57', 2, 'MuaBTC/USDTHợp đồng', NULL),
(352, 560, '0935353586', '1000.0000', 'usdt', '3252.5000', 3, '2023-09-08 01:34:03', 2, 'MuaBTC/USDTHợp đồng', NULL),
(353, 560, '0935353586', '500.0000', 'usdt', '2752.5000', 5, '2023-09-08 01:35:41', 2, 'Mua máy đào', NULL),
(354, 554, '0978123123', '500.0000', 'usdt', '8345.9798', 11, '2023-09-08 02:01:29', 2, 'CYBERĐăng ký mua', NULL),
(355, 554, '0978123123', '100.0000', 'mbn', '-100.0000', 12, '2023-09-08 02:01:29', 1, 'CYBERĐăng ký mua', NULL),
(356, 554, '0978123123', '500.0000', 'usdt', '7845.9798', 5, '2023-09-08 02:12:15', 2, 'Mua máy đào', NULL),
(357, 554, '0978123123', '500.0000', 'usdt', '7345.9798', 5, '2023-09-08 02:15:57', 2, 'Mua máy đào', NULL),
(358, 554, '0978123123', '500.0000', 'usdt', '8345.9798', 6, '2023-09-08 02:15:57', 1, 'Phần thưởng mua máy', NULL),
(359, 554, '0978123123', '500.0000', 'usdt', '7345.9798', 5, '2023-09-08 02:18:45', 2, 'Mua máy đào', NULL),
(360, 554, '0978123123', '500.0000', 'usdt', '8345.9798', 6, '2023-09-08 02:18:45', 1, 'Phần thưởng mua máy', NULL),
(361, 554, '0978123123', '500.0000', 'usdt', '7345.9798', 5, '2023-09-08 02:22:43', 2, 'Mua máy đào', NULL),
(362, 554, '0978123123', '10.0000', 'usdt', '7335.9798', 3, '2023-09-08 02:37:22', 2, 'MuaBTC/USDTHợp đồng', NULL),
(363, 554, '0978123123', '1833.9949', 'usdt', '5501.9849', 9, '2023-09-08 03:17:29', 2, 'Giao dịch mua tiền tệETH', NULL),
(364, 554, '0978123123', '1.1224', 'eth', '1.3270', 10, '2023-09-08 03:17:29', 1, 'Giao dịch mua tiền tệETH', NULL),
(365, 554, '0978123123', '1.3269', 'eth', '0.0001', 10, '2023-09-08 03:18:34', 2, 'Giao dịch bán tiền tệETH', NULL),
(366, 554, '0978123123', '2167.1462', 'usdt', '7669.1310', 9, '2023-09-08 03:18:34', 1, 'Giao dịch bán tiền tệETH', NULL),
(367, 554, '0978123123', '5000.0000', 'usdt', '2669.1310', 9, '2023-09-08 03:20:32', 2, 'Giao dịch mua tiền tệETH', NULL),
(368, 554, '0978123123', '3.0598', 'eth', '3.0599', 10, '2023-09-08 03:20:32', 1, 'Giao dịch mua tiền tệETH', NULL),
(369, 554, '0978123123', '5000.0498', 'usdt', '7669.1808', 9, '2023-09-08 03:20:56', 1, 'Currency trading limit sale entrustment transaction', NULL),
(370, 554, '0978123123', '3.0598', 'eth', '-3.0597', 10, '2023-09-08 03:20:56', 2, 'Currency trading limit sale entrustment transaction', NULL),
(371, 554, '0978123123', '500.0000', 'usdt', '7169.1808', 11, '2023-09-08 19:23:06', 2, 'CYBERĐăng ký mua', NULL),
(372, 554, '0978123123', '100.0000', 'mbn', '-100.0000', 12, '2023-09-08 19:23:06', 1, 'CYBERĐăng ký mua', NULL),
(373, 554, '0978123123', '500.0000', 'usdt', '6669.1808', 11, '2023-09-08 19:23:42', 2, 'CYBERĐăng ký mua', NULL),
(374, 554, '0978123123', '100.0000', 'mbn', '-100.0000', 12, '2023-09-08 19:23:42', 1, 'CYBERĐăng ký mua', NULL),
(375, 554, '0978123123', '10.0000', 'usdt', '6659.1808', 3, '2023-09-08 19:42:52', 2, 'MuaBTC/USDTHợp đồng', NULL),
(376, 554, '0978123123', '10.0000', 'usdt', '6649.1808', 3, '2023-09-08 19:44:23', 2, 'MuaBTC/USDTHợp đồng', NULL),
(377, 554, '0978123123', '10.0000', 'usdt', '6639.1808', 3, '2023-09-08 19:45:37', 2, 'MuaBTC/USDTHợp đồng', NULL),
(378, 554, '0978123123', '10.0000', 'usdt', '6629.1808', 3, '2023-09-08 19:47:16', 2, 'MuaBTC/USDTHợp đồng', NULL),
(379, 554, '0978123123', '10.0000', 'usdt', '6619.1808', 3, '2023-09-08 19:48:29', 2, 'MuaBTC/USDTHợp đồng', NULL),
(380, 554, '0978123123', '10.0000', 'usdt', '6609.1808', 3, '2023-09-08 19:52:09', 2, 'MuaLTC/USDTHợp đồng', NULL),
(381, 554, '0978123123', '100.0000', 'usdt', '6709.1808', 17, '2023-09-08 19:55:14', 1, '充币到账', NULL),
(382, 560, '0935353586', '500.0000', 'usdt', '2252.5000', 3, '2023-09-08 20:46:34', 2, 'MuaBTC/USDTHợp đồng', NULL),
(383, 560, '0935353586', '500.0000', 'usdt', '1752.5000', 3, '2023-09-08 20:50:15', 2, 'MuaBTC/USDTHợp đồng', NULL),
(384, 554, '0978123123', '1700.0000', 'usdt', '5009.1808', 9, '2023-09-08 21:24:20', 2, 'Giao dịch mua tiền tệETH', NULL),
(385, 554, '0978123123', '1.0430', 'eth', '1.0431', 10, '2023-09-08 21:24:20', 1, 'Giao dịch mua tiền tệETH', NULL),
(386, 566, '4048844594', '1200.0000', 'USDT', '1200.0000', 1, '2023-09-09 00:31:14', 1, '管理员手动增加', NULL),
(387, 554, '0978123123', '100.0000', 'mbn', '100.0000', 18, '2023-09-09 01:00:01', 1, 'Release of subscribed assets', NULL),
(388, 554, '0978123123', '100.0000', 'mbn', '100.0000', 18, '2023-09-09 01:00:01', 1, 'Release of subscribed assets', NULL),
(389, 554, '0978123123', '100.0000', 'mbn', '100.0000', 18, '2023-09-09 01:00:01', 1, 'Release of subscribed assets', NULL),
(390, 552, '0911223344', '10.0000', 'usdt', '3651.0000', 3, '2023-09-11 13:39:24', 2, 'MuaBTC/USDTHợp đồng', NULL),
(391, 552, '0911223344', '500.0000', 'usdt', '3151.0000', 5, '2023-09-11 13:44:38', 2, 'Mua máy đào', NULL),
(392, 552, '0911223344', '0.0039', 'btc', '0.0989', 10, '2023-09-11 16:16:02', 1, 'Currency transaction price limit purchase entrustment transaction', NULL),
(393, 552, '0911223344', '100.0000', 'usdt', '3051.0000', 9, '2023-09-11 16:16:02', 2, 'Currency transaction price limit purchase entrustment transaction', NULL),
(394, 552, '0911223344', '10.0000', 'usdt', '3141.0000', 3, '2023-09-11 19:09:07', 2, 'MuaBTC/USDTHợp đồng', NULL),
(395, 552, '0911223344', '0.0918', 'btc', '0.1907', 10, '2023-09-11 19:28:01', 1, 'Currency transaction price limit purchase entrustment transaction', NULL),
(396, 552, '0911223344', '2355.7500', 'usdt', '-1570.5000', 9, '2023-09-11 19:28:01', 2, 'Currency transaction price limit purchase entrustment transaction', NULL),
(397, 552, '0911223344', '0.0612', 'btc', '0.1520', 10, '2023-09-11 19:40:02', 1, 'Currency transaction price limit purchase entrustment transaction', NULL),
(398, 552, '0911223344', '1570.5000', 'usdt', '0.0000', 9, '2023-09-11 19:40:02', 2, 'Currency transaction price limit purchase entrustment transaction', NULL),
(399, 552, '0911223344', '2565.6000', 'usdt', '4136.1000', 9, '2023-09-11 20:13:01', 1, 'Currency trading limit sale entrustment transaction', NULL),
(400, 552, '0911223344', '0.1000', 'btc', '0.0520', 10, '2023-09-11 20:13:01', 2, 'Currency trading limit sale entrustment transaction', NULL),
(401, 552, '0911223344', '100.0000', 'usdt', '4036.1000', 3, '2023-09-12 13:30:07', 2, 'MuaBTC/USDTHợp đồng', NULL),
(402, 552, '0911223344', '100.0000', 'usdt', '3936.1000', 3, '2023-09-12 14:19:33', 2, 'MuaBTC/USDTHợp đồng', NULL),
(403, 552, '0911223344', '10.0000', 'usdt', '3926.1000', 3, '2023-09-12 15:18:26', 2, 'BuyBTC/USDTQuick Margin', NULL),
(404, 552, '0911223344', '1000.0000', 'usdt', '2926.1000', 5, '2023-09-12 15:22:51', 2, 'Mua máy đào', NULL),
(405, 551, '0995995995', '200.0000', 'usdt', '2618.5375', 3, '2023-09-13 01:10:11', 2, 'MuaBTC/USDTHợp đồng', NULL),
(406, 551, '0995995995', '200.0000', 'usdt', '2418.5375', 3, '2023-09-13 01:10:14', 2, 'MuaBTC/USDTHợp đồng', NULL),
(407, 551, '0995995995', '10.0000', 'usdt', '2408.5375', 3, '2023-09-13 01:12:12', 2, 'MuaBTC/USDTHợp đồng', NULL),
(408, 551, '0995995995', '19.5000', 'usdt', '2447.5375', 4, '2023-09-13 01:15:01', 1, 'Contract sale', NULL),
(409, 551, '0995995995', '100.0000', 'usdt', '2328.0375', 3, '2023-09-13 01:38:13', 2, 'MuaBCH/USDTHợp đồng', NULL),
(410, 551, '0995995995', '100.0000', 'usdt', '2228.0375', 3, '2023-09-13 01:38:17', 2, 'MuaBCH/USDTHợp đồng', NULL),
(411, 551, '0995995995', '100.0000', 'usdt', '2128.0375', 3, '2023-09-13 01:38:23', 2, 'MuaBCH/USDTHợp đồng', NULL),
(412, 551, '0995995995', '194.0000', 'usdt', '2516.0375', 4, '2023-09-13 01:41:01', 1, 'Contract sale', NULL),
(413, 552, '0911223344', '1000.0000', 'usdt', '1926.1000', 3, '2023-09-13 22:36:51', 2, 'MuaBTC/USDTHợp đồng', NULL),
(414, 552, '0911223344', '1000.0000', 'usdt', '926.1000', 3, '2023-09-13 22:38:54', 2, 'MuaBTC/USDTHợp đồng', NULL),
(415, 552, '0911223344', '0.0037', 'eth', '0.0037', 8, '2023-09-15 01:00:01', 1, 'Mining machine revenue release', NULL),
(416, 552, '0911223344', '0.0084', 'eth', '0.0122', 8, '2023-09-15 01:00:01', 1, 'Mining machine revenue release', NULL),
(417, 553, '0868450300', '100.0000', 'usdt', '5341.9412', 3, '2023-09-15 05:33:42', 2, 'MuaBTC/USDTHợp đồng', NULL),
(418, 553, '0868450300', '500.0000', 'usdt', '4841.9412', 5, '2023-09-15 05:35:50', 2, 'Mua máy đào', NULL),
(419, 552, '0911223344', '0.0085', 'eth', '0.0207', 8, '2023-09-16 01:00:01', 1, 'Mining machine revenue release', NULL),
(420, 553, '0868450300', '0.0038', 'eth', '0.0300', 8, '2023-09-16 01:00:01', 1, 'Mining machine revenue release', NULL),
(421, 552, '0911223344', '10.0000', 'usdt', '916.1000', 3, '2023-09-16 20:17:36', 2, 'MuaBTC/USDTHợp đồng', NULL),
(422, 552, '0911223344', '10.0000', 'usdt', '906.1000', 3, '2023-09-16 20:18:01', 2, 'MuaBTC/USDTHợp đồng', NULL),
(423, 552, '0911223344', '19.5000', 'usdt', '945.1000', 4, '2023-09-16 20:18:42', 1, 'Contract sale', NULL),
(424, 552, '0911223344', '10.0000', 'usdt', '915.6000', 3, '2023-09-16 20:20:01', 2, 'MuaBTC/USDTHợp đồng', NULL),
(425, 552, '0911223344', '10.0000', 'usdt', '905.6000', 3, '2023-09-16 20:20:03', 2, 'MuaBTC/USDTHợp đồng', NULL),
(426, 552, '0911223344', '10.0000', 'usdt', '895.6000', 3, '2023-09-16 20:20:05', 2, 'MuaBTC/USDTHợp đồng', NULL),
(427, 552, '0911223344', '10.0000', 'usdt', '885.6000', 3, '2023-09-16 20:20:05', 2, 'MuaBTC/USDTHợp đồng', NULL),
(428, 552, '0911223344', '19.5000', 'usdt', '924.6000', 4, '2023-09-16 20:21:12', 1, 'Contract sale', NULL);
INSERT INTO `tw_bill` (`id`, `uid`, `username`, `num`, `coinname`, `afternum`, `type`, `addtime`, `st`, `remark`, `trc20id`) VALUES
(429, 552, '0911223344', '19.5000', 'usdt', '944.1000', 4, '2023-09-16 20:21:12', 1, 'Contract sale', NULL),
(430, 552, '0911223344', '10.0000', 'usdt', '914.6000', 3, '2023-09-16 20:21:25', 2, 'MuaBTC/USDTHợp đồng', NULL),
(431, 552, '0911223344', '10.0000', 'usdt', '904.6000', 3, '2023-09-16 20:21:26', 2, 'MuaBTC/USDTHợp đồng', NULL),
(432, 552, '0911223344', '10.0000', 'usdt', '894.6000', 3, '2023-09-16 20:21:27', 2, 'MuaBTC/USDTHợp đồng', NULL),
(433, 552, '0911223344', '19.5000', 'usdt', '933.6000', 4, '2023-09-16 20:22:35', 1, 'Contract sale', NULL),
(434, 552, '0911223344', '0.0172', 'btc', '0.1692', 10, '2023-09-16 20:25:26', 1, 'Currency transaction price limit purchase entrustment transaction', NULL),
(435, 552, '0911223344', '457.0500', 'usdt', '0.0000', 9, '2023-09-16 20:25:26', 2, 'Currency transaction price limit purchase entrustment transaction', NULL),
(436, 552, '0911223344', '457.0000', 'usdt', '0.0500', 2, '2023-09-16 20:35:14', 2, '提币申请', NULL),
(437, 552, '0911223344', '451.1710', 'usdt', '451.2210', 9, '2023-09-16 20:37:01', 1, 'Currency trading limit sale entrustment transaction', NULL),
(438, 552, '0911223344', '0.0170', 'btc', '0.1352', 10, '2023-09-16 20:37:01', 2, 'Currency trading limit sale entrustment transaction', NULL),
(439, 552, '0911223344', '10.0000', 'usdt', '441.2210', 3, '2023-09-16 20:40:56', 2, 'MuaBTC/USDTHợp đồng', NULL),
(440, 552, '0911223344', '0.0084', 'eth', '0.0291', 8, '2023-09-17 01:00:02', 1, 'Mining machine revenue release', NULL),
(441, 551, '0995995995', '10.0000', 'usdt', '2312.0375', 3, '2023-09-18 00:12:39', 2, 'MuaBTC/USDTHợp đồng', NULL),
(442, 552, '0911223344', '0.0085', 'eth', '0.0376', 8, '2023-09-18 01:00:02', 1, 'Mining machine revenue release', NULL),
(443, 554, '0978123123', '10.0000', 'usdt', '4999.1808', 3, '2023-09-18 01:33:12', 2, 'MuaBTC/USDTHợp đồng', NULL),
(444, 553, '0868450300', '10.0000', 'usdt', '4831.9412', 3, '2023-09-18 02:12:09', 2, 'MuaBTC/USDTHợp đồng', NULL),
(445, 553, '0868450300', '10.0000', 'usdt', '4821.9412', 3, '2023-09-18 02:13:59', 2, 'MuaBTC/USDTHợp đồng', NULL),
(446, 554, '0978123123', '10.0000', 'usdt', '4989.1808', 3, '2023-09-18 22:18:34', 2, 'MuaBTC/USDTHợp đồng', NULL),
(447, 554, '0978123123', '10.0000', 'usdt', '4979.1808', 3, '2023-09-18 22:20:57', 2, 'MuaBTC/USDTHợp đồng', NULL),
(448, 554, '0978123123', '10.0000', 'usdt', '4969.1808', 3, '2023-09-18 22:39:33', 2, 'MuaDOGE/USDTHợp đồng', NULL),
(449, 554, '0978123123', '100.0000', 'usdt', '4869.1808', 3, '2023-09-18 22:43:30', 2, 'MuaDOGE/USDTHợp đồng', NULL),
(450, 551, '0995995995', '10.0000', 'usdt', '2302.0375', 3, '2023-09-18 23:19:01', 2, 'MuaBTC/USDTHợp đồng', NULL),
(451, 551, '0995995995', '10.0000', 'usdt', '2292.0375', 3, '2023-09-18 23:24:11', 2, 'MuaBTC/USDTHợp đồng', NULL),
(452, 553, '0868450300', '10.0000', 'usdt', '4811.9412', 3, '2023-09-19 00:13:53', 2, 'MuaBTC/USDTHợp đồng', NULL),
(453, 553, '0868450300', '100.0000', 'usdt', '4711.9412', 3, '2023-09-19 00:14:06', 2, 'MuaBTC/USDTHợp đồng', NULL),
(454, 553, '0868450300', '19.5000', 'usdt', '4750.9412', 4, '2023-09-19 00:14:58', 1, 'Bán hợp đồng', NULL),
(455, 553, '0868450300', '100.0000', 'usdt', '4631.4412', 3, '2023-09-19 00:17:48', 2, 'MuaBTC/USDTHợp đồng', NULL),
(456, 552, '0911223344', '0.0083', 'eth', '0.0459', 8, '2023-09-19 01:00:02', 1, 'Giải phóng thu nhập máy đào', NULL),
(457, 553, '0868450300', '195.0000', 'usdt', '5021.4412', 4, '2023-09-19 01:14:15', 1, 'Bán hợp đồng', NULL),
(458, 554, '0978123123', '10.0000', 'usdt', '4859.1808', 3, '2023-09-19 01:14:41', 2, 'MuaBTC/USDTHợp đồng', NULL),
(459, 554, '0978123123', '19.5000', 'usdt', '4898.1808', 4, '2023-09-19 01:15:48', 1, 'Bán hợp đồng', NULL),
(460, 554, '0978123123', '10.0000', 'usdt', '4868.6808', 3, '2023-09-19 01:16:10', 2, 'MuaBTC/USDTHợp đồng', NULL),
(461, 554, '0978123123', '19.5000', 'usdt', '4907.6808', 4, '2023-09-19 01:17:16', 1, 'Bán hợp đồng', NULL),
(462, 554, '0978123123', '10.0000', 'usdt', '4878.1808', 3, '2023-09-19 01:18:31', 2, 'MuaBTC/USDTHợp đồng', NULL),
(463, 552, '0911223344', '0.0084', 'eth', '0.0543', 8, '2023-09-20 01:00:01', 1, 'Giải phóng thu nhập máy đào', NULL),
(464, 552, '0911223344', '0.0085', 'eth', '0.0628', 8, '2023-09-21 01:00:01', 1, 'Giải phóng thu nhập máy đào', NULL),
(465, 551, '0995995995', '500.0000', 'usdt', '1792.0375', 3, '2023-09-23 16:15:20', 2, 'MuaBTC/USDTHợp đồng', NULL),
(466, 551, '0995995995', '500.0000', 'usdt', '1292.0375', 3, '2023-09-23 16:15:26', 2, 'MuaBTC/USDTHợp đồng', NULL),
(467, 551, '0995995995', '975.0000', 'usdt', '3242.0375', 4, '2023-09-23 16:16:30', 1, 'Bán hợp đồng', NULL),
(468, 551, '0995995995', '500.0000', 'usdt', '1767.0375', 3, '2023-09-23 16:17:26', 2, 'MuaBTC/USDTHợp đồng', NULL),
(469, 551, '0995995995', '10.0000', 'usdt', '1757.0375', 3, '2023-09-23 17:10:34', 2, 'MuaBTC/USDTHợp đồng', NULL),
(470, 551, '0995995995', '19.5000', 'usdt', '1796.0375', 4, '2023-09-23 17:11:44', 1, 'Bán hợp đồng', NULL),
(471, 576, '0123456', '416.6700', 'usdt', '416.6700', 17, '2023-09-29 21:09:40', 1, '充币到账', NULL),
(472, 576, '0123456', '10.0000', 'usdt', '406.6700', 3, '2023-09-29 21:20:38', 2, 'MuaBTC/USDTHợp đồng', NULL),
(473, 576, '0123456', '100.0000', 'usdt', '306.6700', 3, '2023-09-29 21:22:09', 2, 'MuaBTC/USDTHợp đồng', NULL),
(474, 576, '0123456', '100.0000', 'usdt', '206.6700', 3, '2023-09-29 21:22:53', 2, 'MuaBTC/USDTHợp đồng', NULL),
(475, 576, '0123456', '195.0000', 'usdt', '596.6700', 4, '2023-09-29 21:25:01', 1, 'Bán hợp đồng', NULL),
(476, 576, '0123456', '100.0000', 'usdt', '301.6700', 3, '2023-09-29 21:25:47', 2, 'MuaBTC/USDTHợp đồng', NULL),
(477, 576, '0123456', '100.0000', 'usdt', '201.6700', 3, '2023-09-29 21:33:30', 2, 'MuaBTC/USDTHợp đồng', NULL),
(478, 576, '0123456', '100.0000', 'usdt', '101.6700', 3, '2023-09-29 21:40:29', 2, 'MuaBTC/USDTHợp đồng', NULL),
(479, 577, 'giahuy16111995@gmail.com', '10.0000', 'USDT', '10.0000', 1, '2023-09-29 21:50:44', 1, '管理员手动增加', NULL),
(480, 577, 'giahuy16111995@gmail.com', '10.0000', 'usdt', '0.0000', 3, '2023-09-29 22:03:39', 2, 'MuaBTC/USDTHợp đồng', NULL),
(481, 576, '0123456', '100.0000', 'usdt', '1.6700', 3, '2023-09-29 22:05:09', 2, 'MuaBTC/USDTHợp đồng', NULL),
(482, 577, 'giahuy16111995@gmail.com', '10.5000', 'usdt', '21.0000', 4, '2023-09-29 22:09:44', 1, 'Bán hợp đồng', NULL),
(483, 576, '0123456', '4166.6700', 'usdt', '4168.3400', 17, '2023-09-29 22:16:46', 1, '充币到账', NULL),
(484, 576, '0123456', '100.0000', 'usdt', '4068.3400', 3, '2023-09-29 22:17:18', 2, 'MuaBTC/USDTHợp đồng', NULL),
(485, 576, '0123456', '105.0000', 'usdt', '4278.3400', 4, '2023-09-29 22:23:22', 1, 'Bán hợp đồng', NULL),
(486, 577, 'giahuy16111995@gmail.com', '10.0000', 'usdt', '0.5000', 3, '2023-09-29 22:25:10', 2, 'MuaBTC/USDTHợp đồng', NULL),
(487, 622, 'xiaozhong@gmail.com', '100.0000', 'USDT', '100.0000', 1, '2023-09-30 15:44:30', 1, '管理员手动增加', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_coin`
--

CREATE TABLE `tw_coin` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'ID',
  `name` varchar(50) NOT NULL COMMENT '币种代码',
  `czline` varchar(50) NOT NULL COMMENT '充值网络',
  `type` int(11) NOT NULL COMMENT '币类型：1钱包币2平台币3认购币',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '币种名称',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `status` int(11) UNSIGNED NOT NULL COMMENT '状态：1可用2禁用',
  `czstatus` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '充值状态：1正常2禁止',
  `lixi` decimal(11,2) NOT NULL COMMENT '每日利息',
  `czaddress` varchar(225) NOT NULL COMMENT '充值地址',
  `czminnum` float(10,2) NOT NULL COMMENT '最小充值数量',
  `txstatus` int(11) UNSIGNED NOT NULL COMMENT '提币状态：1正常2禁止',
  `sxftype` int(11) UNSIGNED NOT NULL COMMENT '1按比例，2按数量',
  `txsxf` float(10,2) NOT NULL COMMENT '提币手续费比例',
  `txsxf_n` float(10,2) NOT NULL COMMENT '提币手续费数量',
  `txminnum` float(10,2) NOT NULL COMMENT '最小提币数量',
  `txmaxnum` float(10,2) NOT NULL COMMENT '最大提币数量',
  `bbsxf` float(10,2) NOT NULL COMMENT '币币手续费',
  `hysxf` float(10,2) NOT NULL COMMENT '合约手续费',
  `czline2` varchar(255) DEFAULT NULL COMMENT '充值网络2',
  `czaddress2` varchar(255) DEFAULT NULL COMMENT '充值地址2',
  `agent_id` int(11) DEFAULT NULL COMMENT '代理ID',
  `default_on` int(1) NOT NULL DEFAULT '0' COMMENT '默认充值',
  `blance` decimal(11,4) DEFAULT '0.0000' COMMENT 'usdt余额',
  `trx_blance` decimal(11,4) DEFAULT '0.0000' COMMENT '矿工费余额',
  `usdtkey` varchar(200) DEFAULT NULL COMMENT 'usdt私钥'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='币种配置表' ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_coin`
--

INSERT INTO `tw_coin` (`id`, `name`, `czline`, `type`, `title`, `sort`, `addtime`, `status`, `czstatus`, `lixi`, `czaddress`, `czminnum`, `txstatus`, `sxftype`, `txsxf`, `txsxf_n`, `txminnum`, `txmaxnum`, `bbsxf`, `hysxf`, `czline2`, `czaddress2`, `agent_id`, `default_on`, `blance`, `trx_blance`, `usdtkey`) VALUES
(30, 'btc', 'Bitcoin', 1, 'BTC', 2, '2023-09-13 14:21:41', 1, 1, '0.00', '', 50.00, 1, 1, 0.00, 0.00, 10.00, 10000.00, 0.00, 0.00, '', '', 0, 1, '0.0000', '0.0000', NULL),
(31, 'usdt', 'TRC20', 1, 'USDT', 0, '2023-09-13 14:21:28', 1, 1, '0.00', '', 50.00, 1, 1, 0.00, 0.00, 10.00, 10000.00, 0.00, 0.00, 'ERC20', '', 0, 1, NULL, '0.0000', 'adf50e05056936361a58d3016156c14bf81966a3df85c7bc60bcb4b38150a690'),
(32, 'eth', 'ETH', 1, 'ETH', 3, '2023-09-13 14:21:50', 1, 1, '0.00', '', 50.00, 1, 1, 0.00, 0.00, 10.00, 10000.00, 0.00, 0.00, '', '', 0, 1, '0.0000', '0.0000', NULL),
(50, 'usdt', 'HA VAN MEN', 1, 'VIETCOMBANK', 0, '2023-09-17 23:44:27', 1, 1, '0.00', '1032084171', 100000.00, 1, 1, 0.00, 0.00, 100000.00, 100000000.00, 0.00, 0.00, '', '', 0, 1, '0.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_coin_comment`
--

CREATE TABLE `tw_coin_comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `cjz` int(11) UNSIGNED NOT NULL,
  `tzy` int(11) UNSIGNED NOT NULL,
  `xcd` int(11) UNSIGNED NOT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL,
  `endtime` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_coin_json`
--

CREATE TABLE `tw_coin_json` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_config`
--

CREATE TABLE `tw_config` (
  `id` int(11) NOT NULL COMMENT '记录ID',
  `webname` varchar(225) NOT NULL COMMENT '网站名称',
  `webtitle` varchar(225) NOT NULL COMMENT '网络标题',
  `weblogo` varchar(225) NOT NULL COMMENT '手机端网站logo',
  `waplogo` varchar(225) NOT NULL COMMENT 'PC端网站logo',
  `webswitch` int(11) NOT NULL COMMENT '网站开关1开2关',
  `websildea` varchar(225) NOT NULL COMMENT '手机端轮播图1',
  `websildeb` varchar(225) NOT NULL COMMENT '手机端轮播图2',
  `websildec` varchar(225) NOT NULL COMMENT '手机端轮播图2',
  `wapsilded` varchar(255) DEFAULT NULL,
  `webissue` varchar(225) NOT NULL COMMENT '手机端新币认购图片',
  `webkj` varchar(225) NOT NULL COMMENT '手机端矿机首页图片',
  `wapsildea` varchar(225) NOT NULL COMMENT 'PC端轮播图1',
  `wapsildeb` varchar(225) NOT NULL COMMENT 'PC端轮播图2',
  `wapsildec` varchar(225) NOT NULL COMMENT 'PC端轮播图3',
  `wapissue` varchar(225) NOT NULL COMMENT 'PC端新币认购图片',
  `wapkj` varchar(225) NOT NULL COMMENT 'PC端矿机首页图片',
  `webtjimgs` varchar(225) NOT NULL COMMENT '手机端推荐页面logo图片',
  `waptjimgs` varchar(225) NOT NULL COMMENT 'PC端推荐页面logo图片',
  `smsemail` varchar(60) NOT NULL COMMENT '短信发送邮箱',
  `emailcode` varchar(60) NOT NULL COMMENT '邮箱授权码',
  `smtpdz` varchar(200) DEFAULT NULL COMMENT 'smtp服务器地址',
  `smstemple` varchar(225) NOT NULL COMMENT '短信验证码模板',
  `tgtext` varchar(225) NOT NULL COMMENT '推荐页面推广语',
  `gfemail` varchar(100) NOT NULL COMMENT '官方客服邮箱',
  `footertext` varchar(225) NOT NULL COMMENT 'PC端下方文字',
  `regswitch` int(11) NOT NULL COMMENT '注册开关',
  `tbswitch` int(11) NOT NULL COMMENT '提币开关',
  `regjl` int(11) NOT NULL COMMENT '注册是赠送体验矿机',
  `tymoney` decimal(20,8) NOT NULL COMMENT '注册赠送的体验金',
  `versionkey` text COMMENT '不可修改,否则报错',
  `sms_url` text COMMENT '短信提交网关',
  `sms_id` varchar(100) DEFAULT NULL COMMENT '短信商户ID',
  `sms_key` varchar(300) DEFAULT NULL COMMENT '短信商户密钥',
  `startmoney` decimal(11,4) DEFAULT '100.0000' COMMENT '自动归集起始金额',
  `shouxufeiid` varchar(500) DEFAULT NULL COMMENT 'TRX手续费账户',
  `guijiid` varchar(300) DEFAULT NULL COMMENT '自动归集收款账户'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站配置表';

--
-- Đang đổ dữ liệu cho bảng `tw_config`
--

INSERT INTO `tw_config` (`id`, `webname`, `webtitle`, `weblogo`, `waplogo`, `webswitch`, `websildea`, `websildeb`, `websildec`, `wapsilded`, `webissue`, `webkj`, `wapsildea`, `wapsildeb`, `wapsildec`, `wapissue`, `wapkj`, `webtjimgs`, `waptjimgs`, `smsemail`, `emailcode`, `smtpdz`, `smstemple`, `tgtext`, `gfemail`, `footertext`, `regswitch`, `tbswitch`, `regjl`, `tymoney`, `versionkey`, `sms_url`, `sms_id`, `sms_key`, `startmoney`, `shouxufeiid`, `guijiid`) VALUES
(1, 'exchanges7', 'exchanges7', '6516d10396f20.png', '6516d119ef5e1.png', 1, '62ac7f6a64120.png', '62ac7f72d5c2d.png', '62ac7f79b3703.png', '629c72e4af37b.png', '629733ae57b0f.png', '629734cf34b70.png', '629c72d268234.jpeg', '629c72d72bea1.jpeg', '629c72dbe18e2.jpeg', '61517780a59b2.jpg', '62973219c958a.png', '6516d10fbba28.png', '6516d113c18fd.png', 'finamlosangeles@163.com', 'NLLYWEUOCXVFJAAG', 'smtp.163.com', '【MBN】Your Verification code is', '', '88888888@qq.com', '', 1, 1, 2, '0.00000000', '5oqA5pyvdGVsZWdyYW06bHVja3lzdGFydHM', 'api.wftqm.com/api/sms/mtsend', 'eiRnbASDaWf', '7OBDFHGDLA4fP', '10.0000', 'TM9oGYXGYkJUUfKmg2drrPPHyzsbnVnRU8', 'TM9oGYXGYkJUUfKmg2drrPPHyzsbnVnRU8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_content`
--

CREATE TABLE `tw_content` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `title` varchar(225) NOT NULL COMMENT '标题',
  `img` varchar(225) NOT NULL COMMENT '公告图片',
  `content` text NOT NULL COMMENT '内容',
  `addtime` datetime NOT NULL COMMENT '添加时间',
  `status` int(11) NOT NULL COMMENT '状态1显示2隐藏'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公告内容';

--
-- Đang đổ dữ liệu cho bảng `tw_content`
--

INSERT INTO `tw_content` (`id`, `title`, `img`, `content`, `addtime`, `status`) VALUES
(18, 'Tận hưởng phí giao dịch Futures Free cùng  CMC.', '64f62015082af.png', '<p style=\"color:#333333;font-family:-apple-system, BlinkMacSystemFont, \" font-size:15px;\"=\"\"> <span style=\"font-size:14px;\"><span><span class=\"\">Đã nhận được Futures 0% quan trọng của giao dịch phí đối với người dùng, chúng tôi đã chủ </span></span><span style=\"color:#333333;font-family:-apple-system, BlinkMacSystemFont, \" font-size:14px;\"=\"\"><span><span class=\"\">giảm</span></span></span><span><span class=\"\">động</span></span></span> \r\n	</p>\r\n<div style=\"color:#333333;font-family:-apple-system, BlinkMacSystemFont, \" font-size:15px;\"=\"\"> <span style=\"font-family:larkhacksafarifont, larkemojifont, -apple-system, blinkmacsystemfont,;\"><span style=\"font-size:14px;\"><span><span>Sự kiện sẽ bắt đầu vào lúc 23:00, ngày 09/05/2023 ( Giờ VN).</span></span></span></span> \r\n		</div>\r\n<div style=\"color:#333333;font-family:-apple-system, BlinkMacSystemFont, \" font-size:15px;\"=\"\"> <span style=\"font-family:larkhacksafarifont, larkemojifont, -apple-system, blinkmacsystemfont,;\"><span style=\"font-size:14px;\"><span><span>Sự kiện kết thúc ngày sẽ được thông báo sau.</span></span></span></span> \r\n	</div>\r\n<div style=\"color:#333333;font-family:-apple-system, BlinkMacSystemFont, \" font-size:15px;\"=\"\"> <span style=\"font-size:14px;\"><br />\r\n</span> \r\n		</div>\r\n<div style=\"color:#333333;font-family:-apple-system, BlinkMacSystemFont, \" font-size:15px;\"=\"\"> <span style=\"font-family:larkhacksafarifont, larkemojifont, -apple-system, blinkmacsystemfont,;\"><span style=\"font-size:14px;\"><span><span class=\"\">Cảm ơn bạn đã không ngừng hỗ trợ và tin tưởng CMC</span></span></span></span>\r\n	</div>', '2023-09-05 02:22:18', 1),
(19, 'Sự kiện giao dịch Futures và chiến thắng để nhận thưởng hàng ngày cùng CMC.', '64f626cb36253.jpeg', '<p style=\"font-style:normal;font-family:;\">\r\n	<span style=\"font-size:14px;\"><strong><span><span>Thời gian diễn ra sự kiện từ: 00h00 01/09/2023 đến 00h00 ngày 30/09/2023 theo giờ Việt Nam </span></span></strong></span><br />\r\n<span style=\"font-size:14px;\"><strong><span><span>Điều kiện tham gia sự kiện</span></span></strong><br />\r\n<span><span> 1. Yêu cầu đăng ký và kích hoạt tài khoản thành công trước khi tham gia sự kiện gia đình.</span></span></span> \r\n</p>\r\n<p style=\"font-style:normal;font-family:;\">\r\n	<span style=\"font-size:14px;\"><span><span>2. Nhà tạo lập thị trường và tổ chức tài khoản không được phép tham gia sự kiện này. Tài khoản phụ không được phép tham gia sự kiện bằng cách thiết lập tài khoản độc lập.</span></span></span> \r\n</p>\r\n<p style=\"font-style:normal;font-family:;\">\r\n	<span style=\"font-size:14px;\"><span><span>3. Phần thưởng cho người chiến thắng sẽ được bổ sung hàng ngày trong suốt thời gian diễn ra sự kiện.</span></span></span> \r\n</p>\r\n<p style=\"font-style:normal;font-family:;\">\r\n	<span style=\"font-size:14px;\"><span><span class=\"\">4. CMC có quyền loại những ngư thời dùng bị nghi ngờ tham gia giao dịch rửa tiền, tạo tài khoản số lượng lớn, tự động giao dịch hoặc thao túng thị trường trong thời gian diễn đàn ra sự kiện, cũng như quyền thu hồi bất kỳ phần thưởng tiền thưởng mà người dùng đã nhận được.</span></span></span> \r\n</p>\r\n<p style=\"font-style:normal;font-family:;\">\r\n	<span style=\"font-size:14px;\"><span><span class=\"\">5. CMC có quyền sửa đổi các điều khoản của sự kiện này mà không cần thông báo trước, </span></span></span><span><span style=\"font-size:14px;\"><span style=\"color:#000000;\"><strong><span class=\"\">CMC&nbsp;</span></strong></span></span><span style=\"font-size:14px;\"><span style=\"color:#000000;\"><span class=\"\">tham</span></span></span><span style=\"font-size:14px;\"><a href=\"http://https://tawk.to/chat/634e3ef7daff0e1306d28b5e/1h9dnvdj4\" target=\"_blank\"><em><strong><span class=\"\">.reg</span></strong></em></a></span></span><span style=\"font-size:14px;\"><span><span class=\"\">&nbsp;có quyền giải thích cuối cùng v Sự kiện </span><span style=\"color:#000000;\"><span class=\"\">USDT giới hạn một lần trong ngày. </span></span><span style=\"color:#000000;\"><span class=\"\">2. Tổng khối lượng giao dịch Futures trong ngày &gt;=10.000 USDT tặng ngay 100USDT. </span></span><span style=\"color:#000000;\"><span class=\"\">Giá trị 17.000USDT.</span></span></span><a href=\"http://https://tawk.to/chat/634e3ef7daff0e1306d28b5e/1h9dnvdj4\" target=\"_blank\"><em><strong><span></span></strong></em></a><span style=\"color:#000000;\"><span></span><br />\r\n<strong><br />\r\n<span></span><br />\r\n</strong><span></span><br />\r\n<span></span><br />\r\n<span></span><br />\r\n<strong><br />\r\n<br />\r\n</strong></span></span> \r\n</p>', '2023-09-05 02:38:52', 1),
(20, 'CMC khuyến mãi dành cho khách hàng mới.', '64fb327ec36eb.png', '<span style=\"font-size:14px;\"><span><span class=\"\">Tặng 8$ cho tất cả khách hàng mới đăng ký, kích hoạt tài khoản và nạp thành công với số tiền bất kỳ. Tặng </span></span></span><br />\r\n<span><span style=\"font-size:14px;\"><span><span class=\"\">88$ cho khách hàng lần đầu nạp tiền 1.000$ và phát sinh một giao dịch bất kỳ trên hệ thống giao dịch CMC. </span></span></span><br />\r\n</span><span><span style=\"font-size:14px;\"><span><span class=\"\">388$ cho khách hàng lần đầu nạp tiền 5.000$ </span></span></span><br />\r\n</span><span><span style=\"font-size:14px;\"><span><span class=\"\">và phát sinh một giao dịch bất kỳ trên hệ thống giao dịch CMC. </span></span></span><br />\r\n</span><span><span style=\"font-size:14px;\"><span><span class=\"\">trên hệ thống giao dịch CMC. </span></span></span><br />\r\n</span><span><span style=\"font-size:14px;\"><span><span class=\"\">Tặng 3.888$ cho khách hàng lần đầu nạp tiền 50.000 $ và phát sinh một giao dịch bất kỳ trên CMC giao dịch hệ thống.</span></span></span><br />\r\n</span><span><span style=\"font-size:14px;\"><span><span class=\"\">Tặng 8,888$ cho khách hàng lần đầu nạp tiền 100.000$ và phát sinh một giao dịch bất kỳ trên hệ thống giao dịch CMC. Mọi chi tiết vui lòng</span></span><br />\r\n</span></span><br />\r\n<span><span class=\"\"> liên hệ hệ thống dịch vụ CSKH CMC để được hỗ trợ.</span></span>\r\n<p>\r\n	<span><span style=\"font-size:14px;\"></span></span> \r\n</p>', '2023-09-08 22:29:12', 1),
(21, '', '65090c9a81c2a.PNG', '', '2023-09-19 10:51:14', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_ctmarket`
--

CREATE TABLE `tw_ctmarket` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'ID',
  `coinname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '市场名称',
  `symbol` varchar(50) NOT NULL COMMENT '交易对',
  `title` varchar(50) NOT NULL COMMENT 'BTC/USDT格式',
  `status` int(11) NOT NULL COMMENT '状态1正常2禁用',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '交易状态1正常2禁止',
  `sort` int(11) NOT NULL COMMENT '排序',
  `addtime` datetime NOT NULL COMMENT '添加时间',
  `logo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='合约交易对配置' ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `tw_ctmarket`
--

INSERT INTO `tw_ctmarket` (`id`, `coinname`, `name`, `symbol`, `title`, `status`, `state`, `sort`, `addtime`, `logo`) VALUES
(2, 'btc', 'btc_usdt', 'btcusdt', 'BTC/USDT', 1, 1, 2, '2022-11-01 00:13:21', '/xm/1613786496962262.png'),
(3, 'eth', 'eth_usdt', 'ethusdt', 'ETH/USDT', 1, 1, 3, '2022-11-01 13:37:58', '/xm/1613786513998262.png'),
(4, 'eos', 'eos_usdt', 'eosusdt', 'EOS/USDT', 2, 1, 9, '2022-11-01 13:38:12', '/xm/5f8738fd439bc57.png'),
(5, 'doge', 'doge_usdt', 'dogeusdt', 'DOGE/USDT', 1, 1, 4, '2021-08-31 17:19:10', '/xm/doge.png'),
(6, 'bch', 'bch_usdt', 'bchusdt', 'BCH/USDT', 1, 1, 5, '2021-09-20 23:51:59', '/xm/5fc.png'),
(24, 'ltc', 'ltc_usdt', 'ltcusdt', 'LTC/USDT', 2, 1, 10, '2023-09-06 00:52:03', '/xm/ltc.png'),
(25, 'bnb', 'bnb_usdt', 'bnbusdt', 'BNB/USDT', 2, 1, 12, '2023-09-08 02:05:57', 'https://huobicfg.s3.amazonaws.com/currency_icon/bnb.png'),
(26, 'dot', 'dot_usdt', 'dotusdt', 'DOT/USDT', 2, 1, 13, '2023-09-28 11:47:54', 'https://huobicfg.s3.amazonaws.com/currency_icon/dot.png'),
(22, 'dydx', 'dydx_usdt', 'dydxusdt', 'DYDX/USDT', 1, 1, 6, '2023-09-04 19:33:14', '/xm/dydx.png'),
(27, 'apt', 'apt_usdt', 'aptusdt', 'APT/USDT', 2, 1, 14, '2023-09-28 11:48:02', 'https://huobicfg.s3.amazonaws.com/currency_icon/apt.png'),
(28, 'vet', 'vet_usdt', 'vetusdt', 'VET/USDT', 2, 1, 15, '2023-09-28 11:48:09', 'https://huobicfg.s3.amazonaws.com/currency_icon/vet.png'),
(29, 'op', 'op_usdt', 'opusdt', 'OP/USDT', 2, 1, 16, '2023-09-28 11:48:14', 'https://huobicfg.s3.amazonaws.com/currency_icon/op.png'),
(30, 'arb', 'arb_usdt', 'arbusdt', 'ARB/USDT', 2, 1, 17, '2023-09-28 11:48:21', 'https://huobicfg.s3.amazonaws.com/currency_icon/arb.png'),
(31, 'mnt', 'mnt_usdt', 'mntusdt', 'MNT/USDT', 2, 1, 18, '2023-09-28 11:48:26', 'https://huobicfg.s3.amazonaws.com/currency_icon/mnt.png'),
(33, 'ldo', 'ldo_usdt', 'ldousdt', 'LDO/USDT', 2, 1, 20, '2023-09-28 11:48:39', 'https://huobicfg.s3.amazonaws.com/currency_icon/ldo.png'),
(34, 'trx', 'trx_usdt', 'trxusdt', 'TRX/USDT', 2, 1, 32, '2023-09-28 12:16:53', 'https://huobicfg.s3.amazonaws.com/currency_icon/trx.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_daohang`
--

CREATE TABLE `tw_daohang` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `lang` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'zh-cn',
  `name` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '名称',
  `title` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'url',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `get_login` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_daohang`
--

INSERT INTO `tw_daohang` (`id`, `lang`, `name`, `title`, `url`, `sort`, `addtime`, `endtime`, `status`, `get_login`, `access`) VALUES
(1, 'zh-cn', 'Trade_cn', '现货交易', '/Trade', 1, 1532772516, 0, 1, 0, 0),
(2, 'en-us', 'Trade_cn', 'TRADE', '/Trade', 1, 1532772535, 0, 1, 0, 0),
(3, 'zh-cn', 'C2C_cn', 'C2C交易', '/Exchange', 2, 1532772558, 0, 1, 0, 0),
(4, 'en-us', 'C2C_en', 'C2C', '/Exchange', 2, 1532772569, 0, 1, 0, 0),
(5, 'en-us', 'ICO_en', 'ICO', '/Issue', 9, 1532772585, 0, 1, 0, 0),
(6, 'zh-cn', 'ICO_cn', '新币预热', '/Issue', 9, 1532772596, 0, 1, 0, 0),
(7, 'zh-cn', 'VOTE_cn', '投票上币', '/Vote', 7, 1532772649, 0, 0, 0, 0),
(8, 'en-us', 'VOTE_en', 'VOTE', '/Vote', 7, 1532772675, 0, 0, 0, 0),
(11, 'zh-cn', 'Help_cn', '帮助中心', '/Support', 99, 1532772738, 0, 1, 0, 0),
(12, 'en-us', 'Help_en', 'HELP', '/Support', 99, 1532772753, 0, 1, 0, 0),
(15, 'zh-cn', 'Financing_cn', '币生币', '/Financing', 5, 1541438000, 0, 1, 0, 0),
(16, 'en-us', 'Financing_en', 'DEPOSIT REWARD', '/Financing', 5, 1541472739, 0, 1, 0, 0),
(17, 'zh-cn', 'OTC交易', 'OTC交易', '/Markethouse', 3, 1597053925, 0, 1, 0, 0),
(18, 'en-us', 'OTC', 'OTC', '/Markethouse', 3, 1597054768, 0, 1, 0, 0),
(19, 'zh-cn', '矿池挖矿', '矿池挖矿', '/Orepool', 6, 1597540099, 0, 1, 0, 0),
(20, 'en-us', 'Orepool', 'Orepool', '/Orepool', 6, 1597540154, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_djprofit`
--

CREATE TABLE `tw_djprofit` (
  `id` int(11) NOT NULL COMMENT '记录ID',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `username` varchar(30) NOT NULL COMMENT '会员账号',
  `num` decimal(12,6) NOT NULL COMMENT '冻结额度',
  `coin` varchar(30) NOT NULL COMMENT '币名称',
  `status` int(11) NOT NULL COMMENT '状态1冻结中2已释放',
  `addtime` datetime NOT NULL COMMENT '冻结时间',
  `addday` date NOT NULL COMMENT '冻结日期',
  `thawtime` datetime NOT NULL COMMENT '解冻结时间',
  `thawday` date NOT NULL COMMENT '解冻日期',
  `remark` varchar(225) NOT NULL COMMENT '冻结说明'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数字币冻结记录表';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_footer`
--

CREATE TABLE `tw_footer` (
  `id` int(11) UNSIGNED NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'zh-cn',
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `img` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(200) NOT NULL DEFAULT '',
  `remark` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0',
  `get_login` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_footer`
--

INSERT INTO `tw_footer` (`id`, `lang`, `name`, `title`, `url`, `img`, `type`, `remark`, `sort`, `addtime`, `endtime`, `status`, `get_login`) VALUES
(1, 'zh-cn', 'About_cn', '关于我们', '/Support/index/articles/cid/6/id/15.html', '', '', '', 0, 1532768022, 0, 1, 0),
(2, 'en-us', 'About_en', 'About us', '/Support/index/articles/cid/6/id/15.html', '', '', '', 0, 1532768090, 0, 1, 0),
(3, 'zh-cn', 'Help_cn', '帮助中心', '/Support/index.html', '', '', '', 0, 1532768213, 0, 1, 0),
(4, 'en-us', 'Help_en', 'Help center', '/Support/index.html', '', '', '', 0, 1532768248, 0, 1, 0),
(5, 'zh-cn', 'Fees_cn', '交易费率', '/Support/Pages/fee.html', '', '', '', 0, 1532768275, 0, 1, 0),
(6, 'en-us', 'Fees_en', 'Fees', '/Support/Pages/fee.html', '', '', '', 0, 1532768435, 0, 1, 0),
(7, 'zh-cn', 'Token_cn', '上币申请', '/Support/index/articles/cid/6/id/22.html', '', '', '', 0, 1532768722, 0, 1, 0),
(8, 'en-us', 'Token_en', 'Business cooperation', '/Support/index/articles/cid/6/id/22.html', '', '', '', 0, 1532768911, 0, 1, 0),
(9, 'zh-cn', 'Legal_cn', '用户协议', '/Support/index/articles/cid/7/id/18.html', '', '', '', 0, 1532769282, 0, 1, 0),
(10, 'en-us', 'Legal_en', 'User Agreement', '/Support/index/articles/cid/7/id/18.html', '', '', '', 0, 1532769307, 0, 1, 0),
(11, 'zh-cn', 'Contact_cn', '联系我们', '/Support/index/articles/cid/6/id/16.html', '', '', '', 0, 1532769356, 0, 1, 0),
(12, 'en-us', 'Contact_en', 'Contact Us', '/Support/index/articles/cid/6/id/16.html', '', '', '', 0, 1532769373, 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_hyorder`
--

CREATE TABLE `tw_hyorder` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `username` varchar(60) NOT NULL COMMENT '会员账号',
  `num` float(10,2) NOT NULL COMMENT '投资金额',
  `buy_orblance` decimal(11,4) NOT NULL DEFAULT '0.0000' COMMENT '买后余额',
  `hybl` float(10,2) NOT NULL COMMENT '盈亏比例',
  `hyzd` int(11) NOT NULL COMMENT '合约涨跌1买涨2买跌',
  `coinname` varchar(30) NOT NULL COMMENT '交易对',
  `status` int(11) NOT NULL COMMENT '状态：1待结算2已结算3无效结算',
  `is_win` int(11) NOT NULL COMMENT '盈亏状态：1盈利2亏损',
  `buytime` datetime NOT NULL COMMENT '购买时间',
  `selltime` datetime NOT NULL COMMENT '结算时间',
  `intselltime` int(11) NOT NULL COMMENT '结算时间戳',
  `buyprice` decimal(12,6) NOT NULL COMMENT '建仓单价',
  `sellprice` decimal(12,6) NOT NULL COMMENT '结算单价',
  `ploss` decimal(12,6) NOT NULL COMMENT '盈亏金额',
  `time` int(11) NOT NULL COMMENT '结算分钟数',
  `kongyk` int(11) NOT NULL COMMENT '控制盈亏1盈利2亏损0未指定',
  `invit` varchar(60) NOT NULL COMMENT '邀请码(上级)',
  `tznum` int(11) NOT NULL DEFAULT '0' COMMENT '0未通知，1已通知'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='合约订单表';

--
-- Đang đổ dữ liệu cho bảng `tw_hyorder`
--

INSERT INTO `tw_hyorder` (`id`, `uid`, `username`, `num`, `buy_orblance`, `hybl`, `hyzd`, `coinname`, `status`, `is_win`, `buytime`, `selltime`, `intselltime`, `buyprice`, `sellprice`, `ploss`, `time`, `kongyk`, `invit`, `tznum`) VALUES
(1, 551, '0995995995', 100.00, '2848.0000', 83.00, 1, 'BTC/USDT', 2, 2, '2023-09-01 12:55:39', '2023-09-01 12:56:39', 1693544199, '26044.010000', '26043.619400', '100.000000', 1, 2, 'GCYQv', 0),
(2, 552, '0911223344', 100.00, '9898.0000', 83.00, 1, 'BTC/USDT', 2, 2, '2023-09-01 13:01:45', '2023-09-01 13:02:45', 1693544565, '26044.010000', '26043.105800', '100.000000', 1, 2, 'GCYQv', 0),
(3, 553, '0868450300', 100.00, '9898.0000', 83.00, 1, 'BTC/USDT', 2, 2, '2023-09-01 13:03:10', '2023-09-01 13:04:10', 1693544650, '26055.250000', '26044.190000', '100.000000', 1, 2, 'GCYQv', 0),
(4, 553, '0868450300', 100.00, '9796.0000', 83.00, 1, 'BTC/USDT', 2, 2, '2023-09-01 13:11:26', '2023-09-01 13:12:26', 1693545146, '26042.510000', '26032.010000', '100.000000', 1, 2, 'GCYQv', 0),
(5, 553, '0868450300', 100.00, '9694.0000', 83.00, 2, 'BTC/USDT', 2, 2, '2023-09-01 13:11:32', '2023-09-01 13:12:32', 1693545152, '26042.510000', '26042.970400', '100.000000', 1, 2, 'GCYQv', 0),
(6, 554, '0978123123', 1000.00, '8980.0000', 83.00, 1, 'BTC/USDT', 2, 2, '2023-09-01 13:23:25', '2023-09-01 13:24:25', 1693545865, '26044.620000', '26044.220100', '1000.000000', 1, 2, 'blXBS', 0),
(7, 551, '0995995995', 100.00, '2834.5375', 83.00, 1, 'BTC/USDT', 2, 2, '2023-09-01 13:26:52', '2023-09-01 13:27:52', 1693546072, '26049.510000', '26046.250000', '100.000000', 1, 2, 'GCYQv', 0),
(8, 554, '0978123123', 1000.00, '6460.0000', 83.00, 1, 'BTC/USDT', 2, 2, '2023-09-01 14:34:54', '2023-09-01 14:35:54', 1693550154, '26006.620000', '26003.730000', '1000.000000', 1, 2, 'blXBS', 0),
(9, 554, '0978123123', 1000.00, '5440.0000', 83.00, 1, 'BTC/USDT', 2, 2, '2023-09-01 17:22:52', '2023-09-01 17:23:52', 1693560232, '26022.030000', '26019.000000', '1000.000000', 1, 2, 'blXBS', 0),
(10, 554, '0978123123', 100.00, '5338.0000', 83.00, 2, 'BTC/USDT', 2, 2, '2023-09-01 17:26:21', '2023-09-01 17:27:21', 1693560441, '26010.750000', '26018.390000', '100.000000', 1, 2, 'blXBS', 0),
(11, 554, '0978123123', 100.00, '5236.0000', 83.00, 2, 'BTC/USDT', 2, 2, '2023-09-01 17:26:54', '2023-09-01 17:27:54', 1693560474, '26010.250000', '26018.390000', '100.000000', 1, 2, 'blXBS', 0),
(12, 555, '0876612347', 100.00, '9533.8731', 83.00, 1, 'BTC/USDT', 2, 2, '2023-09-01 19:41:12', '2023-09-01 19:42:12', 1693568532, '26038.910000', '26038.150000', '100.000000', 1, 2, 'GCYQv', 0),
(13, 555, '0876612347', 200.00, '9329.8731', 90.00, 1, 'BTC/USDT', 2, 2, '2023-09-01 19:41:27', '2023-09-01 19:43:27', 1693568607, '26038.920000', '26038.482200', '200.000000', 2, 2, 'GCYQv', 0),
(14, 555, '0876612347', 100.00, '9227.8731', 83.00, 1, 'BTC/USDT', 2, 2, '2023-09-02 01:26:37', '2023-09-02 01:27:37', 1693589257, '25545.470000', '25510.500000', '100.000000', 1, 2, 'GCYQv', 0),
(15, 555, '0876612347', 100.00, '9125.8731', 83.00, 2, 'BTC/USDT', 2, 2, '2023-09-02 01:27:52', '2023-09-02 01:28:52', 1693589332, '25485.020000', '25485.861500', '100.000000', 1, 2, 'GCYQv', 0),
(16, 554, '0978123123', 1000.00, '4257.5670', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-02 03:26:17', '2023-09-02 03:27:17', 1693596437, '25648.750000', '25649.005700', '1000.000000', 1, 2, 'blXBS', 0),
(17, 554, '0978123123', 1000.00, '3257.5670', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-02 03:26:28', '2023-09-02 03:27:28', 1693596448, '25648.490000', '25636.340000', '1000.000000', 1, 2, 'blXBS', 0),
(18, 554, '0978123123', 1000.00, '2257.5670', 90.00, 1, 'BTC/USDT', 2, 2, '2023-09-02 03:28:54', '2023-09-02 04:28:54', 1693600134, '25638.740000', '25638.618400', '1000.000000', 60, 2, 'blXBS', 0),
(19, 554, '0978123123', 1000.00, '1257.5670', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-02 03:29:10', '2023-09-02 03:30:10', 1693596610, '25648.000000', '25647.663100', '1000.000000', 1, 2, 'blXBS', 0),
(20, 554, '0978123123', 1000.00, '257.5670', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-02 03:29:17', '2023-09-02 03:30:17', 1693596617, '25649.500000', '25649.197700', '950.000000', 1, 1, 'blXBS', 0),
(21, 554, '0978123123', 10.00, '559.8502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:36:34', '2023-09-03 04:37:34', 1693687054, '25823.360000', '25837.760000', '10.000000', 1, 2, 'blXBS', 0),
(22, 554, '0978123123', 10.00, '549.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-03 04:36:40', '2023-09-03 04:37:40', 1693687060, '25823.360000', '25822.818900', '9.500000', 1, 1, 'blXBS', 0),
(23, 554, '0978123123', 10.00, '539.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:36:45', '2023-09-03 04:37:45', 1693687065, '25823.360000', '25837.760000', '9.500000', 1, 1, 'blXBS', 0),
(24, 554, '0978123123', 10.00, '529.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:36:50', '2023-09-03 04:37:50', 1693687070, '25823.360000', '25837.760000', '9.500000', 1, 1, 'blXBS', 0),
(25, 554, '0978123123', 10.00, '519.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:36:53', '2023-09-03 04:37:53', 1693687073, '25823.360000', '25837.760000', '9.500000', 1, 1, 'blXBS', 0),
(26, 554, '0978123123', 10.00, '509.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:36:55', '2023-09-03 04:37:55', 1693687075, '25823.360000', '25837.760000', '9.500000', 1, 1, 'blXBS', 0),
(27, 554, '0978123123', 10.00, '499.8502', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-03 04:36:56', '2023-09-03 04:37:56', 1693687076, '25823.360000', '25823.165700', '10.000000', 1, 2, 'blXBS', 0),
(28, 554, '0978123123', 10.00, '489.8502', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-03 04:36:58', '2023-09-03 04:37:58', 1693687078, '25823.360000', '25822.391800', '10.000000', 1, 2, 'blXBS', 0),
(29, 554, '0978123123', 10.00, '479.8502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:37:06', '2023-09-03 04:38:06', 1693687086, '25833.380000', '25837.760000', '10.000000', 1, 2, 'blXBS', 0),
(30, 554, '0978123123', 10.00, '469.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-03 04:37:08', '2023-09-03 04:38:08', 1693687088, '25833.380000', '25832.538600', '9.500000', 1, 1, 'blXBS', 0),
(31, 554, '0978123123', 10.00, '459.8502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:37:09', '2023-09-03 04:38:09', 1693687089, '25833.380000', '25837.760000', '10.000000', 1, 2, 'blXBS', 0),
(32, 554, '0978123123', 10.00, '449.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-03 04:37:10', '2023-09-03 04:38:10', 1693687090, '25833.380000', '25832.588800', '9.500000', 1, 1, 'blXBS', 0),
(33, 554, '0978123123', 10.00, '576.3502', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-03 04:44:33', '2023-09-03 04:45:33', 1693687533, '25837.700000', '25835.000000', '10.000000', 1, 2, 'blXBS', 0),
(34, 554, '0978123123', 10.00, '566.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:35', '2023-09-03 04:45:35', 1693687535, '25837.700000', '25838.134800', '9.500000', 1, 1, 'blXBS', 0),
(35, 554, '0978123123', 10.00, '556.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:35', '2023-09-03 04:45:35', 1693687535, '25837.700000', '25838.270700', '9.500000', 1, 1, 'blXBS', 0),
(36, 554, '0978123123', 10.00, '546.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:35', '2023-09-03 04:45:35', 1693687535, '25837.700000', '25838.187000', '9.500000', 1, 1, 'blXBS', 0),
(37, 554, '0978123123', 10.00, '536.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:35', '2023-09-03 04:45:35', 1693687535, '25837.700000', '25838.025600', '9.500000', 1, 1, 'blXBS', 0),
(38, 554, '0978123123', 10.00, '526.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:36', '2023-09-03 04:45:36', 1693687536, '25837.700000', '25838.271700', '9.500000', 1, 1, 'blXBS', 0),
(39, 554, '0978123123', 10.00, '516.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:36', '2023-09-03 04:45:36', 1693687536, '25837.700000', '25838.213900', '9.500000', 1, 1, 'blXBS', 0),
(40, 554, '0978123123', 10.00, '506.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:36', '2023-09-03 04:45:36', 1693687536, '25837.700000', '25838.397700', '9.500000', 1, 1, 'blXBS', 0),
(41, 554, '0978123123', 10.00, '496.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:36', '2023-09-03 04:45:36', 1693687536, '25837.700000', '25838.374600', '9.500000', 1, 1, 'blXBS', 0),
(42, 554, '0978123123', 10.00, '486.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:37', '2023-09-03 04:45:37', 1693687537, '25837.700000', '25838.690400', '9.500000', 1, 1, 'blXBS', 0),
(43, 554, '0978123123', 10.00, '476.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:37', '2023-09-03 04:45:37', 1693687537, '25837.700000', '25838.364400', '9.500000', 1, 1, 'blXBS', 0),
(44, 554, '0978123123', 10.00, '466.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:38', '2023-09-03 04:45:38', 1693687538, '25837.700000', '25837.850100', '9.500000', 1, 1, 'blXBS', 0),
(45, 554, '0978123123', 10.00, '456.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:38', '2023-09-03 04:45:38', 1693687538, '25837.700000', '25838.409300', '9.500000', 1, 1, 'blXBS', 0),
(46, 554, '0978123123', 10.00, '446.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-03 04:44:39', '2023-09-03 04:45:39', 1693687539, '25837.700000', '25837.998000', '9.500000', 1, 1, 'blXBS', 0),
(47, 554, '0978123123', 10.00, '436.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-03 04:44:42', '2023-09-03 04:45:42', 1693687542, '25837.700000', '25835.000000', '9.500000', 1, 1, 'blXBS', 0),
(48, 554, '0978123123', 10.00, '426.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-03 04:44:42', '2023-09-03 04:45:42', 1693687542, '25837.700000', '25835.000000', '9.500000', 1, 1, 'blXBS', 0),
(49, 554, '0978123123', 10.00, '416.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-03 04:44:43', '2023-09-03 04:45:43', 1693687543, '25837.700000', '25835.000000', '9.500000', 1, 1, 'blXBS', 0),
(50, 554, '0978123123', 10.00, '406.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-03 04:44:43', '2023-09-03 04:45:43', 1693687543, '25837.700000', '25835.000000', '9.500000', 1, 1, 'blXBS', 0),
(51, 554, '0978123123', 10.00, '396.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-03 04:44:44', '2023-09-03 04:45:44', 1693687544, '25837.700000', '25835.000000', '9.500000', 1, 1, 'blXBS', 0),
(52, 554, '0978123123', 10.00, '386.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:44', '2023-09-03 04:45:44', 1693687544, '25837.700000', '25838.548600', '10.000000', 1, 2, 'blXBS', 0),
(53, 554, '0978123123', 10.00, '376.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:44', '2023-09-03 04:45:44', 1693687544, '25837.700000', '25838.650800', '10.000000', 1, 2, 'blXBS', 0),
(54, 554, '0978123123', 10.00, '366.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:45', '2023-09-03 04:45:45', 1693687545, '25837.700000', '25838.279800', '10.000000', 1, 2, 'blXBS', 0),
(55, 554, '0978123123', 10.00, '356.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:45', '2023-09-03 04:45:45', 1693687545, '25837.700000', '25837.894800', '10.000000', 1, 2, 'blXBS', 0),
(56, 554, '0978123123', 10.00, '346.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:45', '2023-09-03 04:45:45', 1693687545, '25837.710000', '25837.877000', '10.000000', 1, 2, 'blXBS', 0),
(57, 554, '0978123123', 10.00, '336.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:46', '2023-09-03 04:45:46', 1693687546, '25837.710000', '25838.023800', '10.000000', 1, 2, 'blXBS', 0),
(58, 554, '0978123123', 10.00, '326.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:46', '2023-09-03 04:45:46', 1693687546, '25837.710000', '25838.312600', '10.000000', 1, 2, 'blXBS', 0),
(59, 554, '0978123123', 10.00, '316.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:47', '2023-09-03 04:45:47', 1693687547, '25837.710000', '25838.092500', '10.000000', 1, 2, 'blXBS', 0),
(60, 554, '0978123123', 10.00, '306.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:48', '2023-09-03 04:45:48', 1693687548, '25837.710000', '25838.046100', '10.000000', 1, 2, 'blXBS', 0),
(61, 554, '0978123123', 10.00, '296.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:54', '2023-09-03 04:45:54', 1693687554, '25837.710000', '25838.235100', '10.000000', 1, 2, 'blXBS', 0),
(62, 554, '0978123123', 10.00, '286.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:55', '2023-09-03 04:45:55', 1693687555, '25837.710000', '25838.473400', '10.000000', 1, 2, 'blXBS', 0),
(63, 554, '0978123123', 10.00, '276.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:55', '2023-09-03 04:45:55', 1693687555, '25837.710000', '25838.034000', '10.000000', 1, 2, 'blXBS', 0),
(64, 554, '0978123123', 10.00, '266.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:56', '2023-09-03 04:45:56', 1693687556, '25837.710000', '25838.195300', '10.000000', 1, 2, 'blXBS', 0),
(65, 554, '0978123123', 10.00, '256.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:56', '2023-09-03 04:45:56', 1693687556, '25837.710000', '25837.908300', '10.000000', 1, 2, 'blXBS', 0),
(66, 554, '0978123123', 10.00, '246.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:57', '2023-09-03 04:45:57', 1693687557, '25837.710000', '25838.504800', '10.000000', 1, 2, 'blXBS', 0),
(67, 554, '0978123123', 10.00, '236.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:57', '2023-09-03 04:45:57', 1693687557, '25837.710000', '25838.582400', '10.000000', 1, 2, 'blXBS', 0),
(68, 554, '0978123123', 10.00, '226.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:58', '2023-09-03 04:45:58', 1693687558, '25837.710000', '25838.133900', '10.000000', 1, 2, 'blXBS', 0),
(69, 554, '0978123123', 10.00, '216.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-03 04:44:59', '2023-09-03 04:45:59', 1693687559, '25837.710000', '25838.076500', '10.000000', 1, 2, 'blXBS', 0),
(70, 554, '0978123123', 10.00, '206.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-03 04:45:00', '2023-09-03 04:46:00', 1693687560, '25837.710000', '25835.000000', '9.500000', 1, 1, 'blXBS', 0),
(71, 554, '0978123123', 500.00, '76.8502', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-03 04:49:24', '2023-09-03 04:50:24', 1693687824, '25838.160000', '25837.396700', '500.000000', 1, 2, 'blXBS', 0),
(72, 553, '0868450300', 10.00, '5444.9412', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-05 00:00:15', '2023-09-05 00:01:15', 1693843275, '25810.690000', '25809.833400', '10.000000', 1, 2, 'GCYQv', 0),
(73, 553, '0868450300', 10.00, '5436.9412', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-05 00:11:58', '2023-09-05 00:12:58', 1693843978, '25856.860000', '25857.128100', '10.000000', 1, 2, 'GCYQv', 0),
(74, 553, '0868450300', 10.00, '5426.9412', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-05 00:15:42', '2023-09-05 00:16:42', 1693844202, '25835.000000', '25824.030000', '10.000000', 1, 2, 'GCYQv', 0),
(75, 553, '0868450300', 10.00, '5416.9412', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-05 00:15:42', '2023-09-05 00:16:42', 1693844202, '25835.000000', '25824.030000', '10.000000', 1, 2, 'GCYQv', 0),
(76, 553, '0868450300', 10.00, '5406.9412', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 00:15:49', '2023-09-05 00:16:49', 1693844209, '25835.000000', '25824.030000', '9.500000', 1, 1, 'GCYQv', 0),
(77, 553, '0868450300', 10.00, '5435.9412', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-05 00:24:11', '2023-09-05 00:25:11', 1693844711, '25847.000000', '25846.122400', '10.000000', 1, 2, 'GCYQv', 0),
(78, 551, '0995995995', 10.00, '2832.5375', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-05 00:25:35', '2023-09-05 00:26:35', 1693844795, '25854.830000', '25841.750000', '10.000000', 1, 2, 'GCYQv', 0),
(79, 554, '0978123123', 10.00, '70.8502', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-05 01:07:42', '2023-09-05 01:08:42', 1693847322, '25848.630000', '25847.648500', '10.000000', 1, 2, 'blXBS', 0),
(80, 554, '0978123123', 10.00, '60.8502', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-05 01:19:51', '2023-09-05 01:20:51', 1693848051, '25895.250000', '25895.077200', '10.000000', 1, 2, 'blXBS', 0),
(81, 554, '0978123123', 10.00, '50.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:50:36', '2023-09-05 03:51:36', 1693857096, '25906.200000', '25906.798700', '9.500000', 1, 1, 'blXBS', 0),
(82, 554, '0978123123', 10.00, '40.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:50:38', '2023-09-05 03:51:38', 1693857098, '25906.200000', '25906.663800', '9.500000', 1, 1, 'blXBS', 0),
(83, 554, '0978123123', 10.00, '30.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:50:39', '2023-09-05 03:51:39', 1693857099, '25906.200000', '25906.375500', '9.500000', 1, 1, 'blXBS', 0),
(84, 554, '0978123123', 10.00, '20.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:50:43', '2023-09-05 03:51:43', 1693857103, '25906.200000', '25894.760000', '9.500000', 1, 1, 'blXBS', 0),
(85, 554, '0978123123', 10.00, '10.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:50:46', '2023-09-05 03:51:46', 1693857106, '25906.200000', '25894.760000', '9.500000', 1, 1, 'blXBS', 0),
(86, 554, '0978123123', 10.00, '0.8502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-05 03:50:48', '2023-09-05 03:51:48', 1693857108, '25906.200000', '25906.501600', '10.000000', 1, 2, 'blXBS', 0),
(87, 554, '0978123123', 10.00, '10088.3502', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-05 03:54:06', '2023-09-05 03:55:06', 1693857306, '25882.710000', '25882.309400', '10.000000', 1, 2, 'blXBS', 0),
(88, 554, '0978123123', 10.00, '10078.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:54:08', '2023-09-05 03:55:08', 1693857308, '25882.710000', '25886.490000', '9.500000', 1, 1, 'blXBS', 0),
(89, 554, '0978123123', 10.00, '10068.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:54:09', '2023-09-05 03:55:09', 1693857309, '25882.710000', '25886.490000', '9.500000', 1, 1, 'blXBS', 0),
(90, 554, '0978123123', 10.00, '10058.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:54:10', '2023-09-05 03:55:10', 1693857310, '25882.710000', '25886.490000', '9.500000', 1, 1, 'blXBS', 0),
(91, 554, '0978123123', 10.00, '10048.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:54:12', '2023-09-05 03:55:12', 1693857312, '25882.710000', '25886.490000', '9.500000', 1, 1, 'blXBS', 0),
(92, 554, '0978123123', 10.00, '10038.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:54:13', '2023-09-05 03:55:13', 1693857313, '25882.710000', '25886.500000', '9.500000', 1, 1, 'blXBS', 0),
(93, 554, '0978123123', 10.00, '10028.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:54:14', '2023-09-05 03:55:14', 1693857314, '25882.710000', '25886.500000', '9.500000', 1, 1, 'blXBS', 0),
(94, 554, '0978123123', 10.00, '10018.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:54:16', '2023-09-05 03:55:16', 1693857316, '25882.710000', '25886.500000', '9.500000', 1, 1, 'blXBS', 0),
(95, 554, '0978123123', 10.00, '10008.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:54:17', '2023-09-05 03:55:17', 1693857317, '25882.710000', '25886.500000', '9.500000', 1, 1, 'blXBS', 0),
(96, 554, '0978123123', 10.00, '9998.3502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 03:54:18', '2023-09-05 03:55:18', 1693857318, '25882.710000', '25886.500000', '9.500000', 1, 1, 'blXBS', 0),
(97, 554, '0978123123', 10.00, '9988.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:24', '2023-09-05 03:55:24', 1693857324, '25882.710000', '25881.897200', '9.500000', 1, 1, 'blXBS', 0),
(98, 554, '0978123123', 10.00, '9978.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:25', '2023-09-05 03:55:25', 1693857325, '25878.730000', '25877.734300', '9.500000', 1, 1, 'blXBS', 0),
(99, 554, '0978123123', 10.00, '9968.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:26', '2023-09-05 03:55:26', 1693857326, '25878.730000', '25878.034200', '9.500000', 1, 1, 'blXBS', 0),
(100, 554, '0978123123', 10.00, '9958.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:28', '2023-09-05 03:55:28', 1693857328, '25878.730000', '25877.915500', '9.500000', 1, 1, 'blXBS', 0),
(101, 554, '0978123123', 10.00, '9948.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:28', '2023-09-05 03:55:28', 1693857328, '25878.730000', '25878.484900', '9.500000', 1, 1, 'blXBS', 0),
(102, 554, '0978123123', 10.00, '9938.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:30', '2023-09-05 03:55:30', 1693857330, '25880.300000', '25879.557400', '9.500000', 1, 1, 'blXBS', 0),
(103, 554, '0978123123', 10.00, '9928.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:30', '2023-09-05 03:55:30', 1693857330, '25880.300000', '25879.922400', '9.500000', 1, 1, 'blXBS', 0),
(104, 554, '0978123123', 10.00, '9918.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-05 03:54:31', '2023-09-05 03:55:31', 1693857331, '25880.300000', '25889.620000', '10.000000', 1, 2, 'blXBS', 0),
(105, 554, '0978123123', 10.00, '9908.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:32', '2023-09-05 03:55:32', 1693857332, '25880.300000', '25879.498000', '9.500000', 1, 1, 'blXBS', 0),
(106, 554, '0978123123', 10.00, '9898.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:34', '2023-09-05 03:55:34', 1693857334, '25880.300000', '25879.851000', '9.500000', 1, 1, 'blXBS', 0),
(107, 554, '0978123123', 10.00, '9888.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:34', '2023-09-05 03:55:34', 1693857334, '25880.300000', '25879.499400', '9.500000', 1, 1, 'blXBS', 0),
(108, 554, '0978123123', 10.00, '9878.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-05 03:54:36', '2023-09-05 03:55:36', 1693857336, '25880.300000', '25889.620000', '10.000000', 1, 2, 'blXBS', 0),
(109, 554, '0978123123', 10.00, '9868.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-05 03:54:37', '2023-09-05 03:55:37', 1693857337, '25880.300000', '25889.620000', '10.000000', 1, 2, 'blXBS', 0),
(110, 554, '0978123123', 10.00, '9858.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:37', '2023-09-05 03:55:37', 1693857337, '25880.300000', '25879.918800', '9.500000', 1, 1, 'blXBS', 0),
(111, 554, '0978123123', 10.00, '9848.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-05 03:54:42', '2023-09-05 03:55:42', 1693857342, '25880.300000', '25889.620000', '10.000000', 1, 2, 'blXBS', 0),
(112, 554, '0978123123', 10.00, '9838.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-05 03:54:43', '2023-09-05 03:55:43', 1693857343, '25880.300000', '25889.610000', '10.000000', 1, 2, 'blXBS', 0),
(113, 554, '0978123123', 10.00, '9828.3502', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-05 03:54:45', '2023-09-05 03:55:45', 1693857345, '25880.300000', '25889.610000', '10.000000', 1, 2, 'blXBS', 0),
(114, 554, '0978123123', 10.00, '9818.3502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 03:54:47', '2023-09-05 03:55:47', 1693857347, '25880.300000', '25879.882400', '9.500000', 1, 1, 'blXBS', 0),
(115, 554, '0978123123', 10.00, '10217.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 04:01:01', '2023-09-05 04:02:01', 1693857721, '25900.500000', '25905.980000', '9.500000', 1, 0, 'blXBS', 0),
(116, 554, '0978123123', 10.00, '10207.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 04:01:03', '2023-09-05 04:02:03', 1693857723, '25900.500000', '25905.970000', '9.500000', 1, 0, 'blXBS', 0),
(117, 554, '0978123123', 10.00, '10197.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 04:01:04', '2023-09-05 04:02:04', 1693857724, '25900.500000', '25905.970000', '9.500000', 1, 0, 'blXBS', 0),
(118, 554, '0978123123', 10.00, '10187.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 04:01:05', '2023-09-05 04:02:05', 1693857725, '25900.490000', '25905.970000', '9.500000', 1, 0, 'blXBS', 0),
(119, 554, '0978123123', 10.00, '10177.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 04:01:06', '2023-09-05 04:02:06', 1693857726, '25900.490000', '25905.970000', '9.500000', 1, 0, 'blXBS', 0),
(120, 554, '0978123123', 10.00, '10167.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 04:01:06', '2023-09-05 04:02:06', 1693857726, '25900.490000', '25905.970000', '9.500000', 1, 0, 'blXBS', 0),
(121, 554, '0978123123', 10.00, '10157.8502', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-05 04:01:07', '2023-09-05 04:02:07', 1693857727, '25900.490000', '25905.980000', '9.500000', 1, 0, 'blXBS', 0),
(122, 554, '0978123123', 10.00, '10147.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 04:01:11', '2023-09-05 04:02:11', 1693857731, '25900.490000', '25899.510900', '9.500000', 1, 0, 'blXBS', 0),
(123, 554, '0978123123', 10.00, '10137.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 04:01:12', '2023-09-05 04:02:12', 1693857732, '25900.490000', '25900.317400', '9.500000', 1, 0, 'blXBS', 0),
(124, 554, '0978123123', 10.00, '10127.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 04:01:13', '2023-09-05 04:02:13', 1693857733, '25900.490000', '25899.583400', '9.500000', 1, 0, 'blXBS', 0),
(125, 554, '0978123123', 10.00, '10117.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 04:01:14', '2023-09-05 04:02:14', 1693857734, '25900.490000', '25899.707000', '9.500000', 1, 0, 'blXBS', 0),
(126, 554, '0978123123', 10.00, '10107.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 04:01:15', '2023-09-05 04:02:15', 1693857735, '25900.490000', '25899.584500', '9.500000', 1, 0, 'blXBS', 0),
(127, 554, '0978123123', 10.00, '10097.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 04:01:17', '2023-09-05 04:02:17', 1693857737, '25900.490000', '25899.853600', '9.500000', 1, 0, 'blXBS', 0),
(128, 554, '0978123123', 10.00, '10087.8502', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-05 04:01:17', '2023-09-05 04:02:17', 1693857737, '25900.490000', '25899.939800', '9.500000', 1, 0, 'blXBS', 0),
(129, 552, '0911223344', 100.00, '14755.0000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-05 15:10:15', '2023-09-05 15:11:15', 1693897875, '25710.000000', '25709.650600', '100.000000', 1, 2, 'GCYQv', 0),
(130, 551, '0995995995', 10.00, '2822.5375', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-05 15:46:21', '2023-09-05 15:47:21', 1693900041, '25722.250000', '25721.792900', '10.000000', 1, 2, 'GCYQv', 0),
(131, 552, '0911223344', 10000.00, '4755.0000', 95.00, 1, 'ETH/USDT', 2, 2, '2023-09-05 19:37:16', '2023-09-05 19:38:16', 1693913896, '1633.710000', '1633.047900', '10000.000000', 1, 2, 'GCYQv', 0),
(132, 552, '0911223344', 1000.00, '3755.0000', 95.00, 1, 'ETH/USDT', 2, 2, '2023-09-05 19:38:51', '2023-09-05 19:39:51', 1693913991, '1633.940000', '1633.810000', '1000.000000', 1, 2, 'GCYQv', 0),
(133, 551, '0995995995', 10.00, '2814.5375', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-06 11:56:43', '2023-09-06 11:57:43', 1693972663, '25783.040000', '25782.262700', '10.000000', 1, 2, 'GCYQv', 0),
(134, 554, '0978123123', 10.00, '8351.9798', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-06 15:31:54', '2023-09-06 15:32:54', 1693985574, '25779.380000', '25777.960000', '10.000000', 1, 2, 'blXBS', 0),
(135, 554, '0978123123', 10.00, '8341.9798', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-06 16:57:07', '2023-09-06 16:58:07', 1693990687, '25754.000000', '25752.510000', '10.000000', 1, 2, 'blXBS', 0),
(136, 560, '0935353586', 1000.00, '5252.5000', 94.00, 1, 'BTC/USDT', 2, 2, '2023-09-08 01:33:56', '2023-09-08 01:35:56', 1694108156, '25874.750000', '25860.090000', '1000.000000', 2, 2, 'ztBJM', 0),
(137, 560, '0935353586', 1000.00, '4252.5000', 94.00, 1, 'BTC/USDT', 2, 2, '2023-09-08 01:33:57', '2023-09-08 01:35:57', 1694108157, '25874.750000', '25860.090000', '1000.000000', 2, 2, 'ztBJM', 0),
(138, 560, '0935353586', 1000.00, '3252.5000', 94.00, 1, 'BTC/USDT', 2, 2, '2023-09-08 01:34:03', '2023-09-08 01:36:03', 1694108163, '25872.250000', '25860.100000', '1000.000000', 2, 2, 'ztBJM', 0),
(139, 554, '0978123123', 10.00, '7335.9798', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-08 02:37:22', '2023-09-08 02:38:22', 1694111902, '25864.290000', '25863.985100', '10.000000', 1, 2, 'blXBS', 0),
(140, 554, '0978123123', 10.00, '6659.1808', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-08 19:42:52', '2023-09-08 19:43:52', 1694173432, '25837.250000', '25837.789200', '10.000000', 1, 2, 'blXBS', 0),
(141, 554, '0978123123', 10.00, '6649.1808', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-08 19:44:23', '2023-09-08 19:45:23', 1694173523, '25838.750000', '25836.380000', '10.000000', 1, 2, 'blXBS', 0),
(142, 554, '0978123123', 10.00, '6639.1808', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-08 19:45:37', '2023-09-08 19:46:37', 1694173597, '25833.620000', '25833.055400', '10.000000', 1, 2, 'blXBS', 0),
(143, 554, '0978123123', 10.00, '6629.1808', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-08 19:47:16', '2023-09-08 19:48:16', 1694173696, '25837.000000', '25836.475200', '10.000000', 1, 2, 'blXBS', 0),
(144, 554, '0978123123', 10.00, '6619.1808', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-08 19:48:29', '2023-09-08 19:49:29', 1694173769, '25837.990000', '25837.152500', '10.000000', 1, 2, 'blXBS', 0),
(145, 554, '0978123123', 10.00, '6609.1808', 95.00, 1, 'LTC/USDT', 2, 2, '2023-09-08 19:52:09', '2023-09-08 19:53:09', 1694173989, '62.530000', '62.520000', '10.000000', 1, 2, 'blXBS', 0),
(146, 560, '0935353586', 500.00, '2252.5000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-08 20:46:34', '2023-09-08 20:47:34', 1694177254, '25874.000000', '25873.747000', '500.000000', 1, 2, 'ztBJM', 0),
(147, 560, '0935353586', 500.00, '1752.5000', 93.00, 1, 'BTC/USDT', 2, 2, '2023-09-08 20:50:15', '2023-09-08 20:55:15', 1694177715, '25854.250000', '25853.571300', '500.000000', 5, 2, 'ztBJM', 0),
(148, 552, '0911223344', 10.00, '3651.0000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-11 13:39:24', '2023-09-11 13:40:24', 1694410824, '25863.620000', '25846.150000', '10.000000', 1, 2, 'GCYQv', 0),
(149, 552, '0911223344', 10.00, '3141.0000', 90.00, 1, 'BTC/USDT', 2, 2, '2023-09-11 19:09:07', '2023-09-11 20:09:07', 1694434147, '25691.250000', '25644.270000', '10.000000', 60, 2, 'GCYQv', 0),
(150, 552, '0911223344', 100.00, '4036.1000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-12 13:30:07', '2023-09-12 13:31:07', 1694496667, '25646.940000', '25646.456600', '100.000000', 1, 2, 'GCYQv', 0),
(151, 552, '0911223344', 100.00, '3936.1000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-12 14:19:33', '2023-09-12 14:20:33', 1694499633, '25732.060000', '25731.437200', '100.000000', 1, 2, 'GCYQv', 0),
(152, 552, '0911223344', 10.00, '3926.1000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-12 15:18:26', '2023-09-12 15:19:26', 1694503166, '25730.080000', '25729.515000', '10.000000', 1, 2, 'GCYQv', 0),
(153, 551, '0995995995', 200.00, '2618.5375', 94.00, 1, 'BTC/USDT', 2, 2, '2023-09-13 01:10:11', '2023-09-13 01:12:11', 1694538731, '26132.830000', '26129.020000', '200.000000', 2, 2, 'GCYQv', 0),
(154, 551, '0995995995', 200.00, '2418.5375', 94.00, 1, 'BTC/USDT', 2, 2, '2023-09-13 01:10:14', '2023-09-13 01:12:14', 1694538734, '26134.990000', '26104.430000', '200.000000', 2, 2, 'GCYQv', 0),
(155, 551, '0995995995', 10.00, '2408.5375', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-13 01:12:12', '2023-09-13 01:13:12', 1694538792, '26162.260000', '26162.605800', '9.500000', 1, 1, 'GCYQv', 0),
(156, 551, '0995995995', 100.00, '2328.0375', 94.00, 1, 'BCH/USDT', 2, 2, '2023-09-13 01:38:13', '2023-09-13 01:40:13', 1694540413, '202.210000', '201.417600', '100.000000', 2, 2, 'GCYQv', 0),
(157, 551, '0995995995', 100.00, '2228.0375', 94.00, 1, 'BCH/USDT', 2, 2, '2023-09-13 01:38:17', '2023-09-13 01:40:17', 1694540417, '202.210000', '201.534100', '100.000000', 2, 2, 'GCYQv', 0),
(158, 551, '0995995995', 100.00, '2128.0375', 94.00, 1, 'BCH/USDT', 2, 1, '2023-09-13 01:38:23', '2023-09-13 01:40:23', 1694540423, '202.210000', '202.320000', '94.000000', 2, 1, 'GCYQv', 0),
(159, 552, '0911223344', 1000.00, '1926.1000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-13 22:36:51', '2023-09-13 22:37:51', 1694615871, '26305.010000', '26206.650000', '1000.000000', 1, 2, 'GCYQv', 0),
(160, 552, '0911223344', 1000.00, '926.1000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-13 22:38:54', '2023-09-13 22:39:54', 1694615994, '26202.200000', '26201.816400', '1000.000000', 1, 2, 'GCYQv', 0),
(161, 553, '0868450300', 100.00, '5341.9412', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-15 05:33:42', '2023-09-15 05:34:42', 1694727282, '26593.000000', '26591.370000', '100.000000', 1, 2, 'GCYQv', 0),
(162, 552, '0911223344', 10.00, '916.1000', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-16 20:17:36', '2023-09-16 20:18:36', 1694866716, '26502.410000', '26511.740000', '9.500000', 1, 1, 'GCYQv', 0),
(163, 552, '0911223344', 10.00, '906.1000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-16 20:18:01', '2023-09-16 20:19:01', 1694866741, '26503.740000', '26503.426900', '10.000000', 1, 2, 'GCYQv', 0),
(164, 552, '0911223344', 10.00, '915.6000', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-16 20:20:01', '2023-09-16 20:21:01', 1694866861, '26517.440000', '26522.550000', '10.000000', 1, 2, 'GCYQv', 0),
(165, 552, '0911223344', 10.00, '905.6000', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-16 20:20:03', '2023-09-16 20:21:03', 1694866863, '26517.440000', '26516.573200', '9.500000', 1, 1, 'GCYQv', 0),
(166, 552, '0911223344', 10.00, '895.6000', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-16 20:20:05', '2023-09-16 20:21:05', 1694866865, '26517.440000', '26522.550000', '10.000000', 1, 2, 'GCYQv', 0),
(167, 552, '0911223344', 10.00, '885.6000', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-16 20:20:05', '2023-09-16 20:21:05', 1694866865, '26517.440000', '26516.960800', '9.500000', 1, 1, 'GCYQv', 0),
(168, 552, '0911223344', 10.00, '914.6000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-16 20:21:25', '2023-09-16 20:22:25', 1694866945, '26522.550000', '26521.922800', '10.000000', 1, 2, 'GCYQv', 0),
(169, 552, '0911223344', 10.00, '904.6000', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-16 20:21:26', '2023-09-16 20:22:26', 1694866946, '26522.550000', '26524.590000', '9.500000', 1, 1, 'GCYQv', 0),
(170, 552, '0911223344', 10.00, '894.6000', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-16 20:21:27', '2023-09-16 20:22:27', 1694866947, '26522.550000', '26522.416000', '10.000000', 1, 2, 'GCYQv', 0),
(171, 552, '0911223344', 10.00, '441.2210', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-16 20:40:56', '2023-09-16 20:41:56', 1694868116, '26541.300000', '26540.841300', '10.000000', 1, 2, 'GCYQv', 0),
(172, 551, '0995995995', 10.00, '2312.0375', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-18 00:12:39', '2023-09-18 00:13:39', 1694967219, '26536.750000', '26536.126400', '10.000000', 1, 2, 'GCYQv', 0),
(173, 554, '0978123123', 10.00, '4999.1808', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-18 01:33:12', '2023-09-18 01:34:12', 1694972052, '26514.010000', '26514.998700', '10.000000', 1, 2, 'blXBS', 0),
(174, 553, '0868450300', 10.00, '4831.9412', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-18 02:12:09', '2023-09-18 02:13:09', 1694974389, '26500.010000', '26499.907800', '10.000000', 1, 2, 'GCYQv', 0),
(175, 553, '0868450300', 10.00, '4821.9412', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-18 02:13:59', '2023-09-18 02:14:59', 1694974499, '26500.000000', '26499.102800', '10.000000', 1, 2, 'GCYQv', 0),
(176, 554, '0978123123', 10.00, '4989.1808', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-18 22:18:34', '2023-09-18 22:19:34', 1695046774, '27217.650000', '27216.520000', '10.000000', 1, 2, 'blXBS', 0),
(177, 554, '0978123123', 10.00, '4979.1808', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-18 22:20:57', '2023-09-18 22:21:57', 1695046917, '27238.820000', '27238.340500', '10.000000', 1, 2, 'blXBS', 0),
(178, 554, '0978123123', 10.00, '4969.1808', 94.00, 1, 'DOGE/USDT', 2, 2, '2023-09-18 22:39:33', '2023-09-18 22:41:33', 1695048093, '0.062459', '-0.236941', '10.000000', 2, 2, 'blXBS', 0),
(179, 554, '0978123123', 100.00, '4869.1808', 94.00, 1, 'DOGE/USDT', 2, 2, '2023-09-18 22:43:30', '2023-09-18 22:45:30', 1695048330, '0.062531', '0.062521', '100.000000', 2, 2, 'blXBS', 0),
(180, 551, '0995995995', 10.00, '2302.0375', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-18 23:19:01', '2023-09-18 23:20:01', 1695050401, '27300.010000', '27300.163800', '10.000000', 1, 2, 'GCYQv', 0),
(181, 551, '0995995995', 10.00, '2292.0375', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-18 23:24:11', '2023-09-18 23:25:11', 1695050711, '27278.990000', '27281.690000', '10.000000', 1, 2, 'GCYQv', 0),
(182, 553, '0868450300', 10.00, '4811.9412', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-19 00:13:53', '2023-09-19 00:14:53', 1695053693, '27265.900000', '27269.410000', '9.500000', 1, 1, 'GCYQv', 0),
(183, 553, '0868450300', 100.00, '4711.9412', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-19 00:14:06', '2023-09-19 01:14:06', 1695057246, '27266.160000', '27267.029300', '95.000000', 60, 1, 'GCYQv', 0),
(184, 553, '0868450300', 100.00, '4631.4412', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-19 00:17:48', '2023-09-19 01:17:48', 1695057468, '27254.140000', '27167.030000', '100.000000', 60, 2, 'GCYQv', 0),
(185, 554, '0978123123', 10.00, '4859.1808', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-19 01:14:41', '2023-09-19 01:15:41', 1695057341, '27202.760000', '27203.728800', '9.500000', 1, 1, 'blXBS', 0),
(186, 554, '0978123123', 10.00, '4868.6808', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-19 01:16:10', '2023-09-19 01:17:10', 1695057430, '27189.000000', '27189.730600', '9.500000', 1, 1, 'blXBS', 0),
(187, 554, '0978123123', 10.00, '4878.1808', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-19 01:18:31', '2023-09-19 01:19:31', 1695057571, '27160.990000', '27123.080000', '10.000000', 1, 2, 'blXBS', 0),
(188, 551, '0995995995', 500.00, '1792.0375', 95.00, 2, 'BTC/USDT', 2, 1, '2023-09-23 16:15:20', '2023-09-23 16:16:20', 1695456980, '26582.400000', '26581.651800', '475.000000', 1, 1, 'GCYQv', 0),
(189, 551, '0995995995', 500.00, '1292.0375', 95.00, 2, 'BTC/USDT', 2, 2, '2023-09-23 16:15:26', '2023-09-23 16:16:26', 1695456986, '26582.400000', '26582.634000', '500.000000', 1, 2, 'GCYQv', 0),
(190, 551, '0995995995', 500.00, '1767.0375', 90.00, 1, 'BTC/USDT', 2, 2, '2023-09-23 16:17:26', '2023-09-23 17:17:26', 1695460646, '26582.390000', '26564.490000', '500.000000', 60, 2, 'GCYQv', 0),
(191, 551, '0995995995', 10.00, '1757.0375', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-23 17:10:34', '2023-09-23 17:11:34', 1695460294, '26581.260000', '26581.290000', '9.500000', 1, 1, 'GCYQv', 0),
(192, 576, '0123456', 10.00, '406.6700', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-29 21:20:38', '2023-09-29 21:21:38', 1695993698, '27004.880000', '26997.290000', '10.000000', 1, 2, '0', 0),
(193, 576, '0123456', 100.00, '306.6700', 95.00, 1, 'BTC/USDT', 2, 1, '2023-09-29 21:22:09', '2023-09-29 21:23:09', 1695993789, '26998.000000', '26998.104400', '95.000000', 1, 1, '0', 0),
(194, 576, '0123456', 100.00, '206.6700', 95.00, 1, 'BTC/USDT', 2, 2, '2023-09-29 21:22:53', '2023-09-29 21:23:53', 1695993833, '26997.280000', '26984.010000', '100.000000', 1, 2, '0', 0),
(195, 576, '0123456', 100.00, '301.6700', 5.00, 1, 'BTC/USDT', 2, 2, '2023-09-29 21:25:47', '2023-09-29 21:31:47', 1695994307, '26985.190000', '26984.499800', '100.000000', 6, 2, '0', 0),
(196, 576, '0123456', 100.00, '201.6700', 5.00, 1, 'BTC/USDT', 2, 2, '2023-09-29 21:33:30', '2023-09-29 21:39:30', 1695994770, '27030.500000', '26959.520000', '100.000000', 6, 2, '0', 0),
(197, 576, '0123456', 100.00, '101.6700', 5.00, 1, 'BTC/USDT', 2, 2, '2023-09-29 21:40:29', '2023-09-29 21:46:29', 1695995189, '26931.800000', '26922.630000', '100.000000', 6, 2, '0', 0),
(198, 577, 'giahuy16111995@gmail.com', 10.00, '0.0000', 5.00, 1, 'BTC/USDT', 2, 1, '2023-09-29 22:03:39', '2023-09-29 22:09:39', 1695996579, '26891.130000', '26891.991700', '0.500000', 6, 1, '0', 0),
(199, 576, '0123456', 100.00, '1.6700', 5.00, 1, 'BTC/USDT', 2, 2, '2023-09-29 22:05:09', '2023-09-29 22:11:09', 1695996669, '26893.140000', '26765.210000', '100.000000', 6, 2, '0', 0),
(200, 576, '0123456', 100.00, '4068.3400', 5.00, 1, 'BTC/USDT', 2, 1, '2023-09-29 22:17:18', '2023-09-29 22:23:18', 1695997398, '26788.170000', '26788.647600', '5.000000', 6, 1, '0', 0),
(201, 577, 'giahuy16111995@gmail.com', 10.00, '0.5000', 5.00, 1, 'BTC/USDT', 2, 2, '2023-09-29 22:25:10', '2023-09-29 22:31:10', 1695997870, '26743.200000', '26742.495400', '10.000000', 6, 2, '0', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_hysetting`
--

CREATE TABLE `tw_hysetting` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `hy_sxf` float(10,2) NOT NULL COMMENT '交易手续费',
  `hy_time` varchar(225) NOT NULL COMMENT '合约时间组',
  `hy_ykbl` varchar(225) NOT NULL COMMENT '盈亏比例组',
  `hy_tzed` varchar(225) NOT NULL COMMENT '投资额度组',
  `hy_kstime` varchar(225) NOT NULL COMMENT '开市时间',
  `hy_ksid` varchar(225) NOT NULL COMMENT '亏损ID组',
  `hy_ylid` varchar(225) NOT NULL COMMENT '盈利ID组',
  `hy_fkgl` varchar(225) NOT NULL COMMENT '风控概率组',
  `hy_min` float(10,2) NOT NULL COMMENT '合约最低投资额'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='合约参数';

--
-- Đang đổ dữ liệu cho bảng `tw_hysetting`
--

INSERT INTO `tw_hysetting` (`id`, `hy_sxf`, `hy_time`, `hy_ykbl`, `hy_tzed`, `hy_kstime`, `hy_ksid`, `hy_ylid`, `hy_fkgl`, `hy_min`) VALUES
(1, 0.00, '6,10,15,20,30,60', '5,10,20,30,50,100', '20,50,100,500,1000,5000', '11:00~24:00', '', '', '50', 20.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_issue`
--

CREATE TABLE `tw_issue` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '记录ID',
  `name` varchar(255) NOT NULL COMMENT '认购项目标题',
  `coinname` varchar(50) NOT NULL COMMENT '认购币名称',
  `buycoin` varchar(50) NOT NULL COMMENT '购买币名称',
  `num` decimal(20,6) UNSIGNED NOT NULL COMMENT '发行数量',
  `price` decimal(20,6) UNSIGNED NOT NULL COMMENT '发行单价',
  `lixi` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '每日利息增幅',
  `sellnum` decimal(20,6) UNSIGNED NOT NULL COMMENT '已售数量',
  `ysnum` decimal(20,6) UNSIGNED NOT NULL COMMENT '预设已售数量',
  `allmax` decimal(20,6) UNSIGNED NOT NULL COMMENT '个人认购量上限',
  `min` decimal(20,6) UNSIGNED NOT NULL COMMENT '最小购买值',
  `max` decimal(20,6) UNSIGNED NOT NULL COMMENT '最大购买值',
  `lockday` int(11) UNSIGNED NOT NULL COMMENT '锁仓周期',
  `tian` int(11) UNSIGNED NOT NULL COMMENT '认购周期',
  `imgs` varchar(225) NOT NULL COMMENT '币图片',
  `content` text NOT NULL COMMENT '币说明',
  `addtime` datetime NOT NULL COMMENT '发布日期',
  `starttime` datetime NOT NULL COMMENT '开始认购时间',
  `finishtime` datetime NOT NULL COMMENT '结束认购时间',
  `status` int(11) NOT NULL COMMENT '状态1正常2隐藏',
  `state` int(11) NOT NULL COMMENT '状态1启用认购2禁止认购',
  `jlcoin` varchar(30) NOT NULL COMMENT '奖励币种名称',
  `one_jl` float(10,2) NOT NULL COMMENT '一代奖励比例',
  `two_jl` float(10,2) NOT NULL COMMENT '二代奖励比例',
  `three_jl` float(10,2) NOT NULL COMMENT '三代奖励比例',
  `yuan_price` decimal(11,6) NOT NULL DEFAULT '0.000000' COMMENT '原始单价'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='认购发行表' ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_issue`
--

INSERT INTO `tw_issue` (`id`, `name`, `coinname`, `buycoin`, `num`, `price`, `lixi`, `sellnum`, `ysnum`, `allmax`, `min`, `max`, `lockday`, `tian`, `imgs`, `content`, `addtime`, `starttime`, `finishtime`, `status`, `state`, `jlcoin`, `one_jl`, `two_jl`, `three_jl`, `yuan_price`) VALUES
(1, 'TCC币第一期认购', 'ttc', 'usdt', '20000000.000000', '0.100000', '0.00', '172200.000000', '1000000.000000', '10000.000000', '100.000000', '10000.000000', 1, 1, '6141abda8365f.png', '<span>TCC币是由华尔街华人风控联合发起，限量发行1亿个</span><span>，2021年9月18日向全球起发起第一期认购，第一期发行量20000000，为期15天，认购币冻结90天自动释放，释放后</span><span>币币市场开放TCC/USDT交易对</span><span>，合约市场开放TCC/USDT交易对进行交易，价格预计是认购单价的10倍.<span>TCC币是由华尔街华人风控联合发起，限量发行1亿个</span><span>，2021年9月18日向全球起发起第一期认购，第一期发行量20000000，为期15天，认购币冻结90天自动释放，释放后</span><span>币币市场开放TCC/USDT交易对</span><span>，合约市场开放TCC/USDT交易对进行交易，价格预计是认购单价的10倍.</span><span>TCC币是由华尔街华人风控联合发起，限量发行1亿个</span><span>，2021年9月18日向全球起发起第一期认购，第一期发行量20000000，为期15天，认购币冻结90天自动释放，释放后</span><span>币币市场开放TCC/USDT交易对</span><span>，合约市场开放TCC/USDT交易对进行交易，价格预计是认购单价的10倍.</span><span>TCC币是由华尔街华人风控联合发起，限量发行1亿个</span><span>，2021年9月18日向全球起发起第一期认购，第一期发行量20000000，为期15天，认购币冻结90天自动释放，释放后</span><span>币币市场开放TCC/USDT交易对</span><span>，合约市场开放TCC/USDT交易对进行交易，价格预计是认购单价的10倍.</span></span>', '2023-09-04 19:47:39', '2021-09-15 00:00:00', '2021-09-16 00:00:00', 2, 1, 'usdt', 1.00, 0.50, 0.30, '0.000000'),
(2, 'TTC', 'mbn', 'usdt', '30000000.000000', '1.200000', '0.00', '0.000000', '0.000000', '50000.000000', '100.000000', '10000.000000', 1, 20, '6141b93748061.png', 'morbion币是由华尔街华人风控联合发起，限量发行1亿个，2021年9月18日向全球起发起第一期认购，第一期发行量20000000，为期15天，认购币冻结90天自动释放，释放后币币市场开放TCC/USDT交易对，合约市场开放TCC/USDT交易对进行交易，价格预计是认购单价的10倍.', '2023-09-07 22:58:32', '2021-10-05 00:00:00', '2021-10-25 00:00:00', 2, 1, 'eth', 1.00, 0.50, 0.30, '0.000000'),
(3, 'CYBER', 'mbn', 'usdt', '110400000.000000', '404.135000', '29.50', '57390220.381968', '1000000.000000', '1000000.000000', '100.000000', '1000000.000000', 1, 10, '64fb0282f1cf3.png', '<h2 style=\"color:#74777A;text-indent:0pt;background-color:#FFFFFF;font-family:;\">\r\n	Industry background\r\n</h2>\r\n<p>\r\n	<span>CyberConnect là dự án mạng xã hội phi tập trung hoạt động trên BNB Chain, Ethereum và Polygon. Với CyberConnect, người dùng có thể tạo profile, đăng và chia sẻ nội dung (hình ảnh, video…) cũng như kết nối với những người dùng khác.<br />\r\n<br />\r\nCụ thể, CyberConnect có nhiều tính năng hấp dẫn như: truy cập tất cả các dApp, quản trị phi tập trung, đa chuỗi, chương trình khuyến khích cho người dùng. Điều đặc biệt, CyberConnect sẽ tập trung vào việc phát triển biểu đồ xã hội (Social Graph) để hỗ trợ người dùng truy cập vào nhiều ứng dụng mạng xã hội và bảo vệ thông tin cá nhân.<br />\r\n<br />\r\nhìn chung, dự án khác với Facebook hay Instagram ở chỗ thay vì tạo nền tảng mạng xã hội chia sẻ thông tin, CyberConnect sẽ tập trung trước vào việc hỗ trợ người dùng truy cập vào nhiều ứng dụng SocialFi khác nhau trong Web3. Trong lúc đó, CyberConnect sẽ cung cấp cơ sở vật chất cho các ứng dụng mạng xã hội thông tin tích hợp vào nền tảng.<br />\r\n<br />\r\nĐặc điểm nổi bật của CyberConnect CyberConnect có những đặc điểm nổi bật sau:<br />\r\n<br />\r\nTính linh hoạt và mở rộng: CyberConnect giúp người dùng tự quản lý biểu đồ xã hội của mình và chuyển đổi giữa các ứng dụng mà không mất liên hệ bạn bè. Giao thức CyberConnect khả năng mở rộng để tổng hợp danh tính và dữ liệu của người dùng trên các mạng blockchain.<br />\r\nĐẩy nhanh bootstrapping cho Dapp: CyberConnect tích hợp kết nối xã hội vào một biểu đồ mở, hỗ trợ sự đổi mới và tiện ích xã hội đa dạng theo thời gian.<br />\r\nTrao quyền riêng tư cho người dùng: CyberConnect cho phép người dùng tự quyết định cách thức, địa điểm và mục đích dữ liệu xã hội của họ được sử dụng. Người dùng có thể tạo, chỉnh sửa và chuyển dữ liệu trên nhiều Dapp trong hệ sinh thái CyberConnect. CyberConnect giúp bảo vệ thông tin cá nhân cho người dùng.<br />\r\n<br />\r\n</span> \r\n</p>', '2023-09-08 19:24:36', '2023-09-06 03:09:04', '2023-09-16 03:09:04', 2, 2, 'usdt', 0.00, 0.00, 0.00, '5.500000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_issue_log`
--

CREATE TABLE `tw_issue_log` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '记录ID',
  `pid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '认购项目ID',
  `uid` int(11) UNSIGNED NOT NULL COMMENT '会员ID',
  `account` varchar(60) NOT NULL COMMENT '会员账号',
  `name` varchar(255) NOT NULL COMMENT '项目名称',
  `coinname` varchar(50) NOT NULL COMMENT '认购币名称',
  `buycoin` varchar(50) NOT NULL COMMENT '支付币名称',
  `price` decimal(20,6) UNSIGNED NOT NULL COMMENT '认购单价',
  `lixi_money` decimal(11,6) NOT NULL DEFAULT '0.000000' COMMENT '利息',
  `yugu` decimal(11,4) NOT NULL DEFAULT '0.0000' COMMENT '预估收益',
  `num` decimal(20,6) UNSIGNED NOT NULL COMMENT '认购数量',
  `mum` decimal(20,6) UNSIGNED NOT NULL COMMENT '支付金额',
  `lockday` int(11) UNSIGNED NOT NULL COMMENT '冻结数量',
  `addtime` datetime NOT NULL COMMENT '认购时间',
  `endtime` datetime NOT NULL COMMENT '释放时间',
  `endday` date NOT NULL COMMENT '释放日期',
  `status` int(4) NOT NULL COMMENT '状态1冻结中2已解冻',
  `jiesuan` int(1) NOT NULL DEFAULT '0' COMMENT '收益是否结算到余额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='认购记录表' ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_issue_log`
--

INSERT INTO `tw_issue_log` (`id`, `pid`, `uid`, `account`, `name`, `coinname`, `buycoin`, `price`, `lixi_money`, `yugu`, `num`, `mum`, `lockday`, `addtime`, `endtime`, `endday`, `status`, `jiesuan`) VALUES
(218, 3, 180, '444444@qq.com', 'MORBION', 'mbn', 'usdt', '0.140000', '99999.999999', '371700.0000', '100000.000000', '14000.000000', 90, '2022-10-31 20:59:30', '2023-01-29 20:59:30', '2023-01-29', 2, 0),
(219, 3, 180, '444444@qq.com', 'MORBION', 'mbn', 'usdt', '0.140000', '690.665976', '15539.9845', '111111.000000', '15555.540000', 90, '2022-11-01 00:16:12', '2023-01-30 00:16:12', '2023-01-30', 2, 1),
(220, 3, 186, '740026296@qq.com', 'MORBION', 'mbn', 'usdt', '0.140000', '10325.000000', '37170.0000', '10000.000000', '1400.000000', 90, '2022-11-01 00:36:10', '2023-01-30 00:36:10', '2023-01-30', 2, 0),
(221, 3, 186, '740026296@qq.com', 'MORBION', 'mbn', 'usdt', '0.140000', '10325.000000', '37170.0000', '10000.000000', '1400.000000', 90, '2022-11-01 13:28:59', '2023-01-30 13:28:59', '2023-01-30', 2, 0),
(222, 3, 180, '444444@qq.com', 'MORBION', 'mbn', 'usdt', '0.140000', '1032.500000', '3717.0000', '1000.000000', '140.000000', 90, '2022-11-01 16:40:21', '2023-01-30 16:40:21', '2023-01-30', 2, 0),
(223, 3, 174, 'heima1@gmail.com', 'MORBION', 'mbn', 'usdt', '0.140000', '90.860000', '371.7000', '100.000000', '14.000000', 90, '2022-11-04 23:20:14', '2023-02-02 23:20:14', '2023-02-02', 2, 0),
(224, 3, 174, 'heima1@gmail.com', 'MORBION', 'mbn', 'usdt', '0.140000', '908.600000', '3717.0000', '1000.000000', '140.000000', 90, '2022-11-04 23:20:30', '2023-02-02 23:20:30', '2023-02-02', 2, 0),
(225, 3, 286, '杜总286', 'MORBION', 'mbn', 'usdt', '0.317156', '11227.322400', '84204.9180', '10000.000000', '3171.560000', 90, '2022-11-14 16:50:31', '2023-02-12 16:50:31', '2023-02-12', 2, 0),
(226, 3, 554, '0978123123', 'MORBION', 'mbn', 'usdt', '16.234820', '0.000000', '0.0000', '101.000000', '1639.716820', 2, '2023-09-02 04:10:39', '2023-09-04 04:10:39', '2023-09-04', 2, 0),
(227, 3, 554, '0978123123', 'CYBER', 'mbn', 'usdt', '5.000000', '0.000000', '0.0000', '100.000000', '500.000000', 1, '2023-09-08 02:01:29', '2023-09-09 02:01:29', '2023-09-09', 2, 0),
(228, 3, 554, '0978123123', 'CYBER', 'mbn', 'usdt', '5.000000', '0.000000', '0.0000', '100.000000', '500.000000', 1, '2023-09-08 19:23:06', '2023-09-09 19:23:06', '2023-09-09', 2, 0),
(229, 3, 554, '0978123123', 'CYBER', 'mbn', 'usdt', '5.000000', '0.000000', '0.0000', '100.000000', '500.000000', 1, '2023-09-08 19:23:42', '2023-09-09 19:23:42', '2023-09-09', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_kjorder`
--

CREATE TABLE `tw_kjorder` (
  `id` int(11) NOT NULL COMMENT '记录ID',
  `kid` int(11) NOT NULL COMMENT '矿机ID',
  `sharbltxt` int(11) NOT NULL COMMENT '共享矿机识别号',
  `type` int(11) NOT NULL COMMENT '矿机类型1独资2共享',
  `sharebl` float(10,2) NOT NULL COMMENT '共享的占有比例',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `username` varchar(30) NOT NULL COMMENT '会员账号',
  `kjtitle` varchar(225) NOT NULL COMMENT '矿机名称',
  `imgs` varchar(225) DEFAULT NULL COMMENT '矿机图片',
  `status` int(11) NOT NULL COMMENT '矿机状态1正常2停止产币3过期',
  `cycle` int(11) NOT NULL COMMENT '矿机周期',
  `synum` int(11) NOT NULL COMMENT '收益次数',
  `outtype` int(11) NOT NULL COMMENT '产出类型1按产值2按币',
  `outcoin` varchar(30) NOT NULL COMMENT '产出币种',
  `outnum` decimal(12,6) NOT NULL COMMENT '产出的币量',
  `outusdt` decimal(12,6) NOT NULL COMMENT '按产币的量',
  `djout` int(11) NOT NULL COMMENT '产币冻结1否2是',
  `djnum` int(11) NOT NULL COMMENT '产币冻结天数',
  `addtime` datetime NOT NULL COMMENT '购买日期',
  `endtime` datetime NOT NULL COMMENT '过期时间',
  `intaddtime` int(11) NOT NULL COMMENT '购买时间戳',
  `intendtime` int(11) NOT NULL COMMENT '到期时间戳'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机订单表';

--
-- Đang đổ dữ liệu cho bảng `tw_kjorder`
--

INSERT INTO `tw_kjorder` (`id`, `kid`, `sharbltxt`, `type`, `sharebl`, `uid`, `username`, `kjtitle`, `imgs`, `status`, `cycle`, `synum`, `outtype`, `outcoin`, `outnum`, `outusdt`, `djout`, `djnum`, `addtime`, `endtime`, `intaddtime`, `intendtime`) VALUES
(2, 19, 0, 1, 0.00, 446, '8790558251', 'Free mining machine', '629a2098a5cc5.png', 3, 14, 0, 2, 'usdt', '2.000000', '0.000000', 1, 0, '2022-11-15 22:34:17', '2022-11-29 22:34:17', 1668522857, 1669732457),
(3, 19, 0, 1, 0.00, 333, '陈总333', 'Free mining machine', '629a2098a5cc5.png', 3, 14, 0, 2, 'usdt', '2.000000', '0.000000', 1, 0, '2022-11-16 18:16:20', '2022-11-30 18:16:20', 1668593780, 1669803380),
(4, 19, 0, 1, 0.00, 287, '王总287', 'Free mining machine', '629a2098a5cc5.png', 3, 14, 0, 2, 'usdt', '2.000000', '0.000000', 1, 0, '2022-11-17 20:24:55', '2022-12-01 20:24:55', 1668687895, 1669897495),
(14, 26, 0, 1, 0.00, 554, '0978123123', 'New member', '629a2043e3c21.png', 3, 1, 0, 1, 'usdt', '0.000000', '111.000000', 1, 0, '2023-09-02 02:54:32', '2023-09-03 02:54:32', 1693594472, 1693680872),
(19, 20, 0, 1, 0.00, 554, '0978123123', 'ETH Mining Machine 1 Day', '629a2088d6ce8.png', 3, 1, 0, 1, 'eth', '0.000000', '6.100000', 1, 0, '2023-09-06 22:49:10', '2023-09-07 22:49:10', 1694011750, 1694098150),
(25, 20, 0, 1, 0.00, 552, '0911223344', 'ETH Mining Machine 1 Day', '629a2088d6ce8.png', 3, 1, 0, 1, 'eth', '0.000000', '6.100000', 1, 0, '2023-09-11 13:44:38', '2023-09-12 13:44:38', 1694411078, 1694497478),
(26, 21, 0, 1, 0.00, 552, '0911223344', 'ETH Mining Machine 7 Day', '629a2076c2787.png', 3, 7, 0, 1, 'eth', '0.000000', '13.800000', 1, 0, '2023-09-12 15:22:51', '2023-09-19 15:22:51', 1694503371, 1695108171),
(27, 20, 0, 1, 0.00, 553, '0868450300', 'ETH Mining Machine 1 Day', '629a2088d6ce8.png', 3, 1, 0, 1, 'eth', '0.000000', '6.100000', 1, 0, '2023-09-15 05:35:50', '2023-09-16 05:35:50', 1694727350, 1694813750);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_kjprofit`
--

CREATE TABLE `tw_kjprofit` (
  `id` int(11) NOT NULL COMMENT '记录ID',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `username` varchar(30) NOT NULL COMMENT '会员账号',
  `kid` int(11) NOT NULL COMMENT '矿机ID',
  `ktitle` varchar(225) NOT NULL COMMENT '矿机名称',
  `num` decimal(12,6) NOT NULL COMMENT '收益金额',
  `coin` varchar(30) NOT NULL COMMENT '收益币种',
  `addtime` datetime NOT NULL COMMENT '收益时间',
  `day` date NOT NULL COMMENT '收益日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机收益表';

--
-- Đang đổ dữ liệu cho bảng `tw_kjprofit`
--

INSERT INTO `tw_kjprofit` (`id`, `uid`, `username`, `kid`, `ktitle`, `num`, `coin`, `addtime`, `day`) VALUES
(1, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-16 00:00:02', '2022-11-16'),
(2, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-17 00:00:01', '2022-11-17'),
(3, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-17 00:00:01', '2022-11-17'),
(4, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-18 00:00:01', '2022-11-18'),
(5, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-18 00:00:01', '2022-11-18'),
(6, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2022-11-18 00:00:01', '2022-11-18'),
(7, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-19 00:00:01', '2022-11-19'),
(8, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-19 00:00:01', '2022-11-19'),
(9, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2022-11-19 00:00:01', '2022-11-19'),
(10, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-20 00:00:01', '2022-11-20'),
(11, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-20 00:00:01', '2022-11-20'),
(12, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2022-11-20 00:00:01', '2022-11-20'),
(13, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-21 00:00:01', '2022-11-21'),
(14, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-21 00:00:01', '2022-11-21'),
(15, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2022-11-21 00:00:01', '2022-11-21'),
(16, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-22 00:00:01', '2022-11-22'),
(17, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-22 00:00:01', '2022-11-22'),
(18, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2022-11-22 00:00:01', '2022-11-22'),
(19, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-23 00:00:01', '2022-11-23'),
(20, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-23 00:00:01', '2022-11-23'),
(21, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2022-11-23 00:00:01', '2022-11-23'),
(22, 334, '9191916666', 5, 'ETH mining machine 1st', '0.005374', 'eth', '2022-11-23 00:00:02', '2022-11-23'),
(23, 167, '13888888888', 6, 'ETH mining machine 1st', '0.005374', 'eth', '2022-11-23 00:00:02', '2022-11-23'),
(24, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-24 00:00:02', '2022-11-24'),
(25, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-24 00:00:02', '2022-11-24'),
(26, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2022-11-24 00:00:02', '2022-11-24'),
(27, 334, '9191916666', 5, 'ETH mining machine 1st', '0.005254', 'eth', '2022-11-24 00:00:02', '2022-11-24'),
(28, 167, '13888888888', 6, 'ETH mining machine 1st', '0.005254', 'eth', '2022-11-24 00:00:02', '2022-11-24'),
(29, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-25 00:00:01', '2022-11-25'),
(30, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-25 00:00:01', '2022-11-25'),
(31, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2022-11-25 00:00:01', '2022-11-25'),
(32, 334, '9191916666', 5, 'ETH mining machine 1st', '0.005104', 'eth', '2022-11-25 00:00:01', '2022-11-25'),
(33, 167, '13888888888', 6, 'ETH mining machine 1st', '0.005104', 'eth', '2022-11-25 00:00:01', '2022-11-25'),
(34, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-26 00:00:02', '2022-11-26'),
(35, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-26 00:00:02', '2022-11-26'),
(36, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2022-11-26 00:00:02', '2022-11-26'),
(37, 334, '9191916666', 5, 'ETH mining machine 1st', '0.005128', 'eth', '2022-11-26 00:00:02', '2022-11-26'),
(38, 167, '13888888888', 6, 'ETH mining machine 1st', '0.005128', 'eth', '2022-11-26 00:00:02', '2022-11-26'),
(39, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2022-11-27 00:00:01', '2022-11-27'),
(40, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2022-11-27 00:00:01', '2022-11-27'),
(41, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2022-11-27 00:00:01', '2022-11-27'),
(42, 334, '9191916666', 5, 'ETH mining machine 1st', '0.005039', 'eth', '2022-11-27 00:00:02', '2022-11-27'),
(43, 167, '13888888888', 6, 'ETH mining machine 1st', '0.005039', 'eth', '2022-11-27 00:00:02', '2022-11-27'),
(44, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2023-09-02 01:00:01', '2023-09-02'),
(45, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2023-09-02 01:00:01', '2023-09-02'),
(46, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2023-09-02 01:00:01', '2023-09-02'),
(47, 334, '9191916666', 5, 'ETH mining machine 1st', '0.003752', 'eth', '2023-09-02 01:00:01', '2023-09-02'),
(48, 167, '13888888888', 6, 'ETH mining machine 1st', '0.003752', 'eth', '2023-09-02 01:00:01', '2023-09-02'),
(49, 551, '0995995995', 7, 'Free mining machine', '2.000000', 'usdt', '2023-09-02 01:00:01', '2023-09-02'),
(50, 552, '0911223344', 8, 'Free mining machine', '2.000000', 'usdt', '2023-09-02 01:00:01', '2023-09-02'),
(51, 553, '0868450300', 9, 'Free mining machine', '2.000000', 'usdt', '2023-09-02 01:00:01', '2023-09-02'),
(52, 554, '0978123123', 10, 'Free mining machine', '2.000000', 'usdt', '2023-09-02 01:00:01', '2023-09-02'),
(53, 553, '0868450300', 11, 'ETH mining machine 1st', '0.003752', 'eth', '2023-09-02 01:00:02', '2023-09-02'),
(54, 554, '0978123123', 12, 'ETH mining machine 1st', '0.003752', 'eth', '2023-09-02 01:00:02', '2023-09-02'),
(55, 554, '0978123123', 13, 'ETH mining machine 2st', '0.008488', 'eth', '2023-09-02 01:00:02', '2023-09-02'),
(56, 446, '8790558251', 2, 'Free mining machine', '2.000000', 'usdt', '2023-09-03 01:00:01', '2023-09-03'),
(57, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2023-09-03 01:00:01', '2023-09-03'),
(58, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2023-09-03 01:00:01', '2023-09-03'),
(59, 334, '9191916666', 5, 'ETH mining machine 1st', '0.003728', 'eth', '2023-09-03 01:00:02', '2023-09-03'),
(60, 167, '13888888888', 6, 'ETH mining machine 1st', '0.003728', 'eth', '2023-09-03 01:00:02', '2023-09-03'),
(61, 551, '0995995995', 7, 'Free mining machine', '2.000000', 'usdt', '2023-09-03 01:00:02', '2023-09-03'),
(62, 552, '0911223344', 8, 'Free mining machine', '2.000000', 'usdt', '2023-09-03 01:00:02', '2023-09-03'),
(63, 553, '0868450300', 9, 'Free mining machine', '2.000000', 'usdt', '2023-09-03 01:00:02', '2023-09-03'),
(64, 554, '0978123123', 10, 'Free mining machine', '2.000000', 'usdt', '2023-09-03 01:00:02', '2023-09-03'),
(65, 553, '0868450300', 11, 'ETH mining machine 1st', '0.003728', 'eth', '2023-09-03 01:00:02', '2023-09-03'),
(66, 554, '0978123123', 12, 'ETH mining machine 1st', '0.003728', 'eth', '2023-09-03 01:00:02', '2023-09-03'),
(67, 554, '0978123123', 13, 'ETH mining machine 2st', '0.008434', 'eth', '2023-09-03 01:00:02', '2023-09-03'),
(68, 554, '0978123123', 14, 'New member', '0.000000', 'usdt', '2023-09-03 01:00:02', '2023-09-03'),
(69, 333, '陈总333', 3, 'Free mining machine', '2.000000', 'usdt', '2023-09-04 01:00:02', '2023-09-04'),
(70, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2023-09-04 01:00:02', '2023-09-04'),
(71, 334, '9191916666', 5, 'ETH mining machine 1st', '0.003747', 'eth', '2023-09-04 01:00:02', '2023-09-04'),
(72, 167, '13888888888', 6, 'ETH mining machine 1st', '0.003747', 'eth', '2023-09-04 01:00:02', '2023-09-04'),
(73, 551, '0995995995', 7, 'Free mining machine', '2.000000', 'usdt', '2023-09-04 01:00:02', '2023-09-04'),
(74, 552, '0911223344', 8, 'Free mining machine', '2.000000', 'usdt', '2023-09-04 01:00:02', '2023-09-04'),
(75, 553, '0868450300', 9, 'Free mining machine', '2.000000', 'usdt', '2023-09-04 01:00:02', '2023-09-04'),
(76, 554, '0978123123', 10, 'Free mining machine', '2.000000', 'usdt', '2023-09-04 01:00:02', '2023-09-04'),
(77, 553, '0868450300', 11, 'ETH mining machine 1st', '0.003747', 'eth', '2023-09-04 01:00:02', '2023-09-04'),
(78, 554, '0978123123', 12, 'ETH mining machine 1st', '0.003747', 'eth', '2023-09-04 01:00:02', '2023-09-04'),
(79, 554, '0978123123', 13, 'ETH mining machine 2st', '0.008478', 'eth', '2023-09-04 01:00:02', '2023-09-04'),
(80, 287, '王总287', 4, 'Free mining machine', '2.000000', 'usdt', '2023-09-05 00:03:13', '2023-09-05'),
(81, 334, '9191916666', 5, 'ETH mining machine 1st', '0.003751', 'eth', '2023-09-05 00:03:13', '2023-09-05'),
(82, 167, '13888888888', 6, 'ETH mining machine 1st', '0.003751', 'eth', '2023-09-05 00:03:13', '2023-09-05'),
(83, 551, '0995995995', 7, 'Free mining machine', '2.000000', 'usdt', '2023-09-05 00:03:13', '2023-09-05'),
(84, 552, '0911223344', 8, 'Free mining machine', '2.000000', 'usdt', '2023-09-05 00:03:13', '2023-09-05'),
(85, 553, '0868450300', 9, 'Free mining machine', '2.000000', 'usdt', '2023-09-05 00:03:13', '2023-09-05'),
(86, 554, '0978123123', 10, 'Free mining machine', '2.000000', 'usdt', '2023-09-05 00:03:13', '2023-09-05'),
(87, 553, '0868450300', 11, 'ETH mining machine 1st', '0.003751', 'eth', '2023-09-05 00:03:13', '2023-09-05'),
(88, 554, '0978123123', 12, 'ETH mining machine 1st', '0.003751', 'eth', '2023-09-05 00:03:14', '2023-09-05'),
(89, 554, '0978123123', 13, 'ETH mining machine 2st', '0.008485', 'eth', '2023-09-05 00:03:14', '2023-09-05'),
(90, 334, '9191916666', 5, 'ETH mining machine 1st', '0.003727', 'eth', '2023-09-06 01:00:02', '2023-09-06'),
(91, 167, '13888888888', 6, 'ETH mining machine 1st', '0.003727', 'eth', '2023-09-06 01:00:02', '2023-09-06'),
(92, 551, '0995995995', 7, 'Free mining machine', '2.000000', 'usdt', '2023-09-06 01:00:02', '2023-09-06'),
(93, 552, '0911223344', 8, 'Free mining machine', '2.000000', 'usdt', '2023-09-06 01:00:02', '2023-09-06'),
(94, 553, '0868450300', 9, 'Free mining machine', '2.000000', 'usdt', '2023-09-06 01:00:02', '2023-09-06'),
(95, 554, '0978123123', 10, 'Free mining machine', '2.000000', 'usdt', '2023-09-06 01:00:02', '2023-09-06'),
(96, 553, '0868450300', 11, 'ETH mining machine 1st', '0.003727', 'eth', '2023-09-06 01:00:02', '2023-09-06'),
(97, 554, '0978123123', 12, 'ETH mining machine 1st', '0.003727', 'eth', '2023-09-06 01:00:02', '2023-09-06'),
(98, 554, '0978123123', 13, 'ETH mining machine 2st', '0.008431', 'eth', '2023-09-06 01:00:02', '2023-09-06'),
(99, 334, '9191916666', 5, 'ETH mining machine 1st', '0.003757', 'eth', '2023-09-07 01:00:02', '2023-09-07'),
(100, 167, '13888888888', 6, 'ETH mining machine 1st', '0.003757', 'eth', '2023-09-07 01:00:02', '2023-09-07'),
(101, 551, '0995995995', 7, 'Free mining machine', '2.000000', 'usdt', '2023-09-07 01:00:02', '2023-09-07'),
(102, 552, '0911223344', 8, 'Free mining machine', '2.000000', 'usdt', '2023-09-07 01:00:02', '2023-09-07'),
(103, 553, '0868450300', 9, 'Free mining machine', '2.000000', 'usdt', '2023-09-07 01:00:02', '2023-09-07'),
(104, 554, '0978123123', 10, 'Free mining machine', '2.000000', 'usdt', '2023-09-07 01:00:02', '2023-09-07'),
(105, 553, '0868450300', 11, 'ETH mining machine 1st', '0.003757', 'eth', '2023-09-07 01:00:02', '2023-09-07'),
(106, 554, '0978123123', 12, 'ETH mining machine 1st', '0.003757', 'eth', '2023-09-07 01:00:02', '2023-09-07'),
(107, 554, '0978123123', 13, 'ETH mining machine 2st', '0.008500', 'eth', '2023-09-07 01:00:02', '2023-09-07'),
(108, 554, '0978123123', 15, 'ETH Mining Machine 30 Day', '0.011210', 'eth', '2023-09-07 01:00:02', '2023-09-07'),
(109, 554, '0978123123', 16, 'ETH Mining Machine 90 Day', '0.014474', 'eth', '2023-09-07 01:00:02', '2023-09-07'),
(110, 554, '0978123123', 17, 'ETH Mining Machine 180 Day', '0.017369', 'eth', '2023-09-07 01:00:02', '2023-09-07'),
(111, 554, '0978123123', 18, 'ETH Mining Machine 1 Year', '0.020264', 'eth', '2023-09-07 01:00:02', '2023-09-07'),
(112, 554, '0978123123', 19, 'ETH Mining Machine 1 Day', '0.003757', 'eth', '2023-09-07 01:00:03', '2023-09-07'),
(113, 334, '9191916666', 5, 'ETH mining machine 1st', '0.003733', 'eth', '2023-09-08 01:00:02', '2023-09-08'),
(114, 167, '13888888888', 6, 'ETH mining machine 1st', '0.003733', 'eth', '2023-09-08 01:00:02', '2023-09-08'),
(115, 551, '0995995995', 7, 'Free mining machine', '2.000000', 'usdt', '2023-09-08 01:00:02', '2023-09-08'),
(116, 552, '0911223344', 8, 'Free mining machine', '2.000000', 'usdt', '2023-09-08 01:00:02', '2023-09-08'),
(117, 553, '0868450300', 9, 'Free mining machine', '2.000000', 'usdt', '2023-09-08 01:00:02', '2023-09-08'),
(118, 554, '0978123123', 10, 'Free mining machine', '2.000000', 'usdt', '2023-09-08 01:00:02', '2023-09-08'),
(119, 553, '0868450300', 11, 'ETH mining machine 1st', '0.003733', 'eth', '2023-09-08 01:00:02', '2023-09-08'),
(120, 554, '0978123123', 12, 'ETH mining machine 1st', '0.003733', 'eth', '2023-09-08 01:00:02', '2023-09-08'),
(121, 554, '0978123123', 13, 'ETH mining machine 2st', '0.008445', 'eth', '2023-09-08 01:00:02', '2023-09-08'),
(122, 554, '0978123123', 15, 'ETH Mining Machine 30 Day', '0.011138', 'eth', '2023-09-08 01:00:02', '2023-09-08'),
(123, 554, '0978123123', 16, 'ETH Mining Machine 90 Day', '0.014381', 'eth', '2023-09-08 01:00:02', '2023-09-08'),
(124, 554, '0978123123', 17, 'ETH Mining Machine 180 Day', '0.017257', 'eth', '2023-09-08 01:00:02', '2023-09-08'),
(125, 554, '0978123123', 18, 'ETH Mining Machine 1 Year', '0.020133', 'eth', '2023-09-08 01:00:03', '2023-09-08'),
(126, 552, '0911223344', 25, 'ETH Mining Machine 1 Day', '0.003732', 'eth', '2023-09-15 01:00:01', '2023-09-15'),
(127, 552, '0911223344', 26, 'ETH Mining Machine 7 Day', '0.008443', 'eth', '2023-09-15 01:00:01', '2023-09-15'),
(128, 552, '0911223344', 26, 'ETH Mining Machine 7 Day', '0.008505', 'eth', '2023-09-16 01:00:01', '2023-09-16'),
(129, 553, '0868450300', 27, 'ETH Mining Machine 1 Day', '0.003760', 'eth', '2023-09-16 01:00:01', '2023-09-16'),
(130, 552, '0911223344', 26, 'ETH Mining Machine 7 Day', '0.008431', 'eth', '2023-09-17 01:00:02', '2023-09-17'),
(131, 552, '0911223344', 26, 'ETH Mining Machine 7 Day', '0.008494', 'eth', '2023-09-18 01:00:02', '2023-09-18'),
(132, 552, '0911223344', 26, 'ETH Mining Machine 7 Day', '0.008334', 'eth', '2023-09-19 01:00:02', '2023-09-19'),
(133, 552, '0911223344', 26, 'ETH Mining Machine 7 Day', '0.008361', 'eth', '2023-09-20 01:00:01', '2023-09-20'),
(134, 552, '0911223344', 26, 'ETH Mining Machine 7 Day', '0.008480', 'eth', '2023-09-21 01:00:01', '2023-09-21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_kuangji`
--

CREATE TABLE `tw_kuangji` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `type` int(11) NOT NULL COMMENT '矿机类型1独资2共享',
  `rtype` int(11) NOT NULL COMMENT '类型1购买2赠送',
  `sharebl` varchar(30) NOT NULL COMMENT '共享矿机分享比例',
  `sharecode` varchar(30) NOT NULL COMMENT '共享识别码',
  `title` varchar(225) NOT NULL COMMENT '矿机标题',
  `content` text NOT NULL COMMENT '矿机内容',
  `imgs` varchar(225) NOT NULL COMMENT '矿机图片',
  `outtype` int(11) NOT NULL COMMENT '产出类型1按产值2按币量',
  `dayoutnum` decimal(12,6) NOT NULL COMMENT '日产币量',
  `outcoin` varchar(30) NOT NULL COMMENT '日产出币种',
  `pricenum` decimal(12,6) NOT NULL COMMENT '矿机单价额度',
  `pricecoin` varchar(30) NOT NULL COMMENT '矿机单价币种',
  `cycle` int(11) NOT NULL COMMENT '周期',
  `suanl` float(10,2) NOT NULL COMMENT '矿机算力',
  `allnum` int(11) NOT NULL COMMENT '库机库存总量',
  `ycnum` int(11) NOT NULL COMMENT '预计出售量',
  `sellnum` int(11) NOT NULL COMMENT '已售数量',
  `jlnum` decimal(12,6) NOT NULL COMMENT '奖励币量',
  `jlcoin` varchar(30) NOT NULL COMMENT '奖励币种',
  `buyask` int(11) NOT NULL COMMENT '申购要求类型1按币量2按团队',
  `asknum` int(11) NOT NULL COMMENT '要求数量',
  `djout` int(11) NOT NULL COMMENT '产币冻结状态：1否2是',
  `djday` int(11) NOT NULL COMMENT '产币冻结天数',
  `status` int(11) NOT NULL COMMENT '状态1正常2禁用',
  `buymax` int(11) NOT NULL COMMENT '购买上限',
  `addtime` datetime NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机列表';

--
-- Đang đổ dữ liệu cho bảng `tw_kuangji`
--

INSERT INTO `tw_kuangji` (`id`, `type`, `rtype`, `sharebl`, `sharecode`, `title`, `content`, `imgs`, `outtype`, `dayoutnum`, `outcoin`, `pricenum`, `pricecoin`, `cycle`, `suanl`, `allnum`, `ycnum`, `sellnum`, `jlnum`, `jlcoin`, `buyask`, `asknum`, `djout`, `djday`, `status`, `buymax`, `addtime`) VALUES
(30, 1, 1, '0', '', 'ETH Mining Machine 1 Year', '32.9 worth of ETH is produced every day', '64f88c63f23a4.png', 1, '32.900000', 'eth', '20000.000000', 'usdt', 365, 1562.00, 100, 63, 0, '0.000000', 'btc', 1, 1, 1, 0, 1, 1, '2023-09-13 14:27:27'),
(22, 1, 1, '0', '', 'ETH Mining Machine 30 Day', '18.2$ worth of ETH is produced every day', '629a20684467a.png', 1, '18.200000', 'eth', '2000.000000', 'usdt', 30, 624.00, 100, 47, 0, '0.000000', 'usdt', 1, 1, 1, 0, 1, 5, '2023-09-08 21:04:40'),
(21, 1, 1, '0', '', 'ETH Mining Machine 7 Day', '13.8$ worth of ETH is produced every day', '629a2076c2787.png', 1, '13.800000', 'eth', '1000.000000', 'usdt', 7, 312.00, 100, 88, 0, '0.000000', 'usdt', 1, 0, 1, 0, 1, 1, '2023-09-08 21:04:16'),
(20, 1, 1, '0', '', 'ETH Mining Machine 1 Day', '6.1$ worth of ETH is produced every day', '629a2088d6ce8.png', 1, '6.100000', 'eth', '500.000000', 'usdt', 1, 156.00, 100, 72, 2, '0.000000', 'usdt', 1, 0, 1, 0, 1, 1, '2023-09-13 14:28:35'),
(28, 1, 1, '0', '', 'ETH Mining Machine 90 Day', '23.5$ worth of ETH is produced every day', '64f888db4a14f.png', 1, '23.500000', 'eth', '5000.000000', 'usdt', 90, 450.00, 100, 81, 0, '0.000000', 'usdt', 1, 1, 1, 0, 1, 10, '2023-09-08 21:04:55'),
(29, 1, 1, '0', '', 'ETH Mining Machine 180 Day', '28.2$ worth of ETH is produced every day', '64f88a8f2c3c6.png', 1, '28.200000', 'eth', '10000.000000', 'usdt', 180, 526.00, 100, 69, 0, '0.000000', 'usdt', 1, 1, 1, 0, 1, 100, '2023-09-13 14:27:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_market`
--

CREATE TABLE `tw_market` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '市场名称',
  `round` varchar(2) NOT NULL DEFAULT '0',
  `round_mum` varchar(2) NOT NULL DEFAULT '0',
  `buy_min` varchar(20) NOT NULL DEFAULT '' COMMENT '买入最小交易价',
  `buy_max` varchar(20) NOT NULL DEFAULT '' COMMENT '买入最大交易价',
  `sell_min` varchar(20) NOT NULL DEFAULT '' COMMENT '卖出最小交易价',
  `sell_max` varchar(20) NOT NULL DEFAULT '' COMMENT '卖出最大交易价',
  `trade_min` varchar(50) NOT NULL DEFAULT '' COMMENT '单笔最小交易额',
  `trade_max` varchar(50) NOT NULL DEFAULT '' COMMENT '单笔最大交易额',
  `zhang` varchar(10) NOT NULL DEFAULT '' COMMENT '涨幅限制',
  `die` varchar(10) NOT NULL DEFAULT '' COMMENT '跌幅限制',
  `hou_price` varchar(50) NOT NULL DEFAULT '1' COMMENT '昨日收盘价',
  `tendency` text,
  `trade` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '开启交易',
  `new_price` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000' COMMENT '最新成交价',
  `buy_price` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000' COMMENT '买一价',
  `sell_price` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000' COMMENT '卖一价',
  `min_price` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000' COMMENT '最低价',
  `max_price` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000' COMMENT '最高价',
  `volume` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000' COMMENT '交易量',
  `change` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '涨跌幅',
  `api_min` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `api_max` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `trade_buy_num_min` varchar(200) NOT NULL DEFAULT '0.001' COMMENT '单笔买入最小交易数量',
  `trade_buy_num_max` varchar(200) NOT NULL DEFAULT '1000' COMMENT '单笔买入最大交易数量',
  `trade_sell_num_min` varchar(200) NOT NULL DEFAULT '0.001' COMMENT '单笔卖出最小交易数量:',
  `trade_sell_num_max` varchar(200) NOT NULL DEFAULT '1000' COMMENT '单笔卖出最大交易数量',
  `fshow` tinyint(1) NOT NULL DEFAULT '0',
  `shuadan` tinyint(1) DEFAULT NULL COMMENT '刷单开关',
  `faxingjia` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '发行价',
  `sdhigh` varchar(50) DEFAULT '0' COMMENT '刷单最高价格',
  `sdlow` varchar(50) DEFAULT '0' COMMENT '刷单最低价格',
  `sdhigh_num` varchar(50) DEFAULT '0' COMMENT '刷单最高数量',
  `sdlow_num` varchar(50) DEFAULT '0' COMMENT '刷单最低数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行情配置表' ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_market`
--

INSERT INTO `tw_market` (`id`, `name`, `round`, `round_mum`, `buy_min`, `buy_max`, `sell_min`, `sell_max`, `trade_min`, `trade_max`, `zhang`, `die`, `hou_price`, `tendency`, `trade`, `new_price`, `buy_price`, `sell_price`, `min_price`, `max_price`, `volume`, `change`, `api_min`, `api_max`, `sort`, `addtime`, `endtime`, `status`, `trade_buy_num_min`, `trade_buy_num_max`, `trade_sell_num_min`, `trade_sell_num_max`, `fshow`, `shuadan`, `faxingjia`, `sdhigh`, `sdlow`, `sdhigh_num`, `sdlow_num`) VALUES
(3, '_', '', '0', '0.0001', '10000000', '0.0001', '10000000', '0.0001', '10000000', '', '', '1', NULL, 1, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', 0, 0, 0, 1, '0.0001', '10000000', '0.0001', '10000000', 0, 1, '0.00000000', '', '', '0', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_market_json`
--

CREATE TABLE `tw_market_json` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_menu`
--

CREATE TABLE `tw_menu` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `is_dev` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `ico_name` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_menu`
--

-- INSERT INTO `tw_menu` (`id`, `title`, `pid`, `sort`, `url`, `hide`, `tip`, `group`, `is_dev`, `ico_name`) VALUES
-- (1, '首页', 0, 0, 'Index/index', 0, '', '', 0, 'home'),
-- (2, '内容管理', 0, 9, 'Article/index', 0, '', '', 0, 'list-alt'),
-- (3, '用户管理', 0, 1, 'User/index', 0, '', '', 0, 'user'),
-- (4, '财务记录', 0, 2, 'Finance/index', 0, '', '', 0, 'th-list'),
-- (5, '交易中心', 0, 3, 'Trade/index', 0, '', '', 0, 'stats'),
-- (6, '新币认购', 0, 6, 'Issue/index', 0, '', '', 0, 'th-large'),
-- (7, '系统设置', 0, 0, 'Config/index', 0, '', '', 0, 'cog'),
-- (8, '矿机管理', 0, 5, 'Kuangm/index', 0, '', '', 0, 'list-alt'),
-- (11, '后台首页', 1, 1, 'Index/index', 0, '', '快捷操作', 0, 'home'),
-- (13, '公告中心', 2, 1, 'Article/index', 0, '', '内容', 0, 'list-alt'),
-- (26, '会员管理', 3, 1, 'User/index', 0, '', '用户管理', 0, 'user'),
-- (68, '合约订单', 5, 1, 'Trade/index', 0, '', '快速合约', 0, 'list-alt'),
-- (69, '合约设置', 5, 2, 'Trade/sethy', 0, '', '快速合约', 0, 'cog'),
-- (79, '网站信息', 7, 1, 'Config/index', 0, '', '系统', 0, 'cog'),
-- (85, '编辑', 84, 4, 'Coin/edit', 0, '', '网站配置', 0, '0'),
-- (89, '编辑市场', 88, 4, 'Market/edit', 0, '', '', 0, '0'),
-- (92, '图形验证码', 95, 7, 'Verify/code', 0, '', '网站配置', 0, '0'),
-- (95, '系统配置', 7, 1, 'Config/qita', 0, '', '系统', 0, 'cog'),
-- (117, '排序', 116, 5, 'Menu/sort', 0, '', '开发组', 0, '0'),
-- (118, '添加', 116, 5, 'Menu/add', 0, '', '开发组', 0, '0'),
-- (119, '编辑', 116, 5, 'Menu/edit', 0, '', '开发组', 0, '0'),
-- (120, '删除', 116, 5, 'Menu/del', 0, '', '开发组', 0, '0'),
-- (282, '登录日志', 3, 4, 'User/log', 0, '', '用户管理', 0, 'list-alt'),
-- (283, '用户钱包', 3, 5, 'User/qianbao', 0, '', '用户管理', 0, 'list-alt'),
-- (285, '用户财产', 3, 7, 'User/coin', 0, '', '用户管理', 0, 'list-alt'),
-- (288, '平台市场', 7, 5, 'Config/marketo', 0, '', '系统', 0, 'stats'),
-- (290, '财务明细', 4, 1, 'Finance/index', 0, '', '财务管理', 0, 'th-list'),
-- (295, '充币记录', 4, 1, 'Finance/myzr', 0, '', '财务管理', 0, 'log-in'),
-- (296, '提币记录', 4, 1, 'Finance/myzc', 0, '', '财务管理', 0, 'log-out'),
-- (312, '管理员管理', 3, 2, 'User/admin', 0, '', '用户管理', 0, 'user'),
-- (382, '币种配置', 7, 4, 'Config/coin', 0, '', '系统', 0, 'record'),
-- (388, '前端导航配置', 7, 8, 'Config/daohang', 1, '', '导航', 0, 'cog'),
-- (446, '资金流水', 3, 9, 'User/amountlog', 0, '', '用户管理', 0, 'list-alt'),
-- (451, '页脚导航配置', 7, 8, 'Config/dhfooter', 1, '', '导航', 0, 'cog'),
-- (452, '后端导航配置', 7, 8, 'Config/dhadmin', 1, '', '导航', 0, 'cog'),
-- (468, '认购配置', 6, 1, 'Issue/index', 0, '', '认购管理', 0, 'cog'),
-- (471, '认购记录', 6, 1, 'Issue/log', 0, '', '认购管理', 0, 'globe'),
-- (474, '限价委托记录', 5, 2, 'Trade/bbxjlist', 0, '', '币币交易', 0, 'list-alt'),
-- (479, '市场配置', 7, 5, 'Config/ctmarket', 0, '', '系统', 0, 'stats'),
-- (481, '平仓记录', 5, 2, 'Trade/hylog', 0, '', '快速合约', 0, 'list-alt'),
-- (484, '刷单设置', 5, 2, 'Trade/market', 0, '', '机器人设置', 0, 'cog'),
-- (485, '矿机列表', 8, 1, 'Kuangm/index', 0, '', '矿机管理', 0, 'list-alt'),
-- (486, '运行中矿机', 8, 2, 'Kuangm/kjlist', 0, '', '矿机管理', 0, 'list-alt'),
-- (487, '过期的矿机', 8, 3, 'Kuangm/overlist', 0, '', '矿机管理', 0, 'list-alt'),
-- (488, '矿机收益列表', 8, 3, 'Kuangm/kjsylist', 0, '', '矿机管理', 0, 'list-alt'),
-- (489, '冻结的收益', 8, 3, 'Kuangm/djprofit', 0, '', '矿机管理', 0, 'list-alt'),
-- (490, '市价交易记录', 5, 2, 'Trade/bbsjlist', 0, '', '币币交易', 0, 'list-alt'),
-- (491, '币币交易设置', 5, 2, 'Trade/bbsetting', 0, '', '币币交易', 0, 'cog'),
-- (492, '通知管理', 3, 9, 'User/noticelist', 0, '', '用户管理', 0, 'list-alt'),
-- (493, '在线客服', 3, 9, 'User/online', 0, '', '用户管理', 0, 'list-alt'),
-- (494, '代理管理', 3, 1, 'User/agent', 0, '', '用户管理', 0, 'user');


INSERT INTO `tw_menu` (`id`, `title`, `pid`, `sort`, `url`, `hide`, `tip`, `group`, `is_dev`, `ico_name`) VALUES
(1, 'Home', 0, 0, 'Index/index', 0, '', '', 0, 'home'),
(2, 'Content Management', 0, 9, 'Article/index', 0, '', '', 0, 'list-alt'),
(3, 'User Management', 0, 1, 'User/index', 0, '', '', 0, 'user'),
(4, 'Finance Records', 0, 2, 'Finance/index', 0, '', '', 0, 'th-list'),
(5, 'Trading Center', 0, 3, 'Trade/index', 0, '', '', 0, 'stats'),
(6, 'New Coin Subscription', 0, 6, 'Issue/index', 0, '', '', 0, 'th-large'),
(7, 'System Settings', 0, 0, 'Config/index', 0, '', '', 0, 'cog'),
(8, 'Mining Machine Management', 0, 5, 'Kuangm/index', 0, '', '', 0, 'list-alt'),
(11, 'Admin Home', 1, 1, 'Index/index', 0, '', 'Quick Operation', 0, 'home'),
(13, 'Announcement Center', 2, 1, 'Article/index', 0, '', 'Content', 0, 'list-alt'),
(26, 'Member Management', 3, 1, 'User/index', 0, '', 'User Management', 0, 'user'),
(68, 'Contract Orders', 5, 1, 'Trade/index', 0, '', 'Quick Contract', 0, 'list-alt'),
(69, 'Contract Settings', 5, 2, 'Trade/sethy', 0, '', 'Quick Contract', 0, 'cog'),
(79, 'Website Information', 7, 1, 'Config/index', 0, '', 'System', 0, 'cog'),
(85, 'Edit', 84, 4, 'Coin/edit', 0, '', 'Website Configuration', 0, '0'),
(89, 'Edit Market', 88, 4, 'Market/edit', 0, '', '', 0, '0'),
(92, 'Graphic Verification Code', 95, 7, 'Verify/code', 0, '', 'Website Configuration', 0, '0'),
(95, 'System Configuration', 7, 1, 'Config/qita', 0, '', 'System', 0, 'cog'),
(117, 'Sort', 116, 5, 'Menu/sort', 0, '', 'Developer Group', 0, '0'),
(118, 'Add', 116, 5, 'Menu/add', 0, '', 'Developer Group', 0, '0'),
(119, 'Edit', 116, 5, 'Menu/edit', 0, '', 'Developer Group', 0, '0'),
(120, 'Delete', 116, 5, 'Menu/del', 0, '', 'Developer Group', 0, '0'),
(282, 'Login Logs', 3, 4, 'User/log', 0, '', 'User Management', 0, 'list-alt'),
(283, 'User Wallet', 3, 5, 'User/qianbao', 0, '', 'User Management', 0, 'list-alt'),
(285, 'User Assets', 3, 7, 'User/coin', 0, '', 'User Management', 0, 'list-alt'),
(288, 'Platform Market', 7, 5, 'Config/marketo', 0, '', 'System', 0, 'stats'),
(290, 'Financial Details', 4, 1, 'Finance/index', 0, '', 'Finance Management', 0, 'th-list'),
(295, 'Deposit Records', 4, 1, 'Finance/myzr', 0, '', 'Finance Management', 0, 'log-in'),
(296, 'Withdrawal Records', 4, 1, 'Finance/myzc', 0, '', 'Finance Management', 0, 'log-out'),
(312, 'Admin Management', 3, 2, 'User/admin', 0, '', 'User Management', 0, 'user'),
(382, 'Currency Configuration', 7, 4, 'Config/coin', 0, '', 'System', 0, 'record'),
(388, 'Frontend Navigation Configuration', 7, 8, 'Config/daohang', 1, '', 'Navigation', 0, 'cog'),
(446, 'Fund Flow', 3, 9, 'User/amountlog', 0, '', 'User Management', 0, 'list-alt'),
(451, 'Footer Navigation Configuration', 7, 8, 'Config/dhfooter', 1, '', 'Navigation', 0, 'cog'),
(452, 'Backend Navigation Configuration', 7, 8, 'Config/dhadmin', 1, '', 'Navigation', 0, 'cog'),
(468, 'Subscription Configuration', 6, 1, 'Issue/index', 0, '', 'Subscription Management', 0, 'cog'),
(471, 'Subscription Records', 6, 1, 'Issue/log', 0, '', 'Subscription Management', 0, 'globe'),
(474, 'Limit Order Records', 5, 2, 'Trade/bbxjlist', 0, '', 'Crypto Trading', 0, 'list-alt'),
(479, 'Market Configuration', 7, 5, 'Config/ctmarket', 0, '', 'System', 0, 'stats'),
(481, 'Close Position Records', 5, 2, 'Trade/hylog', 0, '', 'Quick Contract', 0, 'list-alt'),
(484, 'Bot Settings', 5, 2, 'Trade/market', 0, '', 'Bot Configuration', 0, 'cog'),
(485, 'Mining Machine List', 8, 1, 'Kuangm/index', 0, '', 'Mining Machine Management', 0, 'list-alt'),
(486, 'Running Mining Machines', 8, 2, 'Kuangm/kjlist', 0, '', 'Mining Machine Management', 0, 'list-alt'),
(487, 'Expired Mining Machines', 8, 3, 'Kuangm/overlist', 0, '', 'Mining Machine Management', 0, 'list-alt'),
(488, 'Mining Machine Profit List', 8, 3, 'Kuangm/kjsylist', 0, '', 'Mining Machine Management', 0, 'list-alt'),
(489, 'Frozen Profits', 8, 3, 'Kuangm/djprofit', 0, '', 'Mining Machine Management', 0, 'list-alt'),
(490, 'Market Order Records', 5, 2, 'Trade/bbsjlist', 0, '', 'Crypto Trading', 0, 'list-alt'),
(491, 'Crypto Trading Settings', 5, 2, 'Trade/bbsetting', 0, '', 'Crypto Trading', 0, 'cog'),
(492, 'Notification Management', 3, 9, 'User/noticelist', 0, '', 'User Management', 0, 'list-alt'),
(493, 'Online Customer Service', 3, 9, 'User/online', 0, '', 'User Management', 0, 'list-alt'),
(494, 'Agent Management', 3, 1, 'User/agent', 0, '', 'User Management', 0, 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_myzc`
--

CREATE TABLE `tw_myzc` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'id',
  `userid` int(11) UNSIGNED NOT NULL COMMENT '会员ID',
  `username` varchar(200) NOT NULL DEFAULT '' COMMENT '会员账号',
  `coinname` varchar(200) NOT NULL DEFAULT '' COMMENT '提币币种',
  `txid` varchar(200) NOT NULL DEFAULT '',
  `num` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000' COMMENT '提币数量',
  `fee` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000' COMMENT '手续费',
  `mum` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000' COMMENT '实际到账',
  `address` varchar(225) NOT NULL COMMENT '提币地址',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '申请时间',
  `endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(4) NOT NULL DEFAULT '0' COMMENT '1待审核2完成3未通过',
  `to_user` int(2) NOT NULL DEFAULT '0' COMMENT '会员转币',
  `czline` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提币表' ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_myzc`
--

INSERT INTO `tw_myzc` (`id`, `userid`, `username`, `coinname`, `txid`, `num`, `fee`, `mum`, `address`, `sort`, `addtime`, `endtime`, `status`, `to_user`, `czline`) VALUES
(1, 286, '杜总286', 'usdt', '', '1600.00000000', '0.00000000', '1600.00000000', '0x3C2CDe7f7b3471f7d82491a25923c7E62f8C474d', 1, '2022-11-11 22:34:02', '2022-11-11 22:34:18', 2, 0, 'TRC20'),
(2, 313, '1222222@qq.com', 'usdt', '', '100.00000000', '0.00000000', '100.00000000', '10025663541545', 1, '2022-11-14 00:34:04', '2023-09-01 13:08:27', 2, 0, 'TRC20'),
(3, 381, '9985987232', 'usdt', '', '350.00000000', '0.00000000', '350.00000000', 'TDnspWknNAjs4Bcr8AfCh3Enht1z3CZqxy', 1, '2022-11-14 22:42:14', '2022-11-15 00:07:51', 2, 0, NULL),
(4, 334, '9191916666', 'usdt', '', '50.00000000', '0.00000000', '50.00000000', '12314365465fd4sa5f14653', 1, '2022-11-14 23:38:15', '2023-09-01 13:08:21', 2, 0, NULL),
(5, 434, 'ravi7000raj7@gmail.com', 'usdt', '', '170.00000000', '0.00000000', '170.00000000', 'TP4ESzXTmMupLuEuURA9RPFxEC1D6bUdhM', 1, '2022-11-15 23:22:37', '2022-11-15 23:36:34', 2, 0, 'TRC20'),
(6, 418, 'santhu.mdk@gmail.com', 'usdt', '', '100.00000000', '0.00000000', '100.00000000', 'TJaFjFWA9YD92EP65KuvzXYhPuJPFF8yGB', 1, '2022-11-16 02:14:24', '2022-11-18 21:50:19', 3, 0, 'TRC20'),
(7, 440, '9823606692', 'usdt', '', '200.00000000', '0.00000000', '200.00000000', 'TRr6rH51aMq2SpzZzpyviDLKUPZD9UhezM', 1, '2022-11-16 15:36:02', '2022-11-16 17:07:35', 2, 0, 'TRC20'),
(8, 437, 'kaluvala.123n@gmail.com', 'usdt', '', '120.00000000', '0.00000000', '120.00000000', 'TSYcTJMqUZfKTE1M3bn7HBxvkRQ8Nu5a2W', 1, '2022-11-16 20:15:39', '2022-11-16 21:01:11', 2, 0, 'TRC20'),
(9, 440, '9823606692', 'usdt', '', '175.00000000', '0.00000000', '175.00000000', 'TRr6rH51aMq2SpzZzpyviDLKUPZD9UhezM', 1, '2022-11-16 23:01:43', '2022-11-17 00:47:49', 2, 0, 'TRC20'),
(10, 418, 'santhu.mdk@gmail.com', 'usdt', '', '20.00000000', '0.00000000', '20.00000000', 'TJaFjFWA9YD92EP65KuvzXYhPuJPFF8yGB', 1, '2022-11-16 23:06:31', '2023-09-01 13:08:18', 2, 0, 'TRC20'),
(11, 381, '9985987232', 'usdt', '', '272.20000000', '0.00000000', '272.20000000', 'TDnspWknNAjs4Bcr8AfCh3Enht1z3CZqxy', 1, '2022-11-17 00:15:05', '2022-11-18 21:49:05', 3, 0, 'TRC20'),
(12, 439, '8882588155', 'usdt', '', '97.00000000', '0.00000000', '97.00000000', 'TC8SSFazth2VNvFXYugeMfZx9sSSqBBnKw', 1, '2022-11-17 14:03:49', '2023-09-01 13:08:14', 2, 0, 'TRC20'),
(13, 440, '9823606692', 'usdt', '', '300.00000000', '0.00000000', '300.00000000', 'TRr6rH51aMq2SpzZzpyviDLKUPZD9UhezM', 1, '2022-11-17 17:09:14', '2022-11-17 18:07:09', 3, 0, 'TRC20'),
(14, 421, '9663561432', 'usdt', '', '67.00000000', '0.00000000', '67.00000000', 'TUYb2VfRzAckTYcPpBje7DBdvfajBDDQtS', 1, '2022-11-17 18:17:47', '2022-11-17 20:09:25', 2, 0, 'TRC20'),
(15, 440, '9823606692', 'usdt', '', '300.00000000', '0.00000000', '300.00000000', 'TRr6rH51aMq2SpzZzpyviDLKUPZD9UhezM', 1, '2022-11-17 20:31:59', '2022-11-17 21:30:23', 3, 0, 'TRC20'),
(16, 421, '9663561432', 'usdt', '', '220.00000000', '0.00000000', '220.00000000', 'TUYb2VfRzAckTYcPpBje7DBdvfajBDDQtS', 1, '2022-11-17 22:16:40', '2022-11-18 21:45:01', 3, 0, 'TRC20'),
(17, 440, '9823606692', 'usdt', '', '328.80000000', '0.00000000', '328.80000000', 'TRr6rH51aMq2SpzZzpyviDLKUPZD9UhezM', 1, '2022-11-17 22:23:55', '2022-11-17 23:32:36', 3, 0, 'TRC20'),
(18, 440, '9823606692', 'usdt', '', '328.80000000', '0.00000000', '328.80000000', 'TRr6rH51aMq2SpzZzpyviDLKUPZD9UhezM', 1, '2022-11-18 14:05:15', '2022-11-18 21:44:47', 3, 0, 'TRC20'),
(19, 408, '乐2', 'usdt', '', '1000.00000000', '0.00000000', '1000.00000000', 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', 1, '2022-11-18 18:10:35', '2022-11-18 18:16:44', 2, 0, NULL),
(20, 408, '乐2', 'usdt', '', '650.00000000', '0.00000000', '650.00000000', 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', 1, '2022-11-18 18:10:58', '2022-11-18 18:16:41', 2, 0, NULL),
(21, 408, '乐2', 'usdt', '', '500.00000000', '0.00000000', '500.00000000', 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', 1, '2022-11-18 18:11:18', '2022-11-18 18:16:38', 2, 0, NULL),
(22, 472, 'shaiq123@gmail.com', 'usdt', '', '211.00000000', '0.00000000', '211.00000000', 'TFDW4oQpLMvYJdFp6XdDQXxR5kNt2snixq', 1, '2022-11-18 18:21:08', '2023-09-01 13:07:52', 2, 0, 'TRC20'),
(23, 434, 'ravi7000raj7@gmail.com', 'usdt', '', '50.00000000', '0.00000000', '50.00000000', 'TP4ESzXTmMupLuEuURA9RPFxEC1D6bUdhM', 1, '2022-11-18 21:36:22', '2022-11-18 21:44:32', 3, 0, 'TRC20'),
(24, 381, '9985987232', 'usdt', '', '272.20000000', '0.00000000', '272.20000000', 'TDnspWknNAjs4Bcr8AfCh3Enht1z3CZqxy', 1, '2022-11-18 22:03:00', '2023-09-01 13:07:59', 2, 0, 'TRC20'),
(25, 465, '9878352277', 'usdt', '', '11.30000000', '0.00000000', '11.30000000', 'TKHCakz7yH5jrEFARtPaxL2ux7BDpZyHNt', 1, '2022-11-18 22:41:14', '2023-09-01 13:08:05', 2, 0, 'TRC20'),
(26, 469, 'neelimatabjul@gmail.com', 'usdt', '', '50.00000000', '0.00000000', '50.00000000', 'TGXv8vF1QNAYEiD8Q1748J85nHTfL9C5Nq', 1, '2022-11-19 00:52:41', '2023-09-01 13:07:55', 2, 0, NULL),
(27, 434, 'ravi7000raj7@gmail.com', 'usdt', '', '50.00000000', '0.00000000', '50.00000000', 'TP4ESzXTmMupLuEuURA9RPFxEC1D6bUdhM', 1, '2022-11-19 00:56:12', '2023-09-01 13:07:48', 2, 0, 'TRC20'),
(28, 472, 'shaiq123@gmail.com', 'usdt', '', '106.40000000', '0.00000000', '106.40000000', 'TFDW4oQpLMvYJdFp6XdDQXxR5kNt2snixq', 1, '2022-11-19 21:02:29', '2022-11-19 21:40:50', 2, 0, 'TRC20'),
(29, 440, '9823606692', 'usdt', '', '45.80000000', '0.00000000', '45.80000000', 'TRr6rH51aMq2SpzZzpyviDLKUPZD9UhezM', 1, '2022-11-20 00:31:19', '2022-11-24 14:53:12', 2, 0, 'TRC20'),
(30, 444, 'itsmydummy023@gmail.com', 'usdt', '', '2500.00000000', '0.00000000', '2500.00000000', 'TFT5yyhBafTGaizojTXxhngndG6Y88cc8p', 1, '2022-11-21 03:13:53', '2022-11-21 14:26:32', 3, 0, 'TRC20'),
(31, 497, 'satish_eng2007@rediffmail.com', 'usdt', '', '202.46000000', '0.00000000', '202.46000000', 'satishkumareng2007@okicici', 1, '2022-11-21 13:06:46', '2022-11-21 15:29:03', 3, 0, 'TRC20'),
(32, 497, 'satish_eng2007@rediffmail.com', 'usdt', '', '202.46000000', '0.00000000', '202.46000000', 'satishkumareng2007@okicici', 1, '2022-11-21 16:39:21', '2022-11-21 22:24:35', 3, 0, 'TRC20'),
(33, 425, 'ganiya7@gmail.com', 'usdt', '', '10000.00000000', '0.00000000', '10000.00000000', 'TVN32YoF8w5H3hxACgvZNWmEaQf8eAavGb', 1, '2022-11-21 17:47:06', '2022-11-21 22:13:52', 3, 0, 'TRC20'),
(34, 425, 'ganiya7@gmail.com', 'usdt', '', '10000.00000000', '0.00000000', '10000.00000000', 'TVN32YoF8w5H3hxACgvZNWmEaQf8eAavGb', 1, '2022-11-22 10:34:16', '2022-11-22 13:27:35', 3, 0, 'TRC20'),
(35, 425, 'ganiya7@gmail.com', 'usdt', '', '10000.00000000', '0.00000000', '10000.00000000', 'TVN32YoF8w5H3hxACgvZNWmEaQf8eAavGb', 1, '2022-11-22 17:23:31', '2023-09-01 13:07:36', 2, 0, 'TRC20'),
(36, 469, 'neelimatabjul@gmail.com', 'usdt', '', '114.01000000', '0.00000000', '114.01000000', 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', 1, '2022-11-22 22:01:02', '2022-11-22 22:07:59', 3, 0, NULL),
(37, 452, '9599900087', 'usdt', '', '50.00000000', '0.00000000', '50.00000000', 'TWxex81STcmGjgypZnjqkG8oDthz9GeQpQ', 1, '2022-11-23 14:26:59', '2023-09-01 13:07:40', 2, 0, 'TRC20'),
(38, 440, '9823606692', 'usdt', '', '45.00000000', '0.00000000', '45.00000000', 'TRr6rH51aMq2SpzZzpyviDLKUPZD9UhezM', 1, '2022-11-23 14:50:39', '2023-09-01 13:07:31', 2, 0, 'TRC20'),
(39, 418, 'santhu.mdk@gmail.com', 'usdt', '', '20.00000000', '0.00000000', '20.00000000', 'TJaFjFWA9YD92EP65KuvzXYhPuJPFF8yGB', 1, '2022-11-25 17:55:15', '2023-09-01 13:07:28', 2, 0, 'TRC20'),
(40, 545, 'saranvr15@gmail.com', 'usdt', '', '105.00000000', '0.00000000', '105.00000000', 'TFggcvLkhxVGVQ5gUVJUcgEHiGt5vMLCj9', 1, '2022-11-25 22:02:26', '2022-11-25 22:09:21', 2, 0, 'TRC20'),
(41, 387, '9966775767', 'usdt', '', '3000.00000000', '0.00000000', '3000.00000000', 'TAi4DR3V6bVgHzdojDFhVnXFhPMaXT6QKe', 1, '2022-11-26 00:22:39', '2023-09-01 13:07:20', 2, 0, 'TRC20'),
(42, 497, 'satish_eng2007@rediffmail.com', 'usdt', '', '46.64000000', '0.00000000', '46.64000000', 'TKMntuCfJsK2XyBaire1PL96FCntUvzjTS', 1, '2022-11-26 17:07:56', '2023-09-01 13:07:07', 2, 0, 'TRC20'),
(43, 554, '0978123123', 'usdt', '', '1000.00000000', '0.00000000', '1000.00000000', '019383993', 1, '2023-09-06 12:00:54', '2023-09-06 12:18:12', 2, 0, 'TRC20'),
(44, 554, '0978123123', 'usdt', '', '1000.00000000', '0.00000000', '1000.00000000', '019383993 Ndk nguyen Mbbb', 1, '2023-09-06 13:46:34', '2023-09-06 13:47:49', 2, 0, 'TRC20'),
(45, 554, '0978123123', 'usdt', '', '2000.00000000', '0.00000000', '2000.00000000', '019383993 Ndk nguyen Mbbb', 1, '2023-09-07 14:23:15', '2023-09-07 14:37:18', 2, 0, 'TRC20'),
(46, 554, '0978123123', 'usdt', '', '10000.00000000', '0.00000000', '10000.00000000', '019383993 Ndk nguyen Mbbb', 1, '2023-09-07 14:24:05', '2023-09-07 14:37:14', 2, 0, 'TRC20'),
(47, 552, '0911223344', 'usdt', '', '457.00000000', '0.00000000', '457.00000000', '123456 Aaavvvcccnn ShB', 1, '2023-09-16 20:35:14', '0000-00-00 00:00:00', 1, 0, 'TRC20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_notice`
--

CREATE TABLE `tw_notice` (
  `id` int(11) NOT NULL COMMENT '记录ID',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `account` varchar(60) NOT NULL COMMENT '会员账号',
  `title` varchar(225) NOT NULL COMMENT '通知标题',
  `content` text NOT NULL COMMENT '通知内容',
  `imgs` varchar(225) NOT NULL COMMENT '通知图片 ',
  `addtime` datetime NOT NULL COMMENT '发送时间',
  `status` int(11) NOT NULL COMMENT '1未读2已读'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='通知表';

--
-- Đang đổ dữ liệu cho bảng `tw_notice`
--

INSERT INTO `tw_notice` (`id`, `uid`, `account`, `title`, `content`, `imgs`, `addtime`, `status`) VALUES
(1, 551, '0995995995', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-01 12:47:36', 1),
(2, 551, '0995995995', 'Currency charging approval', 'Your recharge amount has arrived. Please check it', '', '2023-09-01 12:47:49', 1),
(3, 551, '0995995995', 'Xem xét xác minh thành công', 'Yêu cầu xác minh của bạn đã được xem xét thành công', '', '2023-09-01 12:48:12', 1),
(4, 551, '0995995995', 'Currency limit transaction', 'Purchase of the consignment order for limited price purchase in currency transaction succeeded', '', '2023-09-01 12:49:01', 1),
(5, 552, '0911223344', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-01 13:00:46', 2),
(6, 553, '0868450300', 'Currency charging approval', 'Your recharge amount has arrived. Please check it', '', '2023-09-01 13:00:53', 1),
(7, 552, '0911223344', 'Xem xét xác minh thành công', 'Yêu cầu xác minh của bạn đã được xem xét thành công', '', '2023-09-01 13:01:13', 2),
(8, 553, '0868450300', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-01 13:01:16', 1),
(9, 551, '0995995995', 'Currency limit transaction', 'Currency transaction price limit purchase entrustment order sold successfully', '', '2023-09-01 13:02:01', 1),
(10, 553, '0868450300', 'Xem xét xác minh thành công', 'Yêu cầu xác minh của bạn đã được xem xét thành công', '', '2023-09-01 13:03:03', 1),
(11, 554, '0978123123', 'Certification data submitted successfully', 'The real name data is successfully submitted. Wait patiently for the administrator to review', '', '2023-09-01 13:06:52', 2),
(12, 497, 'satish_eng2007@rediffmail.com', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:07:07', 1),
(13, 387, '9966775767', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:07:20', 1),
(14, 418, 'santhu.mdk@gmail.com', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:07:28', 1),
(15, 440, '9823606692', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:07:31', 1),
(16, 425, 'ganiya7@gmail.com', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:07:36', 1),
(17, 452, '9599900087', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:07:40', 1),
(18, 434, 'ravi7000raj7@gmail.com', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:07:48', 1),
(19, 472, 'shaiq123@gmail.com', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:07:52', 1),
(20, 469, 'neelimatabjul@gmail.com', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:07:55', 1),
(21, 381, '9985987232', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:07:59', 1),
(22, 465, '9878352277', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:08:05', 1),
(23, 439, '8882588155', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:08:14', 1),
(24, 418, 'santhu.mdk@gmail.com', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:08:18', 1),
(25, 334, '9191916666', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:08:21', 1),
(26, 313, '1222222@qq.com', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-01 13:08:27', 1),
(27, 552, '0911223344', 'Currency limit transaction', 'Purchase of the consignment order for limited price purchase in currency transaction succeeded', '', '2023-09-01 13:10:01', 2),
(28, 554, '0978123123', 'Certification audit successful', 'Your certification application has been approved successfully', '', '2023-09-01 13:14:46', 2),
(29, 551, '0995995995', 'Currency limit transaction', 'Currency transaction price limit purchase entrustment order sold successfully', '', '2023-09-01 13:16:02', 1),
(30, 555, '0876612347', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-01 19:11:31', 1),
(31, 555, '0876612347', 'Xem xét nạp tiền', 'Hồ sơ nạp tiền của bạn đã bị từ chối bởi hệ thống. Vui lòng liên hệ dịch vụ khách hàng', '', '2023-09-01 19:30:46', 1),
(32, 555, '0876612347', 'Currency limit transaction', 'Purchase of the consignment order for limited price purchase in currency transaction succeeded', '', '2023-09-01 20:45:01', 1),
(33, 554, '0978123123', 'Currency limit transaction', 'Currency transaction price limit purchase entrustment order sold successfully', '', '2023-09-02 03:02:01', 2),
(34, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-02 03:32:02', 2),
(35, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:38:02', 2),
(36, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:38:02', 2),
(37, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:38:02', 2),
(38, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:38:02', 2),
(39, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:38:02', 2),
(40, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:39:02', 2),
(41, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:39:02', 2),
(42, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:01', 2),
(43, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:01', 2),
(44, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:02', 2),
(45, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:02', 2),
(46, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:02', 2),
(47, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:02', 2),
(48, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:02', 2),
(49, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:02', 2),
(50, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:02', 2),
(51, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:02', 2),
(52, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:02', 2),
(53, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:02', 2),
(54, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:03', 2),
(55, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:03', 2),
(56, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:03', 2),
(57, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:03', 2),
(58, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:03', 2),
(59, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:03', 2),
(60, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-03 04:47:05', 2),
(61, 553, '0868450300', 'Xem xét nạp tiền', 'Số tiền nạp của bạn đã được ghi nhận. Vui lòng kiểm tra', '', '2023-09-03 11:11:03', 1),
(62, 553, '0868450300', 'Xem xét nạp tiền', 'Số tiền nạp của bạn đã được ghi nhận. Vui lòng kiểm tra', '', '2023-09-03 17:24:41', 1),
(63, 553, '0868450300', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 00:20:02', 1),
(64, 553, '0868450300', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 00:20:02', 1),
(65, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:51:42', 2),
(66, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:51:47', 2),
(67, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:51:47', 2),
(68, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:51:53', 2),
(69, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:51:53', 2),
(70, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:17', 2),
(71, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:17', 2),
(72, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:17', 2),
(73, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:17', 2),
(74, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:23', 2),
(75, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:23', 2),
(76, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:24', 2),
(77, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:24', 2),
(78, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:24', 2),
(79, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:29', 2),
(80, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:35', 2),
(81, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:35', 2),
(82, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:35', 2),
(83, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:36', 2),
(84, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:36', 2),
(85, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:36', 2),
(86, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:42', 2),
(87, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:42', 2),
(88, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:42', 2),
(89, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:47', 2),
(90, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 03:55:53', 2),
(91, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:01', 2),
(92, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:06', 2),
(93, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:06', 2),
(94, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:06', 2),
(95, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:06', 2),
(96, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:07', 2),
(97, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:12', 2),
(98, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:12', 2),
(99, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:12', 2),
(100, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:17', 2),
(101, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:18', 2),
(102, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:18', 2),
(103, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:18', 2),
(104, 554, '0978123123', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-05 04:02:18', 2),
(105, 554, '0978123123', 'Currency limit transaction', 'Currency transaction price limit purchase entrustment order sold successfully', '', '2023-09-05 17:34:33', 1),
(106, 554, '0978123123', 'Currency limit transaction', 'Currency transaction price limit purchase entrustment order sold successfully', '', '2023-09-05 17:36:08', 2),
(107, 554, '0978123123', 'Xem xét rút tiền', 'Yêu cầu rút tiền của bạn đã được chấp nhận. Vui lòng kiểm tra kịp thời', '', '2023-09-06 12:18:12', 2),
(108, 554, '0978123123', 'Xem xét rút tiền', 'Yêu cầu rút tiền của bạn đã được chấp nhận. Vui lòng kiểm tra kịp thời', '', '2023-09-06 13:47:49', 2),
(109, 554, '0978123123', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-07 14:37:14', 1),
(110, 554, '0978123123', 'Withdrawal review', 'Your currency withdrawal application has passed. Please check it in time', '', '2023-09-07 14:37:18', 1),
(111, 560, '0935353586', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-08 01:16:20', 1),
(112, 560, '0935353586', 'Xem xét nạp tiền', 'Số tiền nạp của bạn đã được ghi nhận. Vui lòng kiểm tra', '', '2023-09-08 01:19:25', 1),
(113, 560, '0935353586', 'Xem xét nạp tiền', 'Số tiền nạp của bạn đã được ghi nhận. Vui lòng kiểm tra', '', '2023-09-08 01:28:31', 1),
(114, 554, '0978123123', 'Currency limit transaction', 'Currency transaction price limit purchase entrustment order sold successfully', '', '2023-09-08 03:20:56', 2),
(115, 554, '0978123123', 'Xem xét nạp tiền', 'Số tiền nạp của bạn đã được ghi nhận. Vui lòng kiểm tra', '', '2023-09-08 19:55:14', 2),
(116, 564, '0914000449', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-08 21:04:17', 1),
(117, 552, '0911223344', 'Currency limit transaction', 'Purchase of the consignment order for limited price purchase in currency transaction succeeded', '', '2023-09-11 16:16:02', 2),
(118, 552, '0911223344', 'Currency limit transaction', 'Purchase of the consignment order for limited price purchase in currency transaction succeeded', '', '2023-09-11 19:28:01', 2),
(119, 552, '0911223344', 'Currency limit transaction', 'Purchase of the consignment order for limited price purchase in currency transaction succeeded', '', '2023-09-11 19:40:02', 2),
(120, 552, '0911223344', 'Currency limit transaction', 'Currency transaction price limit purchase entrustment order sold successfully', '', '2023-09-11 20:13:01', 2),
(121, 551, '0995995995', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-13 01:15:01', 1),
(122, 551, '0995995995', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-13 01:41:01', 1),
(123, 552, '0911223344', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-16 20:18:42', 1),
(124, 552, '0911223344', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-16 20:21:12', 1),
(125, 552, '0911223344', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-16 20:21:12', 1),
(126, 552, '0911223344', 'Express contract transaction', 'The express contract has been closed. Please increase your position in time', '', '2023-09-16 20:22:35', 1),
(127, 552, '0911223344', 'Currency limit transaction', 'Purchase of the consignment order for limited price purchase in currency transaction succeeded', '', '2023-09-16 20:25:26', 2),
(128, 552, '0911223344', 'Currency limit transaction', 'Currency transaction price limit purchase entrustment order sold successfully', '', '2023-09-16 20:37:01', 2),
(129, 553, '0868450300', 'Giao dịch hợp đồng', 'Hợp đồng đã được đóng cửa. Vui lòng tăng vị trí kịp thời', '', '2023-09-19 00:14:58', 1),
(130, 553, '0868450300', 'Giao dịch hợp đồng', 'Hợp đồng đã được đóng cửa. Vui lòng tăng vị trí kịp thời', '', '2023-09-19 01:14:15', 1),
(131, 554, '0978123123', 'Giao dịch hợp đồng', 'Hợp đồng đã được đóng cửa. Vui lòng tăng vị trí kịp thời', '', '2023-09-19 01:15:48', 1),
(132, 554, '0978123123', 'Giao dịch hợp đồng', 'Hợp đồng đã được đóng cửa. Vui lòng tăng vị trí kịp thời', '', '2023-09-19 01:17:16', 1),
(133, 551, '0995995995', 'Giao dịch hợp đồng', 'Hợp đồng đã được đóng cửa. Vui lòng tăng vị trí kịp thời', '', '2023-09-23 16:16:30', 1),
(134, 551, '0995995995', 'Giao dịch hợp đồng', 'Hợp đồng đã được đóng cửa. Vui lòng tăng vị trí kịp thời', '', '2023-09-23 17:11:44', 1),
(135, 576, '0123456', 'Xem xét nạp tiền', 'Số tiền nạp của bạn đã được ghi nhận. Vui lòng kiểm tra', '', '2023-09-29 21:09:40', 1),
(136, 576, '0123456', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-29 21:11:47', 1),
(137, 576, '0123456', 'Giao dịch hợp đồng', 'Hợp đồng đã được đóng cửa. Vui lòng tăng vị trí kịp thời', '', '2023-09-29 21:25:01', 1),
(138, 578, 'phananhhuan@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-29 21:36:47', 1),
(139, 579, 'tranquocbao88@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-29 21:37:19', 1),
(140, 579, 'tranquocbao88@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-29 21:37:24', 1),
(141, 579, 'tranquocbao88@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-29 21:45:00', 1),
(142, 577, 'giahuy16111995@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-29 21:53:46', 1),
(143, 577, 'giahuy16111995@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-29 21:54:30', 1),
(144, 577, 'giahuy16111995@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-29 21:55:38', 1),
(145, 577, 'giahuy16111995@gmail.com', 'Giao dịch hợp đồng', 'Hợp đồng đã được đóng cửa. Vui lòng tăng vị trí kịp thời', '', '2023-09-29 22:09:44', 1),
(146, 576, '0123456', 'Xem xét nạp tiền', 'Số tiền nạp của bạn đã được ghi nhận. Vui lòng kiểm tra', '', '2023-09-29 22:16:46', 1),
(147, 576, '0123456', 'Giao dịch hợp đồng', 'Hợp đồng đã được đóng cửa. Vui lòng tăng vị trí kịp thời', '', '2023-09-29 22:23:22', 1),
(148, 588, 'tranquocbao80@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-29 22:45:02', 1),
(149, 589, 'phananhhuan@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-29 22:47:58', 2),
(150, 593, 'tranquocbao81@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:10:02', 1),
(151, 594, 'tranquocbao82@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:14:37', 1),
(152, 596, 'nguyenthihuyen666@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:15:31', 1),
(153, 596, 'nguyenthihuyen666@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:15:37', 1),
(154, 597, 'phananhhuan1@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:16:48', 1),
(155, 598, 'phananhhuan2@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:18:39', 1),
(156, 599, 'trinhphuc88@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:21:30', 1),
(157, 600, 'nguyenthihuyen667@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:22:48', 1),
(158, 601, 'nguyenanhtruong@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:24:14', 1),
(159, 602, 'nguyenanhtruong1@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:25:51', 1),
(160, 603, 'nguyenthihuyen668@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:26:06', 1),
(161, 604, 'trinhphuc87@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:26:19', 1),
(162, 603, 'nguyenthihuyen668@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:26:45', 1),
(163, 605, 'nguyenanhtruong2@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:27:13', 1),
(164, 606, 'trinhphuc86@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:28:36', 1),
(165, 607, 'dangvancuong@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:30:05', 1),
(166, 595, 'brian1903@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:30:15', 1),
(167, 595, 'brian1903@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:30:21', 1),
(168, 609, 'dangvancuong1@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:31:11', 1),
(169, 610, 'dangvancuong2@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:33:41', 1),
(170, 595, 'brian1903@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:33:49', 1),
(171, 595, 'brian1903@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:35:12', 1),
(172, 595, 'brian1903@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:35:15', 1),
(173, 611, 'nguyenthikimthanh666@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:40:00', 1),
(174, 612, 'brian190385@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:42:10', 1),
(175, 613, 'nguyenthikimthanh667@gmail.co', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:42:13', 1),
(176, 614, 'nguyenthikimthanh668@gmail.co', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:44:33', 1),
(177, 615, 'vyvyvy42057@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:48:20', 1),
(178, 590, '123456789', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:50:12', 1),
(179, 590, '123456789', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:51:22', 1),
(180, 617, 'tp324498@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:51:47', 1),
(181, 616, 'Huynhtanloc708@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:52:05', 2),
(182, 590, '123456789', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:54:19', 1),
(183, 590, '123456789', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:54:36', 1),
(184, 618, 'truongvyvy42057@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:54:54', 1),
(185, 619, 'lananh130593@gmail.com', 'Gửi thành công thông tin xác minh', 'Dữ liệu xác minh đã được gửi thành công, hãy kiên nhẫn chờ quản trị viên xem xét', '', '2023-09-30 13:55:31', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_online`
--

CREATE TABLE `tw_online` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `username` varchar(225) NOT NULL COMMENT '会员账号',
  `type` int(11) NOT NULL COMMENT '类型：1客服2会员',
  `content` text NOT NULL COMMENT '内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发送时间',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '后台查看状态0未查看2已查看'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tw_online`
--

INSERT INTO `tw_online` (`id`, `uid`, `username`, `type`, `content`, `addtime`, `state`) VALUES
(2, 336, 'qq878412', 2, '怎么充值', '2022-11-14 10:04:47', 2),
(3, 318, 'qq878412', 1, '测试', '2022-11-14 08:55:24', 1),
(4, 336, 'qq878412', 1, 'sad', '2022-11-14 10:01:40', 1),
(5, 385, 'min1', 2, '111', '2022-11-14 11:59:44', 0),
(6, 442, '8756273094', 2, 'Why my authentication is showing wrong every time', '2022-11-16 15:27:35', 1),
(7, 444, 'itsmydummy023@gmail.com', 2, 'Hello, iam not able to authenticate', '2022-11-16 15:28:59', 1),
(8, 424, 'navin.simon365@gmail.com', 2, 'Hi', '2022-11-16 15:26:02', 1),
(9, 424, 'navin.simon365@gmail.com', 1, 'Hi', '2022-11-16 15:26:02', 1),
(10, 424, 'navin.simon365@gmail.com', 1, 'Hi', '2022-11-16 15:26:27', 1),
(11, 442, '8756273094', 1, 'Hi', '2022-11-16 15:27:35', 1),
(12, 442, '8756273094', 1, 'please try again', '2022-11-16 15:27:47', 1),
(13, 444, 'itsmydummy023@gmail.com', 1, 'Hi', '2022-11-16 15:28:59', 1),
(14, 444, 'itsmydummy023@gmail.com', 1, 'please try again', '2022-11-16 15:29:03', 1),
(15, 424, 'navin.simon365@gmail.com', 1, 'Hi', '2022-11-17 06:18:00', 1),
(16, 453, '9013382710', 2, 'hi', '2022-11-18 08:33:39', 1),
(17, 453, '9013382710', 1, 'Hi', '2022-11-18 08:33:39', 1),
(18, 472, 'shaiq123@gmail.com', 2, 'My deposit is not there yet', '2022-11-18 13:47:17', 1),
(19, 472, 'shaiq123@gmail.com', 2, 'Hello', '2022-11-18 12:10:54', 0),
(20, 472, 'shaiq123@gmail.com', 1, 'ok let me check', '2022-11-18 13:47:17', 1),
(21, 472, 'shaiq123@gmail.com', 1, 'hold on a second while i check', '2022-11-19 14:16:47', 1),
(22, 473, '8800592589', 2, 'Hi', '2022-11-19 14:35:22', 0),
(23, 473, '8800592589', 2, 'From how long you guys are in crypto market investment?', '2022-11-19 16:51:01', 1),
(24, 473, '8800592589', 2, '??', '2022-11-19 15:57:17', 0),
(25, 473, '8800592589', 1, 'We have been engaged in cryptocurrency investment since 2014', '2022-11-19 16:51:01', 1),
(26, 495, '9448117712', 2, 'Hi', '2022-11-22 10:16:20', 1),
(27, 381, '9985987232', 2, 'Hi', '2022-11-21 16:32:34', 0),
(28, 381, '9985987232', 2, 'The transaction of 272USD is still showing as pending', '2022-11-21 16:34:25', 0),
(29, 381, '9985987232', 2, 'whe will it get Confirmed', '2022-11-21 16:35:26', 0),
(30, 425, 'ganiya7@gmail.com', 2, 'Hi', '2022-11-22 02:39:02', 0),
(31, 495, '9448117712', 1, 'Hi', '2022-11-22 10:16:20', 1),
(32, 517, '919899847869', 2, '4448', '2022-11-23 16:03:43', 0),
(33, 552, '0911223344', 2, 'Alo', '2023-09-01 07:11:41', 1),
(34, 552, '0911223344', 1, '1\r\n', '2023-09-01 08:11:41', 1),
(35, 333, 'shentou998', 2, '123', '2023-09-01 07:13:22', 1),
(36, 333, 'shentou998', 1, '123', '2023-09-01 08:13:22', 1),
(37, 551, '0995995995', 2, 'lô', '2023-09-03 16:55:02', 0),
(38, 551, '0995995995', 2, 'hello', '2023-09-03 16:56:20', 0),
(39, 553, '0868450300', 2, 'dsf', '2023-09-07 18:17:20', 1),
(40, 553, '0868450300', 1, 'Q', '2023-09-07 19:17:20', 1),
(41, 553, '0868450300', 1, '::', '2023-09-07 19:17:32', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_recharge`
--

CREATE TABLE `tw_recharge` (
  `id` int(11) NOT NULL COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `username` varchar(225) NOT NULL COMMENT '会员账号',
  `coin` varchar(60) NOT NULL COMMENT '币名称',
  `num` decimal(12,6) NOT NULL COMMENT '名称',
  `addtime` datetime NOT NULL COMMENT '添加时间',
  `updatetime` datetime NOT NULL COMMENT '处理时间',
  `status` int(11) NOT NULL COMMENT '状态: 待审核 1 - 审核通过 2 - 不通过3',
  `payimg` varchar(225) NOT NULL COMMENT '付款凭证',
  `msg` varchar(225) NOT NULL COMMENT '不通过说明',
  `czline` varchar(255) DEFAULT NULL,
  `atype` int(1) DEFAULT '0' COMMENT '0用户充值1管理员充值',
  `address` varchar(200) DEFAULT NULL COMMENT '充值地址',
  `trc20id` varchar(300) DEFAULT NULL COMMENT 'trc20交易Id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值记录';

--
-- Đang đổ dữ liệu cho bảng `tw_recharge`
--

INSERT INTO `tw_recharge` (`id`, `uid`, `username`, `coin`, `num`, `addtime`, `updatetime`, `status`, `payimg`, `msg`, `czline`, `atype`, `address`, `trc20id`) VALUES
(1, 245, 'XIA0010', 'USDT', '10000.000000', '2022-11-10 18:30:44', '2022-11-10 18:30:44', 2, '', '', NULL, 1, NULL, NULL),
(2, 315, 'qq878410', 'USDT', '5000.000000', '2022-11-11 19:28:59', '2022-11-11 19:28:59', 2, '', '', NULL, 1, NULL, NULL),
(3, 317, 'qq878411', 'USDT', '5000.000000', '2022-11-11 19:29:28', '2022-11-11 19:29:28', 2, '', '', NULL, 1, NULL, NULL),
(4, 318, 'qq878412', 'USDT', '5000.000000', '2022-11-11 19:29:39', '2022-11-11 19:29:39', 2, '', '', NULL, 1, NULL, NULL),
(5, 319, 'qq878413', 'USDT', '5000.000000', '2022-11-11 19:29:51', '2022-11-11 19:29:51', 2, '', '', NULL, 1, NULL, NULL),
(6, 320, 'qq878414', 'USDT', '5000.000000', '2022-11-11 19:30:05', '2022-11-11 19:30:05', 2, '', '', NULL, 1, NULL, NULL),
(7, 321, 'qq878415', 'USDT', '5000.000000', '2022-11-11 19:30:19', '2022-11-11 19:30:19', 2, '', '', NULL, 1, NULL, NULL),
(8, 316, 'zhuo918208', 'USDT', '5000.000000', '2022-11-11 19:30:41', '2022-11-11 19:30:41', 2, '', '', NULL, 1, NULL, NULL),
(9, 286, '杜总286', 'USDT', '10000.000000', '2022-11-11 20:52:15', '2022-11-11 20:52:15', 2, '', '', NULL, 1, NULL, NULL),
(10, 322, 'K168', 'USDT', '3000.000000', '2022-11-12 00:16:21', '2022-11-12 00:16:21', 2, '', '', NULL, 1, NULL, NULL),
(11, 323, 'K1168', 'USDT', '3000.000000', '2022-11-12 00:16:36', '2022-11-12 00:16:36', 2, '', '', NULL, 1, NULL, NULL),
(12, 324, '初', 'USDT', '3000.000000', '2022-11-12 00:16:52', '2022-11-12 00:16:52', 2, '', '', NULL, 1, NULL, NULL),
(13, 325, '初112233', 'USDT', '3000.000000', '2022-11-12 00:17:03', '2022-11-12 00:17:03', 2, '', '', NULL, 1, NULL, NULL),
(14, 326, '青123', 'USDT', '3000.000000', '2022-11-12 00:17:14', '2022-11-12 00:17:14', 2, '', '', NULL, 1, NULL, NULL),
(15, 327, '青1234', 'USDT', '3000.000000', '2022-11-12 00:17:28', '2022-11-12 00:17:28', 2, '', '', NULL, 1, NULL, NULL),
(16, 307, 'tn168', 'USDT', '3000.000000', '2022-11-12 00:19:10', '2022-11-12 00:19:10', 2, '', '', NULL, 1, NULL, NULL),
(17, 309, 'tn168168', 'USDT', '3000.000000', '2022-11-12 00:19:28', '2022-11-12 00:19:28', 2, '', '', NULL, 1, NULL, NULL),
(18, 310, '123', 'USDT', '5000.000000', '2022-11-12 02:38:02', '2022-11-12 02:38:02', 2, '', '', NULL, 1, NULL, NULL),
(19, 328, '456', 'USDT', '5000.000000', '2022-11-12 02:38:25', '2022-11-12 02:38:25', 2, '', '', NULL, 1, NULL, NULL),
(20, 329, '789', 'USDT', '5000.000000', '2022-11-12 02:38:44', '2022-11-12 02:38:44', 2, '', '', NULL, 1, NULL, NULL),
(21, 330, '147', 'USDT', '5000.000000', '2022-11-12 02:39:35', '2022-11-12 02:39:35', 2, '', '', NULL, 1, NULL, NULL),
(22, 331, '258', 'USDT', '5000.000000', '2022-11-12 02:39:49', '2022-11-12 02:39:49', 2, '', '', NULL, 1, NULL, NULL),
(23, 334, '9191916666', 'USDT', '5000.000000', '2022-11-12 23:38:27', '2022-11-12 23:38:27', 2, '', '', NULL, 1, NULL, NULL),
(24, 313, '1222222@qq.com', 'USDT', '100.000000', '2022-11-13 22:15:31', '0000-00-00 00:00:00', 1, '6370fc0200b5b.jpg', '', NULL, 0, NULL, NULL),
(25, 313, '1222222@qq.com', 'USDT', '1200.000000', '2022-11-13 22:19:46', '0000-00-00 00:00:00', 1, '6370fd0139646.png', '', NULL, 0, NULL, NULL),
(26, 313, '1222222@qq.com', 'USDT', '100.000000', '2022-11-13 22:20:28', '0000-00-00 00:00:00', 1, '6370fd2b0ff03.jpg', '', NULL, 0, NULL, NULL),
(27, 313, '1222222@qq.com', 'USDT', '1000.000000', '2022-11-13 22:25:02', '0000-00-00 00:00:00', 1, '6370fe3d5653f.png', '', 'TRC20', 0, NULL, NULL),
(28, 313, '1222222@qq.com', 'USDT', '4543.000000', '2022-11-13 22:25:58', '0000-00-00 00:00:00', 1, '6370fe723b916.png', '', 'TRC20', 0, NULL, NULL),
(29, 313, '1222222@qq.com', 'USDT', '1000.000000', '2022-11-13 22:27:04', '2022-11-13 23:19:37', 2, '6370feb757ed6.png', '', 'TRC20', 0, '测试1', NULL),
(30, 352, '0000000000', 'USDT', '10000.000000', '2022-11-14 15:21:19', '2022-11-14 15:21:19', 2, '', '', NULL, 1, NULL, NULL),
(31, 358, '1233312333', 'USDT', '10000.000000', '2022-11-14 15:21:57', '2022-11-14 15:21:57', 2, '', '', NULL, 1, NULL, NULL),
(32, 355, '3422260640', 'USDT', '10000.000000', '2022-11-14 15:22:19', '2022-11-14 15:22:19', 2, '', '', NULL, 1, NULL, NULL),
(33, 357, '00000000', 'USDT', '10000.000000', '2022-11-14 15:22:41', '2022-11-14 15:22:41', 2, '', '', NULL, 1, NULL, NULL),
(34, 354, '11111111', 'USDT', '10000.000000', '2022-11-14 15:23:06', '2022-11-14 15:23:06', 2, '', '', NULL, 1, NULL, NULL),
(35, 360, '22222222', 'USDT', '10000.000000', '2022-11-14 15:23:32', '2022-11-14 15:23:32', 2, '', '', NULL, 1, NULL, NULL),
(36, 363, '8881', 'USDT', '10000.000000', '2022-11-14 15:31:23', '2022-11-14 15:31:23', 2, '', '', NULL, 1, NULL, NULL),
(37, 374, '8882', 'USDT', '10000.000000', '2022-11-14 15:31:49', '2022-11-14 15:31:49', 2, '', '', NULL, 1, NULL, NULL),
(38, 377, '8883', 'USDT', '10000.000000', '2022-11-14 15:32:14', '2022-11-14 15:32:14', 2, '', '', NULL, 1, NULL, NULL),
(39, 361, '9998881', 'USDT', '10000.000000', '2022-11-14 15:32:46', '2022-11-14 15:32:46', 2, '', '', NULL, 1, NULL, NULL),
(40, 371, '9998882', 'USDT', '10000.000000', '2022-11-14 15:33:10', '2022-11-14 15:33:10', 2, '', '', NULL, 1, NULL, NULL),
(41, 373, '9998883', 'USDT', '10000.000000', '2022-11-14 15:33:33', '2022-11-14 15:33:33', 2, '', '', NULL, 1, NULL, NULL),
(42, 365, '216624', 'USDT', '10000.000000', '2022-11-14 15:56:10', '2022-11-14 15:56:10', 2, '', '', NULL, 1, NULL, NULL),
(43, 368, '808624', 'USDT', '10000.000000', '2022-11-14 15:56:41', '2022-11-14 15:56:41', 2, '', '', NULL, 1, NULL, NULL),
(44, 366, '999', 'USDT', '10000.000000', '2022-11-14 15:57:06', '2022-11-14 15:57:06', 2, '', '', NULL, 1, NULL, NULL),
(45, 370, '998', 'USDT', '10000.000000', '2022-11-14 15:57:30', '2022-11-14 15:57:30', 2, '', '', NULL, 1, NULL, NULL),
(46, 372, '867', 'USDT', '10000.000000', '2022-11-14 15:57:57', '2022-11-14 15:57:57', 2, '', '', NULL, 1, NULL, NULL),
(47, 378, '868', 'USDT', '10000.000000', '2022-11-14 15:58:15', '2022-11-14 15:58:15', 2, '', '', NULL, 1, NULL, NULL),
(48, 351, '668812', 'USDT', '10000.000000', '2022-11-14 15:58:36', '2022-11-14 15:58:36', 2, '', '', NULL, 1, NULL, NULL),
(49, 415, 'jun3', 'USDT', '10000.000000', '2022-11-14 17:35:30', '2022-11-14 17:35:30', 2, '', '', NULL, 1, NULL, NULL),
(50, 414, 'jun2', 'USDT', '10000.000000', '2022-11-14 17:35:37', '2022-11-14 17:35:37', 2, '', '', NULL, 1, NULL, NULL),
(51, 413, 'jun1', 'USDT', '10000.000000', '2022-11-14 17:35:46', '2022-11-14 17:35:46', 2, '', '', NULL, 1, NULL, NULL),
(52, 412, '小2', 'USDT', '10000.000000', '2022-11-14 17:36:03', '2022-11-14 17:36:03', 2, '', '', NULL, 1, NULL, NULL),
(53, 411, '小1', 'USDT', '10000.000000', '2022-11-14 17:36:11', '2022-11-14 17:36:11', 2, '', '', NULL, 1, NULL, NULL),
(54, 410, '银2', 'USDT', '10000.000000', '2022-11-14 17:36:34', '2022-11-14 17:36:34', 2, '', '', NULL, 1, NULL, NULL),
(55, 409, '银1', 'USDT', '10000.000000', '2022-11-14 17:36:41', '2022-11-14 17:36:41', 2, '', '', NULL, 1, NULL, NULL),
(56, 408, '乐2', 'USDT', '10000.000000', '2022-11-14 17:36:50', '2022-11-14 17:36:50', 2, '', '', NULL, 1, NULL, NULL),
(57, 407, '000003', 'USDT', '10000.000000', '2022-11-14 17:37:14', '2022-11-14 17:37:14', 2, '', '', NULL, 1, NULL, NULL),
(58, 406, '杜2', 'USDT', '10000.000000', '2022-11-14 17:37:25', '2022-11-14 17:37:25', 2, '', '', NULL, 1, NULL, NULL),
(59, 405, '樊2', 'USDT', '10000.000000', '2022-11-14 17:37:34', '2022-11-14 17:37:34', 2, '', '', NULL, 1, NULL, NULL),
(60, 404, '曾2', 'USDT', '10000.000000', '2022-11-14 17:37:43', '2022-11-14 17:37:43', 2, '', '', NULL, 1, NULL, NULL),
(61, 403, '樊1', 'USDT', '10000.000000', '2022-11-14 17:37:56', '2022-11-14 17:37:56', 2, '', '', NULL, 1, NULL, NULL),
(62, 402, '龙2', 'USDT', '10000.000000', '2022-11-14 17:38:09', '2022-11-14 17:38:09', 2, '', '', NULL, 1, NULL, NULL),
(63, 401, '小丽2', 'USDT', '10000.000000', '2022-11-14 17:38:17', '2022-11-14 17:38:17', 2, '', '', NULL, 1, NULL, NULL),
(64, 400, '小丽1', 'USDT', '10000.000000', '2022-11-14 17:38:27', '2022-11-14 17:38:27', 2, '', '', NULL, 1, NULL, NULL),
(65, 399, '小玉2', 'USDT', '10000.000000', '2022-11-14 17:38:39', '2022-11-14 17:38:39', 2, '', '', NULL, 1, NULL, NULL),
(66, 398, '杜1', 'USDT', '10000.000000', '2022-11-14 17:38:46', '2022-11-14 17:38:46', 2, '', '', NULL, 1, NULL, NULL),
(67, 397, '小玉1', 'USDT', '10000.000000', '2022-11-14 17:38:56', '2022-11-14 17:38:56', 2, '', '', NULL, 1, NULL, NULL),
(68, 396, '曾1', 'USDT', '10000.000000', '2022-11-14 17:39:05', '2022-11-14 17:39:05', 2, '', '', NULL, 1, NULL, NULL),
(69, 395, '龙1', 'USDT', '10000.000000', '2022-11-14 17:39:15', '2022-11-14 17:39:15', 2, '', '', NULL, 1, NULL, NULL),
(70, 394, '000002', 'USDT', '10000.000000', '2022-11-14 17:39:30', '2022-11-14 17:39:30', 2, '', '', NULL, 1, NULL, NULL),
(71, 393, '8888883', 'USDT', '10000.000000', '2022-11-14 17:39:44', '2022-11-14 17:39:44', 2, '', '', NULL, 1, NULL, NULL),
(72, 392, '88888882', 'USDT', '10000.000000', '2022-11-14 17:40:17', '2022-11-14 17:40:17', 2, '', '', NULL, 1, NULL, NULL),
(73, 391, '000001', 'USDT', '10000.000000', '2022-11-14 17:40:33', '2022-11-14 17:40:33', 2, '', '', NULL, 1, NULL, NULL),
(74, 390, '1', 'USDT', '10000.000000', '2022-11-14 17:40:42', '2022-11-14 17:40:42', 2, '', '', NULL, 1, NULL, NULL),
(75, 384, '乐1', 'USDT', '10000.000000', '2022-11-14 17:41:59', '2022-11-14 17:41:59', 2, '', '', NULL, 1, NULL, NULL),
(76, 383, '均2', 'USDT', '10000.000000', '2022-11-14 17:42:06', '2022-11-14 17:42:06', 2, '', '', NULL, 1, NULL, NULL),
(77, 382, '均1', 'USDT', '10000.000000', '2022-11-14 17:42:14', '2022-11-14 17:42:14', 2, '', '', NULL, 1, NULL, NULL),
(78, 418, 'santhu.mdk@gmail.com', 'USDT', '27433.000000', '2022-11-14 18:04:55', '2022-11-14 18:04:55', 2, '', '', NULL, 1, NULL, NULL),
(79, 417, 'simhasriram@gmail.com', 'USDT', '89600.000000', '2022-11-14 18:05:08', '2022-11-14 18:05:08', 2, '', '', NULL, 1, NULL, NULL),
(80, 389, '8888881', 'USDT', '10000.000000', '2022-11-14 18:11:04', '2022-11-14 18:11:04', 2, '', '', NULL, 1, NULL, NULL),
(81, 420, '888888', 'USDT', '10000.000000', '2022-11-14 18:11:32', '2022-11-14 18:11:32', 2, '', '', NULL, 1, NULL, NULL),
(82, 416, ' 8888882', 'USDT', '10000.000000', '2022-11-14 18:14:29', '2022-11-14 18:14:29', 2, '', '', NULL, 1, NULL, NULL),
(83, 425, 'ganiya7@gmail.com', 'USDT', '27691.050000', '2022-11-14 20:10:53', '2022-11-14 20:10:53', 2, '', '', NULL, 1, NULL, NULL),
(84, 424, 'navin.simon365@gmail.com', 'USDT', '226.730000', '2022-11-14 20:12:13', '2022-11-14 20:12:13', 2, '', '', NULL, 1, NULL, NULL),
(85, 381, '9985987232', 'USDT', '400.000000', '2022-11-14 20:17:39', '2022-11-14 20:17:39', 2, '', '', NULL, 1, NULL, NULL),
(86, 387, '9966775767', 'USDT', '500.000000', '2022-11-14 20:18:11', '2022-11-14 20:18:11', 2, '', '', NULL, 1, NULL, NULL),
(87, 426, 'krkrishnan20@gmail.com', 'USDT', '39.300000', '2022-11-14 20:30:49', '2022-11-14 20:30:49', 2, '', '', NULL, 1, NULL, NULL),
(88, 426, 'krkrishnan20@gmail.com', 'USDT', '39.300000', '2022-11-14 20:30:54', '2022-11-14 20:30:54', 2, '', '', NULL, 1, NULL, NULL),
(89, 426, 'krkrishnan20@gmail.com', 'USDT', '39.300000', '2022-11-14 20:30:56', '2022-11-14 20:30:56', 2, '', '', NULL, 1, NULL, NULL),
(90, 423, '9555579399', 'USDT', '23.330000', '2022-11-14 21:52:31', '2022-11-14 21:52:31', 2, '', '', NULL, 1, NULL, NULL),
(91, 312, '18282@qq.com', 'USDT', '100.000000', '2022-11-14 22:25:31', '0000-00-00 00:00:00', 1, '63724fd9d2293.png', '', NULL, 0, 'TRLXXkW6mGNkb4TDH53iS1myWKVN31sJJ9', NULL),
(92, 312, '18282@qq.com', 'USDT', '100.000000', '2022-11-14 22:33:49', '0000-00-00 00:00:00', 1, '637251cc1b0b6.png', '', '', 0, 'TRLXXkW6mGNkb4TDH53iS1myWKVN31sJJ9', NULL),
(93, 312, '18282@qq.com', 'USDT', '100.000000', '2022-11-14 22:37:32', '0000-00-00 00:00:00', 1, '637252a97fc55.png', '', 'TRC20', 0, 'TRLXXkW6mGNkb4TDH53iS1myWKVN31sJJ9', NULL),
(94, 312, '18282@qq.com', 'USDT', '111.000000', '2022-11-14 22:38:55', '0000-00-00 00:00:00', 1, '637252fde566c.jpg', '', 'TRC20', 0, 'TRLXXkW6mGNkb4TDH53iS1myWKVN31sJJ9', NULL),
(95, 421, '9663561432', 'USDT', '402.000000', '2022-11-14 22:44:50', '2022-11-14 22:44:50', 2, '', '', NULL, 1, NULL, NULL),
(96, 422, '8951114260', 'USDT', '401.000000', '2022-11-14 22:45:19', '2022-11-14 22:45:19', 2, '', '', NULL, 1, NULL, NULL),
(97, 434, 'ravi7000raj7@gmail.com', 'USDT', '220.000000', '2022-11-14 23:21:32', '2022-11-14 23:21:32', 2, '', '', NULL, 1, NULL, NULL),
(98, 333, '陈总333', 'USDT', '10000.000000', '2022-11-15 00:13:49', '2022-11-15 00:13:49', 2, '', '', NULL, 1, NULL, NULL),
(99, 313, '1222222@qq.com', 'USDT', '100.000000', '2022-11-15 10:57:10', '0000-00-00 00:00:00', 1, '637300043bf61.png', '', 'TRC20', 0, 'TRLXXkW6mGNkb4TDH53iS1myWKVN31sJJ9', NULL),
(100, 381, '9985987232', 'USDT', '160.000000', '2022-11-15 11:49:03', '2022-11-15 13:59:54', 2, '63730c2a9c880.jpeg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(101, 381, '9985987232', 'USDT', '159.200000', '2022-11-15 13:58:28', '2022-11-15 13:58:28', 2, '', '', NULL, 1, NULL, NULL),
(102, 441, '9840607880', 'USDT', '150.000000', '2022-11-15 14:51:21', '2022-11-15 14:51:21', 2, '', '', NULL, 1, NULL, NULL),
(103, 439, '8882588155', 'USDT', '97.000000', '2022-11-15 15:12:29', '2022-11-15 15:12:29', 2, '', '', NULL, 1, NULL, NULL),
(104, 436, '9994265055', 'USDT', '9.500000', '2022-11-15 15:13:40', '2022-11-15 15:13:40', 2, '', '', NULL, 1, NULL, NULL),
(105, 440, '9823606692', 'USDT', '100.200000', '2022-11-15 15:51:46', '2022-11-15 15:51:46', 2, '', '', NULL, 1, NULL, NULL),
(106, 437, 'kaluvala.123n@gmail.com', 'USDT', '110.000000', '2022-11-15 15:52:14', '2022-11-15 15:52:14', 2, '', '', NULL, 1, NULL, NULL),
(107, 448, 'vinimaheshwari1402@gmail.com', 'USDT', '80.000000', '2022-11-15 20:33:03', '2022-11-15 20:33:03', 2, '', '', NULL, 1, NULL, NULL),
(108, 446, '8790558251', 'USDT', '1265.000000', '2022-11-15 20:33:29', '2022-11-15 20:33:29', 2, '', '', NULL, 1, NULL, NULL),
(109, 444, 'itsmydummy023@gmail.com', 'USDT', '23.000000', '2022-11-15 22:20:01', '2022-11-15 22:20:01', 2, '', '', NULL, 1, NULL, NULL),
(110, 444, 'itsmydummy023@gmail.com', 'USDT', '502.000000', '2022-11-16 00:11:38', '2022-11-16 00:13:00', 2, '6373ba30a0bd0.png', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(111, 444, 'itsmydummy023@gmail.com', 'USDT', '501.200000', '2022-11-16 00:14:14', '2022-11-16 00:14:14', 2, '', '', NULL, 1, NULL, NULL),
(112, 444, 'itsmydummy023@gmail.com', 'USDT', '100.000000', '2022-11-16 15:39:46', '2022-11-16 15:39:46', 2, '', '', NULL, 1, NULL, NULL),
(113, 444, 'itsmydummy023@gmail.com', 'USDT', '2500.000000', '2022-11-16 17:04:25', '2022-11-16 17:04:25', 2, '', '', NULL, 1, NULL, NULL),
(114, 427, '9937557307', 'USDT', '20.000000', '2022-11-16 18:27:20', '2022-11-16 18:27:20', 2, '', '', NULL, 1, NULL, NULL),
(115, 440, '9823606692', 'USDT', '64.200000', '2022-11-16 21:48:25', '2022-11-16 21:48:25', 2, '', '', NULL, 1, NULL, NULL),
(116, 427, '9937557307', 'USDT', '31.540000', '2022-11-16 22:49:51', '2022-11-16 22:49:51', 2, '', '', NULL, 1, NULL, NULL),
(117, 311, '2323@qq.com', 'USDT', '1.000000', '2022-11-16 23:05:14', '0000-00-00 00:00:00', 1, '6374fc26dd357.png', '', 'TRC20', 0, 'TBvWccpVpeCV51XWVb4LRmyVKAnYSCzc1S', NULL),
(118, 381, '9985987232', 'USDT', '200.000000', '2022-11-17 00:00:47', '2022-11-17 00:00:47', 2, '', '', NULL, 1, NULL, NULL),
(119, 440, '9823606692', 'USDT', '104.200000', '2022-11-17 14:00:10', '0000-00-00 00:00:00', 1, '6375cde6bb5ec.jpeg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(120, 440, '9823606692', 'USDT', '104.200000', '2022-11-17 14:01:46', '2022-11-17 14:01:46', 2, '', '', NULL, 1, NULL, NULL),
(121, 440, '9823606692', 'USDT', '300.000000', '2022-11-17 16:45:08', '2022-11-17 16:49:41', 2, '6375f490a56e6.png', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(122, 440, '9823606692', 'USDT', '299.200000', '2022-11-17 16:50:20', '2022-11-17 16:50:20', 2, '', '', NULL, 1, NULL, NULL),
(123, 287, '王总287', 'USDT', '10000.000000', '2022-11-17 20:25:33', '2022-11-17 20:25:33', 2, '', '', NULL, 1, NULL, NULL),
(124, 455, 'Achugatlavenkat5678@gmail.com', 'BTC', '201.960000', '2022-11-17 22:03:25', '2022-11-17 22:06:44', 2, '63763f28b10b6.jpg', '', 'Bitcoin', 0, '15tvArU26A3dYf9A923xUE3Cyoj2eSbNgG', NULL),
(125, 440, '9823606692', 'USDT', '300.000000', '2022-11-17 23:40:41', '2022-11-17 23:40:41', 2, '', '', NULL, 1, NULL, NULL),
(126, 448, 'vinimaheshwari1402@gmail.com', 'USDT', '999.200000', '2022-11-18 14:50:01', '2022-11-18 14:55:55', 2, '63772b090decb.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(127, 465, '9878352277', 'USDT', '100.000000', '2022-11-18 15:23:00', '2022-11-18 15:23:00', 2, '', '', NULL, 1, NULL, NULL),
(128, 472, 'shaiq123@gmail.com', 'USDT', '100.000000', '2022-11-18 15:25:52', '2022-11-18 15:25:52', 2, '', '', NULL, 1, NULL, NULL),
(129, 474, '9191916667', 'USDT', '10000.000000', '2022-11-18 16:47:48', '2022-11-18 16:47:48', 2, '', '', NULL, 1, NULL, NULL),
(130, 475, '9191916668', 'USDT', '10000.000000', '2022-11-18 16:48:10', '2022-11-18 16:48:10', 2, '', '', NULL, 1, NULL, NULL),
(131, 476, '9191916669', 'USDT', '10000.000000', '2022-11-18 16:48:24', '2022-11-18 16:48:24', 2, '', '', NULL, 1, NULL, NULL),
(132, 455, 'Achugatlavenkat5678@gmail.com', 'USDT', '201.960000', '2022-11-18 17:42:13', '2022-11-18 17:42:13', 2, '', '', NULL, 1, NULL, NULL),
(133, 465, '9878352277', 'USDT', '345.300000', '2022-11-18 17:52:59', '2022-11-18 17:55:14', 2, '637755f264991.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(134, 472, 'shaiq123@gmail.com', 'USDT', '100.000000', '2022-11-18 20:27:01', '2022-11-18 20:27:01', 2, '', '', NULL, 1, NULL, NULL),
(135, 488, 'kalaidasan.060@gmail.com', 'USDT', '54000.000000', '2022-11-18 21:49:51', '2022-11-18 21:49:51', 2, '', '', NULL, 1, NULL, NULL),
(136, 469, 'neelimatabjul@gmail.com', 'USDT', '114.000000', '2022-11-18 22:06:39', '2022-11-18 22:10:55', 2, '63779067c4a88.jpeg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(137, 167, '13888888888', 'USDT', '10000.000000', '2022-11-19 13:50:14', '2022-11-19 13:50:14', 2, '', '', NULL, 1, NULL, NULL),
(138, 387, '9966775767', 'USDT', '1010.000000', '2022-11-19 14:37:19', '2022-11-19 14:37:19', 2, '', '', NULL, 1, NULL, NULL),
(139, 448, 'vinimaheshwari1402@gmail.com', 'USDT', '399.200000', '2022-11-19 14:54:30', '2022-11-19 15:38:00', 2, '63787d86c51db.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(140, 448, 'vinimaheshwari1402@gmail.com', 'USDT', '4100.000000', '2022-11-19 14:58:59', '2022-11-19 14:58:59', 2, '', '', NULL, 1, NULL, NULL),
(141, 448, 'vinimaheshwari1402@gmail.com', 'USDT', '482.800000', '2022-11-19 15:02:26', '2022-11-19 15:02:26', 2, '', '', NULL, 1, NULL, NULL),
(142, 448, 'vinimaheshwari1402@gmail.com', 'USDT', '17.200000', '2022-11-19 15:03:24', '2022-11-19 15:03:24', 2, '', '', NULL, 1, NULL, NULL),
(143, 167, '13888888888', 'USDT', '10000.000000', '2022-11-19 19:46:03', '2022-11-19 19:46:03', 2, '', '', NULL, 1, NULL, NULL),
(144, 440, '9823606692', 'USDT', '305.000000', '2022-11-19 21:02:18', '2022-11-19 21:16:03', 2, '6378d3d84161c.png', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(145, 469, 'neelimatabjul@gmail.com', 'USDT', '114.200000', '2022-11-19 21:21:54', '2022-11-19 21:25:57', 2, '6378d83d4e791.png', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(146, 497, 'satish_eng2007@rediffmail.com', 'USDT', '114.460000', '2022-11-19 21:35:51', '2022-11-19 21:35:51', 2, '', '', NULL, 1, NULL, NULL),
(147, 469, 'neelimatabjul@gmail.com', 'USDT', '44.200000', '2022-11-19 21:43:50', '2022-11-19 21:45:19', 2, '6378dd9271665.png', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(148, 472, 'shaiq123@gmail.com', 'USDT', '200.000000', '2022-11-19 21:58:58', '2022-11-19 22:16:44', 2, '6378e11b23c61.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(149, 387, '9966775767', 'USDT', '980.930000', '2022-11-20 19:16:09', '2022-11-20 19:16:09', 2, '', '', NULL, 1, NULL, NULL),
(150, 167, '13888888888', 'USDT', '10000.000000', '2022-11-21 00:09:43', '2022-11-21 00:09:43', 2, '', '', NULL, 1, NULL, NULL),
(151, 387, '9966775767', 'USDT', '3000.000000', '2022-11-21 15:28:16', '2022-11-21 15:28:16', 2, '', '', NULL, 1, NULL, NULL),
(152, 472, 'shaiq123@gmail.com', 'USDT', '1140.510000', '2022-11-21 20:52:03', '2022-11-21 21:05:33', 2, '637b746a0f734.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(153, 440, '9823606692', 'USDT', '52.000000', '2022-11-21 22:50:20', '2022-11-21 22:53:34', 2, '637b9029e7a91.jpeg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(154, 495, '9448117712', 'USDT', '50.200000', '2022-11-21 23:48:29', '2022-11-21 23:55:01', 2, '637b9dae8e011.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(155, 381, '9985987232', 'USDT', '160.000000', '2022-11-22 14:12:20', '0000-00-00 00:00:00', 1, '637c683fdb3c7.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(156, 452, '9599900087', 'USDT', '677.360000', '2022-11-22 15:23:28', '2022-11-22 15:23:28', 2, '', '', NULL, 1, NULL, NULL),
(157, 469, 'neelimatabjul@gmail.com', 'USDT', '114.010000', '2022-11-22 21:48:22', '0000-00-00 00:00:00', 1, '637cd31a5e1a5.png', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(158, 469, 'neelimatabjul@gmail.com', 'USDT', '113.210000', '2022-11-22 22:25:42', '2022-11-22 22:34:58', 2, '637cdb2ade0d5.png', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(159, 497, 'satish_eng2007@rediffmail.com', 'USDT', '113.180000', '2022-11-22 23:25:22', '2022-11-22 23:51:24', 2, '637ce9d346cb7.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(160, 469, 'neelimatabjul@gmail.com', 'USDT', '455.000000', '2022-11-23 00:26:40', '2022-11-23 00:30:42', 2, '637cf83d6e970.png', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(161, 393, '8888883', 'USDT', '10000.000000', '2022-11-23 15:10:38', '2022-11-23 15:10:38', 2, '', '', NULL, 1, NULL, NULL),
(162, 433, 'ruhilrs@yahoo.co.in', 'USDT', '1138.150000', '2022-11-23 16:44:48', '2022-11-23 16:47:41', 2, '637ddd774c994.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(163, 433, 'ruhilrs@yahoo.co.in', 'USDT', '2000.000000', '2022-11-23 18:05:03', '2022-11-23 18:05:03', 2, '', '', NULL, 1, NULL, NULL),
(164, 180, '444444@qq.com', 'USDT', '1.000000', '2022-11-23 22:30:15', '2022-11-23 23:53:54', 1, '637e2e7619ec7.gif', '', 'TRC20', 0, 'TJJ4y5Rgz2xHTb9yQNzmPMjYVo1uitfrBV', NULL),
(165, 535, '918446568966', 'USDT', '10000.000000', '2022-11-23 23:52:01', '2022-11-23 23:52:01', 2, '', '', NULL, 1, NULL, NULL),
(166, 534, '919893777866', 'USDT', '10000.000000', '2022-11-23 23:52:22', '2022-11-23 23:52:22', 2, '', '', NULL, 1, NULL, NULL),
(167, 533, '919579900666', 'USDT', '10000.000000', '2022-11-23 23:52:41', '2022-11-23 23:52:41', 2, '', '', NULL, 1, NULL, NULL),
(168, 532, '917775000889', 'USDT', '10000.000000', '2022-11-23 23:52:55', '2022-11-23 23:52:55', 2, '', '', NULL, 1, NULL, NULL),
(169, 531, '919323025678', 'USDT', '10000.000000', '2022-11-23 23:53:10', '2022-11-23 23:53:10', 2, '', '', NULL, 1, NULL, NULL),
(170, 530, '919767134999', 'USDT', '10000.000000', '2022-11-23 23:53:21', '2022-11-23 23:53:21', 2, '', '', NULL, 1, NULL, NULL),
(171, 529, '918976792999', 'USDT', '10000.000000', '2022-11-23 23:53:35', '2022-11-23 23:53:35', 2, '', '', NULL, 1, NULL, NULL),
(172, 528, '919995236888', 'USDT', '10000.000000', '2022-11-23 23:53:48', '2022-11-23 23:53:48', 2, '', '', NULL, 1, NULL, NULL),
(173, 527, '919940568487', 'USDT', '10000.000000', '2022-11-23 23:54:04', '2022-11-23 23:54:04', 2, '', '', NULL, 1, NULL, NULL),
(174, 521, '919313323538', 'USDT', '10000.000000', '2022-11-23 23:54:12', '2022-11-23 23:54:12', 2, '', '', NULL, 1, NULL, NULL),
(175, 523, '919868766777', 'USDT', '10000.000000', '2022-11-23 23:54:30', '2022-11-23 23:54:30', 2, '', '', NULL, 1, NULL, NULL),
(176, 524, '91984917', 'USDT', '10000.000000', '2022-11-23 23:54:42', '2022-11-23 23:54:42', 2, '', '', NULL, 1, NULL, NULL),
(177, 526, '919873431388', 'USDT', '10000.000000', '2022-11-23 23:54:54', '2022-11-23 23:54:54', 2, '', '', NULL, 1, NULL, NULL),
(178, 525, '919849176898', 'USDT', '10000.000000', '2022-11-23 23:55:05', '2022-11-23 23:55:05', 2, '', '', NULL, 1, NULL, NULL),
(179, 520, '919711265689', 'USDT', '10000.000000', '2022-11-23 23:55:29', '2022-11-23 23:55:29', 2, '', '', NULL, 1, NULL, NULL),
(180, 519, '919833221168', 'USDT', '10000.000000', '2022-11-23 23:55:38', '2022-11-23 23:55:38', 2, '', '', NULL, 1, NULL, NULL),
(181, 518, '919958125566', 'USDT', '10000.000000', '2022-11-23 23:56:01', '2022-11-23 23:56:01', 2, '', '', NULL, 1, NULL, NULL),
(182, 516, 'dong001', 'USDT', '10000.000000', '2022-11-23 23:56:52', '2022-11-23 23:56:52', 2, '', '', NULL, 1, NULL, NULL),
(183, 469, 'neelimatabjul@gmail.com', 'USDT', '9739.810000', '2022-11-23 23:57:03', '2022-11-24 00:00:51', 2, '637e42bd9e704.png', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(184, 517, '919899847869', 'USDT', '10000.000000', '2022-11-23 23:57:04', '2022-11-23 23:57:04', 2, '', '', NULL, 1, NULL, NULL),
(185, 180, '444444@qq.com', 'USDT', '1.000000', '2022-11-24 00:04:02', '2022-11-24 00:06:56', 2, '637e447012c6f.jpeg', '', 'TRC20', 0, 'TJJ4y5Rgz2xHTb9yQNzmPMjYVo1uitfrBV', 'd181ebb9d0c4941e838247d4de12e550eaa383a9b0fa558e847ec5726ab91e8b'),
(186, 180, '444444@qq.com', 'USDT', '1.000000', '2022-11-24 00:14:54', '2022-11-24 00:16:03', 2, '637e46fcd9148.jpeg', '', 'TRC20', 0, 'TJJ4y5Rgz2xHTb9yQNzmPMjYVo1uitfrBV', '659a4197f192cf2c1d9c18c43805007a3674b40ce70ae210c4b7046d6ca32b9f'),
(187, 536, '1234554321', 'USDT', '1.000000', '2022-11-24 00:31:16', '0000-00-00 00:00:00', 1, '637e4ad104b8f.jpeg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(188, 180, '444444@qq.com', 'USDT', '2.000000', '2022-11-24 00:36:32', '0000-00-00 00:00:00', 1, '637e4c0276493.png', '', 'TRC20', 0, 'TJJ4y5Rgz2xHTb9yQNzmPMjYVo1uitfrBV', NULL),
(189, 180, '444444@qq.com', 'USDT', '1.000000', '2022-11-24 00:36:45', '2022-11-24 00:39:56', 2, '637e4c1a31f7e.png', '', 'TRC20', 0, 'TJJ4y5Rgz2xHTb9yQNzmPMjYVo1uitfrBV', '9fef49c9251fc663d222cf351fd93fe904fab8f47d97b292cff653c9751dd167'),
(190, 536, '1234554321', 'USDT', '1.100000', '2022-11-24 00:47:59', '2022-11-24 00:48:01', 2, '637e4eb9c765a.jpeg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', '2ad7798a34273e0267d6286cd327374e97ba324d0c4e650347f5420b42c73dee'),
(191, 180, '444444@qq.com', 'USDT', '1.120000', '2022-11-24 00:56:07', '2022-11-24 00:57:02', 2, '637e50a62e176.gif', '', 'TRC20', 0, 'TJJ4y5Rgz2xHTb9yQNzmPMjYVo1uitfrBV', 'dcdc71f0dae0f133430d8fea8907719b6d858d5b08eba668a8c6ba3fe8df7c69'),
(192, 180, '444444@qq.com', 'USDT', '1.130000', '2022-11-24 00:59:45', '2022-11-24 01:08:01', 2, '637e51806d798.jpeg', '', 'TRC20', 0, 'TJJ4y5Rgz2xHTb9yQNzmPMjYVo1uitfrBV', 'ef5205b78f9b600e1ce75d87ba760c30c9b10477adc5b111b3999043b54dd9f6'),
(193, 543, '123123', 'USDT', '10000.000000', '2022-11-24 17:36:13', '2022-11-24 17:36:13', 2, '', '', NULL, 1, NULL, NULL),
(194, 522, 'himanshusahoo83@gmail.com', 'USDT', '200.500000', '2022-11-24 19:24:20', '2022-11-24 19:25:02', 2, '637f54236e9bc.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', '990087d24eb0b0bccec1632df5152093d28609baa34ea5cadaa3df291c7cfb59'),
(195, 545, 'saranvr15@gmail.com', 'USDT', '799.000000', '2022-11-25 13:34:58', '0000-00-00 00:00:00', 1, '638053feed475.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(196, 545, 'saranvr15@gmail.com', 'USDT', '798.280000', '2022-11-25 14:04:26', '2022-11-25 14:04:26', 2, '', '', NULL, 1, NULL, NULL),
(197, 472, 'shaiq123@gmail.com', 'USDT', '1002.000000', '2022-11-25 14:36:28', '2022-11-25 14:37:02', 2, '63806264f1970.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', '7d4b7ef056ff548bc478f94a27405e33ae857dfe2de558218a4b2f2adddcdc23'),
(198, 453, '9013382710', 'USDT', '169.200000', '2022-11-25 15:26:53', '2022-11-25 15:27:01', 2, '63806dd5552cb.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', '3c736a2bc16916fddb9c86a190781e70b7092849bd88196ba548daf82e930cc7'),
(199, 473, '8800592589', 'USDT', '70.000000', '2022-11-25 18:53:49', '2022-11-25 19:32:45', 2, '63809eb9423e4.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(200, 473, '8800592589', 'USDT', '50.000000', '2022-11-26 14:52:01', '2022-11-26 15:00:06', 2, '6381b78c37887.jpg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(201, 441, '9840607880', 'USDT', '2002.200000', '2022-11-26 17:34:03', '2022-11-26 17:35:02', 2, '6381dd271a72a.png', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', '6fe399cb022bf4bd26405909d1c2daa602a18f5a37887065bfbb68333192c7e0'),
(202, 439, '8882588155', 'USDT', '112.000000', '2022-11-26 20:23:20', '2022-11-26 20:36:18', 2, '6382053050d0e.jpg', '', 'TRC20', 0, 'TVqXJsrDJLwr1LdTTidg98u2qdcWyBze3Z', NULL),
(203, 439, '8882588155', 'USDT', '1000.000000', '2022-11-26 20:36:40', '2022-11-26 20:36:40', 2, '', '', NULL, 1, NULL, NULL),
(204, 551, '0995995995', 'USDT', '1000.000000', '2023-09-01 12:45:38', '2023-09-01 12:47:49', 2, '64f16c7201b6a.jpeg', '', 'TRC20', 0, 'TEwtmUXttCG9YaYtfhU8d7quKneQuPkFTR', NULL),
(205, 551, '0995995995', 'USDT', '2000.000000', '2023-09-01 12:46:28', '2023-09-01 12:46:28', 2, '', '', NULL, 1, NULL, NULL),
(206, 552, '0911223344', 'USDT', '10000.000000', '2023-09-01 12:57:45', '2023-09-01 12:57:45', 2, '', '', NULL, 1, NULL, NULL),
(207, 553, '0868450300', 'USDT', '10000.000000', '2023-09-01 12:59:59', '2023-09-01 13:00:53', 2, '64f16fce06df9.jpeg', '', 'TRC20', 0, 'TFxnxEBbCiMCJGYtYcALevD3rZ9W6s7zAL', NULL),
(208, 554, '0978123123', 'USDT', '10000.000000', '2023-09-01 13:16:44', '2023-09-01 13:16:44', 2, '', '', NULL, 1, NULL, NULL),
(209, 555, '0876612347', 'USDT', '10000.000000', '2023-09-01 19:29:44', '2023-09-01 19:29:44', 2, '', '', NULL, 1, NULL, NULL),
(210, 555, '0876612347', 'USDT', '5000.000000', '2023-09-01 19:30:07', '2023-09-01 19:30:46', 3, '64f1cb3dc853a.jpeg', '', 'TRC20', 0, 'TFxnxEBbCiMCJGYtYcALevD3rZ9W6s7zAL', NULL),
(211, 553, '0868450300', 'USDT', '20.830000', '2023-09-03 11:10:05', '2023-09-03 11:11:03', 2, '64f3f90b8a8bb.png', '', 'NGUYỄN VĂN A', 0, '734627723', NULL),
(212, 553, '0868450300', 'USDT', '20.830000', '2023-09-03 11:10:15', '2023-09-03 17:24:41', 2, '64f3f91621ad0.png', '', 'NGUYỄN VĂN A', 0, '734627723', NULL),
(213, 554, '0978123123', 'USDT', '10000.000000', '2023-09-05 03:53:46', '2023-09-05 03:53:46', 2, '', '', NULL, 1, NULL, NULL),
(214, 554, '0978123123', 'USDT', '50000.000000', '2023-09-06 22:43:27', '2023-09-06 22:43:27', 2, '', '', NULL, 1, NULL, NULL),
(215, 560, '0935353586', 'USDT', '2.500000', '2023-09-08 01:18:31', '2023-09-08 01:19:25', 2, '64fa05e65dc0e.jpg', '', 'TRC20', 0, 'TM9oGYXGYkJUUfKmg2drrPPHyzsbnVnRU8', NULL),
(216, 560, '0935353586', 'USDT', '6250.000000', '2023-09-08 01:26:27', '2023-09-08 01:28:31', 2, '64fa07c0d923c.jpg', '', 'TRC20', 0, 'TFxnxEBbCiMCJGYtYcALevD3rZ9W6s7zAL', NULL),
(217, 554, '0978123123', 'USDT', '100.000000', '2023-09-08 19:54:23', '2023-09-08 19:55:14', 2, '64fb0b6e56b52.jpeg', '', 'HA VAN MEN', 0, '1032084171', NULL),
(218, 566, '4048844594', 'USDT', '1200.000000', '2023-09-09 00:31:14', '2023-09-09 00:31:14', 2, '', '', NULL, 1, NULL, NULL),
(219, 552, '0911223344', 'BTC', '50.000000', '2023-09-13 12:37:07', '0000-00-00 00:00:00', 1, '65013c725756d.jpg', '', 'Bitcoin', 0, 'bc1qqq03zf48ed2uyqjt68sletdg62f64x6gvzt426', NULL),
(220, 576, '0123456', 'USDT', '416.670000', '2023-09-29 21:06:17', '2023-09-29 21:09:40', 2, '6516cbc803ca6.png', '', 'HA VAN MEN', 0, '1032084171', NULL),
(221, 577, 'giahuy16111995@gmail.com', 'USDT', '10.000000', '2023-09-29 21:50:44', '2023-09-29 21:50:44', 2, '', '', NULL, 1, NULL, NULL),
(222, 576, '0123456', 'USDT', '4166.670000', '2023-09-29 22:16:10', '2023-09-29 22:16:46', 2, '6516dc2a0789d.png', '', 'HA VAN MEN', 0, '1032084171', NULL),
(223, 622, 'xiaozhong@gmail.com', 'USDT', '100.000000', '2023-09-30 15:44:30', '2023-09-30 15:44:30', 2, '', '', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_trade`
--

CREATE TABLE `tw_trade` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `num` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `deal` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='交易下单表' ROW_FORMAT=DYNAMIC
PARTITION BY RANGE (id)
(
PARTITION p1 VALUES LESS THAN (500000) ENGINE=MyISAM,
PARTITION p2 VALUES LESS THAN (1000000) ENGINE=MyISAM,
PARTITION p3 VALUES LESS THAN (1500000) ENGINE=MyISAM,
PARTITION p4 VALUES LESS THAN (2000000) ENGINE=MyISAM,
PARTITION p5 VALUES LESS THAN (2500000) ENGINE=MyISAM,
PARTITION p6 VALUES LESS THAN (3000000) ENGINE=MyISAM,
PARTITION p7 VALUES LESS THAN (3500000) ENGINE=MyISAM,
PARTITION p8 VALUES LESS THAN (4000000) ENGINE=MyISAM,
PARTITION p9 VALUES LESS THAN (4500000) ENGINE=MyISAM,
PARTITION p10 VALUES LESS THAN (5000000) ENGINE=MyISAM,
PARTITION p11 VALUES LESS THAN (5500000) ENGINE=MyISAM,
PARTITION p12 VALUES LESS THAN (6000000) ENGINE=MyISAM,
PARTITION p13 VALUES LESS THAN (6500000) ENGINE=MyISAM,
PARTITION p14 VALUES LESS THAN (7000000) ENGINE=MyISAM,
PARTITION p15 VALUES LESS THAN (7500000) ENGINE=MyISAM,
PARTITION p16 VALUES LESS THAN (8000000) ENGINE=MyISAM,
PARTITION p17 VALUES LESS THAN (8500000) ENGINE=MyISAM,
PARTITION p18 VALUES LESS THAN (9000000) ENGINE=MyISAM,
PARTITION p19 VALUES LESS THAN (9500000) ENGINE=MyISAM,
PARTITION p20 VALUES LESS THAN (10000000) ENGINE=MyISAM,
PARTITION p21 VALUES LESS THAN (10500000) ENGINE=MyISAM,
PARTITION p22 VALUES LESS THAN (11000000) ENGINE=MyISAM,
PARTITION p23 VALUES LESS THAN (11500000) ENGINE=MyISAM,
PARTITION p24 VALUES LESS THAN (12000000) ENGINE=MyISAM,
PARTITION p25 VALUES LESS THAN (12500000) ENGINE=MyISAM,
PARTITION p26 VALUES LESS THAN (13000000) ENGINE=MyISAM,
PARTITION p27 VALUES LESS THAN (13500000) ENGINE=MyISAM,
PARTITION p28 VALUES LESS THAN (14000000) ENGINE=MyISAM,
PARTITION p29 VALUES LESS THAN (14500000) ENGINE=MyISAM,
PARTITION p30 VALUES LESS THAN (15000000) ENGINE=MyISAM,
PARTITION p31 VALUES LESS THAN (15500000) ENGINE=MyISAM,
PARTITION p32 VALUES LESS THAN (16000000) ENGINE=MyISAM,
PARTITION p33 VALUES LESS THAN (16500000) ENGINE=MyISAM,
PARTITION p34 VALUES LESS THAN (17000000) ENGINE=MyISAM,
PARTITION p35 VALUES LESS THAN (17500000) ENGINE=MyISAM,
PARTITION p36 VALUES LESS THAN (18000000) ENGINE=MyISAM,
PARTITION p37 VALUES LESS THAN (18500000) ENGINE=MyISAM,
PARTITION p38 VALUES LESS THAN (19000000) ENGINE=MyISAM,
PARTITION p39 VALUES LESS THAN (19500000) ENGINE=MyISAM,
PARTITION p40 VALUES LESS THAN (20000000) ENGINE=MyISAM,
PARTITION p41 VALUES LESS THAN (20500000) ENGINE=MyISAM,
PARTITION p42 VALUES LESS THAN (21000000) ENGINE=MyISAM,
PARTITION p43 VALUES LESS THAN (21500000) ENGINE=MyISAM,
PARTITION p44 VALUES LESS THAN (22000000) ENGINE=MyISAM,
PARTITION p45 VALUES LESS THAN (22500000) ENGINE=MyISAM,
PARTITION p46 VALUES LESS THAN (23000000) ENGINE=MyISAM,
PARTITION p47 VALUES LESS THAN (23500000) ENGINE=MyISAM,
PARTITION p48 VALUES LESS THAN (24000000) ENGINE=MyISAM,
PARTITION p49 VALUES LESS THAN (24500000) ENGINE=MyISAM,
PARTITION p50 VALUES LESS THAN (25000000) ENGINE=MyISAM,
PARTITION p51 VALUES LESS THAN (25500000) ENGINE=MyISAM,
PARTITION p52 VALUES LESS THAN (26000000) ENGINE=MyISAM,
PARTITION p53 VALUES LESS THAN (26500000) ENGINE=MyISAM,
PARTITION p54 VALUES LESS THAN (27000000) ENGINE=MyISAM,
PARTITION p55 VALUES LESS THAN (27500000) ENGINE=MyISAM,
PARTITION p56 VALUES LESS THAN (28000000) ENGINE=MyISAM,
PARTITION p57 VALUES LESS THAN (28500000) ENGINE=MyISAM,
PARTITION p58 VALUES LESS THAN (29000000) ENGINE=MyISAM,
PARTITION p59 VALUES LESS THAN (30000000) ENGINE=MyISAM,
PARTITION p60 VALUES LESS THAN (30500000) ENGINE=MyISAM,
PARTITION p61 VALUES LESS THAN (31000000) ENGINE=MyISAM,
PARTITION p62 VALUES LESS THAN (31500000) ENGINE=MyISAM,
PARTITION p63 VALUES LESS THAN (32000000) ENGINE=MyISAM,
PARTITION p64 VALUES LESS THAN (32500000) ENGINE=MyISAM,
PARTITION p65 VALUES LESS THAN (33000000) ENGINE=MyISAM,
PARTITION p66 VALUES LESS THAN (33500000) ENGINE=MyISAM,
PARTITION p67 VALUES LESS THAN (34000000) ENGINE=MyISAM,
PARTITION p68 VALUES LESS THAN (34500000) ENGINE=MyISAM,
PARTITION p69 VALUES LESS THAN (35000000) ENGINE=MyISAM,
PARTITION p70 VALUES LESS THAN (35500000) ENGINE=MyISAM,
PARTITION p71 VALUES LESS THAN (36000000) ENGINE=MyISAM,
PARTITION p72 VALUES LESS THAN (36500000) ENGINE=MyISAM,
PARTITION p73 VALUES LESS THAN (37000000) ENGINE=MyISAM,
PARTITION p74 VALUES LESS THAN (37500000) ENGINE=MyISAM,
PARTITION p75 VALUES LESS THAN (38000000) ENGINE=MyISAM,
PARTITION p76 VALUES LESS THAN (38500000) ENGINE=MyISAM,
PARTITION p77 VALUES LESS THAN (39000000) ENGINE=MyISAM,
PARTITION p78 VALUES LESS THAN (39500000) ENGINE=MyISAM,
PARTITION p79 VALUES LESS THAN (40000000) ENGINE=MyISAM,
PARTITION p80 VALUES LESS THAN (40500000) ENGINE=MyISAM,
PARTITION p81 VALUES LESS THAN (41000000) ENGINE=MyISAM,
PARTITION p82 VALUES LESS THAN (41500000) ENGINE=MyISAM,
PARTITION p83 VALUES LESS THAN (42000000) ENGINE=MyISAM,
PARTITION p84 VALUES LESS THAN (42500000) ENGINE=MyISAM,
PARTITION p85 VALUES LESS THAN (43000000) ENGINE=MyISAM,
PARTITION p86 VALUES LESS THAN (43500000) ENGINE=MyISAM,
PARTITION p87 VALUES LESS THAN (44000000) ENGINE=MyISAM,
PARTITION p88 VALUES LESS THAN (44500000) ENGINE=MyISAM,
PARTITION p89 VALUES LESS THAN (45000000) ENGINE=MyISAM,
PARTITION p90 VALUES LESS THAN (45500000) ENGINE=MyISAM,
PARTITION p91 VALUES LESS THAN (46000000) ENGINE=MyISAM,
PARTITION p92 VALUES LESS THAN (46500000) ENGINE=MyISAM,
PARTITION p93 VALUES LESS THAN (47000000) ENGINE=MyISAM,
PARTITION p94 VALUES LESS THAN (47500000) ENGINE=MyISAM,
PARTITION p95 VALUES LESS THAN (48000000) ENGINE=MyISAM,
PARTITION p96 VALUES LESS THAN (48500000) ENGINE=MyISAM,
PARTITION p97 VALUES LESS THAN (49000000) ENGINE=MyISAM,
PARTITION p98 VALUES LESS THAN (49500000) ENGINE=MyISAM,
PARTITION p99 VALUES LESS THAN (50000000) ENGINE=MyISAM,
PARTITION p100 VALUES LESS THAN (50500000) ENGINE=MyISAM,
PARTITION p101 VALUES LESS THAN (51000000) ENGINE=MyISAM,
PARTITION p102 VALUES LESS THAN (51500000) ENGINE=MyISAM,
PARTITION p103 VALUES LESS THAN (52000000) ENGINE=MyISAM,
PARTITION p104 VALUES LESS THAN (52500000) ENGINE=MyISAM,
PARTITION p105 VALUES LESS THAN (53000000) ENGINE=MyISAM,
PARTITION p106 VALUES LESS THAN (53500000) ENGINE=MyISAM,
PARTITION p107 VALUES LESS THAN (54000000) ENGINE=MyISAM,
PARTITION p108 VALUES LESS THAN (54500000) ENGINE=MyISAM,
PARTITION p109 VALUES LESS THAN (55000000) ENGINE=MyISAM,
PARTITION p110 VALUES LESS THAN (55500000) ENGINE=MyISAM,
PARTITION p111 VALUES LESS THAN (56000000) ENGINE=MyISAM,
PARTITION p112 VALUES LESS THAN (56500000) ENGINE=MyISAM,
PARTITION p113 VALUES LESS THAN (57000000) ENGINE=MyISAM,
PARTITION p114 VALUES LESS THAN (57500000) ENGINE=MyISAM,
PARTITION p115 VALUES LESS THAN (58000000) ENGINE=MyISAM,
PARTITION p116 VALUES LESS THAN (58500000) ENGINE=MyISAM,
PARTITION p117 VALUES LESS THAN (59000000) ENGINE=MyISAM,
PARTITION p118 VALUES LESS THAN (59500000) ENGINE=MyISAM,
PARTITION p119 VALUES LESS THAN (60000000) ENGINE=MyISAM,
PARTITION p120 VALUES LESS THAN (60500000) ENGINE=MyISAM,
PARTITION p121 VALUES LESS THAN (61000000) ENGINE=MyISAM,
PARTITION p122 VALUES LESS THAN MAXVALUE ENGINE=MyISAM
);

--
-- Đang đổ dữ liệu cho bảng `tw_trade`
--

INSERT INTO `tw_trade` (`id`, `userid`, `market`, `price`, `num`, `deal`, `mum`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 0, 'MBN', '0.00000000', '757.93000000', '0.00000000', '757.93000000', 1, 0, 1667270790, 0, 1),
(2, 0, 'MBN', '0.00000000', '1502.90000000', '0.00000000', '1502.90000000', 1, 0, 1667270813, 0, 1),
(3, 0, 'MBN', '0.00000000', '2009.66000000', '0.00000000', '2009.66000000', 2, 0, 1667270813, 0, 1),
(4, 0, 'MBN', '0.00000000', '1419.17000000', '0.00000000', '1419.17000000', 2, 0, 1667270813, 0, 1),
(5, 0, 'MBN', '0.00000000', '1781.46000000', '0.00000000', '1781.46000000', 2, 0, 1667270829, 0, 1),
(6, 0, 'MBN', '0.00000000', '1446.98000000', '0.00000000', '1446.98000000', 1, 0, 1667270832, 0, 1),
(7, 0, 'MBN', '0.00000000', '2654.84000000', '0.00000000', '2654.84000000', 1, 0, 1667270832, 0, 1),
(8, 0, 'MBN', '0.00000000', '665.49000000', '0.00000000', '665.49000000', 2, 0, 1667273977, 0, 1),
(9, 0, 'MBN', '0.00000000', '2094.75000000', '0.00000000', '2094.75000000', 2, 0, 1667273977, 0, 1),
(10, 0, 'MBN', '0.00000000', '2872.60000000', '0.00000000', '2872.60000000', 1, 0, 1667273977, 0, 1),
(11, 0, 'MBN', '0.00000000', '1752.69000000', '0.00000000', '1752.69000000', 1, 0, 1667285974, 0, 1),
(12, 0, 'MBN', '0.00000000', '929.00000000', '0.00000000', '929.00000000', 1, 0, 1667285984, 0, 1),
(13, 0, 'MBN', '0.00000000', '1661.96000000', '0.00000000', '1661.96000000', 1, 0, 1667285986, 0, 1),
(14, 0, 'MBN', '0.00000000', '1943.74000000', '0.00000000', '1943.74000000', 2, 0, 1667288537, 0, 1),
(15, 0, 'MBN', '0.00000000', '890.96000000', '0.00000000', '890.96000000', 1, 0, 1667288537, 0, 1),
(16, 0, 'MBN', '66.00000000', '379.99000000', '0.00000000', '379.99000000', 1, 0, 1667288740, 0, 1),
(17, 0, 'MBN', '66.00000000', '2235.66000000', '0.00000000', '2235.66000000', 2, 0, 1667288743, 0, 1),
(18, 0, 'MBN', '66.00000000', '1448.96000000', '0.00000000', '1448.96000000', 1, 0, 1667289055, 0, 1),
(19, 0, 'MBN', '66.00000000', '1448.32000000', '0.00000000', '1448.32000000', 1, 0, 1667289055, 0, 1),
(20, 0, 'MBN', '66.00000000', '737.89000000', '0.00000000', '737.89000000', 1, 0, 1667289056, 0, 1),
(21, 0, 'MBN', '66.00000000', '2146.24000000', '0.00000000', '2146.24000000', 2, 0, 1667289056, 0, 1),
(22, 0, 'MBN', '66.00000000', '2478.28000000', '0.00000000', '2478.28000000', 1, 0, 1667289056, 0, 1),
(23, 0, 'MBN', '66.00000000', '1906.56000000', '0.00000000', '1906.56000000', 2, 0, 1667289056, 0, 1),
(24, 0, 'MBN', '66.00000000', '2084.15000000', '0.00000000', '2084.15000000', 2, 0, 1667289062, 0, 1),
(25, 0, 'MBN', '66.00000000', '1394.47000000', '0.00000000', '1394.47000000', 2, 0, 1667289236, 0, 1),
(26, 0, 'MBN', '66.00000000', '754.26000000', '0.00000000', '754.26000000', 1, 0, 1667289239, 0, 1),
(27, 0, 'MBN', '66.00000000', '1896.69000000', '0.00000000', '1896.69000000', 1, 0, 1667289239, 0, 1),
(28, 0, 'MBN', '66.00000000', '1374.89000000', '0.00000000', '1374.89000000', 2, 0, 1667289308, 0, 1),
(29, 0, 'MBN', '66.00000000', '936.24000000', '0.00000000', '936.24000000', 1, 0, 1667289379, 0, 1),
(30, 0, 'USDZ', '66.00000000', '2993.68000000', '0.00000000', '2993.68000000', 1, 0, 1667290622, 0, 1),
(31, 0, 'USDZ', '66.00000000', '1328.75000000', '0.00000000', '1328.75000000', 2, 0, 1667290623, 0, 1),
(32, 0, 'USDZ', '66.00000000', '899.05000000', '0.00000000', '899.05000000', 1, 0, 1667290623, 0, 1),
(33, 0, 'USDZ', '66.00000000', '384.46000000', '0.00000000', '384.46000000', 1, 0, 1667290632, 0, 1),
(34, 0, 'USDZ', '66.00000000', '1306.80000000', '0.00000000', '1306.80000000', 1, 0, 1667291587, 0, 1),
(35, 0, 'MBN', '66.00000000', '1217.26000000', '0.00000000', '1217.26000000', 2, 0, 1667291921, 0, 1),
(36, 0, 'MBN', '396.00000000', '249.22000000', '0.00000000', '249.22000000', 2, 0, 1667350890, 0, 1),
(37, 0, 'MBN', '396.00000000', '1626.88000000', '0.00000000', '1626.88000000', 1, 0, 1667379413, 0, 1),
(38, 0, 'MBN', '0.00000000', '1287.08000000', '0.00000000', '1287.08000000', 1, 0, 1667556661, 0, 1),
(39, 0, 'mbn_usdt', '0.00000000', '1941.01000000', '0.00000000', '1941.01000000', 1, 0, 1667558565, 0, 1),
(40, 0, 'mbn_usdt', '0.00000000', '2288.16000000', '0.00000000', '2288.16000000', 1, 0, 1667558576, 0, 1),
(41, 0, 'mbn_usdt', '0.00000000', '520.84000000', '0.00000000', '520.84000000', 1, 0, 1667558576, 0, 1),
(42, 0, 'mbn_usdt', '0.00000000', '2639.38000000', '0.00000000', '2639.38000000', 2, 0, 1667558576, 0, 1),
(43, 0, 'mbn_usdt', '0.00000000', '1277.12000000', '0.00000000', '1277.12000000', 2, 0, 1667559792, 0, 1),
(44, 0, 'mbn_usdt', '0.00000000', '737.42000000', '0.00000000', '737.42000000', 1, 0, 1667559797, 0, 1),
(45, 0, 'mbn_usdt', '0.00000000', '2117.44000000', '0.00000000', '2117.44000000', 1, 0, 1667559797, 0, 1),
(46, 0, 'mbn_usdt', '0.00000000', '1024.92000000', '0.00000000', '1024.92000000', 1, 0, 1667559797, 0, 1),
(47, 0, 'mbn_usdt', '46.80000000', '1469.82000000', '0.00000000', '1469.82000000', 1, 0, 1667562660, 0, 1),
(48, 0, 'mbn_usdt', '46.80000000', '465.18000000', '0.00000000', '465.18000000', 2, 0, 1667562705, 0, 1),
(49, 0, 'mbn_usdt', '46.80000000', '1822.19000000', '0.00000000', '1822.19000000', 2, 0, 1667562725, 0, 1),
(50, 0, 'mbn_usdt', '46.80000000', '2730.14000000', '0.00000000', '2730.14000000', 1, 0, 1667562725, 0, 1),
(51, 0, 'mbn_usdt', '46.80000000', '803.57000000', '0.00000000', '803.57000000', 1, 0, 1667562725, 0, 1),
(52, 0, 'mbn_usdt', '46.80000000', '1694.53000000', '0.00000000', '1694.53000000', 2, 0, 1667562726, 0, 1),
(53, 0, 'mbn_usdt', '46.80000000', '49.89000000', '0.00000000', '49.89000000', 1, 0, 1667562726, 0, 1),
(54, 0, 'mbn_usdt', '46.80000000', '1163.79000000', '0.00000000', '1163.79000000', 1, 0, 1667562726, 0, 1),
(55, 0, 'mbn_usdt', '46.80000000', '2868.10000000', '0.00000000', '2868.10000000', 1, 0, 1667562744, 0, 1),
(56, 0, 'mbn_usdt', '46.80000000', '2461.07000000', '0.00000000', '2461.07000000', 1, 0, 1667562744, 0, 1),
(57, 0, 'mbn_usdt', '46.80000000', '2601.26000000', '0.00000000', '2601.26000000', 2, 0, 1667562766, 0, 1),
(58, 0, 'mbn_usdt', '274.80000000', '249.12000000', '0.00000000', '249.12000000', 2, 0, 1667563662, 0, 1),
(59, 0, 'mbn_usdt', '274.80000000', '169.89000000', '0.00000000', '169.89000000', 1, 0, 1667563667, 0, 1),
(60, 0, 'mbn_usdt', '274.80000000', '246.13000000', '0.00000000', '246.13000000', 2, 0, 1667563667, 0, 1),
(61, 0, 'mbn_usdt', '274.80000000', '170.98000000', '0.00000000', '170.98000000', 2, 0, 1667563667, 0, 1),
(62, 0, 'mbn_usdt', '274.80000000', '154.97000000', '0.00000000', '154.97000000', 2, 0, 1667563824, 0, 1),
(63, 0, 'mbn_usdt', '274.80000000', '67.72000000', '0.00000000', '67.72000000', 1, 0, 1667563829, 0, 1),
(64, 0, 'mbn_usdt', '274.80000000', '158.79000000', '0.00000000', '158.79000000', 1, 0, 1667563829, 0, 1),
(65, 0, 'mbn_usdt', '274.80000000', '276.97000000', '0.00000000', '276.97000000', 1, 0, 1667563829, 0, 1),
(66, 0, 'mbn_usdt', '274.80000000', '188.83000000', '0.00000000', '188.83000000', 1, 0, 1667563875, 0, 1),
(67, 0, 'mbn_usdt', '274.80000000', '103.04000000', '0.00000000', '103.04000000', 1, 0, 1667563875, 0, 1),
(68, 0, 'mbn_usdt', '274.80000000', '198.65000000', '0.00000000', '198.65000000', 2, 0, 1667563875, 0, 1),
(69, 0, 'mbn_usdt', '274.80000000', '59.33000000', '0.00000000', '59.33000000', 2, 0, 1667563875, 0, 1),
(70, 0, 'mbn_usdt', '274.80000000', '248.08000000', '0.00000000', '248.08000000', 1, 0, 1667563875, 0, 1),
(71, 0, 'mbn_usdt', '274.80000000', '157.39000000', '0.00000000', '157.39000000', 2, 0, 1667563875, 0, 1),
(72, 0, 'mbn_usdt', '274.80000000', '119.89000000', '0.00000000', '119.89000000', 1, 0, 1667563931, 0, 1),
(73, 0, 'mbn_usdt', '274.80000000', '289.55000000', '0.00000000', '289.55000000', 2, 0, 1667563931, 0, 1),
(74, 0, 'mbn_usdt', '274.80000000', '96.38000000', '0.00000000', '96.38000000', 1, 0, 1667563931, 0, 1),
(75, 0, 'mbn_usdt', '1618.80000000', '182.31000000', '0.00000000', '182.31000000', 2, 0, 1667564454, 0, 1),
(76, 0, 'mbn_usdt', '1618.80000000', '132.52000000', '0.00000000', '132.52000000', 2, 0, 1667564454, 0, 1),
(77, 0, 'mbn_usdt', '1618.80000000', '71.02000000', '0.00000000', '71.02000000', 2, 0, 1667564454, 0, 1),
(78, 0, 'mbn_usdt', '1618.80000000', '181.11000000', '0.00000000', '181.11000000', 1, 0, 1667564469, 0, 1),
(79, 0, 'mbn_usdt', '1618.80000000', '181.46000000', '0.00000000', '181.46000000', 2, 0, 1667564469, 0, 1),
(80, 0, 'mbn_usdt', '1618.80000000', '85.87000000', '0.00000000', '85.87000000', 1, 0, 1667564469, 0, 1),
(81, 0, 'mbn_usdt', '94.80000000', '274.83000000', '0.00000000', '274.83000000', 2, 0, 1667568457, 0, 1),
(82, 0, 'mbn_usdt', '9712.80000000', '56.73000000', '0.00000000', '56.73000000', 2, 0, 1667955601, 0, 1),
(83, 0, 'mbn_usdt', '9712.80000000', '278.84000000', '0.00000000', '278.84000000', 2, 0, 1667955601, 0, 1),
(84, 0, 'mbn_usdt', '9712.80000000', '244.29000000', '0.00000000', '244.29000000', 2, 0, 1667955601, 0, 1),
(85, 0, 'mbn_usdt', '9712.80000000', '175.05000000', '0.00000000', '175.05000000', 1, 0, 1668042002, 0, 1),
(86, 0, 'mbn_usdt', '9712.80000000', '299.62000000', '0.00000000', '299.62000000', 1, 0, 1668042002, 0, 1),
(87, 0, 'mbn_usdt', '9712.80000000', '114.65000000', '0.00000000', '114.65000000', 1, 0, 1668042002, 0, 1),
(88, 0, 'mbn_usdt', '9712.80000000', '38.27000000', '0.00000000', '38.27000000', 1, 0, 1668128401, 0, 1),
(89, 0, 'mbn_usdt', '9712.80000000', '65.43000000', '0.00000000', '65.43000000', 1, 0, 1668128401, 0, 1),
(90, 0, 'mbn_usdt', '9712.80000000', '179.93000000', '0.00000000', '179.93000000', 1, 0, 1668128401, 0, 1),
(91, 0, 'mbn_usdt', '9712.80000000', '61.72000000', '0.00000000', '61.72000000', 1, 0, 1668214801, 0, 1),
(92, 0, 'mbn_usdt', '9712.80000000', '293.65000000', '0.00000000', '293.65000000', 1, 0, 1668214801, 0, 1),
(93, 0, 'mbn_usdt', '9712.80000000', '189.41000000', '0.00000000', '189.41000000', 1, 0, 1668214801, 0, 1),
(94, 0, 'mbn_usdt', '9712.80000000', '295.18000000', '0.00000000', '295.18000000', 1, 0, 1668301201, 0, 1),
(95, 0, 'mbn_usdt', '9712.80000000', '121.88000000', '0.00000000', '121.88000000', 2, 0, 1668301201, 0, 1),
(96, 0, 'mbn_usdt', '9712.80000000', '241.12000000', '0.00000000', '241.12000000', 1, 0, 1668301201, 0, 1),
(97, 0, 'mbn_usdt', '9712.80000000', '204.20000000', '0.00000000', '204.20000000', 2, 0, 1668387601, 0, 1),
(98, 0, 'mbn_usdt', '9712.80000000', '219.18000000', '0.00000000', '219.18000000', 2, 0, 1668387601, 0, 1),
(99, 0, 'mbn_usdt', '9712.80000000', '155.38000000', '0.00000000', '155.38000000', 1, 0, 1668387601, 0, 1),
(100, 0, 'mbn_usdt', '9712.80000000', '251.83000000', '0.00000000', '251.83000000', 1, 0, 1668444817, 0, 1),
(101, 0, 'mbn_usdt', '9712.80000000', '272.43000000', '0.00000000', '272.43000000', 2, 0, 1668444817, 0, 1),
(102, 0, 'mbn_usdt', '9712.80000000', '106.11000000', '0.00000000', '106.11000000', 2, 0, 1668444817, 0, 1),
(103, 0, 'mbn_usdt', '9712.80000000', '254.40000000', '0.00000000', '254.40000000', 2, 0, 1668475801, 0, 1),
(104, 0, 'mbn_usdt', '9712.80000000', '166.85000000', '0.00000000', '166.85000000', 2, 0, 1668475801, 0, 1),
(105, 0, 'mbn_usdt', '9712.80000000', '222.80000000', '0.00000000', '222.80000000', 2, 0, 1668475801, 0, 1),
(106, 0, 'mbn_usdt', '9712.80000000', '100.85000000', '0.00000000', '100.85000000', 1, 0, 1668562201, 0, 1),
(107, 0, 'mbn_usdt', '9712.80000000', '61.36000000', '0.00000000', '61.36000000', 2, 0, 1668562201, 0, 1),
(108, 0, 'mbn_usdt', '9712.80000000', '212.04000000', '0.00000000', '212.04000000', 2, 0, 1668562201, 0, 1),
(109, 0, 'mbn_usdt', '9712.80000000', '151.01000000', '0.00000000', '151.01000000', 1, 0, 1668648601, 0, 1),
(110, 0, 'mbn_usdt', '9712.80000000', '295.09000000', '0.00000000', '295.09000000', 1, 0, 1668648601, 0, 1),
(111, 0, 'mbn_usdt', '9712.80000000', '255.55000000', '0.00000000', '255.55000000', 1, 0, 1668648601, 0, 1),
(112, 0, 'mbn_usdt', '9712.80000000', '50.82000000', '0.00000000', '50.82000000', 2, 0, 1668735002, 0, 1),
(113, 0, 'mbn_usdt', '9712.80000000', '286.95000000', '0.00000000', '286.95000000', 2, 0, 1668735002, 0, 1),
(114, 0, 'mbn_usdt', '9712.80000000', '63.13000000', '0.00000000', '63.13000000', 2, 0, 1668735002, 0, 1),
(115, 0, 'mbn_usdt', '9712.80000000', '124.18000000', '0.00000000', '124.18000000', 1, 0, 1668821401, 0, 1),
(116, 0, 'mbn_usdt', '9712.80000000', '255.16000000', '0.00000000', '255.16000000', 2, 0, 1668821401, 0, 1),
(117, 0, 'mbn_usdt', '9712.80000000', '39.49000000', '0.00000000', '39.49000000', 2, 0, 1668821401, 0, 1),
(118, 0, 'mbn_usdt', '9712.80000000', '72.55000000', '0.00000000', '72.55000000', 1, 0, 1668907801, 0, 1),
(119, 0, 'mbn_usdt', '9712.80000000', '290.34000000', '0.00000000', '290.34000000', 2, 0, 1668907801, 0, 1),
(120, 0, 'mbn_usdt', '9712.80000000', '131.95000000', '0.00000000', '131.95000000', 2, 0, 1668907801, 0, 1),
(121, 0, 'mbn_usdt', '9712.80000000', '102.70000000', '0.00000000', '102.70000000', 1, 0, 1668994201, 0, 1),
(122, 0, 'mbn_usdt', '9712.80000000', '269.99000000', '0.00000000', '269.99000000', 2, 0, 1668994201, 0, 1),
(123, 0, 'mbn_usdt', '9712.80000000', '266.31000000', '0.00000000', '266.31000000', 2, 0, 1668994201, 0, 1),
(124, 0, 'mbn_usdt', '9712.80000000', '184.72000000', '0.00000000', '184.72000000', 1, 0, 1669080601, 0, 1),
(125, 0, 'mbn_usdt', '9712.80000000', '278.68000000', '0.00000000', '278.68000000', 1, 0, 1669080601, 0, 1),
(126, 0, 'mbn_usdt', '9712.80000000', '101.83000000', '0.00000000', '101.83000000', 1, 0, 1669080601, 0, 1),
(127, 0, 'mbn_usdt', '9712.80000000', '240.09000000', '0.00000000', '240.09000000', 1, 0, 1669167002, 0, 1),
(128, 0, 'mbn_usdt', '9712.80000000', '86.21000000', '0.00000000', '86.21000000', 1, 0, 1669167002, 0, 1),
(129, 0, 'mbn_usdt', '9712.80000000', '177.01000000', '0.00000000', '177.01000000', 2, 0, 1669167002, 0, 1),
(130, 0, 'mbn_usdt', '9712.80000000', '104.58000000', '0.00000000', '104.58000000', 2, 0, 1669253401, 0, 1),
(131, 0, 'mbn_usdt', '9712.80000000', '105.12000000', '0.00000000', '105.12000000', 1, 0, 1669253401, 0, 1),
(132, 0, 'mbn_usdt', '9712.80000000', '51.35000000', '0.00000000', '51.35000000', 2, 0, 1669253401, 0, 1),
(133, 0, 'mbn_usdt', '9712.80000000', '100.82000000', '0.00000000', '100.82000000', 1, 0, 1669339802, 0, 1),
(134, 0, 'mbn_usdt', '9712.80000000', '45.92000000', '0.00000000', '45.92000000', 1, 0, 1669339802, 0, 1),
(135, 0, 'mbn_usdt', '9712.80000000', '290.74000000', '0.00000000', '290.74000000', 1, 0, 1669339802, 0, 1),
(136, 0, 'mbn_usdt', '9712.80000000', '31.62000000', '0.00000000', '31.62000000', 1, 0, 1669426201, 0, 1),
(137, 0, 'mbn_usdt', '9712.80000000', '64.27000000', '0.00000000', '64.27000000', 2, 0, 1669426201, 0, 1),
(138, 0, 'mbn_usdt', '9712.80000000', '245.91000000', '0.00000000', '245.91000000', 1, 0, 1669426201, 0, 1),
(139, 0, 'mbn_usdt', '9712.80000000', '156.55000000', '0.00000000', '156.55000000', 1, 0, 1669512601, 0, 1),
(140, 0, 'mbn_usdt', '9712.80000000', '97.42000000', '0.00000000', '97.42000000', 2, 0, 1669512601, 0, 1),
(141, 0, 'mbn_usdt', '9712.80000000', '293.42000000', '0.00000000', '293.42000000', 1, 0, 1669512601, 0, 1),
(142, 0, 'mbn_usdt', '9712.80000000', '150.30000000', '0.00000000', '150.30000000', 1, 0, 1693587601, 0, 1),
(143, 0, 'mbn_usdt', '9712.80000000', '110.42000000', '0.00000000', '110.42000000', 1, 0, 1693587601, 0, 1),
(144, 0, 'mbn_usdt', '9712.80000000', '199.55000000', '0.00000000', '199.55000000', 1, 0, 1693587601, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_trade_json`
--

CREATE TABLE `tw_trade_json` (
  `id` int(11) UNSIGNED NOT NULL,
  `market` varchar(100) NOT NULL,
  `data` varchar(500) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易图表表' ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_trade_json`
--

INSERT INTO `tw_trade_json` (`id`, `market`, `data`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'mbn_usdt', '[1667558565,\"7389.39000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\"]', '1', 0, 1667558565, 0, 0),
(2, 'mbn_usdt', '[1667558625,\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\"]', '1', 0, 1667558625, 0, 0),
(21, 'mbn_usdt', '[1667559765,\"5156.90000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\"]', '1', 0, 1667559765, 0, 0),
(22, 'mbn_usdt', '[1667558400,\"7389.39000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\"]', '5', 0, 1667558400, 0, 0),
(26, 'mbn_usdt', '[1667559600,\"5156.90000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\"]', '5', 0, 1667559600, 0, 0),
(36, 'mbn_usdt', '[1667562600,\"15668.47000000\",\"46.80000000\",\"46.80000000\",\"46.80000000\",\"46.80000000\"]', '5', 0, 1667562600, 0, 0),
(39, 'mbn_usdt', '[1667563500,\"836.12000000\",\"274.80000000\",\"274.80000000\",\"274.80000000\",\"274.80000000\"]', '5', 0, 1667563500, 0, 0),
(40, 'mbn_usdt', '[1667563800,\"2119.59000000\",\"274.80000000\",\"274.80000000\",\"274.80000000\",\"274.80000000\"]', '5', 0, 1667563800, 0, 0),
(42, 'mbn_usdt', '[1667564400,\"834.29000000\",\"1618.80000000\",\"1618.80000000\",\"1618.80000000\",\"1618.80000000\"]', '5', 0, 1667564400, 0, 0),
(43, 'mbn_usdt', '[1667557800,\"7389.39000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\"]', '15', 0, 1667557800, 0, 0),
(45, 'mbn_usdt', '[1667559600,\"5156.90000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\"]', '15', 0, 1667559600, 0, 0),
(48, 'mbn_usdt', '[1667562300,\"15668.47000000\",\"46.80000000\",\"46.80000000\",\"46.80000000\",\"46.80000000\"]', '15', 0, 1667562300, 0, 0),
(49, 'mbn_usdt', '[1667563200,\"2955.71000000\",\"274.80000000\",\"274.80000000\",\"274.80000000\",\"274.80000000\"]', '15', 0, 1667563200, 0, 0),
(50, 'mbn_usdt', '[1667564100,\"834.29000000\",\"1618.80000000\",\"1618.80000000\",\"1618.80000000\",\"1618.80000000\"]', '15', 0, 1667564100, 0, 0),
(54, 'mbn_usdt', '[1667567700,\"274.83000000\",\"94.80000000\",\"94.80000000\",\"94.80000000\",\"94.80000000\"]', '15', 0, 1667567700, 0, 0),
(55, 'mbn_usdt', '', '15', 0, 1667568600, 0, 0),
(56, 'mbn_usdt', '', '15', 0, 1667569500, 0, 0),
(57, 'mbn_usdt', '', '15', 0, 1667570400, 0, 0),
(58, 'mbn_usdt', '', '15', 0, 1667571300, 0, 0),
(59, 'mbn_usdt', '', '15', 0, 1667572200, 0, 0),
(60, 'mbn_usdt', '', '15', 0, 1667573100, 0, 0),
(61, 'mbn_usdt', '', '15', 0, 1667574000, 0, 0),
(62, 'mbn_usdt', '', '15', 0, 1667574900, 0, 0),
(63, 'mbn_usdt', '', '15', 0, 1667575800, 0, 0),
(64, 'mbn_usdt', '[1667557800,\"7389.39000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\"]', '30', 0, 1667557800, 0, 0),
(65, 'mbn_usdt', '[1667559600,\"5156.90000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\"]', '30', 0, 1667559600, 0, 0),
(66, 'mbn_usdt', '[1667561400,\"15668.47000000\",\"46.80000000\",\"46.80000000\",\"46.80000000\",\"46.80000000\"]', '30', 0, 1667561400, 0, 0),
(67, 'mbn_usdt', '[1667563200,\"3790.00000000\",\"274.80000000\",\"1618.80000000\",\"274.80000000\",\"1618.80000000\"]', '30', 0, 1667563200, 0, 0),
(69, 'mbn_usdt', '[1667566800,\"274.83000000\",\"94.80000000\",\"94.80000000\",\"94.80000000\",\"94.80000000\"]', '30', 0, 1667566800, 0, 0),
(78, 'mbn_usdt', '[1667583000,\"0.00000000\",\"1618.80000000\",\"1618.80000000\",\"1618.80000000\",\"1618.80000000\"]', '30', 0, 1667583000, 0, 0),
(79, 'mbn_usdt', '', '30', 0, 1667584800, 0, 0),
(80, 'mbn_usdt', '', '30', 0, 1667586600, 0, 0),
(81, 'mbn_usdt', '', '30', 0, 1667588400, 0, 0),
(82, 'mbn_usdt', '', '30', 0, 1667590200, 0, 0),
(83, 'mbn_usdt', '', '30', 0, 1667592000, 0, 0),
(84, 'mbn_usdt', '', '30', 0, 1667593800, 0, 0),
(85, 'mbn_usdt', '[1667556000,\"7389.39000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\",\"0.00000000\"]', '60', 0, 1667556000, 0, 0),
(86, 'mbn_usdt', '[1667559600,\"20825.37000000\",\"0.00000000\",\"46.80000000\",\"0.00000000\",\"46.80000000\"]', '60', 0, 1667559600, 0, 0),
(87, 'mbn_usdt', '[1667563200,\"3790.00000000\",\"274.80000000\",\"1618.80000000\",\"274.80000000\",\"1618.80000000\"]', '60', 0, 1667563200, 0, 0),
(88, 'mbn_usdt', '[1667566800,\"274.83000000\",\"94.80000000\",\"94.80000000\",\"94.80000000\",\"94.80000000\"]', '60', 0, 1667566800, 0, 0),
(92, 'mbn_usdt', '[1667581200,\"0.00000000\",\"1618.80000000\",\"1618.80000000\",\"1618.80000000\",\"1618.80000000\"]', '60', 0, 1667581200, 0, 0),
(93, 'mbn_usdt', '', '60', 0, 1667584800, 0, 0),
(94, 'mbn_usdt', '', '60', 0, 1667588400, 0, 0),
(95, 'mbn_usdt', '', '60', 0, 1667592000, 0, 0),
(96, 'mbn_usdt', '', '60', 0, 1667595600, 0, 0),
(97, 'mbn_usdt', '', '60', 0, 1667599200, 0, 0),
(98, 'mbn_usdt', '', '60', 0, 1667602800, 0, 0),
(99, 'mbn_usdt', '', '60', 0, 1667606400, 0, 0),
(100, 'mbn_usdt', '', '60', 0, 1667610000, 0, 0),
(101, 'mbn_usdt', '', '60', 0, 1667613600, 0, 0),
(102, 'mbn_usdt', '', '60', 0, 1667617200, 0, 0),
(103, 'mbn_usdt', '', '60', 0, 1667620800, 0, 0),
(104, 'mbn_usdt', '', '60', 0, 1667624400, 0, 0),
(105, 'mbn_usdt', '', '60', 0, 1667628000, 0, 0),
(106, 'mbn_usdt', '[1667556000,\"32279.59000000\",\"0.00000000\",\"1618.80000000\",\"0.00000000\",\"94.80000000\"]', '240', 0, 1667556000, 0, 0),
(107, 'mbn_usdt', '[1667570400,\"0.00000000\",\"1618.80000000\",\"1618.80000000\",\"1618.80000000\",\"1618.80000000\"]', '240', 0, 1667570400, 0, 0),
(108, 'mbn_usdt', '', '240', 0, 1667584800, 0, 0),
(109, 'mbn_usdt', '', '240', 0, 1667599200, 0, 0),
(110, 'mbn_usdt', '', '240', 0, 1667613600, 0, 0),
(111, 'mbn_usdt', '', '240', 0, 1667628000, 0, 0),
(112, 'mbn_usdt', '', '240', 0, 1667642400, 0, 0),
(113, 'mbn_usdt', '', '240', 0, 1667656800, 0, 0),
(114, 'mbn_usdt', '', '240', 0, 1667671200, 0, 0),
(115, 'mbn_usdt', '', '240', 0, 1667685600, 0, 0),
(116, 'mbn_usdt', '', '240', 0, 1667700000, 0, 0),
(117, 'mbn_usdt', '', '240', 0, 1667714400, 0, 0),
(118, 'mbn_usdt', '', '240', 0, 1667728800, 0, 0),
(119, 'mbn_usdt', '', '240', 0, 1667743200, 0, 0),
(120, 'mbn_usdt', '', '240', 0, 1667757600, 0, 0),
(121, 'mbn_usdt', '', '240', 0, 1667772000, 0, 0),
(122, 'mbn_usdt', '', '240', 0, 1667786400, 0, 0),
(123, 'mbn_usdt', '', '240', 0, 1667800800, 0, 0),
(124, 'mbn_usdt', '', '240', 0, 1667815200, 0, 0),
(125, 'mbn_usdt', '', '240', 0, 1667829600, 0, 0),
(126, 'mbn_usdt', '', '240', 0, 1667844000, 0, 0),
(127, 'mbn_usdt', '[1667556000,\"32279.59000000\",\"0.00000000\",\"1618.80000000\",\"0.00000000\",\"1618.80000000\"]', '1440', 0, 1667556000, 0, 0),
(131, 'mbn_usdt', '[1667901600,\"579.86000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1667901600, 0, 0),
(132, 'mbn_usdt', '[1667988000,\"589.32000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1667988000, 0, 0),
(133, 'mbn_usdt', '[1668074400,\"283.63000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668074400, 0, 0),
(134, 'mbn_usdt', '[1668160800,\"544.78000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668160800, 0, 0),
(135, 'mbn_usdt', '[1668247200,\"658.18000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668247200, 0, 0),
(136, 'mbn_usdt', '[1668333600,\"578.76000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668333600, 0, 0),
(137, 'mbn_usdt', '[1668420000,\"1274.42000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668420000, 0, 0),
(138, 'mbn_usdt', '[1668506400,\"374.25000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668506400, 0, 0),
(139, 'mbn_usdt', '[1668592800,\"701.65000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668592800, 0, 0),
(140, 'mbn_usdt', '[1668679200,\"400.90000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668679200, 0, 0),
(141, 'mbn_usdt', '[1668765600,\"418.83000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668765600, 0, 0),
(142, 'mbn_usdt', '[1668852000,\"494.84000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668852000, 0, 0),
(143, 'mbn_usdt', '[1668938400,\"639.00000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1668938400, 0, 0),
(144, 'mbn_usdt', '[1669024800,\"565.23000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1669024800, 0, 0),
(145, 'mbn_usdt', '[1669111200,\"503.31000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1669111200, 0, 0),
(146, 'mbn_usdt', '[1669197600,\"261.05000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1669197600, 0, 0),
(147, 'mbn_usdt', '[1669284000,\"437.48000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\",\"9712.80000000\"]', '1440', 0, 1669284000, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_trade_log`
--

CREATE TABLE `tw_trade_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `market` varchar(50) CHARACTER SET gbk NOT NULL DEFAULT '',
  `price` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `num` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `type` tinyint(2) UNSIGNED NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC
PARTITION BY RANGE (id)
(
PARTITION p1 VALUES LESS THAN (1000000) ENGINE=MyISAM,
PARTITION p2 VALUES LESS THAN (2000000) ENGINE=MyISAM,
PARTITION p3 VALUES LESS THAN (3000000) ENGINE=MyISAM,
PARTITION p4 VALUES LESS THAN (4000000) ENGINE=MyISAM,
PARTITION p5 VALUES LESS THAN (5000000) ENGINE=MyISAM,
PARTITION p6 VALUES LESS THAN (6000000) ENGINE=MyISAM,
PARTITION p7 VALUES LESS THAN (7000000) ENGINE=MyISAM,
PARTITION p8 VALUES LESS THAN (8000000) ENGINE=MyISAM,
PARTITION p9 VALUES LESS THAN (9000000) ENGINE=MyISAM,
PARTITION p10 VALUES LESS THAN (10000000) ENGINE=MyISAM,
PARTITION p11 VALUES LESS THAN (11000000) ENGINE=MyISAM,
PARTITION p12 VALUES LESS THAN (12000000) ENGINE=MyISAM,
PARTITION p13 VALUES LESS THAN (13000000) ENGINE=MyISAM,
PARTITION p14 VALUES LESS THAN (14000000) ENGINE=MyISAM,
PARTITION p15 VALUES LESS THAN (15000000) ENGINE=MyISAM,
PARTITION p16 VALUES LESS THAN (16000000) ENGINE=MyISAM,
PARTITION p17 VALUES LESS THAN (17000000) ENGINE=MyISAM,
PARTITION p18 VALUES LESS THAN (18000000) ENGINE=MyISAM,
PARTITION p19 VALUES LESS THAN (19000000) ENGINE=MyISAM,
PARTITION p20 VALUES LESS THAN (20000000) ENGINE=MyISAM,
PARTITION p21 VALUES LESS THAN (21000000) ENGINE=MyISAM,
PARTITION p22 VALUES LESS THAN (22000000) ENGINE=MyISAM,
PARTITION p23 VALUES LESS THAN (23000000) ENGINE=MyISAM,
PARTITION p24 VALUES LESS THAN (24000000) ENGINE=MyISAM,
PARTITION p25 VALUES LESS THAN (25000000) ENGINE=MyISAM,
PARTITION p26 VALUES LESS THAN (26000000) ENGINE=MyISAM,
PARTITION p27 VALUES LESS THAN (27000000) ENGINE=MyISAM,
PARTITION p28 VALUES LESS THAN (28000000) ENGINE=MyISAM,
PARTITION p29 VALUES LESS THAN (29000000) ENGINE=MyISAM,
PARTITION p30 VALUES LESS THAN (30000000) ENGINE=MyISAM,
PARTITION p31 VALUES LESS THAN (31000000) ENGINE=MyISAM,
PARTITION p32 VALUES LESS THAN (32000000) ENGINE=MyISAM,
PARTITION p33 VALUES LESS THAN (33000000) ENGINE=MyISAM,
PARTITION p34 VALUES LESS THAN (34000000) ENGINE=MyISAM,
PARTITION p35 VALUES LESS THAN (35000000) ENGINE=MyISAM,
PARTITION p36 VALUES LESS THAN (36000000) ENGINE=MyISAM,
PARTITION p37 VALUES LESS THAN (37000000) ENGINE=MyISAM,
PARTITION p38 VALUES LESS THAN (38000000) ENGINE=MyISAM,
PARTITION p39 VALUES LESS THAN (39000000) ENGINE=MyISAM,
PARTITION p40 VALUES LESS THAN (40000000) ENGINE=MyISAM,
PARTITION p41 VALUES LESS THAN (41000000) ENGINE=MyISAM,
PARTITION p42 VALUES LESS THAN (42000000) ENGINE=MyISAM,
PARTITION p43 VALUES LESS THAN (43000000) ENGINE=MyISAM,
PARTITION p44 VALUES LESS THAN (44000000) ENGINE=MyISAM,
PARTITION p45 VALUES LESS THAN (45000000) ENGINE=MyISAM,
PARTITION p46 VALUES LESS THAN (46000000) ENGINE=MyISAM,
PARTITION p47 VALUES LESS THAN (47000000) ENGINE=MyISAM,
PARTITION p48 VALUES LESS THAN (48000000) ENGINE=MyISAM,
PARTITION p49 VALUES LESS THAN (49000000) ENGINE=MyISAM,
PARTITION p50 VALUES LESS THAN (50000000) ENGINE=MyISAM,
PARTITION p51 VALUES LESS THAN (51000000) ENGINE=MyISAM,
PARTITION p52 VALUES LESS THAN (52000000) ENGINE=MyISAM,
PARTITION p53 VALUES LESS THAN (53000000) ENGINE=MyISAM,
PARTITION p54 VALUES LESS THAN (54000000) ENGINE=MyISAM,
PARTITION p55 VALUES LESS THAN (55000000) ENGINE=MyISAM,
PARTITION p56 VALUES LESS THAN (56000000) ENGINE=MyISAM,
PARTITION p57 VALUES LESS THAN (57000000) ENGINE=MyISAM,
PARTITION p58 VALUES LESS THAN (58000000) ENGINE=MyISAM,
PARTITION p59 VALUES LESS THAN (59000000) ENGINE=MyISAM,
PARTITION p60 VALUES LESS THAN (60000000) ENGINE=MyISAM,
PARTITION p61 VALUES LESS THAN (61000000) ENGINE=MyISAM,
PARTITION p62 VALUES LESS THAN (62000000) ENGINE=MyISAM,
PARTITION p63 VALUES LESS THAN (63000000) ENGINE=MyISAM,
PARTITION p64 VALUES LESS THAN (64000000) ENGINE=MyISAM,
PARTITION p65 VALUES LESS THAN (65000000) ENGINE=MyISAM,
PARTITION p66 VALUES LESS THAN (66000000) ENGINE=MyISAM,
PARTITION p67 VALUES LESS THAN (67000000) ENGINE=MyISAM,
PARTITION p68 VALUES LESS THAN (68000000) ENGINE=MyISAM,
PARTITION p69 VALUES LESS THAN (69000000) ENGINE=MyISAM,
PARTITION p70 VALUES LESS THAN (70000000) ENGINE=MyISAM,
PARTITION p71 VALUES LESS THAN (71000000) ENGINE=MyISAM,
PARTITION p72 VALUES LESS THAN (72000000) ENGINE=MyISAM,
PARTITION p73 VALUES LESS THAN (73000000) ENGINE=MyISAM,
PARTITION p74 VALUES LESS THAN (74000000) ENGINE=MyISAM,
PARTITION p75 VALUES LESS THAN (75000000) ENGINE=MyISAM,
PARTITION p76 VALUES LESS THAN (76000000) ENGINE=MyISAM,
PARTITION p77 VALUES LESS THAN (77000000) ENGINE=MyISAM,
PARTITION p78 VALUES LESS THAN (78000000) ENGINE=MyISAM,
PARTITION p79 VALUES LESS THAN (79000000) ENGINE=MyISAM,
PARTITION p80 VALUES LESS THAN (80000000) ENGINE=MyISAM,
PARTITION p81 VALUES LESS THAN (81000000) ENGINE=MyISAM,
PARTITION p82 VALUES LESS THAN (82000000) ENGINE=MyISAM,
PARTITION p83 VALUES LESS THAN (83000000) ENGINE=MyISAM,
PARTITION p84 VALUES LESS THAN (84000000) ENGINE=MyISAM,
PARTITION p85 VALUES LESS THAN (85000000) ENGINE=MyISAM,
PARTITION p86 VALUES LESS THAN (86000000) ENGINE=MyISAM,
PARTITION p87 VALUES LESS THAN (87000000) ENGINE=MyISAM,
PARTITION p88 VALUES LESS THAN (88000000) ENGINE=MyISAM,
PARTITION p89 VALUES LESS THAN (89000000) ENGINE=MyISAM,
PARTITION p90 VALUES LESS THAN (90000000) ENGINE=MyISAM,
PARTITION p91 VALUES LESS THAN (91000000) ENGINE=MyISAM,
PARTITION p92 VALUES LESS THAN (92000000) ENGINE=MyISAM,
PARTITION p93 VALUES LESS THAN (93000000) ENGINE=MyISAM,
PARTITION p94 VALUES LESS THAN (94000000) ENGINE=MyISAM,
PARTITION p95 VALUES LESS THAN (95000000) ENGINE=MyISAM,
PARTITION p96 VALUES LESS THAN (96000000) ENGINE=MyISAM,
PARTITION p97 VALUES LESS THAN (97000000) ENGINE=MyISAM,
PARTITION p98 VALUES LESS THAN (98000000) ENGINE=MyISAM,
PARTITION p99 VALUES LESS THAN (99000000) ENGINE=MyISAM,
PARTITION p100 VALUES LESS THAN (100000000) ENGINE=MyISAM,
PARTITION p101 VALUES LESS THAN (101000000) ENGINE=MyISAM,
PARTITION p102 VALUES LESS THAN (102000000) ENGINE=MyISAM,
PARTITION p103 VALUES LESS THAN (103000000) ENGINE=MyISAM,
PARTITION p104 VALUES LESS THAN (104000000) ENGINE=MyISAM,
PARTITION p105 VALUES LESS THAN (105000000) ENGINE=MyISAM,
PARTITION p106 VALUES LESS THAN (106000000) ENGINE=MyISAM,
PARTITION p107 VALUES LESS THAN (107000000) ENGINE=MyISAM,
PARTITION p108 VALUES LESS THAN (108000000) ENGINE=MyISAM,
PARTITION p109 VALUES LESS THAN (109000000) ENGINE=MyISAM,
PARTITION p110 VALUES LESS THAN (110000000) ENGINE=MyISAM,
PARTITION p111 VALUES LESS THAN (111000000) ENGINE=MyISAM,
PARTITION p112 VALUES LESS THAN (112000000) ENGINE=MyISAM,
PARTITION p113 VALUES LESS THAN (113000000) ENGINE=MyISAM,
PARTITION p114 VALUES LESS THAN (114000000) ENGINE=MyISAM,
PARTITION p115 VALUES LESS THAN (115000000) ENGINE=MyISAM,
PARTITION p116 VALUES LESS THAN (116000000) ENGINE=MyISAM,
PARTITION p117 VALUES LESS THAN (117000000) ENGINE=MyISAM,
PARTITION p118 VALUES LESS THAN (118000000) ENGINE=MyISAM,
PARTITION p119 VALUES LESS THAN (119000000) ENGINE=MyISAM,
PARTITION p120 VALUES LESS THAN (120000000) ENGINE=MyISAM,
PARTITION p121 VALUES LESS THAN (121000000) ENGINE=MyISAM,
PARTITION p122 VALUES LESS THAN MAXVALUE ENGINE=MyISAM
);

--
-- Đang đổ dữ liệu cho bảng `tw_trade_log`
--

INSERT INTO `tw_trade_log` (`id`, `market`, `price`, `num`, `mum`, `type`, `addtime`, `endtime`, `status`) VALUES
(1, 'MBN', '0.00000000', '757.93000000', '757.93000000', 1, 1667270790, 0, 1),
(2, 'MBN', '0.00000000', '1502.90000000', '1502.90000000', 1, 1667270813, 0, 1),
(3, 'MBN', '0.00000000', '2009.66000000', '2009.66000000', 2, 1667270813, 0, 1),
(4, 'MBN', '0.00000000', '1419.17000000', '1419.17000000', 2, 1667270813, 0, 1),
(5, 'MBN', '0.00000000', '1781.46000000', '1781.46000000', 2, 1667270829, 0, 1),
(6, 'MBN', '0.00000000', '1446.98000000', '1446.98000000', 1, 1667270832, 0, 1),
(7, 'MBN', '0.00000000', '2654.84000000', '2654.84000000', 1, 1667270833, 0, 1),
(8, 'MBN', '0.00000000', '665.49000000', '665.49000000', 2, 1667273977, 0, 1),
(9, 'MBN', '0.00000000', '2094.75000000', '2094.75000000', 2, 1667273977, 0, 1),
(10, 'MBN', '0.00000000', '2872.60000000', '2872.60000000', 1, 1667273977, 0, 1),
(11, 'MBN', '0.00000000', '1752.69000000', '1752.69000000', 1, 1667285974, 0, 1),
(12, 'MBN', '0.00000000', '929.00000000', '929.00000000', 1, 1667285984, 0, 1),
(13, 'MBN', '0.00000000', '1661.96000000', '1661.96000000', 1, 1667285986, 0, 1),
(14, 'MBN', '0.00000000', '0.00000000', '0.00000000', 1, 1667286096, 0, 0),
(15, 'MBN', '0.00000000', '0.00000000', '0.00000000', 1, 1667286991, 0, 0),
(16, 'MBN', '0.00000000', '1943.74000000', '1943.74000000', 2, 1667288537, 0, 1),
(17, 'MBN', '0.00000000', '890.96000000', '890.96000000', 1, 1667288537, 0, 1),
(18, 'MBN', '66.00000000', '379.99000000', '379.99000000', 1, 1667288740, 0, 1),
(19, 'MBN', '66.00000000', '2235.66000000', '2235.66000000', 2, 1667288743, 0, 1),
(20, 'MBN', '0.00000000', '0.00000000', '0.00000000', 1, 1667289002, 0, 0),
(21, 'MBN', '66.00000000', '1448.96000000', '1448.96000000', 1, 1667289055, 0, 1),
(22, 'MBN', '66.00000000', '1448.32000000', '1448.32000000', 1, 1667289055, 0, 1),
(23, 'MBN', '66.00000000', '737.89000000', '737.89000000', 1, 1667289056, 0, 1),
(24, 'MBN', '66.00000000', '2146.24000000', '2146.24000000', 2, 1667289056, 0, 1),
(25, 'MBN', '66.00000000', '2478.28000000', '2478.28000000', 1, 1667289056, 0, 1),
(26, 'MBN', '66.00000000', '1906.56000000', '1906.56000000', 2, 1667289056, 0, 1),
(27, 'MBN', '66.00000000', '2084.15000000', '2084.15000000', 2, 1667289062, 0, 1),
(28, 'MBN', '66.00000000', '1394.47000000', '1394.47000000', 2, 1667289236, 0, 1),
(29, 'MBN', '66.00000000', '754.26000000', '754.26000000', 1, 1667289239, 0, 1),
(30, 'MBN', '66.00000000', '1374.89000000', '1374.89000000', 2, 1667289308, 0, 1),
(31, 'MBN', '66.00000000', '936.24000000', '936.24000000', 1, 1667289379, 0, 1),
(32, 'USDZ', '66.00000000', '2993.68000000', '2993.68000000', 1, 1667290622, 0, 1),
(33, 'USDZ', '66.00000000', '1328.75000000', '1328.75000000', 2, 1667290623, 0, 1),
(34, 'USDZ', '66.00000000', '899.05000000', '899.05000000', 1, 1667290623, 0, 1),
(35, 'USDZ', '66.00000000', '384.46000000', '384.46000000', 1, 1667290632, 0, 1),
(36, 'USDZ', '66.00000000', '1306.80000000', '1306.80000000', 1, 1667291587, 0, 1),
(37, 'MBN', '66.00000000', '1217.26000000', '1217.26000000', 2, 1667291921, 0, 1),
(38, 'MBN', '0.00000000', '0.00000000', '0.00000000', 1, 1667323802, 0, 0),
(39, 'MBN', '396.00000000', '249.22000000', '249.22000000', 2, 1667350890, 0, 1),
(40, 'MBN', '396.00000000', '1626.88000000', '1626.88000000', 1, 1667379413, 0, 1),
(41, 'MBN', '0.00000000', '0.00000000', '0.00000000', 1, 1667410203, 0, 0),
(42, 'MBN', '0.00000000', '1287.08000000', '1287.08000000', 1, 1667556661, 0, 1),
(43, 'mbn_usdt', '0.00000000', '1941.01000000', '1941.01000000', 1, 1667558565, 0, 1),
(44, 'mbn_usdt', '0.00000000', '2288.16000000', '2288.16000000', 1, 1667558576, 0, 1),
(45, 'mbn_usdt', '0.00000000', '520.84000000', '520.84000000', 1, 1667558576, 0, 1),
(46, 'mbn_usdt', '0.00000000', '2639.38000000', '2639.38000000', 2, 1667558576, 0, 1),
(47, 'mbn_usdt', '0.00000000', '0.00000000', '0.00000000', 1, 1667558643, 0, 0),
(48, 'mbn_usdt', '0.00000000', '1277.12000000', '1277.12000000', 2, 1667559792, 0, 1),
(49, 'mbn_usdt', '0.00000000', '737.42000000', '737.42000000', 1, 1667559797, 0, 1),
(50, 'mbn_usdt', '0.00000000', '2117.44000000', '2117.44000000', 1, 1667559797, 0, 1),
(51, 'mbn_usdt', '0.00000000', '1024.92000000', '1024.92000000', 1, 1667559797, 0, 1),
(52, 'mbn_usdt', '46.80000000', '1469.82000000', '1469.82000000', 1, 1667562660, 0, 1),
(53, 'mbn_usdt', '46.80000000', '465.18000000', '465.18000000', 2, 1667562705, 0, 1),
(54, 'mbn_usdt', '46.80000000', '1822.19000000', '1822.19000000', 2, 1667562725, 0, 1),
(55, 'mbn_usdt', '46.80000000', '2730.14000000', '2730.14000000', 1, 1667562725, 0, 1),
(56, 'mbn_usdt', '46.80000000', '803.57000000', '803.57000000', 1, 1667562725, 0, 1),
(57, 'mbn_usdt', '46.80000000', '1694.53000000', '1694.53000000', 2, 1667562726, 0, 1),
(58, 'mbn_usdt', '46.80000000', '49.89000000', '49.89000000', 1, 1667562726, 0, 1),
(59, 'mbn_usdt', '46.80000000', '1163.79000000', '1163.79000000', 1, 1667562726, 0, 1),
(60, 'mbn_usdt', '46.80000000', '2868.10000000', '2868.10000000', 1, 1667562744, 0, 1),
(61, 'mbn_usdt', '46.80000000', '2601.26000000', '2601.26000000', 2, 1667562766, 0, 1),
(62, 'mbn_usdt', '274.80000000', '249.12000000', '249.12000000', 2, 1667563662, 0, 1),
(63, 'mbn_usdt', '274.80000000', '169.89000000', '169.89000000', 1, 1667563667, 0, 1),
(64, 'mbn_usdt', '274.80000000', '246.13000000', '246.13000000', 2, 1667563667, 0, 1),
(65, 'mbn_usdt', '274.80000000', '170.98000000', '170.98000000', 2, 1667563667, 0, 1),
(66, 'mbn_usdt', '274.80000000', '0.00000000', '0.00000000', 1, 1667563805, 0, 0),
(67, 'mbn_usdt', '274.80000000', '154.97000000', '154.97000000', 2, 1667563824, 0, 1),
(68, 'mbn_usdt', '274.80000000', '67.72000000', '67.72000000', 1, 1667563829, 0, 1),
(69, 'mbn_usdt', '274.80000000', '158.79000000', '158.79000000', 1, 1667563829, 0, 1),
(70, 'mbn_usdt', '274.80000000', '276.97000000', '276.97000000', 1, 1667563829, 0, 1),
(71, 'mbn_usdt', '274.80000000', '188.83000000', '188.83000000', 1, 1667563875, 0, 1),
(72, 'mbn_usdt', '274.80000000', '103.04000000', '103.04000000', 1, 1667563875, 0, 1),
(73, 'mbn_usdt', '274.80000000', '198.65000000', '198.65000000', 2, 1667563875, 0, 1),
(74, 'mbn_usdt', '274.80000000', '59.33000000', '59.33000000', 2, 1667563875, 0, 1),
(75, 'mbn_usdt', '274.80000000', '248.08000000', '248.08000000', 1, 1667563875, 0, 1),
(76, 'mbn_usdt', '274.80000000', '157.39000000', '157.39000000', 2, 1667563875, 0, 1),
(77, 'mbn_usdt', '274.80000000', '119.89000000', '119.89000000', 1, 1667563931, 0, 1),
(78, 'mbn_usdt', '274.80000000', '289.55000000', '289.55000000', 2, 1667563931, 0, 1),
(79, 'mbn_usdt', '274.80000000', '96.38000000', '96.38000000', 1, 1667563931, 0, 1),
(80, 'mbn_usdt', '1618.80000000', '182.31000000', '182.31000000', 2, 1667564454, 0, 1),
(81, 'mbn_usdt', '1618.80000000', '132.52000000', '132.52000000', 2, 1667564454, 0, 1),
(82, 'mbn_usdt', '1618.80000000', '71.02000000', '71.02000000', 2, 1667564454, 0, 1),
(83, 'mbn_usdt', '1618.80000000', '181.11000000', '181.11000000', 1, 1667564469, 0, 1),
(84, 'mbn_usdt', '1618.80000000', '181.46000000', '181.46000000', 2, 1667564469, 0, 1),
(85, 'mbn_usdt', '1618.80000000', '85.87000000', '85.87000000', 1, 1667564469, 0, 1),
(86, 'mbn_usdt', '1618.80000000', '0.00000000', '0.00000000', 1, 1667564743, 0, 0),
(87, 'mbn_usdt', '1618.80000000', '0.00000000', '0.00000000', 1, 1667564941, 0, 0),
(88, 'mbn_usdt', '94.80000000', '274.83000000', '274.83000000', 2, 1667568457, 0, 1),
(89, 'mbn_usdt', '1618.80000000', '0.00000000', '0.00000000', 1, 1667583003, 0, 0),
(90, 'mbn_usdt', '9712.80000000', '56.73000000', '56.73000000', 2, 1667955601, 0, 1),
(91, 'mbn_usdt', '9712.80000000', '278.84000000', '278.84000000', 2, 1667955601, 0, 1),
(92, 'mbn_usdt', '9712.80000000', '244.29000000', '244.29000000', 2, 1667955601, 0, 1),
(93, 'mbn_usdt', '9712.80000000', '175.05000000', '175.05000000', 1, 1668042002, 0, 1),
(94, 'mbn_usdt', '9712.80000000', '299.62000000', '299.62000000', 1, 1668042002, 0, 1),
(95, 'mbn_usdt', '9712.80000000', '114.65000000', '114.65000000', 1, 1668042002, 0, 1),
(96, 'mbn_usdt', '9712.80000000', '0.00000000', '0.00000000', 1, 1668096002, 0, 0),
(97, 'mbn_usdt', '9712.80000000', '38.27000000', '38.27000000', 1, 1668128401, 0, 1),
(98, 'mbn_usdt', '9712.80000000', '65.43000000', '65.43000000', 1, 1668128401, 0, 1),
(99, 'mbn_usdt', '9712.80000000', '179.93000000', '179.93000000', 1, 1668128401, 0, 1),
(100, 'mbn_usdt', '9712.80000000', '0.00000000', '0.00000000', 1, 1668182402, 0, 0),
(101, 'mbn_usdt', '9712.80000000', '61.72000000', '61.72000000', 1, 1668214801, 0, 1),
(102, 'mbn_usdt', '9712.80000000', '293.65000000', '293.65000000', 1, 1668214801, 0, 1),
(103, 'mbn_usdt', '9712.80000000', '189.41000000', '189.41000000', 1, 1668214801, 0, 1),
(104, 'mbn_usdt', '9712.80000000', '0.00000000', '0.00000000', 1, 1668268801, 0, 0),
(105, 'mbn_usdt', '9712.80000000', '295.18000000', '295.18000000', 1, 1668301201, 0, 1),
(106, 'mbn_usdt', '9712.80000000', '121.88000000', '121.88000000', 2, 1668301201, 0, 1),
(107, 'mbn_usdt', '9712.80000000', '241.12000000', '241.12000000', 1, 1668301201, 0, 1),
(108, 'mbn_usdt', '9712.80000000', '0.00000000', '0.00000000', 1, 1668355202, 0, 0),
(109, 'mbn_usdt', '9712.80000000', '204.20000000', '204.20000000', 2, 1668387601, 0, 1),
(110, 'mbn_usdt', '9712.80000000', '219.18000000', '219.18000000', 2, 1668387601, 0, 1),
(111, 'mbn_usdt', '9712.80000000', '155.38000000', '155.38000000', 1, 1668387601, 0, 1),
(112, 'mbn_usdt', '9712.80000000', '251.83000000', '251.83000000', 1, 1668444817, 0, 1),
(113, 'mbn_usdt', '9712.80000000', '272.43000000', '272.43000000', 2, 1668444817, 0, 1),
(114, 'mbn_usdt', '9712.80000000', '106.11000000', '106.11000000', 2, 1668444817, 0, 1),
(115, 'mbn_usdt', '9712.80000000', '254.40000000', '254.40000000', 2, 1668475801, 0, 1),
(116, 'mbn_usdt', '9712.80000000', '166.85000000', '166.85000000', 2, 1668475801, 0, 1),
(117, 'mbn_usdt', '9712.80000000', '222.80000000', '222.80000000', 2, 1668475801, 0, 1),
(118, 'mbn_usdt', '9712.80000000', '100.85000000', '100.85000000', 1, 1668562201, 0, 1),
(119, 'mbn_usdt', '9712.80000000', '61.36000000', '61.36000000', 2, 1668562201, 0, 1),
(120, 'mbn_usdt', '9712.80000000', '212.04000000', '212.04000000', 2, 1668562201, 0, 1),
(121, 'mbn_usdt', '9712.80000000', '151.01000000', '151.01000000', 1, 1668648601, 0, 1),
(122, 'mbn_usdt', '9712.80000000', '295.09000000', '295.09000000', 1, 1668648601, 0, 1),
(123, 'mbn_usdt', '9712.80000000', '255.55000000', '255.55000000', 1, 1668648601, 0, 1),
(124, 'mbn_usdt', '9712.80000000', '50.82000000', '50.82000000', 2, 1668735002, 0, 1),
(125, 'mbn_usdt', '9712.80000000', '286.95000000', '286.95000000', 2, 1668735002, 0, 1),
(126, 'mbn_usdt', '9712.80000000', '63.13000000', '63.13000000', 2, 1668735002, 0, 1),
(127, 'mbn_usdt', '9712.80000000', '124.18000000', '124.18000000', 1, 1668821401, 0, 1),
(128, 'mbn_usdt', '9712.80000000', '255.16000000', '255.16000000', 2, 1668821401, 0, 1),
(129, 'mbn_usdt', '9712.80000000', '39.49000000', '39.49000000', 2, 1668821401, 0, 1),
(130, 'mbn_usdt', '9712.80000000', '72.55000000', '72.55000000', 1, 1668907801, 0, 1),
(131, 'mbn_usdt', '9712.80000000', '290.34000000', '290.34000000', 2, 1668907801, 0, 1),
(132, 'mbn_usdt', '9712.80000000', '131.95000000', '131.95000000', 2, 1668907801, 0, 1),
(133, 'mbn_usdt', '9712.80000000', '102.70000000', '102.70000000', 1, 1668994201, 0, 1),
(134, 'mbn_usdt', '9712.80000000', '269.99000000', '269.99000000', 2, 1668994201, 0, 1),
(135, 'mbn_usdt', '9712.80000000', '266.31000000', '266.31000000', 2, 1668994201, 0, 1),
(136, 'mbn_usdt', '9712.80000000', '184.72000000', '184.72000000', 1, 1669080601, 0, 1),
(137, 'mbn_usdt', '9712.80000000', '278.68000000', '278.68000000', 1, 1669080601, 0, 1),
(138, 'mbn_usdt', '9712.80000000', '101.83000000', '101.83000000', 1, 1669080601, 0, 1),
(139, 'mbn_usdt', '9712.80000000', '240.09000000', '240.09000000', 1, 1669167002, 0, 1),
(140, 'mbn_usdt', '9712.80000000', '86.21000000', '86.21000000', 1, 1669167002, 0, 1),
(141, 'mbn_usdt', '9712.80000000', '177.01000000', '177.01000000', 2, 1669167002, 0, 1),
(142, 'mbn_usdt', '9712.80000000', '104.58000000', '104.58000000', 2, 1669253401, 0, 1),
(143, 'mbn_usdt', '9712.80000000', '105.12000000', '105.12000000', 1, 1669253401, 0, 1),
(144, 'mbn_usdt', '9712.80000000', '51.35000000', '51.35000000', 2, 1669253401, 0, 1),
(145, 'mbn_usdt', '9712.80000000', '100.82000000', '100.82000000', 1, 1669339802, 0, 1),
(146, 'mbn_usdt', '9712.80000000', '45.92000000', '45.92000000', 1, 1669339802, 0, 1),
(147, 'mbn_usdt', '9712.80000000', '290.74000000', '290.74000000', 1, 1669339802, 0, 1),
(148, 'mbn_usdt', '9712.80000000', '31.62000000', '31.62000000', 1, 1669426201, 0, 1),
(149, 'mbn_usdt', '9712.80000000', '64.27000000', '64.27000000', 2, 1669426201, 0, 1),
(150, 'mbn_usdt', '9712.80000000', '245.91000000', '245.91000000', 1, 1669426201, 0, 1),
(151, 'mbn_usdt', '9712.80000000', '156.55000000', '156.55000000', 1, 1669512601, 0, 1),
(152, 'mbn_usdt', '9712.80000000', '97.42000000', '97.42000000', 2, 1669512601, 0, 1),
(153, 'mbn_usdt', '9712.80000000', '293.42000000', '293.42000000', 1, 1669512601, 0, 1),
(154, 'mbn_usdt', '9712.80000000', '150.30000000', '150.30000000', 1, 1693587601, 0, 1),
(155, 'mbn_usdt', '9712.80000000', '110.42000000', '110.42000000', 1, 1693587601, 0, 1),
(156, 'mbn_usdt', '9712.80000000', '199.55000000', '199.55000000', 1, 1693587601, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_tyhyorder`
--

CREATE TABLE `tw_tyhyorder` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `username` varchar(60) NOT NULL COMMENT '会员账号',
  `num` float(10,2) NOT NULL COMMENT '投资金额',
  `hybl` float(10,2) NOT NULL COMMENT '盈亏比例',
  `hyzd` int(11) NOT NULL COMMENT '合约涨跌1买涨2买跌',
  `coinname` varchar(30) NOT NULL COMMENT '交易对',
  `status` int(11) NOT NULL COMMENT '状态：1待结算2已结算3无效结算',
  `is_win` int(11) NOT NULL COMMENT '盈亏状态：1盈利2亏损',
  `buytime` datetime NOT NULL COMMENT '购买时间',
  `selltime` datetime NOT NULL COMMENT '结算时间',
  `intselltime` int(11) NOT NULL COMMENT '结算时间戳',
  `buyprice` decimal(12,6) NOT NULL COMMENT '建仓单价',
  `sellprice` decimal(12,6) NOT NULL COMMENT '结算单价',
  `ploss` decimal(12,6) NOT NULL COMMENT '盈亏金额',
  `time` int(11) NOT NULL COMMENT '结算分钟数',
  `kongyk` int(11) NOT NULL COMMENT '控制盈亏1盈利2亏损0未指定',
  `invit` varchar(60) NOT NULL COMMENT '邀请码(上级)',
  `tznum` int(11) NOT NULL DEFAULT '0' COMMENT '0未通知，1已通知'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='合约订单表';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_user`
--

CREATE TABLE `tw_user` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'ID',
  `username` varchar(50) NOT NULL COMMENT '账号(邮箱)',
  `phone` varchar(50) NOT NULL COMMENT '手机号码',
  `money` decimal(20,8) NOT NULL COMMENT '合约体验金',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '注册类型 1 手机  2 邮箱',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '登陆密码',
  `paypassword` varchar(32) NOT NULL DEFAULT '' COMMENT '支付密码',
  `cardzm` varchar(225) NOT NULL COMMENT '身份证正面',
  `cardfm` varchar(225) NOT NULL COMMENT '身份证反面',
  `rzstatus` int(11) NOT NULL COMMENT '认证状态0未申请1已提交2已认让3已驳回',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '待定',
  `invit_1` varchar(50) NOT NULL DEFAULT '' COMMENT '上一代',
  `invit_2` varchar(50) NOT NULL DEFAULT '' COMMENT '上二代',
  `invit_3` varchar(50) NOT NULL DEFAULT '' COMMENT '上三代',
  `path` text NOT NULL COMMENT '团队路径',
  `logins` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `addip` varchar(50) NOT NULL DEFAULT '' COMMENT '注册IP',
  `addr` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP区域',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '注册时间j',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lgtime` date NOT NULL COMMENT '登陆时间',
  `loginip` varchar(50) NOT NULL COMMENT '登陆IP',
  `loginaddr` varchar(225) NOT NULL COMMENT '登陆地址',
  `logintime` datetime NOT NULL COMMENT '登陆时间',
  `rztime` int(11) UNSIGNED NOT NULL COMMENT '认证提交时间',
  `rzuptime` int(11) UNSIGNED NOT NULL COMMENT '认证处理时间',
  `status` tinyint(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态1正常2禁用',
  `txstate` int(11) NOT NULL COMMENT '提币状态1正常2禁止',
  `invit` varchar(50) DEFAULT NULL COMMENT '邀请码',
  `stoptime` int(11) NOT NULL COMMENT '禁止提现时间',
  `is_agent` int(11) NOT NULL DEFAULT '0' COMMENT '	0否1是',
  `area_code` varchar(255) DEFAULT NULL COMMENT '区号',
  `real_name` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `rztype` enum('1','2','3','4') DEFAULT NULL COMMENT ' 1 护照 2驾驶证 3SSN 4身份ID',
  `buy_on` int(1) NOT NULL DEFAULT '1' COMMENT '1允许交易2禁止交易',
  `lang` varchar(30) DEFAULT NULL COMMENT '默认语言',
  `user_type` int(1) DEFAULT '1' COMMENT '1=正常用户 2=测试用户'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表' ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_user`
--

INSERT INTO `tw_user` (`id`, `username`, `phone`, `money`, `type`, `password`, `paypassword`, `cardzm`, `cardfm`, `rzstatus`, `level`, `invit_1`, `invit_2`, `invit_3`, `path`, `logins`, `addip`, `addr`, `addtime`, `endtime`, `lgtime`, `loginip`, `loginaddr`, `logintime`, `rztime`, `rzuptime`, `status`, `txstate`, `invit`, `stoptime`, `is_agent`, `area_code`, `real_name`, `area`, `rztype`, `buy_on`, `lang`, `user_type`) VALUES
(587, '0911223344', '', '0.00000000', 1, 'd0970714757783e6cf17b26fb8e2298f', '', '', '', 0, 0, '0', '0', '0', '', 2, '51.79.239.46', '柬埔寨', 1695998126, 0, '2023-12-23', '1.54.213.75', '越南河内', '2023-12-23 16:42:03', 0, 0, 1, 1, 'RoxQV', 0, 0, '', NULL, NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_user_coin`
--

CREATE TABLE `tw_user_coin` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `usdt` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `usdtd` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `usdtb` varchar(200) NOT NULL DEFAULT '0',
  `btc` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `btcd` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `btcb` varchar(200) NOT NULL DEFAULT '0',
  `eth` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `ethd` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `ethb` varchar(200) NOT NULL DEFAULT '0',
  `dydx` decimal(20,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `dydxb` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `dydxd` decimal(20,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户币种表' ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_user_coin`
--

INSERT INTO `tw_user_coin` (`id`, `userid`, `usdt`, `usdtd`, `usdtb`, `btc`, `btcd`, `btcb`, `eth`, `ethd`, `ethb`, `dydx`, `dydxb`, `dydxd`) VALUES
(1, 551, '1776.53751000', '0.00000000', '0', '0.00001969', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(2, 552, '441.22099000', '0.00000000', '0', '0.25418200', '0.00000000', '0', '0.06278000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(3, 553, '4826.44120000', '0.00000000', '0', '0.14540085', '0.00000000', '0', '0.02995500', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(4, 554, '4878.18078613', '0.00000000', '0', '0.00000086', '0.00000000', '0', '1.04307741', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(5, 555, '9125.87310000', '0.00000000', '0', '0.01400218', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(6, 556, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(7, 557, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(8, 558, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(9, 559, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(10, 560, '1752.50000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(11, 561, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(12, 562, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(13, 563, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(14, 564, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(15, 565, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(16, 566, '1200.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(17, 567, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(18, 568, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(19, 569, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(20, 570, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(21, 571, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(22, 572, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(23, 573, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(24, 574, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(25, 575, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(26, 576, '4173.34000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(27, 577, '0.50000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(28, 578, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(29, 579, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(30, 580, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(31, 581, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(32, 582, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(33, 583, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(34, 584, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(35, 585, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(36, 586, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(37, 587, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(38, 588, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(39, 589, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(40, 590, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(41, 591, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(42, 592, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(43, 593, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(44, 594, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(45, 595, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(46, 596, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(47, 597, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(48, 598, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(49, 599, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(50, 600, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(51, 601, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(52, 602, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(53, 603, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(54, 604, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(55, 605, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(56, 606, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(57, 607, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(58, 608, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(59, 609, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(60, 610, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(61, 611, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(62, 612, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(63, 613, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(64, 614, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(65, 615, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(66, 616, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(67, 617, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(68, 618, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(69, 619, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(70, 620, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(71, 621, '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000'),
(72, 622, '100.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0', '0.00000000', '0.00000000', '0.00000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_user_log`
--

CREATE TABLE `tw_user_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `addip` varchar(200) NOT NULL DEFAULT '',
  `addr` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户记录表' ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_user_log`
--

INSERT INTO `tw_user_log` (`id`, `userid`, `type`, `remark`, `addip`, `addr`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 333, '登录', '邮箱登录', '172.104.89.191', '北美地区', 0, 1669932676, 0, 1),
(2, 551, 'Đăng nhập', 'Đăng nhập qua email', '117.5.56.105', '越南', 0, 1693543500, 0, 1),
(3, 551, 'Đăng nhập', 'Đăng nhập qua email', '117.5.56.105', '越南', 0, 1693544120, 0, 1),
(4, 552, 'Đăng nhập', 'Đăng nhập qua email', '117.5.184.16', '越南', 0, 1693544160, 0, 1),
(5, 553, 'Đăng nhập', 'Đăng nhập qua email', '171.225.248.76', '越南', 0, 1693544323, 0, 1),
(6, 554, 'Sign in ', 'Mailbox login', '36.37.198.219', '柬埔寨', 0, 1693544621, 0, 1),
(7, 554, 'Sign in ', 'Mailbox login', '42.96.54.33', '越南', 0, 1693545426, 0, 1),
(8, 552, 'Đăng nhập', 'Đăng nhập qua email', '171.225.248.76', '越南', 0, 1693545530, 0, 1),
(9, 553, 'Sign in ', 'Mailbox login', '171.225.248.76', '越南', 0, 1693545677, 0, 1),
(10, 554, 'Sign in ', 'Mailbox login', '36.37.198.219', '柬埔寨', 0, 1693549714, 0, 1),
(11, 555, 'Đăng nhập', 'Đăng nhập qua email', '1.55.227.56', '越南河内', 0, 1693566298, 0, 1),
(12, 555, 'Đăng nhập', 'Đăng nhập qua email', '1.55.227.56', '越南河内', 0, 1693589094, 0, 1),
(13, 554, 'Đăng nhập', 'Đăng nhập qua email', '202.150.3.60', '柬埔寨', 0, 1693624929, 0, 1),
(14, 555, 'Đăng nhập', 'Đăng nhập qua email', '59.153.240.117', '日本平成电电网', 0, 1693645974, 0, 1),
(15, 554, 'Đăng nhập', 'Đăng nhập qua email', '203.144.93.96', '柬埔寨Mobile', 0, 1693646793, 0, 1),
(16, 555, 'Đăng nhập', 'Đăng nhập qua email', '59.153.240.117', '日本平成电电网', 0, 1693651463, 0, 1),
(17, 556, 'Đăng nhập', 'Đăng nhập qua email', '125.212.159.18', '越南', 0, 1693651553, 0, 1),
(18, 556, 'Đăng nhập', 'Đăng nhập qua email', '59.153.252.37', '日本平成电电网', 0, 1693653449, 0, 1),
(19, 555, 'Đăng nhập', 'Đăng nhập qua email', '59.153.251.166', '日本平成电电网', 0, 1693654412, 0, 1),
(20, 554, 'Đăng nhập', 'Đăng nhập qua email', '203.144.73.93', '柬埔寨Mobile', 0, 1693669022, 0, 1),
(21, 553, 'Đăng nhập', 'Đăng nhập qua email', '14.236.147.98', '越南', 0, 1693706348, 0, 1),
(22, 554, 'Đăng nhập', 'Đăng nhập qua email', '36.37.206.33', '柬埔寨', 0, 1693710908, 0, 1),
(23, 555, 'Đăng nhập', 'Đăng nhập qua email', '59.153.251.201', '日本平成电电网', 0, 1693722602, 0, 1),
(24, 554, 'Đăng nhập', 'Đăng nhập qua email', '36.37.206.33', '柬埔寨', 0, 1693731587, 0, 1),
(25, 554, 'Đăng nhập', 'Đăng nhập qua email', '36.37.152.12', '柬埔寨', 0, 1693739188, 0, 1),
(26, 552, 'Đăng nhập', 'Đăng nhập qua email', '113.22.85.90', '越南', 0, 1693755627, 0, 1),
(27, 551, 'Đăng nhập', 'Đăng nhập qua email', '116.107.118.81', '越南', 0, 1693756466, 0, 1),
(28, 554, 'Đăng nhập', 'Đăng nhập qua email', '203.144.80.142', '柬埔寨Mobile', 0, 1693757304, 0, 1),
(29, 554, 'Đăng nhập', 'Đăng nhập qua email', '203.144.80.142', '柬埔寨Mobile', 0, 1693794827, 0, 1),
(30, 554, 'Đăng nhập', 'Đăng nhập qua email', '36.37.233.195', '柬埔寨', 0, 1693811574, 0, 1),
(31, 554, 'Sign in ', 'Mailbox login', '42.96.54.33', '越南', 0, 1693817508, 0, 1),
(32, 553, 'Đăng nhập', 'Đăng nhập qua email', '171.225.248.76', '越南', 0, 1693818892, 0, 1),
(33, 551, 'Đăng nhập', 'Đăng nhập qua email', '117.5.184.16', '越南', 0, 1693820082, 0, 1),
(34, 554, 'Đăng nhập', 'Đăng nhập qua email', '36.37.233.195', '柬埔寨', 0, 1693826775, 0, 1),
(35, 555, 'Sign in ', 'Mailbox login', '1.55.167.228', '越南河内', 0, 1693835233, 0, 1),
(36, 554, 'Đăng nhập', 'Đăng nhập qua email', '36.37.233.195', '柬埔寨', 0, 1693840173, 0, 1),
(37, 552, 'Đăng nhập', 'Đăng nhập qua email', '113.22.85.90', '越南', 0, 1693842874, 0, 1),
(38, 553, 'Đăng nhập', 'Đăng nhập qua email', '171.225.248.76', '越南', 0, 1693843205, 0, 1),
(39, 551, 'Đăng nhập', 'Đăng nhập qua email', '116.107.118.81', '越南', 0, 1693844727, 0, 1),
(40, 554, 'Đăng nhập', 'Đăng nhập qua email', '203.144.68.223', '柬埔寨Mobile', 0, 1693846826, 0, 1),
(41, 554, 'Đăng nhập', 'Đăng nhập qua email', '203.144.68.223', '柬埔寨Mobile', 0, 1693850757, 0, 1),
(42, 554, 'Sign in ', 'Mailbox login', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1693850999, 0, 1),
(43, 554, 'Đăng nhập', 'Đăng nhập qua email', '203.144.68.223', '柬埔寨Mobile', 0, 1693881085, 0, 1),
(44, 554, 'Đăng nhập', 'Đăng nhập qua email', '42.96.54.33', '越南', 0, 1693890527, 0, 1),
(45, 555, 'Đăng nhập', 'Đăng nhập qua email', '1.55.223.236', '越南河内', 0, 1693891714, 0, 1),
(46, 552, 'Sign in ', 'Mailbox login', '203.80.170.103', '澳大利亚', 0, 1693896442, 0, 1),
(47, 552, 'Sign in ', 'Mailbox login', '203.80.170.103', '澳大利亚', 0, 1693896537, 0, 1),
(48, 552, 'Sign in ', 'Mailbox login', '203.176.129.120', '柬埔寨', 0, 1693897523, 0, 1),
(49, 552, 'Đăng nhập', 'Đăng nhập qua email', '203.176.129.120', '柬埔寨', 0, 1693897708, 0, 1),
(50, 551, 'Đăng nhập', 'Đăng nhập qua email', '125.235.62.129', '越南Vietel(越南电信)xDSL宽带', 0, 1693899972, 0, 1),
(51, 554, 'Sign in ', 'Mailbox login', '42.96.54.33', '越南', 0, 1693903337, 0, 1),
(52, 554, 'Đăng nhập', 'Đăng nhập qua email', '203.144.68.223', '柬埔寨Mobile', 0, 1693905389, 0, 1),
(53, 552, 'Đăng nhập', 'Đăng nhập qua email', '203.176.129.120', '柬埔寨', 0, 1693907150, 0, 1),
(54, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.28', '美国CloudFlare公司CDN节点', 0, 1693907763, 0, 1),
(55, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.28', '美国CloudFlare公司CDN节点', 0, 1693907763, 0, 1),
(56, 554, 'Đăng nhập', 'Đăng nhập qua email', '42.96.54.33', '越南', 0, 1693910618, 0, 1),
(57, 552, 'Sign in ', 'Mailbox login', '175.100.7.5', '柬埔寨', 0, 1693913738, 0, 1),
(58, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1693918359, 0, 1),
(59, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1693918359, 0, 1),
(60, 553, 'Đăng nhập', 'Đăng nhập qua email', '171.225.248.76', '越南', 0, 1693927888, 0, 1),
(61, 554, 'Đăng nhập', 'Đăng nhập qua email', '203.144.75.160', '柬埔寨Mobile', 0, 1693933589, 0, 1),
(62, 551, 'Sign in ', 'Mailbox login', '171.224.179.226', '越南', 0, 1693933644, 0, 1),
(63, 552, 'Sign in ', 'Mailbox login', '103.142.208.248', '亚太地区', 0, 1693936130, 0, 1),
(64, 553, 'Đăng nhập', 'Đăng nhập qua email', '104.28.242.246', '美国CloudFlare公司CDN节点', 0, 1693967940, 0, 1),
(65, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.179.226', '越南', 0, 1693968926, 0, 1),
(66, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.179.226', '越南', 0, 1693969343, 0, 1),
(67, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.179.226', '越南', 0, 1693969786, 0, 1),
(68, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.179.226', '越南', 0, 1693970322, 0, 1),
(69, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1693970458, 0, 1),
(70, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1693970460, 0, 1),
(71, 554, 'Đăng nhập', 'Đăng nhập qua email', '36.37.197.158', '柬埔寨', 0, 1693970538, 0, 1),
(72, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.179.226', '越南', 0, 1693970745, 0, 1),
(73, 557, 'Đăng nhập', 'Đăng nhập qua email', '171.224.179.226', '越南', 0, 1693970798, 0, 1),
(74, 558, 'Sign in ', 'Mailbox login', '104.28.242.246', '美国CloudFlare公司CDN节点', 0, 1693970879, 0, 1),
(75, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.179.226', '越南', 0, 1693972587, 0, 1),
(76, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.27', '美国CloudFlare公司CDN节点', 0, 1693975078, 0, 1),
(77, 558, 'Đăng nhập', 'Đăng nhập qua email', '104.28.242.246', '美国CloudFlare公司CDN节点', 0, 1693977078, 0, 1),
(78, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.29', '美国CloudFlare公司CDN节点', 0, 1693979144, 0, 1),
(79, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.29', '美国CloudFlare公司CDN节点', 0, 1693979145, 0, 1),
(80, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.179.226', '越南', 0, 1693979673, 0, 1),
(81, 553, 'Sign in ', 'Mailbox login', '171.225.248.76', '越南', 0, 1693985002, 0, 1),
(82, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.225.79.40', '美国', 0, 1693985366, 0, 1),
(83, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.225.79.40', '美国', 0, 1693985367, 0, 1),
(84, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.226.42.228', '美国', 0, 1693990237, 0, 1),
(85, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.226.42.228', '美国', 0, 1693990237, 0, 1),
(86, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.27', '美国CloudFlare公司CDN节点', 0, 1693997551, 0, 1),
(87, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.27', '美国CloudFlare公司CDN节点', 0, 1693997552, 0, 1),
(88, 555, 'Đăng nhập', 'Đăng nhập qua email', '59.153.238.153', '日本平成电电网', 0, 1694008976, 0, 1),
(89, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1694009068, 0, 1),
(90, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1694009068, 0, 1),
(91, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1694011226, 0, 1),
(92, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1694011226, 0, 1),
(93, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.226.42.228', '美国', 0, 1694016582, 0, 1),
(94, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.226.42.228', '美国', 0, 1694016583, 0, 1),
(95, 552, 'Đăng nhập', 'Đăng nhập qua email', '103.142.208.248', '亚太地区', 0, 1694040700, 0, 1),
(96, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.27', '美国CloudFlare公司CDN节点', 0, 1694063102, 0, 1),
(97, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.27', '美国CloudFlare公司CDN节点', 0, 1694063103, 0, 1),
(98, 552, 'Sign in ', 'Mailbox login', '36.37.152.243', '柬埔寨', 0, 1694067597, 0, 1),
(99, 555, 'Đăng nhập', 'Đăng nhập qua email', '59.153.254.149', '日本平成电电网', 0, 1694085042, 0, 1),
(100, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.226.42.232', '美国', 0, 1694098399, 0, 1),
(101, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.226.42.232', '美国', 0, 1694098399, 0, 1),
(102, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1694104113, 0, 1),
(103, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1694104114, 0, 1),
(104, 559, 'Sign in ', 'Mailbox login', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1694106524, 0, 1),
(105, 559, 'Sign in ', 'Mailbox login', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1694106524, 0, 1),
(106, 560, 'Đăng nhập', 'Đăng nhập qua email', '27.75.132.246', '越南', 0, 1694106748, 0, 1),
(107, 560, 'Đăng nhập', 'Đăng nhập qua email', '27.75.132.246', '越南', 0, 1694106841, 0, 1),
(108, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1694111587, 0, 1),
(109, 555, 'Đăng nhập', 'Đăng nhập qua email', '59.153.235.58', '日本平成电电网', 0, 1694160956, 0, 1),
(110, 555, 'Đăng nhập', 'Đăng nhập qua email', '59.153.231.177', '日本平成电电网', 0, 1694162385, 0, 1),
(111, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.69.27', '美国CloudFlare公司CDN节点', 0, 1694162463, 0, 1),
(112, 562, 'Đăng nhập', 'Đăng nhập qua email', '59.153.231.177', '日本平成电电网', 0, 1694162466, 0, 1),
(113, 562, 'Đăng nhập', 'Đăng nhập qua email', '113.173.63.169', '越南', 0, 1694162677, 0, 1),
(114, 562, 'Đăng nhập', 'Đăng nhập qua email', '113.173.63.169', '越南', 0, 1694162690, 0, 1),
(115, 562, 'Đăng nhập', 'Đăng nhập qua email', '113.173.63.169', '越南', 0, 1694162696, 0, 1),
(116, 562, 'Đăng nhập', 'Đăng nhập qua email', '113.173.63.169', '越南', 0, 1694162907, 0, 1),
(117, 555, 'Đăng nhập', 'Đăng nhập qua email', '59.153.235.73', '日本平成电电网', 0, 1694162943, 0, 1),
(118, 562, 'Đăng nhập', 'Đăng nhập qua email', '113.173.63.169', '越南', 0, 1694162986, 0, 1),
(119, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.66.25', '美国CloudFlare公司CDN节点', 0, 1694171820, 0, 1),
(120, 560, 'Đăng nhập', 'Đăng nhập qua email', '27.75.132.246', '越南', 0, 1694176473, 0, 1),
(121, 560, 'Đăng nhập', 'Đăng nhập qua email', '27.75.132.246', '越南', 0, 1694176474, 0, 1),
(122, 560, 'Đăng nhập', 'Đăng nhập qua email', '27.75.132.246', '越南', 0, 1694177145, 0, 1),
(123, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1694177780, 0, 1),
(124, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1694177782, 0, 1),
(125, 564, 'Sign in ', 'Mailbox login', '113.185.74.61', '越南', 0, 1694178052, 0, 1),
(126, 564, 'Đăng nhập', 'Đăng nhập qua email', '113.185.74.61', '越南', 0, 1694178620, 0, 1),
(127, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.28', '美国CloudFlare公司CDN节点', 0, 1694184005, 0, 1),
(128, 564, 'Đăng nhập', 'Đăng nhập qua email', '113.185.74.61', '越南', 0, 1694185896, 0, 1),
(129, 554, 'Đăng nhập', 'Đăng nhập qua email', '36.37.233.190', '柬埔寨', 0, 1694190443, 0, 1),
(130, 566, 'Đăng nhập', 'Đăng nhập qua email', '104.28.254.75', '美国CloudFlare公司CDN节点', 0, 1694190526, 0, 1),
(131, 566, 'Đăng nhập', 'Đăng nhập qua email', '116.96.46.246', '越南', 0, 1694190604, 0, 1),
(132, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1694195142, 0, 1),
(133, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.69.27', '美国CloudFlare公司CDN节点', 0, 1694231763, 0, 1),
(134, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.69.27', '美国CloudFlare公司CDN节点', 0, 1694231763, 0, 1),
(135, 564, 'Đăng nhập', 'Đăng nhập qua email', '113.185.74.61', '越南', 0, 1694238250, 0, 1),
(136, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.69.27', '美国CloudFlare公司CDN节点', 0, 1694240258, 0, 1),
(137, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.69.27', '美国CloudFlare公司CDN节点', 0, 1694240259, 0, 1),
(138, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.66.27', '美国CloudFlare公司CDN节点', 0, 1694255685, 0, 1),
(139, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.66.27', '美国CloudFlare公司CDN节点', 0, 1694255686, 0, 1),
(140, 554, 'Đăng nhập', 'Đăng nhập qua email', '42.96.54.33', '越南', 0, 1694260408, 0, 1),
(141, 552, 'Sign in ', 'Mailbox login', '175.100.78.217', '柬埔寨', 0, 1694409455, 0, 1),
(142, 552, 'Đăng nhập', 'Đăng nhập qua email', '175.100.78.217', '柬埔寨', 0, 1694409680, 0, 1),
(143, 552, 'Đăng nhập', 'Đăng nhập qua email', '42.118.49.111', '越南FPT电信公司', 0, 1694410119, 0, 1),
(144, 552, 'Đăng nhập', 'Đăng nhập qua email', '36.37.152.201', '柬埔寨', 0, 1694410317, 0, 1),
(145, 552, 'Đăng nhập', 'Đăng nhập qua email', '36.37.152.201', '柬埔寨', 0, 1694410317, 0, 1),
(146, 552, 'Đăng nhập', 'Đăng nhập qua email', '175.100.78.217', '柬埔寨', 0, 1694410327, 0, 1),
(147, 552, 'Đăng nhập', 'Đăng nhập qua email', '175.100.78.217', '柬埔寨', 0, 1694410357, 0, 1),
(148, 552, 'Đăng nhập', 'Đăng nhập qua email', '175.100.78.217', '柬埔寨', 0, 1694411089, 0, 1),
(149, 552, 'Đăng nhập', 'Đăng nhập qua email', '175.100.78.217', '柬埔寨', 0, 1694419350, 0, 1),
(150, 552, 'Sign in ', 'Mailbox login', '94.205.104.161', '阿联酋', 0, 1694430481, 0, 1),
(151, 552, 'Sign in ', 'Mailbox login', '94.205.104.161', '阿联酋', 0, 1694430482, 0, 1),
(152, 552, 'Sign in ', 'Mailbox login', '94.205.104.161', '阿联酋', 0, 1694430483, 0, 1),
(153, 552, 'Đăng nhập', 'Đăng nhập qua email', '203.205.13.192', '越南', 0, 1694430937, 0, 1),
(154, 552, 'Sign in ', 'Mailbox login', '203.205.13.192', '越南', 0, 1694431385, 0, 1),
(155, 552, 'Sign in ', 'Mailbox login', '203.205.13.192', '越南', 0, 1694431386, 0, 1),
(156, 552, 'Sign in ', 'Mailbox login', '203.205.13.192', '越南', 0, 1694431387, 0, 1),
(157, 552, 'Đăng nhập', 'Đăng nhập qua email', '94.205.104.161', '阿联酋', 0, 1694432094, 0, 1),
(158, 552, 'Đăng nhập', 'Đăng nhập qua email', '103.73.164.133', '亚太地区', 0, 1694496142, 0, 1),
(159, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.113.208', '柬埔寨', 0, 1694502588, 0, 1),
(160, 552, 'Đăng nhập', 'Đăng nhập qua email', '103.136.20.154', '亚太地区', 0, 1694503015, 0, 1),
(161, 552, 'Sign in ', 'Mailbox login', '118.68.37.15', '柬埔寨', 0, 1694503079, 0, 1),
(162, 552, 'Sign in ', 'Mailbox login', '118.68.37.15', '柬埔寨', 0, 1694526303, 0, 1),
(163, 552, 'Đăng nhập', 'Đăng nhập qua email', '118.68.37.15', '柬埔寨', 0, 1694526825, 0, 1),
(164, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694526873, 0, 1),
(165, 552, 'Sign in ', 'Mailbox login', '118.68.37.15', '柬埔寨', 0, 1694527819, 0, 1),
(166, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694528225, 0, 1),
(167, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694528561, 0, 1),
(168, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694531518, 0, 1),
(169, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694531737, 0, 1),
(170, 552, 'Đăng nhập', 'Đăng nhập qua email', '111.90.188.157', '柬埔寨', 0, 1694531955, 0, 1),
(171, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.179.226', '越南', 0, 1694537569, 0, 1),
(172, 551, 'Đăng nhập', 'Đăng nhập qua email', '111.90.184.245', '柬埔寨', 0, 1694537606, 0, 1),
(173, 551, 'Đăng nhập', 'Đăng nhập qua email', '36.37.150.83', '柬埔寨', 0, 1694538171, 0, 1),
(174, 551, 'Đăng nhập', 'Đăng nhập qua email', '111.90.184.245', '柬埔寨', 0, 1694538558, 0, 1),
(175, 551, 'Sign in ', 'Mailbox login', '36.37.150.83', '柬埔寨', 0, 1694539127, 0, 1),
(176, 551, 'Đăng nhập', 'Đăng nhập qua email', '111.90.184.245', '柬埔寨', 0, 1694539401, 0, 1),
(177, 552, 'Sign in ', 'Mailbox login', '175.100.78.250', '柬埔寨', 0, 1694579730, 0, 1),
(178, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694579937, 0, 1),
(179, 552, 'Đăng nhập', 'Đăng nhập qua email', '42.118.49.111', '越南FPT电信公司', 0, 1694580342, 0, 1),
(180, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694584088, 0, 1),
(181, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694584151, 0, 1),
(182, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694584152, 0, 1),
(183, 552, 'Sign in ', 'Mailbox login', '118.68.37.15', '柬埔寨', 0, 1694585396, 0, 1),
(184, 552, 'Đăng nhập', 'Đăng nhập qua email', '203.144.75.224', '柬埔寨Mobile', 0, 1694586992, 0, 1),
(185, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694588418, 0, 1),
(186, 552, 'Sign in ', 'Mailbox login', '118.68.37.15', '柬埔寨', 0, 1694589113, 0, 1),
(187, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.109.115.150', '柬埔寨', 0, 1694606467, 0, 1),
(188, 552, 'Đăng nhập', 'Đăng nhập qua email', '175.100.78.250', '柬埔寨', 0, 1694611246, 0, 1),
(189, 552, 'Đăng nhập', 'Đăng nhập qua email', '175.100.78.250', '柬埔寨', 0, 1694615730, 0, 1),
(190, 552, 'Đăng nhập', 'Đăng nhập qua email', '175.100.78.250', '柬埔寨', 0, 1694615731, 0, 1),
(191, 554, 'Sign in ', 'Mailbox login', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1694624536, 0, 1),
(192, 554, 'Sign in ', 'Mailbox login', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1694624537, 0, 1),
(193, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.28', '美国CloudFlare公司CDN节点', 0, 1694659712, 0, 1),
(194, 552, 'Sign in ', 'Mailbox login', '118.68.37.15', '柬埔寨', 0, 1694679731, 0, 1),
(195, 552, 'Sign in ', 'Mailbox login', '118.68.37.15', '柬埔寨', 0, 1694679951, 0, 1),
(196, 552, 'Sign in ', 'Mailbox login', '118.68.37.15', '柬埔寨', 0, 1694680011, 0, 1),
(197, 552, 'Đăng nhập', 'Đăng nhập qua email', '203.205.13.192', '越南', 0, 1694681597, 0, 1),
(198, 552, 'Sign in ', 'Mailbox login', '118.68.37.15', '柬埔寨', 0, 1694681888, 0, 1),
(199, 554, 'Sign in ', 'Mailbox login', '104.28.117.28', '美国CloudFlare公司CDN节点', 0, 1694703044, 0, 1),
(200, 554, 'Sign in ', 'Mailbox login', '104.28.117.28', '美国CloudFlare公司CDN节点', 0, 1694703044, 0, 1),
(201, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.16', '瑞典', 0, 1694711454, 0, 1),
(202, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.16', '瑞典', 0, 1694711454, 0, 1),
(203, 553, 'Sign in ', 'Mailbox login', '42.117.33.164', '越南FPT电信公司', 0, 1694725419, 0, 1),
(204, 553, 'Sign in ', 'Mailbox login', '113.22.89.150', '越南', 0, 1694727129, 0, 1),
(205, 552, 'Đăng nhập', 'Đăng nhập qua email', '175.100.78.190', '柬埔寨', 0, 1694753476, 0, 1),
(206, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1694795053, 0, 1),
(207, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1694795053, 0, 1),
(208, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.225.180.65', '美国', 0, 1694809477, 0, 1),
(209, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.225.180.65', '美国', 0, 1694809478, 0, 1),
(210, 552, 'Đăng nhập', 'Đăng nhập qua email', '118.68.37.15', '柬埔寨', 0, 1694865295, 0, 1),
(211, 567, 'Đăng nhập', 'Đăng nhập qua email', '118.68.37.15', '柬埔寨', 0, 1694865831, 0, 1),
(212, 552, 'Đăng nhập', 'Đăng nhập qua email', '118.68.37.15', '柬埔寨', 0, 1694866595, 0, 1),
(213, 552, 'Đăng nhập', 'Đăng nhập qua email', '202.93.153.228', '柬埔寨', 0, 1694867070, 0, 1),
(214, 552, 'Đăng nhập', 'Đăng nhập qua email', '118.68.37.15', '柬埔寨', 0, 1694867594, 0, 1),
(215, 552, 'Sign in ', 'Mailbox login', '118.68.37.15', '柬埔寨', 0, 1694868716, 0, 1),
(216, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.16', '瑞典', 0, 1694875529, 0, 1),
(217, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.16', '瑞典', 0, 1694875531, 0, 1),
(218, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1694917802, 0, 1),
(219, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1694917803, 0, 1),
(220, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1694934584, 0, 1),
(221, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1694934585, 0, 1),
(222, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.28', '美国CloudFlare公司CDN节点', 0, 1694942317, 0, 1),
(223, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1694961692, 0, 1),
(224, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.29', '美国CloudFlare公司CDN节点', 0, 1694961692, 0, 1),
(225, 551, 'Sign in ', 'Mailbox login', '116.107.118.81', '越南', 0, 1694967130, 0, 1),
(226, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1694971759, 0, 1),
(227, 553, 'Đăng nhập', 'Đăng nhập qua email', '104.28.237.70', '美国CloudFlare公司CDN节点', 0, 1694973084, 0, 1),
(228, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1695034755, 0, 1),
(229, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1695034756, 0, 1),
(230, 553, 'Đăng nhập', 'Đăng nhập qua email', '104.28.205.70', '美国CloudFlare公司CDN节点', 0, 1695044008, 0, 1),
(231, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.28', '美国CloudFlare公司CDN节点', 0, 1695046685, 0, 1),
(232, 554, 'Đăng nhập', 'Đăng nhập qua email', '203.144.79.70', '柬埔寨Mobile', 0, 1695047937, 0, 1),
(233, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.48.240', '越南', 0, 1695050333, 0, 1),
(234, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.48.240', '越南', 0, 1695050642, 0, 1),
(235, 553, 'Đăng nhập', 'Đăng nhập qua email', '123.21.152.62', '越南越南邮电集团公司', 0, 1695053340, 0, 1),
(236, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.48.240', '越南', 0, 1695054134, 0, 1),
(237, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.29', '美国CloudFlare公司CDN节点', 0, 1695054526, 0, 1),
(238, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.120.29', '美国CloudFlare公司CDN节点', 0, 1695054527, 0, 1),
(239, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.48.240', '越南', 0, 1695054572, 0, 1),
(240, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.48.240', '越南', 0, 1695054616, 0, 1),
(241, 568, 'Đăng nhập', 'Đăng nhập qua email', '171.224.48.240', '越南', 0, 1695054663, 0, 1),
(242, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.48.240', '越南', 0, 1695054734, 0, 1),
(243, 552, 'Đăng nhập', 'Đăng nhập qua email', '42.118.49.111', '越南FPT电信公司', 0, 1695108309, 0, 1),
(244, 552, 'Đăng nhập', 'Đăng nhập qua email', '42.118.49.111', '越南FPT电信公司', 0, 1695108432, 0, 1),
(245, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1695123383, 0, 1),
(246, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1695123384, 0, 1),
(247, 551, 'Đăng nhập', 'Đăng nhập qua email', '27.68.213.62', '越南', 0, 1695219242, 0, 1),
(248, 551, 'Đăng nhập', 'Đăng nhập qua email', '58.186.167.18', '越南', 0, 1695219328, 0, 1),
(249, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1695301893, 0, 1),
(250, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1695301893, 0, 1),
(251, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.225.180.76', '美国', 0, 1695305860, 0, 1),
(252, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.225.180.76', '美国', 0, 1695305861, 0, 1),
(253, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.226.42.255', '美国', 0, 1695389189, 0, 1),
(254, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.226.42.255', '美国', 0, 1695389190, 0, 1),
(255, 551, 'Đăng nhập', 'Đăng nhập qua email', '59.153.235.202', '日本平成电电网', 0, 1695453535, 0, 1),
(256, 551, 'Đăng nhập', 'Đăng nhập qua email', '42.118.12.146', '越南FPT电信公司', 0, 1695456838, 0, 1),
(257, 551, 'Đăng nhập', 'Đăng nhập qua email', '42.118.12.146', '越南FPT电信公司', 0, 1695459037, 0, 1),
(258, 551, 'Đăng nhập', 'Đăng nhập qua email', '42.118.12.146', '越南FPT电信公司', 0, 1695459961, 0, 1),
(259, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.226.42.212', '美国', 0, 1695483470, 0, 1),
(260, 554, 'Đăng nhập', 'Đăng nhập qua email', '172.226.42.212', '美国', 0, 1695483471, 0, 1),
(261, 564, 'Đăng nhập', 'Đăng nhập qua email', '113.185.76.197', '越南', 0, 1695564385, 0, 1),
(262, 553, 'Đăng nhập', 'Đăng nhập qua email', '118.69.7.127', '柬埔寨', 0, 1695623382, 0, 1),
(263, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.224.180.247', '越南', 0, 1695657452, 0, 1),
(264, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1695671228, 0, 1),
(265, 554, 'Đăng nhập', 'Đăng nhập qua email', '104.28.117.27', '美国CloudFlare公司CDN节点', 0, 1695671229, 0, 1),
(266, 551, 'Đăng nhập', 'Đăng nhập qua email', '202.43.224.1', '澳大利亚阿德莱德', 0, 1695721448, 0, 1),
(267, 551, 'Đăng nhập', 'Đăng nhập qua email', '1.47.199.117', '泰国', 0, 1695721667, 0, 1),
(268, 551, 'Đăng nhập', 'Đăng nhập qua email', '1.47.199.117', '泰国', 0, 1695723049, 0, 1),
(269, 551, 'Đăng nhập', 'Đăng nhập qua email', '171.253.131.133', '越南', 0, 1695736445, 0, 1),
(270, 551, 'Đăng nhập', 'Đăng nhập qua email', '104.28.222.74', '美国CloudFlare公司CDN节点', 0, 1695741435, 0, 1),
(271, 551, 'Đăng nhập', 'Đăng nhập qua email', '49.237.200.236', '泰国', 0, 1695742817, 0, 1),
(272, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1695749592, 0, 1),
(273, 554, 'Đăng nhập', 'Đăng nhập qua email', '146.75.187.17', '瑞典', 0, 1695749592, 0, 1),
(274, 551, 'Đăng nhập', 'Đăng nhập qua email', '59.153.237.155', '日本平成电电网', 0, 1695787829, 0, 1),
(275, 551, 'Đăng nhập', 'Đăng nhập qua email', '59.153.237.155', '日本平成电电网', 0, 1695787830, 0, 1),
(276, 551, 'Đăng nhập', 'Đăng nhập qua email', '14.171.25.153', '越南', 0, 1695788143, 0, 1),
(277, 552, 'Đăng nhập', 'Đăng nhập qua email', '58.186.90.132', '越南', 0, 1695870001, 0, 1),
(278, 551, 'Đăng nhập', 'Đăng nhập qua email', '1.55.109.107', '越南河内', 0, 1695872398, 0, 1),
(279, 569, 'Đăng nhập', 'Đăng nhập qua email', '58.186.90.132', '越南', 0, 1695873234, 0, 1),
(280, 551, 'Đăng nhập', 'Đăng nhập qua email', '1.55.109.107', '越南河内', 0, 1695874096, 0, 1),
(281, 553, 'Đăng nhập', 'Đăng nhập qua email', '113.23.12.130', '越南', 0, 1695874684, 0, 1),
(282, 552, 'Đăng nhập', 'Đăng nhập qua email', '117.5.58.80', '越南', 0, 1695875052, 0, 1),
(283, 572, 'Đăng nhập', 'Đăng nhập qua email', '123.21.111.210', '越南越南邮电集团公司', 0, 1695880051, 0, 1),
(284, 574, 'Đăng nhập', 'Đăng nhập qua email', '58.186.90.132', '越南', 0, 1695991255, 0, 1),
(285, 575, 'Đăng nhập', 'Đăng nhập qua email', '58.186.90.132', '越南', 0, 1695991278, 0, 1),
(286, 576, 'Đăng nhập', 'Đăng nhập qua email', '36.37.142.186', '柬埔寨', 0, 1695992372, 0, 1),
(287, 577, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695992697, 0, 1),
(288, 577, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994335, 0, 1),
(289, 578, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994448, 0, 1),
(290, 578, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994449, 0, 1),
(291, 579, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994518, 0, 1),
(292, 581, 'Đăng nhập', 'Đăng nhập qua email', '203.144.93.101', '柬埔寨Mobile', 0, 1695994559, 0, 1),
(293, 582, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994620, 0, 1),
(294, 582, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994621, 0, 1),
(295, 580, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994627, 0, 1),
(296, 552, 'Đăng nhập', 'Đăng nhập qua email', '27.67.19.37', '越南', 0, 1695994665, 0, 1),
(297, 584, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994778, 0, 1),
(298, 583, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994789, 0, 1),
(299, 583, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994790, 0, 1),
(300, 586, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695994945, 0, 1),
(301, 577, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695995805, 0, 1),
(302, 584, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695997535, 0, 1),
(303, 588, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695998619, 0, 1),
(304, 589, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1695998853, 0, 1),
(305, 590, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696000548, 0, 1),
(306, 591, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696009965, 0, 1),
(307, 592, 'Đăng nhập', 'Đăng nhập qua email', '36.37.142.186', '柬埔寨', 0, 1696016166, 0, 1),
(308, 588, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696047476, 0, 1),
(309, 593, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696050382, 0, 1),
(310, 589, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696050615, 0, 1),
(311, 594, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696050779, 0, 1),
(312, 596, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696050887, 0, 1),
(313, 595, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696050900, 0, 1),
(314, 589, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696050934, 0, 1),
(315, 597, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696050975, 0, 1),
(316, 598, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051049, 0, 1),
(317, 599, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051115, 0, 1),
(318, 600, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051336, 0, 1),
(319, 601, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051409, 0, 1),
(320, 602, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051515, 0, 1),
(321, 603, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051534, 0, 1),
(322, 604, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051539, 0, 1),
(323, 595, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051590, 0, 1),
(324, 605, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051608, 0, 1),
(325, 606, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051658, 0, 1),
(326, 607, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051742, 0, 1),
(327, 608, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051829, 0, 1),
(328, 609, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051837, 0, 1),
(329, 610, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696051951, 0, 1),
(330, 612, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696052294, 0, 1),
(331, 611, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696052296, 0, 1),
(332, 613, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696052507, 0, 1),
(333, 614, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696052618, 0, 1),
(334, 615, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696052877, 0, 1),
(335, 590, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696052894, 0, 1),
(336, 590, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696052896, 0, 1),
(337, 616, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696052992, 0, 1),
(338, 617, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696053002, 0, 1),
(339, 611, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696053152, 0, 1),
(340, 618, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696053228, 0, 1),
(341, 619, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696053232, 0, 1),
(342, 620, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696057495, 0, 1),
(343, 621, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696057533, 0, 1),
(344, 622, 'Đăng nhập', 'Đăng nhập qua email', '111.90.190.114', '柬埔寨', 0, 1696059791, 0, 1),
(345, 587, 'Đăng nhập', 'Đăng nhập qua email', '58.186.90.132', '越南', 0, 1696060547, 0, 1),
(346, 587, 'Đăng nhập', 'Đăng nhập qua email', '1.54.213.75', '越南河内', 0, 1703320923, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tw_user_qianbao`
--

CREATE TABLE `tw_user_qianbao` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'ID',
  `userid` int(11) UNSIGNED NOT NULL COMMENT '会员ID',
  `coinname` varchar(200) NOT NULL COMMENT '会员账号',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '币名称',
  `remark` varchar(200) NOT NULL COMMENT '地址备注',
  `czline` varchar(200) NOT NULL COMMENT '充值网络',
  `addr` varchar(200) NOT NULL DEFAULT '' COMMENT '提币地址',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `status` int(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `bank` varchar(255) DEFAULT NULL,
  `abank` varchar(255) DEFAULT NULL,
  `usdtaddr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户钱包表' ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tw_user_qianbao`
--

INSERT INTO `tw_user_qianbao` (`id`, `userid`, `coinname`, `name`, `remark`, `czline`, `addr`, `sort`, `addtime`, `status`, `bank`, `abank`, `usdtaddr`) VALUES
(10, 553, '0868450300', 'usdt', 'Nguyễn Văn Hinh', '', '873457382', 1, '2023-09-06 10:45:17', 1, 'MBB', NULL, NULL),
(17, 557, '0998998998', 'usdt', 'hong kong', '', '12345', 1, '2023-09-06 11:42:44', 1, 'mb', '', ''),
(18, 558, '0868450301', 'usdt', 'Lê Văn Linh', '', '0987654567', 1, '2023-09-06 11:44:08', 1, 'ACB', 'HÀ NỘI', '3dsfdsvmjds76rg348w4gr763tr723'),
(19, 554, '0978123123', 'usdt', 'Ndk nguyen', 'TRC-20', '019383993', 1, '2023-09-06 12:00:07', 1, 'Mbbb', 'Chidid', 'Ndksmnnnjudkdldlđnndjkdkđ'),
(20, 551, '0995995995', 'usdt', 'nam', 'TRC-20', '123456', 1, '2023-09-06 13:54:55', 1, 'mb', 'sg', '123'),
(21, 552, '0911223344', 'usdt', 'Aaavvvcccnn', 'TRC20', '123456', 1, '2023-09-12 15:31:37', 1, 'ShB', 'Âheehehai', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tw_admin`
--
ALTER TABLE `tw_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `username` (`username`);

--
-- Chỉ mục cho bảng `tw_adver`
--
ALTER TABLE `tw_adver`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name` (`name`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_appc`
--
ALTER TABLE `tw_appc`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_area`
--
ALTER TABLE `tw_area`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_auth_extend`
--
ALTER TABLE `tw_auth_extend`
  ADD UNIQUE KEY `group_extend_type` (`group_id`,`extend_id`,`type`) USING BTREE,
  ADD KEY `uid` (`group_id`) USING BTREE,
  ADD KEY `group_id` (`extend_id`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_auth_group`
--
ALTER TABLE `tw_auth_group`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_auth_group_access`
--
ALTER TABLE `tw_auth_group_access`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `group_id` (`group_id`) USING BTREE,
  ADD KEY `uid` (`uid`);

--
-- Chỉ mục cho bảng `tw_auth_rule`
--
ALTER TABLE `tw_auth_rule`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `module` (`module`,`status`,`type`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_bborder`
--
ALTER TABLE `tw_bborder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_bbsetting`
--
ALTER TABLE `tw_bbsetting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_bill`
--
ALTER TABLE `tw_bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_coin`
--
ALTER TABLE `tw_coin`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name` (`name`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_coin_comment`
--
ALTER TABLE `tw_coin_comment`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `userid` (`userid`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_coin_json`
--
ALTER TABLE `tw_coin_json`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_config`
--
ALTER TABLE `tw_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_content`
--
ALTER TABLE `tw_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_ctmarket`
--
ALTER TABLE `tw_ctmarket`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name` (`name`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_daohang`
--
ALTER TABLE `tw_daohang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_djprofit`
--
ALTER TABLE `tw_djprofit`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_footer`
--
ALTER TABLE `tw_footer`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `name` (`name`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_hyorder`
--
ALTER TABLE `tw_hyorder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_hysetting`
--
ALTER TABLE `tw_hysetting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_issue`
--
ALTER TABLE `tw_issue`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name` (`name`) USING BTREE,
  ADD KEY `coinname` (`coinname`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_issue_log`
--
ALTER TABLE `tw_issue_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `userid` (`uid`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_kjorder`
--
ALTER TABLE `tw_kjorder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_kjprofit`
--
ALTER TABLE `tw_kjprofit`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_kuangji`
--
ALTER TABLE `tw_kuangji`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_market`
--
ALTER TABLE `tw_market`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name` (`name`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_market_json`
--
ALTER TABLE `tw_market_json`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_menu`
--
ALTER TABLE `tw_menu`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pid` (`pid`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_myzc`
--
ALTER TABLE `tw_myzc`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `userid` (`userid`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `coinname` (`coinname`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_notice`
--
ALTER TABLE `tw_notice`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_online`
--
ALTER TABLE `tw_online`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_recharge`
--
ALTER TABLE `tw_recharge`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_trade`
--
ALTER TABLE `tw_trade`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `userid` (`userid`) USING BTREE,
  ADD KEY `market` (`market`,`type`,`status`) USING BTREE,
  ADD KEY `num` (`num`,`deal`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `market_2` (`market`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_trade_json`
--
ALTER TABLE `tw_trade_json`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `market` (`market`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_trade_log`
--
ALTER TABLE `tw_trade_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `main` (`market`,`status`,`addtime`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_tyhyorder`
--
ALTER TABLE `tw_tyhyorder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tw_user`
--
ALTER TABLE `tw_user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `invit_1` (`invit_1`),
  ADD KEY `invit_2` (`invit_2`),
  ADD KEY `invit_3` (`invit_3`);

--
-- Chỉ mục cho bảng `tw_user_coin`
--
ALTER TABLE `tw_user_coin`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `userid` (`userid`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_user_log`
--
ALTER TABLE `tw_user_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `userid` (`userid`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Chỉ mục cho bảng `tw_user_qianbao`
--
ALTER TABLE `tw_user_qianbao`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `userid` (`userid`) USING BTREE,
  ADD KEY `coinname` (`coinname`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tw_admin`
--
ALTER TABLE `tw_admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `tw_adver`
--
ALTER TABLE `tw_adver`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tw_appc`
--
ALTER TABLE `tw_appc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tw_area`
--
ALTER TABLE `tw_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT cho bảng `tw_auth_group`
--
ALTER TABLE `tw_auth_group`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键', AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tw_auth_group_access`
--
ALTER TABLE `tw_auth_group_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tw_auth_rule`
--
ALTER TABLE `tw_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键', AUTO_INCREMENT=2464;

--
-- AUTO_INCREMENT cho bảng `tw_bborder`
--
ALTER TABLE `tw_bborder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID', AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `tw_bbsetting`
--
ALTER TABLE `tw_bbsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tw_bill`
--
ALTER TABLE `tw_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID', AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT cho bảng `tw_coin`
--
ALTER TABLE `tw_coin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `tw_coin_comment`
--
ALTER TABLE `tw_coin_comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tw_coin_json`
--
ALTER TABLE `tw_coin_json`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tw_config`
--
ALTER TABLE `tw_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tw_content`
--
ALTER TABLE `tw_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tw_ctmarket`
--
ALTER TABLE `tw_ctmarket`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tw_daohang`
--
ALTER TABLE `tw_daohang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tw_djprofit`
--
ALTER TABLE `tw_djprofit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID';

--
-- AUTO_INCREMENT cho bảng `tw_footer`
--
ALTER TABLE `tw_footer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tw_hyorder`
--
ALTER TABLE `tw_hyorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT cho bảng `tw_hysetting`
--
ALTER TABLE `tw_hysetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tw_issue`
--
ALTER TABLE `tw_issue`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录ID', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tw_issue_log`
--
ALTER TABLE `tw_issue_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录ID', AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT cho bảng `tw_kjorder`
--
ALTER TABLE `tw_kjorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID', AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tw_kjprofit`
--
ALTER TABLE `tw_kjprofit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID', AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `tw_kuangji`
--
ALTER TABLE `tw_kuangji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tw_market`
--
ALTER TABLE `tw_market`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tw_market_json`
--
ALTER TABLE `tw_market_json`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tw_menu`
--
ALTER TABLE `tw_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文档ID', AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT cho bảng `tw_myzc`
--
ALTER TABLE `tw_myzc`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tw_notice`
--
ALTER TABLE `tw_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID', AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT cho bảng `tw_online`
--
ALTER TABLE `tw_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `tw_recharge`
--
ALTER TABLE `tw_recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT cho bảng `tw_trade`
--
ALTER TABLE `tw_trade`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT cho bảng `tw_trade_json`
--
ALTER TABLE `tw_trade_json`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT cho bảng `tw_trade_log`
--
ALTER TABLE `tw_trade_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT cho bảng `tw_tyhyorder`
--
ALTER TABLE `tw_tyhyorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- AUTO_INCREMENT cho bảng `tw_user`
--
ALTER TABLE `tw_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=623;

--
-- AUTO_INCREMENT cho bảng `tw_user_coin`
--
ALTER TABLE `tw_user_coin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `tw_user_log`
--
ALTER TABLE `tw_user_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT cho bảng `tw_user_qianbao`
--
ALTER TABLE `tw_user_qianbao`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
