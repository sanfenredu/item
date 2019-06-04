-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 07:20:51
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h5_1903`
--

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(15) NOT NULL COMMENT '商品id',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` float NOT NULL COMMENT '商品价格',
  `num` int(25) NOT NULL COMMENT '商品库存',
  `pic` varchar(50) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `num`, `pic`, `details`) VALUES
(1, 'HUAWEI P30 Pro 8GB+128GB 全网通版麒麟980芯片|6.47英寸OLED曲面屏|4000万超感光徕卡四摄|4200毫安电池强劲续航', 5488, 120, './img/1.png', '超感光暗拍直出夜景大片,潜望式变焦随手拍月亮,双景录像,天空之境设计,3200..\r\n拍照:  超感光四摄镜头:  潜望式长焦'),
(2, 'HUAWEI P30 8GB+64GB 全网通版 麒麟980芯片|6.1英寸OLED全面屏|屏内指纹|超感光徕卡三摄|5倍混合变焦', 3988, 344, './img/2.png', ' 麒麟980芯片|6.1英寸OLED全面屏|屏内指纹|超感光徕卡三摄|5倍混合变焦'),
(3, ' 荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通6GB+128GB 标配版 幻夜黑', 2700, 1200, './img/3png', ' 麒麟980处理器|4800万像素摄像头|4000mAh大容量电池|超级快充'),
(4, 'HUAWEI Mate 20 Pro (UD) 8GB+128GB 全网通版（馥蕾红）', 5449, 300, './img/4.png', '后置徕卡三摄： 4000万像素（广角，f/1.8光圈）+2000万像素（超广角，f/2.2光圈）+800万像素（长焦，f/2.4光圈），支持自动对焦（激光对焦/相位对焦/反差对焦），支持AIS防抖'),
(5, 'HUAWEI Mate 20 RS 保时捷设计 8GB+512GB 全网通版（瑞红）', 12999, 100, './img/5.png', '前置单摄： 支持3D 深度感知相机 2400万像素，f/2.0光圈，支持固定焦距。 备注： *不同拍照模式的照片像素可能有差异，请以实际为准。 *前置摄像头采用2480万像素CMOS传感器（理论值），有效像素2400万（理论值'),
(6, 'HUAWEI MateBook 14 全面屏轻薄性能笔记本 英特尔酷睿i5 8GB 512GB 独显 深空灰', 6999, 234, './img/6.png', '第八代智能英特尔® 酷睿™ i5-8265U 处理器 8GB+512GB独显预装Windows 10 家庭版 64位基频1.6GHz，最大频率3.9GHz'),
(7, 'HUAWEI nova 3 6GB+128GB 全网通版（亮黑色）', 2800, 120, '.img/7.png', '1600万（彩色）像素＋2400万（黑白）像素，F/1.8光圈，支持自动对焦（深度对焦/相位对焦/反差对焦）（备注：不同拍照模式的照片像素可能有差异，请以实际为准）');

-- --------------------------------------------------------

--
-- 表的结构 `product2`
--

CREATE TABLE `product2` (
  `id` int(15) NOT NULL COMMENT '商品id',
  `title` varchar(30) NOT NULL COMMENT '商品标题',
  `price` float NOT NULL COMMENT '商品价格',
  `num` int(15) NOT NULL COMMENT '商品库存',
  `pic` varchar(255) NOT NULL COMMENT '商品图片',
  `size` varchar(30) NOT NULL COMMENT '商品尺寸',
  `details` varchar(30) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product2`
--

INSERT INTO `product2` (`id`, `title`, `price`, `num`, `pic`, `size`, `details`) VALUES
(10001, 'T恤 简鱼 牛肉干 白色', 58, 66, '[{"title":"商品图片","src":"/img/s11.jpg"},{"title":"商品图片","src":"/img/m11.jpg"},{"title":"商品图片","src":"/img/b11.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10002, 'T恤 简鱼 可能性 白色', 58, 79, '[{"title":"商品图片","src":"/img/s12.jpg"},{"title":"商品图片","src":"/img/m12.jpg"},{"title":"商品图片","src":"/img/b12.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10003, 'T恤 山鸟叔 1% 白色', 58, 100, '[{"title":"商品图片","src":"/img/s13.jpg"},{"title":"商品图片","src":"/img/m13.jpg"},{"title":"商品图片","src":"/img/b13.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10004, 'T恤 山鸟叔 历史她 白色', 58, 45, '[{"title":"商品图片","src":"/img/s14.jpg"},{"title":"商品图片","src":"/img/m14.jpg"},{"title":"商品图片","src":"/img/b14.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10005, 'T恤 欧飞鸿 打字机 花灰色', 58, 455, '[{"title":"商品图片","src":"/img/s15.jpg"},{"title":"商品图片","src":"/img/m15.jpg"},{"title":"商品图片","src":"/img/b15.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10006, 'T恤 本广 冲浪 白色', 58, 67, '[{"title":"商品图片","src":"/img/s16.jpg"},{"title":"商品图片","src":"/img/m16.jpg"},{"title":"商品图片","src":"/img/b16.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10007, 'T恤 本广 埃菲尔铁塔 白色', 58, 56, '[{"title":"商品图片","src":"/img/s17.jpg"},{"title":"商品图片","src":"/img/m17.jpg"},{"title":"商品图片","src":"/img/b17.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10008, 'T恤 简鱼 选择困难 白色', 58, 675, '[{"title":"商品图片","src":"/img/s18.jpg"},{"title":"商品图片","src":"/img/m18.jpg"},{"title":"商品图片","src":"/img/b18.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10009, 'POLO衫 棉质干爽网眼 男款 花灰色', 199, 42, '[{"title":"商品图片","src":"/img/s19.jpg"},{"title":"商品图片","src":"/img/m19.jpg"},{"title":"商品图片","src":"/img/b19.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10010, '凡客衬衫 牛津纺 领尖扣 短袖 男款 天蓝白铅笔条', 199, 34, '[{"title":"商品图片","src":"/img/s20.jpg"},{"title":"商品图片","src":"/img/m20.jpg"},{"title":"商品图片","src":"/img/b20.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10011, '凡客衬衫 麻棉 小立领 长袖 男款 亚麻色', 199, 32, '[{"title":"商品图片","src":"/img/s21.jpg"},{"title":"商品图片","src":"/img/m21.jpg"},{"title":"商品图片","src":"/img/b21.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>'),
(10012, '凡客休闲凉鞋 男款 黑色', 258, 112, '[{"title":"商品图片","src":"/img/s22.jpg"},{"title":"商品图片","src":"/img/m22.jpg"},{"title":"商品图片","src":"/img/b22.jpg"}]', '[{s},{m},{l}]', '<h2>商品详情</h2>');

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` int(15) NOT NULL COMMENT '商品id',
  `title` varchar(90) NOT NULL COMMENT '商品标题',
  `size` varchar(90) NOT NULL COMMENT '商品尺寸',
  `price` float NOT NULL COMMENT '商品价格',
  `num` int(10) NOT NULL COMMENT '商品库存',
  `pic` varchar(255) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品详情',
  `tab` int(15) NOT NULL COMMENT '商品区'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `title`, `size`, `price`, `num`, `pic`, `details`, `tab`) VALUES
(1, 'T恤 山鸟叔 69 白色', 'M', 199, 34, '[{"title":"small","src":"/img/s01.jpg"},{"title":"middling","src":"/img/m01.jpg"},{"title":"big","src":"/img/b01.jpg"}]', '<h2>商品详情</h2>', 0),
(2, 'T恤 欧飞鸿  怒火街头1 黑色', 'M', 299, 46, '[{"title":"small","src":"/img/s02.jpg"},{"title":"middling","src":"/img/m02.jpg"},{"title":"big","src":"/img/b02.jpg"}]', '<h2>商品详情</h2>', 0),
(3, 'T恤 山鸟叔 广告位 白色', 'M', 120, 100, '[{"title":"small","src":"/img/s03.jpg"},{"title":"middling","src":"/img/m03.jpg"},{"title":"big","src":"/img/b03.jpg"}]', '<h2>商品详情</h2>', 0),
(4, 'T恤 山鸟叔 鸟类学1 白色', 'M', 399, 37, '[{"title":"small","src":"/img/s04.jpg"},{"title":"middling","src":"/img/m04.jpg"},{"title":"big","src":"/img/b04.jpg"}]', '<h2>商品详情</h2>', 0),
(5, '童装卫衣 圆领 熊本熊 S6 黑色', 'M', 360, 50, '[{"title":"small","src":"/img/s05.jpg"},{"title":"middling","src":"/img/m05.jpg"},{"title":"big","src":"/img/b05.jpg"}]', '<h2>商品详情</h2>', 0),
(6, 'T恤 简鱼 牛肉干 白色', 'M', 58, 120, '[{"title":"商品图片","src":"/img/s11.jpg"},{"title":"商品图片","src":"/img/m11.jpg"},{"title":"商品图片","src":"/img/b11.jpg"}]', '<h2>商品详情</h2>', 1),
(7, 'T恤 简鱼 可能性 白色', 'M', 58, 100, '[{"title":"商品图片","src":"/img/s12.jpg"},{"title":"商品图片","src":"/img/m12.jpg"},{"title":"商品图片","src":"/img/b12.jpg"}]', '<h2>商品详情</h2>', 1),
(8, 'T恤 山鸟叔 1% 白色', 'M', 58, 60, '[{"title":"商品图片","src":"/img/s13.jpg"},{"title":"商品图片","src":"/img/m13.jpg"},{"title":"商品图片","src":"/img/b13.jpg"}]', '<h2>商品详情</h2>', 1),
(9, 'T恤 山鸟叔 历史她 白色', 'M', 58, 30, '[{"title":"商品图片","src":"/img/s14.jpg"},{"title":"商品图片","src":"/img/m14.jpg"},{"title":"商品图片","src":"/img/b14.jpg"}]', '<h2>商品详情</h2>', 1),
(10, 'T恤 欧飞鸿 打字机 花灰色', 'M', 58, 45, '[{"title":"商品图片","src":"/img/s15.jpg"},{"title":"商品图片","src":"/img/m15.jpg"},{"title":"商品图片","src":"/img/b15.jpg"}]', '<h2>商品详情</h2>', 1),
(11, 'T恤 本广 冲浪 白色', 'M', 58, 56, '[{"title":"商品图片","src":"/img/s16.jpg"},{"title":"商品图片","src":"/img/m16.jpg"},{"title":"商品图片","src":"/img/b16.jpg"}]', '<h2>商品详情</h2>', 1),
(12, 'T恤 本广 埃菲尔铁塔 白色', 'M', 58, 38, ' [{"title":"商品图片","src":"/img/s17.jpg"},{"title":"商品图片","src":"/img/m17.jpg"},{"title":"商品图片","src":"/img/b17.jpg"}]', '<h2>商品详情</h2>', 1),
(13, 'T恤 简鱼 选择困难 白色', 'M', 58, 56, ' [{"title":"商品图片","src":"/img/s18.jpg"},{"title":"商品图片","src":"/img/m18.jpg"},{"title":"商品图片","src":"/img/b18.jpg"}]', '<h2>商品详情</h2>', 1),
(14, 'POLO衫 棉质干爽网眼 男款 花灰色', 'M', 199, 100, ' [{"title":"商品图片","src":"/img/s19.jpg"},{"title":"商品图片","src":"/img/m19.jpg"},{"title":"商品图片","src":"/img/b19.jpg"}]', '<h2>商品详情</h2>', 1),
(15, '凡客衬衫 牛津纺 领尖扣 短袖 男款 天蓝白铅笔条', 'M', 199, 100, ' [{"title":"商品图片","src":"/img/s20.jpg"},{"title":"商品图片","src":"/img/m20.jpg"},{"title":"商品图片","src":"/img/b20.jpg"}]', '<h2>商品详情</h2>', 1),
(16, '凡客衬衫 麻棉 小立领 长袖 男款 亚麻色', 'M', 58, 120, '[{"title":"商品图片","src":"/img/s21.jpg"},{"title":"商品图片","src":"/img/m21.jpg"},{"title":"商品图片","src":"/img/b21.jpg"}]', '<h2>商品详情</h2>', 1),
(17, '凡客休闲凉鞋 男款 黑色', 'M', 258, 60, '[{"title":"商品图片","src":"/img/s22.jpg"},{"title":"商品图片","src":"/img/m22.jpg"},{"title":"商品图片","src":"/img/b22.jpg"}]', '<h2>商品详情</h2>', 1);

-- --------------------------------------------------------

--
-- 表的结构 `uses`
--

CREATE TABLE `uses` (
  `id` int(15) NOT NULL COMMENT 'id',
  `use_name` varchar(20) NOT NULL COMMENT '用户名',
  `use_possward` varchar(20) NOT NULL COMMENT '用户密码',
  `use_email` varchar(25) NOT NULL COMMENT '用户邮箱',
  `sex` tinyint(2) NOT NULL COMMENT '性别'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `uses`
--

INSERT INTO `uses` (`id`, `use_name`, `use_possward`, `use_email`, `sex`) VALUES
(10018, 'wangliangfa', '1234', '123131@aa.cn', 1),
(10045, 'sanfenredu', '123456', '123131@aa.cn', 1),
(10044, 'zhaoliu', '123456', '123131@aa.cn', 0),
(10027, 'wangwu', '44444', '123131@aa.cn', 1),
(10046, 'zhaoliu123', '123456', '123131@aa.cn', 0),
(10049, 'zhangsan123', '123456', '123131@aa.cn', 1),
(10047, 'wangwu123', '123456', '123131@aa.cn', 1),
(10048, 'lisi123', '123456', '123131@aa.cn', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product2`
--
ALTER TABLE `product2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `product2`
--
ALTER TABLE `product2`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=10013;
--
-- 使用表AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `uses`
--
ALTER TABLE `uses`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=10050;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
