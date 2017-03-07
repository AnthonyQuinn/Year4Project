-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2017 at 06:15 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `developmentprojecdbtfeb2017`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorizedusers`
--

CREATE TABLE `authorizedusers` (
  `id` int(4) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='A table of authorized users';

--
-- Dumping data for table `authorizedusers`
--

INSERT INTO `authorizedusers` (`id`, `username`, `password`) VALUES
(2, 'john', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `baronys`
--

CREATE TABLE `baronys` (
  ` COUNTY_ID` int(2) NOT NULL,
  `GEOGDESC` varchar(30) NOT NULL,
  `PROVINCE` varchar(8) NOT NULL,
  `CSO_BARONY_ID` int(3) NOT NULL,
  `CSOBARNAME` varchar(30) NOT NULL,
  `BARUNTACHT` varchar(30) NOT NULL,
  `Male2011` int(6) NOT NULL,
  `Female2011` int(6) NOT NULL,
  `Total2011` int(7) NOT NULL,
  `Permanent private housing units` int(6) NOT NULL,
  `total_vacant_dwellings_temporarily_absent_dwellings` int(5) NOT NULL,
  `vacant houses + vacant flats + holiday homes)` int(5) NOT NULL,
  `TOTAL_HOUSING_STOCK` int(5) NOT NULL,
  `VACANCY_RATE` decimal(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baronys`
--

INSERT INTO `baronys` (` COUNTY_ID`, `GEOGDESC`, `PROVINCE`, `CSO_BARONY_ID`, `CSOBARNAME`, `BARUNTACHT`, `Male2011`, `Female2011`, `Total2011`, `Permanent private housing units`, `total_vacant_dwellings_temporarily_absent_dwellings`, `vacant houses + vacant flats + holiday homes)`, `TOTAL_HOUSING_STOCK`, `VACANCY_RATE`) VALUES
(27, 'Galway County', 'Connacht', 1, 'Aran', '?rainn', 660, 591, 1251, 504, 250, 224, 754, '30'),
(9, 'Longford', 'Leinster', 2, 'Ardagh', 'Ardach', 6326, 6581, 12907, 4883, 1482, 1389, 6365, '22'),
(10, 'Louth', 'Leinster', 3, 'Ardee', 'Baile ?tha Fhirdhia', 7466, 7227, 14693, 5129, 754, 640, 5883, '11'),
(15, 'Wicklow', 'Leinster', 4, 'Arklow', 'An tInbhear M?r', 13519, 13785, 27304, 9913, 1733, 1478, 11646, '13'),
(27, 'Galway County', 'Connacht', 5, 'Athenry', 'Baile ?tha an R', 3580, 3640, 7220, 2593, 520, 463, 3113, '15'),
(30, 'Roscommon', 'Connacht', 6, 'Athlone North', 'Baile ?tha Luain Thuaidh', 2562, 2471, 5033, 1757, 420, 388, 2177, '18'),
(13, 'Westmeath/Roscommon', 'Leinster', 7, 'Athlone South', 'Baile ?tha Luain Theas', 7841, 7923, 15764, 5673, 996, 853, 6669, '13'),
(14, 'Wexford', 'Leinster', 8, 'Ballaghkeen North', 'An Bealach Caoin Thuaidh', 5237, 5339, 10576, 3773, 3070, 2956, 6843, '43'),
(14, 'Wexford', 'Leinster', 9, 'Ballaghkeen South', 'An Bealach Caoin Theas', 5061, 5067, 10128, 3519, 1218, 1134, 4737, '24'),
(15, 'Wicklow', 'Leinster', 10, 'Ballinacor North', 'Baile na Corra Thuaidh', 3127, 3053, 6180, 2097, 478, 441, 2575, '17'),
(15, 'Wicklow', 'Leinster', 11, 'Ballinacor South', 'Baile na Corra Theas', 2911, 2930, 5841, 2041, 441, 391, 2482, '16'),
(30, 'Roscommon', 'Connacht', 12, 'Ballintober North', 'Baile an Tobair Thuaidh', 1387, 1317, 2704, 1084, 510, 467, 1594, '29'),
(30, 'Roscommon', 'Connacht', 13, 'Ballintober South', 'Baile an Tobair Theas', 4828, 5052, 9880, 3591, 835, 744, 4426, '17'),
(8, 'Laois', 'Leinster', 14, 'Ballyadams', 'Baile ?daim', 1812, 1771, 3583, 1186, 152, 131, 1338, '10'),
(12, 'Offaly', 'Leinster', 15, 'Ballyboy', 'Baile ?tha Bu', 1583, 1490, 3073, 1073, 200, 172, 1273, '14'),
(12, 'Offaly', 'Leinster', 16, 'Ballybritt', 'Baile an Bhriotaigh', 4058, 4088, 8146, 2909, 543, 479, 3452, '14'),
(12, 'Offaly', 'Leinster', 17, 'Ballycowan', 'Baile Mhic Comhainn', 9317, 9765, 19082, 6762, 918, 778, 7680, '10'),
(30, 'Roscommon', 'Connacht', 18, 'Ballymoe', 'B?al ?tha M?', 791, 790, 1581, 567, 150, 138, 717, '19'),
(27, 'Galway County', 'Connacht', 19, 'Ballymoe', 'B?al ?tha M?', 3189, 3070, 6259, 2232, 694, 628, 2926, '22'),
(27, 'Galway County', 'Connacht', 20, 'Ballynahinch', 'Baile na hInse', 4945, 4785, 9730, 3335, 2667, 2598, 6002, '43'),
(4, 'Fingal', 'Leinster', 21, 'Balrothery East', 'Baile an Ridire Thoir', 25889, 27040, 52929, 18139, 1961, 1541, 20100, '8'),
(4, 'Fingal', 'Leinster', 22, 'Balrothery West', 'Baile an Ridire Thiar', 2285, 2213, 4498, 1422, 208, 180, 1630, '11'),
(33, 'Donegal', 'Ulster', 23, 'Banagh', 'B?inigh', 7620, 7428, 15048, 5542, 2844, 2695, 8386, '32'),
(14, 'Wexford', 'Leinster', 24, 'Bantry', 'Beanntra', 10333, 10405, 20738, 7394, 1242, 1098, 8636, '13'),
(18, 'Cork County', 'Munster', 25, 'Bantry', 'Beanntra', 3361, 3485, 6846, 2581, 878, 792, 3459, '23'),
(14, 'Wexford', 'Leinster', 26, 'Bargy', 'U? Bhairrche', 4053, 4064, 8117, 2893, 862, 799, 3755, '21'),
(18, 'Cork County', 'Munster', 27, 'Barretts', 'Bar?idigh', 2172, 2124, 4296, 1380, 106, 93, 1486, '6'),
(18, 'Cork County', 'Munster', 28, 'Barrymore', 'Barraigh Mh?ra', 23716, 23689, 47405, 16226, 2191, 1774, 18417, '10'),
(18, 'Cork County', 'Munster', 29, 'Bear', 'B?arra', 2640, 2471, 5111, 2058, 1555, 1491, 3613, '41'),
(33, 'Donegal', 'Ulster', 30, 'Boylagh', 'Baollaigh', 5742, 5724, 11466, 4451, 3297, 3160, 7748, '41'),
(30, 'Roscommon', 'Connacht', 31, 'Boyle', 'Mainistir na B?ille', 4144, 4237, 8381, 3337, 1446, 1355, 4783, '28'),
(13, 'Westmeath', 'Leinster', 32, 'Brawny', 'Bre?mhaine', 7120, 7120, 14240, 5353, 1238, 964, 6591, '15'),
(16, 'Clare', 'Munster', 33, 'Bunratty Lower', 'Bun Raite ?ochtarach', 14261, 14373, 28634, 10016, 1179, 950, 11195, '9'),
(16, 'Clare', 'Munster', 34, 'Bunratty Upper', 'Bun Raite Uachtarach', 5788, 5950, 11738, 4133, 599, 484, 4732, '10'),
(16, 'Clare', 'Munster', 35, 'Burren', 'Boirinn', 1346, 1453, 2799, 990, 699, 657, 1689, '39'),
(29, 'Mayo', 'Connacht', 36, 'Burrishoole', 'Buir?os Umhaill', 5497, 5276, 10773, 3915, 2335, 2243, 6250, '36'),
(7, 'Kilkenny', 'Leinster', 37, 'Callan', 'Callainn', 1463, 1488, 2951, 1073, 209, 187, 1282, '15'),
(18, 'Cork County', 'Munster', 38, 'Carbery East (East Division)', 'Cairbrigh Thoir (an Roinn Thoi', 7218, 7411, 14629, 5058, 1136, 1012, 6194, '16'),
(18, 'Cork County', 'Munster', 39, 'Carbery East (West Division)', 'Cairbrigh Thoir (an Roinn Thia', 5624, 5482, 11106, 4023, 1372, 1262, 5395, '23'),
(18, 'Cork County', 'Munster', 40, 'Carbery West (East Division)', 'Cairbrigh Thiar (an Roinn Thoi', 5524, 5482, 11006, 4197, 2258, 2127, 6455, '33'),
(18, 'Cork County', 'Munster', 41, 'Carbery West (West Division)', 'Cairbrigh Thiar (an Roinn Thia', 3851, 3785, 7636, 2985, 2356, 2270, 5341, '43'),
(31, 'Sligo', 'Connacht', 42, 'Carbury', 'Cairbre', 16214, 17183, 33397, 12760, 3751, 3098, 16511, '19'),
(6, 'Kildare', 'Leinster', 43, 'Carbury', 'Cairbre', 3868, 3848, 7716, 2510, 274, 236, 2784, '9'),
(1, 'Carlow', 'Leinster', 44, 'Carlow', 'Ceatharlach', 11237, 11343, 22580, 8338, 1374, 1122, 9712, '12'),
(29, 'Mayo', 'Connacht', 45, 'Carra', 'Ceara', 11956, 12510, 24466, 8966, 2187, 1887, 11153, '17'),
(28, 'Leitrim', 'Connacht', 46, 'Carrigallen', 'Carraig ?lainn', 2574, 2434, 5008, 1935, 875, 838, 2810, '30'),
(4, 'Fingal', 'Leinster', 47, 'Castleknock', 'Caisle?n Cnucha', 49798, 51617, 101415, 33322, 3279, 2460, 36601, '7'),
(32, 'Cavan', 'Ulster', 48, 'Castlerahan', 'Caisle?n Raithin', 7694, 7562, 15256, 5214, 1325, 1208, 6539, '19'),
(30, 'Roscommon', 'Connacht', 49, 'Castlereagh', 'An Caisle?n Riabhach', 4255, 3742, 7997, 2962, 1236, 1189, 4198, '28'),
(8, 'Laois', 'Leinster', 50, 'Clandonagh', 'Clann Donnchadha', 2190, 2182, 4372, 1640, 396, 369, 2036, '18'),
(6, 'Kildare', 'Leinster', 51, 'Clane', 'Claonadh', 7928, 7977, 15905, 5362, 527, 388, 5889, '7'),
(32, 'Cavan', 'Ulster', 52, 'Clankee', 'Clann Chaoich', 6192, 6108, 12300, 4281, 1121, 1025, 5402, '19'),
(32, 'Cavan', 'Ulster', 53, 'Clanmahon', 'Clann Mhath?na', 3419, 3258, 6677, 2291, 714, 679, 3005, '23'),
(19, 'Kerry', 'Munster', 54, 'Clanmaurice', 'Clann Mhuiris', 8338, 8009, 16347, 5990, 1779, 1670, 7769, '22'),
(29, 'Mayo', 'Connacht', 55, 'Clanmorris', 'Clann Mhuiris', 5064, 5262, 10326, 3824, 1248, 1162, 5072, '23'),
(21, 'Limerick County', 'Munster', 56, 'Clanwilliam', 'Clann Liam', 14421, 13975, 28396, 9752, 1383, 1050, 11135, '9'),
(23, 'Tipperary South', 'Munster', 57, 'Clanwilliam', 'Clann Liam', 8305, 8026, 16331, 6124, 1175, 1092, 7299, '15'),
(27, 'Galway County', 'Connacht', 58, 'Clare', 'Baile Chl?ir', 13789, 13449, 27238, 9296, 1847, 1700, 11143, '15'),
(8, 'Laois', 'Leinster', 59, 'Clarmallagh', 'Cl?r Ma? Locha', 1976, 1936, 3912, 1363, 226, 205, 1589, '13'),
(16, 'Clare', 'Munster', 60, 'Clonderalaw', 'Cluain idir Dh? L', 2530, 2446, 4976, 1868, 530, 505, 2398, '21'),
(12, 'Offaly', 'Leinster', 61, 'Clonlisk', 'Cluain Leisc', 2252, 1977, 4229, 1433, 259, 243, 1692, '14'),
(13, 'Westmeath', 'Leinster', 62, 'Clonlonan', 'Cluain Lon?in', 3189, 3216, 6405, 2273, 412, 363, 2685, '14'),
(27, 'Galway County', 'Connacht', 63, 'Clonmacnowen', 'Clann Mhac nEoghain', 3461, 3456, 6917, 2437, 569, 522, 3006, '17'),
(18, 'Cork County', 'Munster', 64, 'Condons and Clangibbon', 'Cond?naigh agus Clann Ghiob?in', 9167, 9285, 18452, 6824, 1175, 1052, 7999, '13'),
(6, 'Kildare', 'Leinster', 65, 'Connell', 'Connail', 14148, 14469, 28617, 9670, 987, 804, 10657, '8'),
(21, 'Limerick County', 'Munster', 66, 'Connello Lower', 'Conallaigh ?ochtaracha', 3771, 3883, 7654, 2645, 621, 577, 3266, '18'),
(21, 'Limerick County', 'Munster', 67, 'Connello Upper', 'Conallaigh Uachtaracha', 3573, 3318, 6891, 2430, 457, 423, 2887, '15'),
(31, 'Sligo', 'Connacht', 68, 'Coolavin', 'C?il ? bhFinn', 1023, 892, 1915, 761, 316, 302, 1077, '28'),
(12, 'Offaly', 'Leinster', 69, 'Coolestown', 'Baile an Ch?la?gh', 5211, 5117, 10328, 3576, 466, 410, 4042, '10'),
(4, 'Fingal', 'Leinster', 70, 'Coolock', 'An Ch?l?g', 31274, 32758, 64032, 23060, 2769, 1997, 25829, '8'),
(21, 'Limerick County', 'Munster', 71, 'Coonagh', 'U? Chuanach', 2623, 2440, 5063, 1801, 298, 275, 2099, '13'),
(16, 'Clare', 'Munster', 72, 'Corcomroe', 'Corca Mrua', 3240, 3061, 6301, 2425, 1852, 1801, 4277, '42'),
(18, 'Cork County', 'Munster', 73, 'Cork', 'Corcaigh', 28055, 29605, 57660, 19517, 2263, 1612, 21780, '7'),
(19, 'Kerry', 'Munster', 74, 'Corkaguiny', 'Corca Dhuibhne', 5241, 5191, 10432, 3994, 3053, 2935, 7047, '42'),
(13, 'Westmeath', 'Leinster', 75, 'Corkaree', 'Corca Raoi', 1268, 1324, 2592, 801, 134, 125, 935, '13'),
(31, 'Sligo', 'Connacht', 76, 'Corran', 'An Corann', 2437, 2415, 4852, 1868, 574, 538, 2442, '22'),
(21, 'Limerick County', 'Munster', 77, 'Coshlea', 'Cois Sl?ibhe', 4608, 4371, 8979, 3336, 657, 606, 3993, '15'),
(21, 'Limerick County', 'Munster', 78, 'Coshma', 'Cois M?ighe', 4386, 4407, 8793, 3002, 514, 458, 3516, '13'),
(25, 'Waterford County', 'Munster', 79, 'Coshmore and Coshbride', 'Cois Abha M?ire agus Cois Bhr?', 3850, 3706, 7556, 2806, 779, 723, 3585, '20'),
(29, 'Mayo/Roscommon', 'Connacht', 80, 'Costello', 'Coistealaigh', 8275, 7932, 16207, 6215, 2701, 2571, 8916, '29'),
(18, 'Cork County', 'Munster', 81, 'Courceys', 'C?rsaigh', 718, 721, 1439, 508, 154, 152, 662, '23'),
(7, 'Kilkenny', 'Leinster', 82, 'Crannagh', 'Crannach', 4394, 4312, 8706, 3044, 380, 317, 3424, '9'),
(34, 'Monaghan', 'Ulster', 83, 'Cremorne', 'Cr?och Mh?rn', 7453, 7211, 14664, 5268, 1004, 911, 6272, '15'),
(8, 'Laois', 'Leinster', 84, 'Cullenagh', 'Cuileannach', 3023, 2988, 6011, 2107, 398, 337, 2505, '14'),
(34, 'Monaghan', 'Ulster', 85, 'Dartree', 'Dartra', 3802, 3692, 7494, 2666, 558, 511, 3224, '16'),
(25, 'Waterford County', 'Munster', 86, 'Decies-within-Drum', 'Na D?ise laistigh den Drom', 3090, 3000, 6090, 2109, 842, 806, 2951, '27'),
(25, 'Waterford County', 'Munster', 87, 'Decies-without-Drum', 'Na D?ise lasmuigh den Drom', 11368, 11407, 22775, 8397, 1707, 1527, 10104, '15'),
(11, 'Meath', 'Leinster', 88, 'Deece Lower', 'D?ise ?ochtarach', 1545, 1587, 3132, 1076, 124, 98, 1200, '8'),
(11, 'Meath', 'Leinster', 89, 'Deece Upper', 'D?ise Uachtarach', 1982, 1967, 3949, 1283, 121, 90, 1404, '6'),
(13, 'Westmeath', 'Leinster', 90, 'Delvin', 'Dealbhna', 2222, 2255, 4477, 1552, 309, 268, 1861, '14'),
(10, 'Louth', 'Leinster', 91, 'Drogheda', 'Droichead ?tha', 6760, 6934, 13694, 5497, 1053, 926, 6550, '14'),
(28, 'Leitrim', 'Connacht', 92, 'Drumahaire', 'Droim Dh? Thiar', 3245, 3107, 6352, 2466, 1065, 1003, 3531, '28'),
(5, 'D?n Laoghaire-Rathdown', 'Leinster', 93, 'Dublin', 'Baile ?tha Cliath', 110, 165, 275, 131, 19, 11, 150, '7'),
(18, 'Cork County', 'Munster', 94, 'Duhallow', 'D?iche Ealla', 11112, 10919, 22031, 8053, 1891, 1762, 9944, '18'),
(10, 'Louth/Meath', 'Leinster', 95, 'Duleek Lower', 'Damhliag ?ochtarach', 19637, 20224, 39861, 13772, 1614, 1258, 15386, '8'),
(11, 'Meath', 'Leinster', 96, 'Duleek Upper', 'Damhliag Uachtarach', 4378, 4147, 8525, 2647, 409, 329, 3056, '11'),
(11, 'Meath', 'Leinster', 97, 'Dunboyne', 'D?n B?inne', 5086, 5018, 10104, 3228, 354, 261, 3582, '7'),
(10, 'Louth', 'Leinster', 98, 'Dundalk Lower', 'D?n Dealgan ?ochtarach', 4935, 5048, 9983, 3341, 1181, 1091, 4522, '24'),
(10, 'Louth', 'Leinster', 99, 'Dundalk Upper', 'D?n Dealgan Uachtarach', 20629, 21458, 42087, 15699, 2622, 2359, 18321, '13'),
(27, 'Galway County', 'Connacht', 100, 'Dunkelin', 'D?n Coill?n', 12073, 11864, 23937, 8033, 1365, 1113, 9398, '12'),
(19, 'Kerry', 'Munster', 101, 'Dunkerron North', 'D?n Ciar?in Thuaidh', 1578, 1521, 3099, 1073, 357, 334, 1430, '23'),
(19, 'Kerry', 'Munster', 102, 'Dunkerron South', 'D?n Ciar?in Theas', 1673, 1628, 3301, 1299, 1698, 1652, 2997, '55'),
(27, 'Galway County', 'Connacht', 103, 'Dunmore', 'D?n M?r', 5582, 5496, 11078, 4146, 897, 786, 5043, '16'),
(12, 'Offaly', 'Leinster', 104, 'Eglish', 'An Eaglais', 650, 613, 1263, 439, 78, 70, 517, '14'),
(22, 'Tipperary North', 'Munster', 105, 'Eliogarty', '?ile U? Fh?garta', 9830, 9871, 19701, 7389, 1181, 1005, 8570, '12'),
(29, 'Mayo', 'Connacht', 106, 'Erris', 'Iorras', 4509, 4184, 8693, 3200, 1440, 1358, 4640, '29'),
(13, 'Westmeath', 'Leinster', 107, 'Farbill', 'Fir Bhile', 3742, 3789, 7531, 2514, 385, 338, 2899, '12'),
(34, 'Monaghan', 'Ulster', 108, 'Farney', 'Fearnaigh', 7620, 7440, 15060, 5199, 853, 746, 6052, '12'),
(13, 'Westmeath', 'Leinster', 109, 'Fartullagh', 'Fir Thulach', 2851, 2910, 5761, 1886, 229, 202, 2115, '10'),
(7, 'Kilkenny', 'Leinster', 110, 'Fassadinin', 'F?sach an Deighn?n', 4816, 4768, 9584, 3280, 481, 445, 3761, '12'),
(18, 'Cork County', 'Munster', 111, 'Fermoy', 'Mainistir Fhear Ma', 11719, 11856, 23575, 8698, 1726, 1525, 10424, '15'),
(10, 'Louth', 'Leinster', 112, 'Ferrard', 'Fir Arda', 11438, 11603, 23041, 7575, 897, 745, 8472, '9'),
(11, 'Meath', 'Leinster', 113, 'Fore', 'Baile Fhobhair', 2160, 2129, 4289, 1567, 289, 254, 1856, '14'),
(13, 'Westmeath', 'Leinster', 114, 'Fore', 'Baile Fhobhair', 2221, 2145, 4366, 1595, 388, 355, 1983, '18'),
(1, 'Carlow', 'Leinster', 115, 'Forth', 'Fotharta', 2738, 2673, 5411, 1761, 224, 198, 1985, '10'),
(14, 'Wexford', 'Leinster', 116, 'Forth', 'Fotharta', 13602, 14362, 27964, 10928, 3714, 3427, 14642, '23'),
(30, 'Roscommon', 'Connacht', 117, 'Frenchpark', 'D?n Gar', 2385, 2319, 4704, 1833, 848, 803, 2681, '30'),
(29, 'Mayo', 'Connacht', 118, 'Gallen', 'Gaileanga', 6540, 6541, 13081, 4951, 1921, 1807, 6872, '26'),
(7, 'Kilkenny', 'Leinster', 119, 'Galmoy', 'Gabhalmhaigh', 1980, 1857, 3837, 1340, 221, 203, 1561, '13'),
(27, 'Galway County', 'Connacht', 120, 'Galway', 'Gaillimh', 2434, 2439, 4873, 1534, 228, 179, 1762, '10'),
(12, 'Offaly', 'Leinster', 121, 'Garrycastle', 'Garra? an Chaisle?in', 5279, 5231, 10510, 3681, 686, 609, 4367, '14'),
(25, 'Waterford County', 'Munster', 122, 'Gaultiere', 'An Ghaillt?r', 3028, 3137, 6165, 2173, 947, 885, 3120, '28'),
(12, 'Offaly', 'Leinster', 123, 'Geashill', 'G?isill', 2185, 2179, 4364, 1447, 144, 120, 1591, '8'),
(19, 'Kerry', 'Munster', 124, 'Glanarought', 'Gleann na Ruachta', 2391, 2327, 4718, 1829, 1394, 1331, 3223, '41'),
(23, 'Tipperary South/Waterford Coun', 'Munster', 125, 'Glenahiry', 'Gleann na hUidhre', 1778, 1785, 3563, 1283, 214, 185, 1497, '12'),
(21, 'Limerick County', 'Munster', 126, 'Glenquin', 'Gleann an Choim', 9431, 9445, 18876, 6964, 1505, 1389, 8469, '16'),
(14, 'Wexford', 'Leinster', 127, 'Gorey', 'Guaire', 9915, 10113, 20028, 7050, 1417, 1222, 8467, '14'),
(7, 'Kilkenny', 'Leinster', 128, 'Gowran', 'Gabhr?n', 12781, 12895, 25676, 9167, 1645, 1453, 10812, '13'),
(9, 'Longford', 'Leinster', 129, 'Granard', 'Gr?nard', 3332, 3097, 6429, 2352, 704, 671, 3056, '22'),
(18, 'Cork County', 'Munster', 130, 'Ibane and Barryroe', 'U? Bh?na agus Barraigh Rua', 2853, 2737, 5590, 1983, 849, 799, 2832, '28'),
(16, 'Clare', 'Munster', 131, 'Ibrickan', 'U? Bhreac?in', 2893, 2775, 5668, 2195, 1399, 1358, 3594, '38'),
(0, 'Kilkenny/Wexford', 'Leinster', 132, 'Ida', 'U? Dhe', 4358, 4132, 8490, 2877, 415, 368, 3292, '11'),
(1, 'Carlow', 'Leinster', 133, 'Idrone East', 'U? Dhr?na Thoir', 4170, 3976, 8146, 2837, 492, 447, 3329, '13'),
(1, 'Carlow', 'Leinster', 134, 'Idrone West', 'U? Dhr?na Thiar', 1729, 1688, 3417, 1135, 180, 154, 1315, '12'),
(23, 'Tipperary South', 'Munster', 135, 'Iffa and Offa East', 'U?bh Eoghain agus U?bh Fhathai', 13537, 13989, 27526, 10440, 1397, 1168, 11837, '10'),
(23, 'Tipperary South', 'Munster', 136, 'Iffa and Offa West', 'U?bh Eoghain agus U?bh Fhathai', 6623, 6519, 13142, 4852, 905, 808, 5757, '14'),
(6, 'Kildare', 'Leinster', 137, 'Ikeathy and Oughterany', 'U? Ch?ithigh agus Uachtar Fhin', 5451, 5273, 10724, 3428, 315, 237, 3743, '6'),
(22, 'Tipperary North', 'Munster', 138, 'Ikerrin', 'U? Chair?n', 5025, 4783, 9808, 3532, 589, 523, 4121, '13'),
(18, 'Cork County', 'Munster', 139, 'Imokilly', 'U? Mhic Coille', 18683, 19165, 37848, 13719, 3692, 3328, 17411, '19'),
(16, 'Clare', 'Munster', 140, 'Inchiquin', 'Inse U? Chuinn', 3060, 3007, 6067, 2247, 488, 454, 2735, '17'),
(33, 'Donegal', 'Ulster', 141, 'Inishowen East', 'Inis Eoghain Thoir', 9123, 9087, 18210, 6458, 3367, 3213, 9825, '33'),
(33, 'Donegal', 'Ulster', 142, 'Inishowen West', 'Inis Eoghain Thiar', 8785, 8776, 17561, 6149, 1765, 1630, 7914, '21'),
(19, 'Kerry', 'Munster', 143, 'Iraghticonnor', 'Oireacht U? Chonch?ir', 7619, 7733, 15352, 6023, 2117, 2032, 8140, '25'),
(16, 'Clare', 'Munster', 144, 'Islands', 'Na hOile?in', 12440, 13148, 25588, 9679, 1868, 1557, 11547, '14'),
(19, 'Kerry', 'Munster', 145, 'Iveragh', 'U?bh R?thach', 4366, 4210, 8576, 3367, 3170, 3085, 6537, '47'),
(7, 'Kilkenny', 'Leinster', 146, 'Iverk', 'U?bh Eirc', 4405, 4245, 8650, 3031, 383, 313, 3414, '9'),
(7, 'Kilkenny', 'Leinster', 147, 'Kells', 'Ceanannas', 1554, 1495, 3049, 1037, 157, 133, 1194, '11'),
(11, 'Meath', 'Leinster', 148, 'Kells Lower', 'Ceanannas ?ochtarach', 2116, 2019, 4135, 1405, 219, 188, 1624, '12'),
(11, 'Meath', 'Leinster', 149, 'Kells Upper', 'Ceanannas Uachtarach', 5762, 5790, 11552, 4181, 589, 485, 4770, '10'),
(21, 'Limerick County', 'Munster', 150, 'Kenry', 'Caonra', 2293, 2268, 4561, 1556, 225, 196, 1781, '11'),
(18, 'Cork County', 'Munster', 151, 'Kerrycurrihy', 'Ciarra? Cuirche', 14271, 14899, 29170, 10124, 1470, 1141, 11594, '10'),
(27, 'Galway County', 'Connacht', 152, 'Kilconnell', 'Cill Chonaill', 2539, 2390, 4929, 1678, 366, 335, 2044, '16'),
(12, 'Offaly', 'Leinster', 153, 'Kilcoursey', 'Cill Chuairs', 2508, 2521, 5029, 1741, 289, 256, 2030, '13'),
(6, 'Kildare', 'Leinster', 154, 'Kilcullen', 'Cill Chuillinn', 1756, 1880, 3636, 1252, 140, 110, 1392, '8'),
(7, 'Kilkenny', 'Leinster', 155, 'Kilculliheen', 'Cill Choilch?n', 2309, 2502, 4811, 1750, 339, 295, 2089, '14'),
(6, 'Kildare', 'Leinster', 156, 'Kilkea and Moone', 'Cill Ch? agus Maoin', 2944, 2908, 5852, 2049, 287, 247, 2336, '11'),
(13, 'Westmeath', 'Leinster', 157, 'Kilkenny West', 'Cill Chainnigh Thiar', 1819, 1773, 3592, 1197, 183, 165, 1380, '12'),
(27, 'Galway County', 'Connacht', 158, 'Killian', 'Cill Liath?in', 2089, 2096, 4185, 1468, 423, 393, 1891, '21'),
(33, 'Donegal', 'Ulster', 159, 'Kilmacrenan', 'Cill Mhic R?an?in', 23486, 23920, 47406, 17475, 8989, 8405, 26464, '32'),
(29, 'Mayo', 'Connacht', 160, 'Kilmaine', 'Cill Mhe?in', 5888, 5732, 11620, 4231, 1314, 1243, 5545, '22'),
(21, 'Limerick County', 'Munster', 161, 'Kilmallock', 'Cill Mocheall?g', 928, 923, 1851, 690, 162, 148, 852, '17'),
(23, 'Tipperary South', 'Munster', 162, 'Kilnamanagh Lower', 'Coill na Manach ?ochtarach', 1930, 1883, 3813, 1342, 242, 226, 1584, '14'),
(22, 'Tipperary North/Tipperary Sout', 'Munster', 163, 'Kilnamanagh Upper', 'Coill na Manach Uachtarach', 2516, 2372, 4888, 1784, 306, 283, 2090, '14'),
(27, 'Galway County', 'Connacht', 164, 'Kiltartan', 'Cill Tartan', 4266, 4301, 8567, 3045, 926, 843, 3971, '21'),
(18, 'Cork County', 'Munster', 165, 'Kinalea', 'Cine?l Aodha', 4733, 4643, 9376, 2996, 491, 409, 3487, '12'),
(18, 'Cork County', 'Munster', 166, 'Kinalmeaky', 'Cine?l mB?ice', 4572, 4532, 9104, 3241, 571, 522, 3812, '14'),
(18, 'Cork County', 'Munster', 167, 'Kinnatalloon', 'Coill na Tal?n', 1141, 1128, 2269, 763, 161, 148, 924, '16'),
(18, 'Cork County', 'Munster', 168, 'Kinsale', 'Cionn tS?ile', 3291, 3556, 6847, 2468, 814, 688, 3282, '21'),
(7, 'Kilkenny', 'Leinster', 169, 'Knocktopher', 'Cnoc an T?chair', 2266, 2128, 4394, 1491, 331, 311, 1822, '17'),
(28, 'Leitrim', 'Connacht', 170, 'Leitrim', 'Liatroim', 4856, 4907, 9763, 3749, 1784, 1691, 5533, '31'),
(16, 'Clare/Galway County', 'Munster/', 171, 'Leitrim', 'Liatroim', 3395, 3299, 6694, 2376, 777, 739, 3153, '23'),
(31, 'Sligo', 'Connacht', 172, 'Leyny', 'Lu?ne', 5070, 5085, 10155, 3846, 1446, 1319, 5292, '25'),
(9, 'Longford', 'Leinster', 173, 'Longford', 'An Longfort', 5056, 4932, 9988, 3671, 1030, 930, 4701, '20'),
(27, 'Galway County', 'Connacht', 174, 'Longford', 'An Longfort', 3873, 3701, 7574, 2676, 723, 676, 3399, '20'),
(27, 'Galway County', 'Connacht', 175, 'Loughrea', 'Baile Locha Riach', 4398, 4512, 8910, 3326, 853, 768, 4179, '18'),
(32, 'Cavan', 'Ulster', 176, 'Loughtee Lower', 'Lucht T? ?ochtarach', 2005, 1874, 3879, 1510, 815, 784, 2325, '34'),
(32, 'Cavan', 'Ulster', 177, 'Loughtee Upper', 'Lucht T? Uachtarach', 9556, 9770, 19326, 6784, 1817, 1620, 8601, '19'),
(10, 'Louth', 'Leinster', 178, 'Louth', 'L?', 3083, 3078, 6161, 2085, 227, 200, 2312, '9'),
(11, 'Meath', 'Leinster', 179, 'Lune', 'Lu?ne', 4293, 4474, 8767, 2982, 419, 349, 3401, '10'),
(19, 'Kerry', 'Munster', 180, 'Magunihy', 'Maigh gCoinchinn', 16377, 16438, 32815, 11079, 2875, 2603, 13954, '19'),
(8, 'Laois', 'Leinster', 181, 'Maryborough East', 'Port Laoise Thoir', 11772, 11096, 22868, 7905, 1325, 1135, 9230, '12'),
(8, 'Laois', 'Leinster', 182, 'Maryborough West', 'Port Laoise Thiar', 2613, 2566, 5179, 1832, 297, 270, 2129, '13'),
(23, 'Tipperary South', 'Munster', 183, 'Middlethird', 'An Trian Me?nach', 7519, 7668, 15187, 5522, 976, 883, 6498, '14'),
(25, 'Waterford County', 'Munster', 184, 'Middlethird', 'An Trian Me?nach', 8132, 8303, 16435, 5894, 1144, 978, 7038, '14'),
(28, 'Leitrim', 'Connacht', 185, 'Mohill', 'Maothail', 2909, 2791, 5700, 2228, 1168, 1142, 3396, '34'),
(34, 'Monaghan', 'Ulster', 186, 'Monaghan', 'Muineach?n', 8901, 9123, 18024, 6340, 1084, 955, 7424, '13'),
(11, 'Meath', 'Leinster', 187, 'Morgallion', 'Machaire Gaileang', 1959, 1873, 3832, 1274, 135, 118, 1409, '8'),
(16, 'Clare', 'Munster', 188, 'Moyarta', 'Maigh Fhearta', 4146, 4118, 8264, 3221, 2611, 2565, 5832, '44'),
(13, 'Westmeath', 'Leinster', 189, 'Moyashel and Magheradernon', 'Maigh Asail agus Machaire ? dT', 11617, 12275, 23892, 8756, 1419, 1160, 10175, '11'),
(27, 'Galway County/Roscommon', 'Connacht', 190, 'Moycarn', 'Maigh Charn?in', 2241, 2267, 4508, 1553, 309, 276, 1862, '15'),
(13, 'Westmeath', 'Leinster', 191, 'Moycashel', 'Maigh Chaisil', 2581, 2508, 5089, 1820, 334, 303, 2154, '14'),
(27, 'Galway County', 'Connacht', 192, 'Moycullen', 'Maigh Cuilinn', 11209, 11134, 22343, 7823, 2219, 2007, 10042, '20'),
(9, 'Longford', 'Leinster', 193, 'Moydow', 'Maigh Dumha', 1271, 1155, 2426, 854, 241, 225, 1095, '21'),
(11, 'Meath', 'Leinster', 194, 'Moyfenrath Lower', 'Maigh Fionnr?ithe ?ochtarach', 6214, 6370, 12584, 4199, 623, 523, 4822, '11'),
(11, 'Meath', 'Leinster', 195, 'Moyfenrath Upper', 'Maigh Fionnr?ithe Uachtarach', 2315, 2271, 4586, 1494, 207, 172, 1701, '10'),
(13, 'Westmeath', 'Leinster', 196, 'Moygoish', 'U? Mhac gCuais', 1124, 1098, 2222, 792, 207, 202, 999, '20'),
(29, 'Mayo', 'Connacht', 197, 'Murrisk', 'Muraisc', 5850, 6047, 11897, 4343, 2000, 1828, 6343, '29'),
(18, 'Cork County', 'Munster', 198, 'Muskerry East', 'M?scra? Thoir', 19389, 19727, 39116, 13261, 1377, 1070, 14638, '7'),
(18, 'Cork County', 'Munster', 199, 'Muskerry West', 'M?scra? Thiar', 8754, 8455, 17209, 6067, 1375, 1263, 7442, '17'),
(6, 'Kildare', 'Leinster', 200, 'Naas North', 'An N?s Thuaidh', 14994, 15215, 30209, 10079, 1040, 747, 11119, '7'),
(6, 'Kildare', 'Leinster', 201, 'Naas South', 'An N?s Theas', 2819, 2938, 5757, 1935, 246, 194, 2181, '9'),
(6, 'Kildare', 'Leinster', 202, 'Narragh and Reban East', 'An Fhorrach agus an R?ab?n Tho', 2155, 2072, 4227, 1372, 182, 153, 1554, '10'),
(6, 'Kildare', 'Leinster', 203, 'Narragh and Reban West', 'An Fhorrach agus an R?ab?n Thi', 5834, 5895, 11729, 4264, 791, 706, 5055, '14'),
(11, 'Meath', 'Leinster', 204, 'Navan Lower', 'An Uaimh ?ochtarach', 11347, 11498, 22845, 8069, 945, 771, 9014, '9'),
(11, 'Meath', 'Leinster', 205, 'Navan Upper', 'An Uaimh Uachtarach', 3470, 3425, 6895, 2401, 216, 166, 2617, '6'),
(4, 'Fingal', 'Leinster', 206, 'Nethercross', 'An Chrois ?ochtarach', 24620, 25195, 49815, 16859, 1404, 1010, 18263, '6'),
(15, 'Wicklow', 'Leinster', 207, 'Newcastle', 'An Caisle?n Nua', 13574, 13683, 27257, 9389, 1053, 811, 10442, '8'),
(3, 'South Dublin/Fingal', 'Leinster', 208, 'Newcastle', 'An Caisle?n Nua', 30671, 31905, 62576, 20641, 1957, 1402, 22598, '6'),
(6, 'Kildare', 'Leinster', 209, 'Offaly East', 'U?bh Fhail? Thoir', 10080, 10110, 20190, 6869, 885, 733, 7754, '10'),
(6, 'Kildare', 'Leinster', 210, 'Offaly West', 'U?bh Fhail? Thiar', 4582, 4626, 9208, 3100, 500, 439, 3600, '12'),
(22, 'Tipperary North', 'Munster', 211, 'Ormond Lower', 'Urumhain ?ochtarach', 8515, 8639, 17154, 6556, 1819, 1664, 8375, '20'),
(22, 'Tipperary North', 'Munster', 212, 'Ormond Upper', 'Urumhain Uachtarach', 4059, 3930, 7989, 2823, 475, 414, 3298, '13'),
(18, 'Cork County', 'Munster', 213, 'Orrery and Kilmore', 'Orbhra? agus An Choill Mh?r', 6094, 5987, 12081, 4507, 944, 869, 5451, '16'),
(22, 'Tipperary North', 'Munster', 214, 'Owney and Arra', 'Uaithne agus Ara', 6141, 6106, 12247, 4174, 804, 736, 4978, '15'),
(21, 'Limerick County', 'Munster', 215, 'Owneybeg', 'Uaithne Beag', 2428, 2308, 4736, 1601, 229, 201, 1830, '11'),
(12, 'Offaly', 'Leinster', 216, 'Philipstown Lower', 'An Daingean ?ochtarach', 1639, 1527, 3166, 1041, 152, 137, 1193, '12'),
(12, 'Offaly', 'Leinster', 217, 'Philipstown Upper', 'An Daingean Uachtarach', 2478, 2439, 4917, 1667, 280, 258, 1947, '13'),
(8, 'Laois', 'Leinster', 218, 'Portnahinch', 'Port na hInse', 7190, 7406, 14596, 5079, 858, 729, 5937, '12'),
(21, 'Limerick County', 'Munster', 219, 'Pubblebrien', 'Pobal Bhriain', 11459, 11969, 23428, 8258, 836, 592, 9094, '7'),
(33, 'Donegal', 'Ulster', 220, 'Raphoe North', 'R?th Bhoth Thuaidh', 9964, 9827, 19791, 6849, 1233, 1068, 8082, '13'),
(33, 'Donegal', 'Ulster', 221, 'Raphoe South', 'R?th Bhoth Theas', 8999, 8862, 17861, 6269, 1330, 1200, 7599, '16'),
(9, 'Longford', 'Leinster', 222, 'Rathcline', 'R?th Claon', 2540, 2520, 5060, 1923, 685, 647, 2608, '25'),
(13, 'Westmeath', 'Leinster', 223, 'Rathconrath', 'R?th Conarta', 1453, 1379, 2832, 1002, 182, 171, 1184, '14'),
(15, 'Wicklow', 'Leinster', 224, 'Rathdown', 'R?th an D?in', 22865, 24272, 47137, 16411, 1530, 1058, 17941, '6'),
(3, 'South Dublin/D?n Laoghaire-Rat', 'Leinster', 225, 'Rathdown', 'R?th an D?in', 111007, 121032, 232039, 85874, 10377, 7150, 96251, '7'),
(1, 'Carlow', 'Leinster', 226, 'Rathvilly', 'R?th Bhile', 4760, 4748, 9508, 3401, 880, 801, 4281, '19'),
(11, 'Meath', 'Leinster', 227, 'Ratoath', 'R?th T?', 14928, 15050, 29978, 9800, 881, 647, 10681, '6'),
(28, 'Leitrim', 'Connacht', 228, 'Rosclogher', 'Ros Clochair', 2560, 2415, 4975, 1953, 905, 852, 2858, '30'),
(30, 'Roscommon', 'Connacht', 229, 'Roscommon', 'Ros Com?in', 2807, 2670, 5477, 2131, 975, 922, 3106, '30'),
(27, 'Galway County/Mayo', 'Connacht', 230, 'Ross', 'An Ros', 1326, 1299, 2625, 924, 628, 610, 1552, '39'),
(6, 'Kildare', 'Leinster', 231, 'Salt North', 'An L?im Thuaidh', 23018, 23225, 46243, 15320, 1498, 1074, 16818, '6'),
(6, 'Kildare', 'Leinster', 232, 'Salt South', 'An L?im Theas', 5081, 5218, 10299, 3567, 345, 243, 3912, '6'),
(14, 'Wexford', 'Leinster', 233, 'Scarawalsh', 'Scairbh Bhailis', 11379, 11454, 22833, 8258, 1483, 1337, 9741, '14'),
(21, 'Limerick County', 'Munster', 234, 'Shanid', 'Seanaid', 4637, 4247, 8884, 3234, 726, 653, 3960, '17'),
(14, 'Wexford', 'Leinster', 235, 'Shelburne', 'S?ol Bhroin', 4175, 4144, 8319, 3006, 1406, 1336, 4412, '30'),
(14, 'Wexford', 'Leinster', 236, 'Shelmaliere East', 'S?ol Maolu?r Thoir', 2472, 2588, 5060, 1740, 448, 414, 2188, '19'),
(14, 'Wexford', 'Leinster', 237, 'Shelmaliere West', 'S?ol Maolu?r Thiar', 5350, 5581, 10931, 3762, 577, 489, 4339, '11'),
(15, 'Wicklow', 'Leinster', 238, 'Shillelagh', 'S?ol ?alaigh', 2501, 2415, 4916, 1750, 346, 318, 2096, '15'),
(7, 'Kilkenny', 'Leinster', 239, 'Shillelogher', 'S?ol Fhaolchair', 7794, 8103, 15897, 5848, 889, 716, 6737, '11'),
(9, 'Longford', 'Leinster', 240, 'Shrule', 'Sruthail', 1124, 1066, 2190, 777, 221, 213, 998, '21'),
(11, 'Meath', 'Leinster', 241, 'Skreen', 'An Scr?n', 7546, 7701, 15247, 4938, 583, 492, 5521, '9'),
(11, 'Meath', 'Leinster', 242, 'Slane Lower', 'Baile Shl?ine ?ochtarach', 1460, 1405, 2865, 1027, 129, 117, 1156, '10'),
(11, 'Meath', 'Leinster', 243, 'Slane Upper', 'Baile Shl?ine Uachtarach', 2164, 2063, 4227, 1476, 147, 126, 1623, '8'),
(23, 'Tipperary South', 'Munster', 244, 'Slieveardagh', 'Sliabh Ardach', 4418, 4165, 8583, 3030, 487, 435, 3517, '12'),
(1, 'Carlow/Laois', 'Leinster', 245, 'Slievemargy', 'Sliabh Mairge', 4743, 4838, 9581, 3390, 575, 522, 3965, '13'),
(21, 'Limerick County', 'Munster', 246, 'Smallcounty', 'An D?is Bheag', 3310, 3281, 6591, 2286, 307, 273, 2593, '11'),
(1, 'Carlow', 'Leinster', 247, 'St. Mullin''s Lower', 'Tigh Moling ?ochtarach', 1616, 1574, 3190, 1110, 225, 212, 1335, '16'),
(1, 'Carlow', 'Leinster', 248, 'St. Mullin''s Upper', 'Tigh Moling Uachtarach', 527, 561, 1088, 375, 89, 82, 464, '18'),
(8, 'Laois', 'Leinster', 249, 'Stradbally', 'An Sr?idbhaile', 1617, 1645, 3262, 1104, 189, 175, 1293, '14'),
(15, 'Wicklow', 'Leinster', 250, 'Talbotstown Lower', 'Baile an Talb?idigh ?ochtarach', 5742, 5735, 11477, 3849, 664, 550, 4513, '12'),
(15, 'Wicklow', 'Leinster', 251, 'Talbotstown Upper', 'Baile an Talb?idigh Uachtarach', 3303, 3225, 6528, 2261, 395, 330, 2656, '12'),
(27, 'Galway County', 'Connacht', 252, 'Tiaquin', 'Tigh Dachoinne', 5326, 5151, 10477, 3560, 794, 742, 4354, '17'),
(8, 'Laois', 'Leinster', 253, 'Tinnahinch', 'Tigh na hInse', 2798, 2677, 5475, 1944, 309, 277, 2253, '12'),
(29, 'Mayo', 'Connacht', 254, 'Tirawley', 'T?r Amhlaidh', 10149, 9804, 19953, 7451, 2416, 2258, 9867, '23'),
(29, 'Mayo/Sligo', 'Connacht', 255, 'Tireragh', 'T?r Fhiachrach', 6841, 6839, 13680, 5013, 1752, 1618, 6765, '24'),
(31, 'Sligo', 'Connacht', 256, 'Tirerril', 'T?r Oirill', 3957, 3806, 7763, 2786, 922, 841, 3708, '23'),
(33, 'Donegal', 'Ulster', 257, 'Tirhugh', 'T?r Aodha', 6804, 6990, 13794, 5107, 2793, 2625, 7900, '33'),
(34, 'Monaghan', 'Ulster', 258, 'Trough', 'An Tri?cha', 2665, 2576, 5241, 1768, 316, 275, 2084, '13'),
(19, 'Kerry', 'Munster', 259, 'Trughanacmy', 'Tri?cha an Aicme', 25046, 25816, 50862, 19099, 4551, 4077, 23650, '17'),
(16, 'Clare', 'Munster', 260, 'Tulla Lower', 'An Tulach ?ochtarach', 4976, 4943, 9919, 3381, 748, 671, 4129, '16'),
(16, 'Clare', 'Munster', 261, 'Tulla Upper', 'An Tulach Uachtarach', 3001, 3012, 6013, 2192, 539, 507, 2731, '19'),
(32, 'Cavan', 'Ulster', 262, 'Tullygarvey', 'Teallach Ghairbh?th', 3540, 3313, 6853, 2491, 643, 601, 3134, '19'),
(32, 'Cavan', 'Ulster', 263, 'Tullyhaw', 'Teallach Eathach', 2529, 2273, 4802, 1802, 865, 829, 2667, '31'),
(32, 'Cavan', 'Ulster', 264, 'Tullyhunco', 'Teallach Dh?nchadha', 2078, 2012, 4090, 1471, 567, 531, 2038, '26'),
(3, 'South Dublin/D?n Laoghaire-Rat', 'Leinster', 265, 'Uppercross', 'An Chrois Uachtarach', 86945, 90933, 177878, 60075, 4490, 3318, 64565, '5'),
(23, 'Tipperary South/Waterford Coun', 'Munster', 266, 'Upperthird', 'Uachtar T?re', 3463, 3401, 6864, 2434, 344, 300, 2778, '11'),
(8, 'Laois', 'Leinster', 267, 'Upper Woods', 'An Choill Uachtarach', 1507, 1485, 2992, 991, 142, 123, 1133, '11'),
(12, 'Offaly', 'Leinster', 268, 'Warrenstown', 'Baile an Bhair?nigh', 1270, 1310, 2580, 861, 105, 88, 966, '9');

-- --------------------------------------------------------

--
-- Table structure for table `county`
--

CREATE TABLE `county` (
  `COUNTY_ID` int(2) NOT NULL,
  `GEOGDESC` varchar(20) NOT NULL COMMENT 'A county name in english'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `county`
--

INSERT INTO `county` (`COUNTY_ID`, `GEOGDESC`) VALUES
(1, 'Carlow'),
(2, 'Dublin City'),
(3, 'South Dublin'),
(4, 'Fingal'),
(5, 'Dún Laoghaire-Rathdo'),
(6, 'Kildare'),
(7, 'Kilkenny'),
(8, 'Laois'),
(9, 'Longford'),
(10, 'Louth'),
(11, 'Meath'),
(12, 'Offaly'),
(13, 'Westmeath'),
(14, 'Wexford'),
(15, 'Wicklow'),
(16, 'Clare'),
(17, 'Cork City'),
(19, 'Cork'),
(20, 'Kerry'),
(21, 'Limerick City'),
(22, 'Limerick'),
(23, 'Tipperary North'),
(24, 'Tipperary South'),
(25, 'Waterford City'),
(26, 'Waterford'),
(27, 'Galway City'),
(28, 'Galway'),
(29, 'Leitrim'),
(30, 'Mayo'),
(31, 'Roscommon'),
(32, 'Sligo'),
(33, 'Cavan'),
(34, 'Donegal'),
(35, 'Monaghan');

-- --------------------------------------------------------

--
-- Table structure for table `industrys_persons_at_work_by_industrys_and_sex`
--

CREATE TABLE `industrys_persons_at_work_by_industrys_and_sex` (
  `COUNTY_ID` int(2) NOT NULL,
  `GEOGDESC` varchar(30) NOT NULL,
  `Agriculture, forestry and fishing (Males)` int(7) NOT NULL,
  `Building and construction (Males)` int(7) NOT NULL,
  `Manufacturing industries (Males)` int(7) NOT NULL,
  `Commerce and trade (Males)` int(7) NOT NULL,
  `Transport and communications (Males)` int(7) NOT NULL,
  `Public administration (Males)` int(7) NOT NULL,
  `Professional services (Males)` int(7) NOT NULL,
  `Other (Males)` int(7) NOT NULL,
  `Total (Males)` int(7) NOT NULL,
  `Agriculture, forestry and fishing (Females)` int(7) NOT NULL,
  `Building and construction (Females)` int(7) NOT NULL,
  `Manufacturing industries (Females)` int(7) NOT NULL,
  `Commerce and trade (Females)` int(7) NOT NULL,
  `Transport and communications (Females)` int(7) NOT NULL,
  `Public administration (Females)` int(7) NOT NULL,
  `Professional services (Females)` int(7) NOT NULL,
  `Other (Females)` int(7) NOT NULL,
  `Total (Females)` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industrys_persons_at_work_by_industrys_and_sex`
--

INSERT INTO `industrys_persons_at_work_by_industrys_and_sex` (`COUNTY_ID`, `GEOGDESC`, `Agriculture, forestry and fishing (Males)`, `Building and construction (Males)`, `Manufacturing industries (Males)`, `Commerce and trade (Males)`, `Transport and communications (Males)`, `Public administration (Males)`, `Professional services (Males)`, `Other (Males)`, `Total (Males)`, `Agriculture, forestry and fishing (Females)`, `Building and construction (Females)`, `Manufacturing industries (Females)`, `Commerce and trade (Females)`, `Transport and communications (Females)`, `Public administration (Females)`, `Professional services (Females)`, `Other (Females)`, `Total (Females)`) VALUES
(1, 'Carlow', 1198, 1001, 1975, 2386, 820, 549, 1042, 1625, 10596, 213, 69, 494, 2607, 166, 519, 3262, 1576, 8906),
(2, 'Dublin City', 249, 5740, 9356, 33171, 19436, 7758, 17327, 21704, 114741, 94, 654, 4706, 32847, 7939, 7192, 39080, 20176, 112688),
(3, 'South Dublin', 171, 4388, 7026, 15876, 8625, 3992, 7077, 7632, 54787, 59, 549, 3126, 15865, 2673, 3514, 18027, 7934, 51747),
(4, 'Fingal', 947, 4178, 6575, 17742, 11916, 4464, 8126, 8527, 62475, 265, 465, 2890, 17105, 4656, 3834, 19013, 8573, 56801),
(5, 'Dún Laoghaire-Rathdown', 168, 2283, 3954, 17644, 6810, 2484, 6340, 5677, 45360, 50, 287, 1889, 14315, 2747, 2105, 15330, 5407, 42130),
(6, 'Kildare', 2534, 4215, 7523, 11779, 5411, 3922, 5313, 5298, 45995, 632, 496, 3065, 11291, 1699, 2732, 13898, 5779, 39592),
(7, 'Kilkenny', 3011, 1973, 3364, 4206, 1421, 1144, 2109, 2571, 19799, 388, 144, 1118, 4555, 413, 1094, 6933, 2829, 17474),
(8, 'Laois', 2193, 1526, 2541, 3201, 1548, 1436, 1678, 2369, 16492, 248, 117, 762, 3650, 492, 1195, 5124, 2257, 13845),
(9, 'Longford', 1178, 682, 1576, 1383, 561, 498, 714, 941, 7533, 122, 44, 548, 1540, 134, 532, 2401, 1017, 6338),
(10, 'Louth', 1156, 1947, 4021, 5706, 2649, 1511, 2860, 3300, 23150, 108, 166, 1457, 5963, 766, 1187, 7904, 3531, 21082),
(11, 'Meath', 3169, 4245, 6449, 9655, 5134, 2623, 4050, 4777, 40102, 524, 425, 2333, 9689, 1824, 2365, 11937, 5143, 34240),
(12, 'Offaly', 1991, 1438, 3480, 2898, 1014, 1029, 1414, 1852, 15116, 276, 103, 1113, 3016, 311, 1024, 4464, 2113, 12420),
(13, 'Westmeath', 1651, 1576, 3149, 3585, 1610, 1424, 1851, 2435, 17281, 203, 120, 1155, 3823, 457, 1055, 5722, 2503, 15038),
(14, 'Wexford', 3755, 2975, 4241, 6023, 2331, 1429, 2756, 3688, 27198, 516, 258, 1648, 6634, 624, 1615, 8497, 4317, 24109),
(15, 'Wicklow', 1757, 2447, 3969, 7718, 3168, 1584, 3254, 4210, 28107, 313, 230, 1720, 7223, 1096, 1299, 8634, 4285, 24800),
(16, 'Clare', 3377, 2186, 5045, 4093, 2474, 1220, 2491, 3502, 24388, 374, 202, 1924, 4885, 1055, 1434, 7644, 3700, 21218),
(17, 'Cork City', 86, 1433, 4008, 4995, 2837, 1261, 3444, 4241, 22305, 19, 126, 1812, 5144, 898, 851, 7772, 4135, 20757),
(18, 'Cork', 10860, 8496, 18144, 19039, 7851, 5230, 9407, 10124, 89151, 1564, 731, 7922, 18561, 2796, 3647, 28347, 11722, 75290),
(19, 'Kerry', 4915, 2947, 4335, 5882, 1862, 1528, 3176, 5337, 29982, 546, 188, 1421, 6356, 573, 1467, 9512, 5722, 25785),
(20, 'Limerick City', 44, 577, 1734, 2239, 1148, 477, 1423, 1882, 9524, 8, 49, 634, 2489, 393, 382, 3035, 1905, 8895),
(21, 'Limerick', 3788, 2726, 6085, 5706, 2514, 1290, 3223, 3245, 28577, 491, 208, 2304, 5548, 913, 1324, 9856, 3401, 24045),
(22, 'Tipperary North', 2626, 1406, 2926, 2844, 1024, 948, 1388, 1752, 14914, 289, 81, 851, 2922, 289, 1110, 4617, 1949, 12108),
(23, 'Tipperary South', 3313, 1610, 3732, 3327, 1134, 901, 1618, 2160, 17795, 664, 117, 1710, 3767, 318, 884, 5549, 2506, 15515),
(24, 'Waterford City', 67, 462, 2046, 1875, 938, 395, 1237, 1451, 8471, 13, 47, 828, 2102, 357, 342, 3037, 1583, 8309),
(25, 'Waterford', 2210, 1260, 2831, 2382, 947, 776, 1548, 1604, 13558, 270, 117, 1285, 2701, 339, 625, 4393, 1874, 11604),
(26, 'Galway City', 141, 821, 2787, 3429, 1769, 749, 2542, 3309, 15547, 27, 84, 1639, 3623, 680, 698, 5858, 3401, 16010),
(27, 'Galway', 5385, 3991, 6517, 7143, 3093, 1833, 4337, 4814, 37113, 523, 284, 3622, 6945, 1111, 1893, 12935, 4781, 32094),
(28, 'Leitrim', 1093, 610, 894, 1191, 420, 472, 750, 908, 6338, 101, 33, 316, 1142, 109, 552, 2409, 972, 5634),
(29, 'Mayo', 4706, 2780, 4190, 5372, 1577, 1530, 2676, 3460, 26291, 648, 204, 2224, 5198, 535, 1675, 8236, 4065, 22785),
(30, 'Roscommon', 2235, 1262, 2054, 2639, 946, 1158, 1302, 1673, 13269, 170, 81, 809, 2593, 340, 1166, 4350, 1612, 11121),
(31, 'Sligo', 1585, 1090, 2065, 2627, 941, 939, 1827, 2034, 13108, 136, 79, 1188, 2444, 274, 1104, 4980, 2121, 12326),
(32, 'Cavan', 2930, 1554, 3072, 2709, 1004, 804, 1242, 1728, 15043, 418, 141, 1134, 2906, 289, 842, 4472, 2064, 12266),
(33, 'Donegal', 3694, 2948, 3711, 5688, 2438, 1990, 3396, 4068, 27933, 253, 191, 1256, 5767, 741, 1963, 10319, 4854, 25344),
(34, 'Monaghan', 2248, 1401, 2538, 2382, 898, 594, 1050, 1391, 12502, 570, 107, 987, 2538, 254, 697, 3814, 1536, 10503);

-- --------------------------------------------------------

--
-- Table structure for table `persons_at_work_or_unemployed_by_occupation`
--

CREATE TABLE `persons_at_work_or_unemployed_by_occupation` (
  `COUNTY_ID` int(3) NOT NULL,
  `GEOGDESC` varchar(20) NOT NULL,
  `Managers, Directors and Senior Officials (Males)` int(6) NOT NULL,
  `Professional Occupations (Males)` int(6) NOT NULL,
  `Associate Professional and Technical Occupations (Males)` int(6) NOT NULL,
  `Administrative and Secretarial Occupations (Males)` int(6) NOT NULL,
  `Skilled Trades Occupations (Males)` int(6) NOT NULL,
  `Caring, Leisure and Other Service Occupations (Males)` int(6) NOT NULL,
  `Sales and Customer Service Occupations (Males)` int(6) NOT NULL,
  `Process, Plant and Machine Operatives (Males)` int(6) NOT NULL,
  `Elementary Occupations (Males)` int(6) NOT NULL,
  `Not stated (Males)` int(6) NOT NULL,
  `Total (Males)` int(6) NOT NULL,
  `Managers, Directors and Senior Officials (Females)` int(6) NOT NULL,
  `Professional Occupations (Females)` int(6) NOT NULL,
  `Associate Professional and Technical Occupations (Females)` int(6) NOT NULL,
  `Administrative and Secretarial Occupations (Females)` int(6) NOT NULL,
  `Skilled Trades Occupations (Females)` int(6) NOT NULL,
  `Caring, Leisure and Other Service Occupations (Females)` int(6) NOT NULL,
  `Sales and Customer Service Occupations (Females)` int(6) NOT NULL,
  `Process, Plant and Machine Operatives (Females)` int(6) NOT NULL,
  `Elementary Occupations (Females)` int(6) NOT NULL,
  `Not stated (Females)` int(6) NOT NULL,
  `Total (Females)` int(7) NOT NULL,
  `Managers, Directors and Senior Officials (Total)` int(7) NOT NULL,
  `Professional Occupations (Total)` int(7) NOT NULL,
  `Associate Professional and Technical Occupations (Total)` int(7) NOT NULL,
  `Administrative and Secretarial Occupations (Total)` int(7) NOT NULL,
  `Skilled Trades Occupations (Total)` int(7) NOT NULL,
  `Caring, Leisure and Other Service Occupations (Total)` int(7) NOT NULL,
  `Sales and Customer Service Occupations (Total)` int(7) NOT NULL,
  `Process, Plant and Machine Operatives (Total)` int(7) NOT NULL,
  `Elementary Occupations (Total)` int(7) NOT NULL,
  `Not stated (Total)` int(7) NOT NULL,
  `Total (Total)` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons_at_work_or_unemployed_by_occupation`
--

INSERT INTO `persons_at_work_or_unemployed_by_occupation` (`COUNTY_ID`, `GEOGDESC`, `Managers, Directors and Senior Officials (Males)`, `Professional Occupations (Males)`, `Associate Professional and Technical Occupations (Males)`, `Administrative and Secretarial Occupations (Males)`, `Skilled Trades Occupations (Males)`, `Caring, Leisure and Other Service Occupations (Males)`, `Sales and Customer Service Occupations (Males)`, `Process, Plant and Machine Operatives (Males)`, `Elementary Occupations (Males)`, `Not stated (Males)`, `Total (Males)`, `Managers, Directors and Senior Officials (Females)`, `Professional Occupations (Females)`, `Associate Professional and Technical Occupations (Females)`, `Administrative and Secretarial Occupations (Females)`, `Skilled Trades Occupations (Females)`, `Caring, Leisure and Other Service Occupations (Females)`, `Sales and Customer Service Occupations (Females)`, `Process, Plant and Machine Operatives (Females)`, `Elementary Occupations (Females)`, `Not stated (Females)`, `Total (Females)`, `Managers, Directors and Senior Officials (Total)`, `Professional Occupations (Total)`, `Associate Professional and Technical Occupations (Total)`, `Administrative and Secretarial Occupations (Total)`, `Skilled Trades Occupations (Total)`, `Caring, Leisure and Other Service Occupations (Total)`, `Sales and Customer Service Occupations (Total)`, `Process, Plant and Machine Operatives (Total)`, `Elementary Occupations (Total)`, `Not stated (Total)`, `Total (Total)`) VALUES
(1, 'Carlow', 1170, 1175, 1305, 298, 4305, 200, 573, 1938, 1435, 1785, 14184, 624, 1908, 878, 1784, 378, 1427, 1264, 352, 931, 1271, 10817, 1794, 3083, 2183, 2082, 4683, 1627, 1837, 2290, 2366, 3056, 25001),
(2, 'Dublin City', 12200, 25695, 18938, 8914, 20724, 3284, 7433, 12507, 17351, 17661, 144707, 7737, 29102, 14705, 23167, 2573, 12962, 11853, 1914, 12186, 13136, 129335, 19937, 54797, 33643, 32081, 23297, 16246, 19286, 14421, 29537, 30797, 274042),
(3, 'South Dublin', 6680, 8596, 8891, 3572, 13950, 1382, 3527, 8506, 7813, 6791, 69708, 3597, 10368, 6188, 13444, 1194, 7071, 6918, 1040, 4941, 5743, 60504, 10277, 18964, 15079, 17016, 15144, 8453, 10445, 9546, 12754, 12534, 130212),
(4, 'Fingal', 8520, 11055, 10680, 4165, 12900, 1681, 3727, 7982, 7455, 6504, 74669, 4522, 12731, 7225, 13413, 1315, 7261, 6984, 1135, 4767, 5670, 65023, 13042, 23786, 17905, 17578, 14215, 8942, 10711, 9117, 12222, 12174, 139692),
(5, 'Dún Laoghaire-Rathdo', 8596, 13037, 8924, 3057, 6110, 909, 2667, 2379, 3049, 2749, 51477, 4165, 13552, 6616, 8833, 798, 4140, 3432, 269, 1933, 2339, 46077, 12761, 26589, 15540, 11890, 6908, 5049, 6099, 2648, 4982, 5088, 97554),
(6, 'Kildare', 6116, 7132, 8198, 2214, 13475, 949, 2317, 6679, 5441, 4383, 56904, 3108, 9317, 4795, 9481, 1220, 5409, 4729, 1007, 3247, 3638, 45951, 9224, 16449, 12993, 11695, 14695, 6358, 7046, 7686, 8688, 8021, 102855),
(7, 'Kilkenny', 2263, 2441, 2406, 572, 8860, 488, 932, 3075, 2529, 1892, 25458, 1206, 4338, 1705, 3547, 848, 2743, 2224, 397, 1675, 1514, 20197, 3469, 6779, 4111, 4119, 9708, 3231, 3156, 3472, 4204, 3406, 45655),
(8, 'Laois', 1684, 1693, 2378, 588, 6497, 381, 810, 2677, 2277, 2576, 21561, 996, 3058, 1373, 3054, 567, 2205, 1925, 318, 1325, 1541, 16362, 2680, 4751, 3751, 3642, 7064, 2586, 2735, 2995, 3602, 4117, 37923),
(9, 'Longford', 742, 760, 844, 229, 3362, 152, 379, 1548, 1030, 1182, 10228, 416, 1309, 545, 1337, 284, 1154, 861, 328, 647, 976, 7857, 1158, 2069, 1389, 1566, 3646, 1306, 1240, 1876, 1677, 2158, 18085),
(10, 'Louth', 2781, 3224, 3545, 986, 7911, 716, 1587, 4018, 3477, 3137, 31382, 1489, 4580, 2016, 4572, 723, 3480, 3326, 848, 2052, 2489, 25575, 4270, 7804, 5561, 5558, 8634, 4196, 4913, 4866, 5529, 5626, 56957),
(11, 'Meath', 5181, 5334, 6017, 1796, 13997, 813, 1875, 6575, 4809, 3582, 49979, 2643, 7563, 3870, 8444, 1249, 5225, 4047, 1031, 2635, 2811, 39518, 7824, 12897, 9887, 10240, 15246, 6038, 5922, 7606, 7444, 6393, 89497),
(12, 'Offaly', 1534, 1460, 1827, 449, 6687, 332, 667, 2828, 2186, 2159, 20129, 832, 2628, 1122, 2728, 529, 2079, 1599, 727, 1285, 1583, 15112, 2366, 4088, 2949, 3177, 7216, 2411, 2266, 3555, 3471, 3742, 35241),
(13, 'Westmeath', 1945, 2539, 2511, 596, 6509, 411, 882, 2631, 2241, 2198, 22463, 1069, 3559, 1439, 3021, 575, 2323, 1999, 590, 1546, 1706, 17827, 3014, 6098, 3950, 3617, 7084, 2734, 2881, 3221, 3787, 3904, 40290),
(14, 'Wexford', 3145, 2934, 3211, 864, 12876, 621, 1387, 4979, 4442, 2687, 37146, 1778, 4877, 2304, 5241, 1219, 3917, 3642, 1033, 2810, 2104, 28925, 4923, 7811, 5515, 6105, 14095, 4538, 5029, 6012, 7252, 4791, 66071),
(15, 'Wicklow', 4033, 4667, 4583, 1294, 9044, 651, 1479, 3598, 3465, 3149, 35963, 2151, 5452, 3253, 5663, 921, 3704, 2756, 556, 2017, 2356, 28829, 6184, 10119, 7836, 6957, 9965, 4355, 4235, 4154, 5482, 5505, 64792),
(16, 'Clare', 2562, 3335, 3219, 882, 10344, 493, 1020, 3521, 2642, 2714, 30732, 1632, 4984, 2065, 4491, 1016, 3236, 2505, 908, 1699, 2143, 24679, 4194, 8319, 5284, 5373, 11360, 3729, 3525, 4429, 4341, 4857, 55411),
(17, 'Cork City', 1982, 4124, 3409, 1204, 5214, 642, 2272, 3488, 3460, 3928, 29723, 1215, 4609, 2076, 3452, 502, 2907, 3535, 770, 2668, 2856, 24590, 3197, 8733, 5485, 4656, 5716, 3549, 5807, 4258, 6128, 6784, 54313),
(18, 'Cork', 9297, 13275, 12457, 3039, 33176, 1675, 3876, 13394, 9230, 7279, 106698, 5186, 18621, 7738, 15197, 3638, 11293, 8482, 2639, 5896, 5650, 84340, 14483, 31896, 20195, 18236, 36814, 12968, 12358, 16033, 15126, 12929, 191038),
(19, 'Kerry', 3058, 3573, 3027, 906, 14047, 702, 1579, 3987, 3792, 3801, 38472, 2092, 5744, 2010, 4960, 1442, 4154, 3479, 578, 2741, 2693, 29893, 5150, 9317, 5037, 5866, 15489, 4856, 5058, 4565, 6533, 6494, 68365),
(20, 'Limerick City', 977, 1458, 1408, 457, 2539, 302, 830, 1730, 1942, 2185, 13828, 629, 1516, 774, 1699, 280, 1313, 1748, 446, 1370, 1604, 11379, 1606, 2974, 2182, 2156, 2819, 1615, 2578, 2176, 3312, 3789, 25207),
(21, 'Limerick', 2894, 4447, 3719, 969, 10879, 533, 1334, 4588, 3241, 2754, 35358, 1622, 6279, 2262, 5030, 1034, 3669, 2848, 1015, 1689, 2088, 27536, 4516, 10726, 5981, 5999, 11913, 4202, 4182, 5603, 4930, 4842, 62894),
(22, 'Tipperary North', 1551, 1655, 1728, 465, 6439, 295, 635, 2525, 1754, 1699, 18746, 795, 2810, 1098, 2740, 620, 1885, 1517, 378, 1066, 1221, 14130, 2346, 4465, 2826, 3205, 7059, 2180, 2152, 2903, 2820, 2920, 32876),
(23, 'Tipperary South', 1715, 1793, 1919, 430, 7554, 425, 778, 3627, 2701, 2260, 23202, 1035, 3129, 1205, 2902, 762, 2649, 1970, 955, 1804, 1708, 18119, 2750, 4922, 3124, 3332, 8316, 3074, 2748, 4582, 4505, 3968, 41321),
(24, 'Waterford City', 899, 1337, 1147, 360, 2391, 218, 741, 1666, 1458, 1553, 11770, 508, 1579, 777, 1498, 311, 1092, 1571, 486, 1142, 1218, 10182, 1407, 2916, 1924, 1858, 2702, 1310, 2312, 2152, 2600, 2771, 21952),
(25, 'Waterford', 1551, 1801, 1648, 374, 5818, 287, 571, 2313, 1732, 1226, 17321, 856, 2809, 1161, 2357, 596, 1714, 1375, 583, 964, 936, 13351, 2407, 4610, 2809, 2731, 6414, 2001, 1946, 2896, 2696, 2162, 30672),
(26, 'Galway City', 1679, 3599, 2539, 642, 3017, 369, 1091, 1929, 2316, 2381, 19562, 1080, 4488, 1748, 2662, 464, 1556, 1856, 800, 1851, 2070, 18575, 2759, 8087, 4287, 3304, 3481, 1925, 2947, 2729, 4167, 4451, 38137),
(27, 'Galway', 3802, 5479, 4524, 925, 15764, 732, 1561, 5711, 3930, 4175, 46603, 2203, 8472, 3184, 6264, 1334, 4704, 3139, 1983, 2461, 2983, 36727, 6005, 13951, 7708, 7189, 17098, 5436, 4700, 7694, 6391, 7158, 83330),
(28, 'Leitrim', 654, 761, 845, 234, 2875, 156, 324, 947, 797, 723, 8316, 360, 1355, 546, 1240, 302, 954, 641, 156, 506, 436, 6496, 1014, 2116, 1391, 1474, 3177, 1110, 965, 1103, 1303, 1159, 14812),
(29, 'Mayo', 2609, 3065, 2791, 736, 12644, 666, 1292, 3923, 3314, 2766, 33806, 1555, 5145, 2166, 4662, 1256, 3685, 2537, 990, 2290, 1957, 26243, 4164, 8210, 4957, 5398, 13900, 4351, 3829, 4913, 5604, 4723, 60049),
(30, 'Roscommon', 1310, 1499, 1781, 434, 6011, 263, 654, 2058, 1508, 1498, 17016, 721, 2569, 1058, 2584, 517, 1696, 1320, 386, 1005, 927, 12783, 2031, 4068, 2839, 3018, 6528, 1959, 1974, 2444, 2513, 2425, 29799),
(31, 'Sligo', 1262, 1820, 1834, 504, 4993, 372, 789, 1789, 1665, 1592, 16620, 723, 3051, 1172, 2616, 469, 1944, 1323, 550, 1012, 1151, 14011, 1985, 4871, 3006, 3120, 5462, 2316, 2112, 2339, 2677, 2743, 30631),
(32, 'Cavan', 1394, 1466, 1481, 416, 7230, 247, 629, 2998, 1792, 1852, 19505, 765, 2701, 1007, 2787, 617, 2119, 1304, 585, 1262, 1429, 14576, 2159, 4167, 2488, 3203, 7847, 2366, 1933, 3583, 3054, 3281, 34081),
(33, 'Donegal', 2833, 3709, 3464, 1105, 12795, 790, 1636, 5210, 4405, 3923, 39870, 1599, 6127, 2061, 5597, 1053, 4771, 3196, 1061, 2699, 2732, 30896, 4432, 9836, 5525, 6702, 13848, 5561, 4832, 6271, 7104, 6655, 70766),
(34, 'Monaghan', 1230, 1221, 1046, 298, 6092, 235, 422, 2816, 1651, 1239, 16250, 651, 2292, 774, 2211, 469, 1776, 1099, 782, 1278, 934, 12266, 1881, 3513, 1820, 2509, 6561, 2011, 1521, 3598, 2929, 2173, 28516);

-- --------------------------------------------------------

--
-- Table structure for table `populationbysexagegroupcensusyear`
--

CREATE TABLE `populationbysexagegroupcensusyear` (
  `Gender` varchar(20) NOT NULL,
  `Age_group` varchar(20) NOT NULL,
  `Number` varchar(7) NOT NULL,
  `Year` int(4) NOT NULL,
  `id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `populationbysexagegroupcensusyear`
--

INSERT INTO `populationbysexagegroupcensusyear` (`Gender`, `Age_group`, `Number`, `Year`, `id`) VALUES
('All ages', 'Both sexes', '4588252', 2011, 1),
('0 - 14 years', 'Both sexes', '979590', 2011, 2),
('15 - 24 years', 'Both sexes', '580250', 2011, 3),
('25 - 44 years', 'Both sexes', '1450140', 2011, 4),
('45 - 64 years', 'Both sexes', '1042879', 2011, 5),
('65 years and over', 'Both sexes', '535393', 2011, 6),
('', ' ', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `population_by_county_urban_location_gender`
--

CREATE TABLE `population_by_county_urban_location_gender` (
  `COUNTY_ID` int(2) NOT NULL,
  `GEOGDESC` varchar(30) NOT NULL,
  `TOTAL_AGE_0_19MALE` int(7) NOT NULL,
  `AGE20_59MALE` int(7) NOT NULL,
  `AGE60_85+MALE` int(7) NOT NULL,
  `TOTAL_MALE` int(7) NOT NULL,
  `TOTAL_AGE_0_19FEMALE` int(7) NOT NULL,
  `AGE20_59FEMALE` int(7) NOT NULL,
  `AGE60_85+FEMALE` int(7) NOT NULL,
  `TOTAL_FEMALE` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `population_by_county_urban_location_gender`
--

INSERT INTO `population_by_county_urban_location_gender` (`COUNTY_ID`, `GEOGDESC`, `TOTAL_AGE_0_19MALE`, `AGE20_59MALE`, `AGE60_85+MALE`, `TOTAL_MALE`, `TOTAL_AGE_0_19FEMALE`, `AGE20_59FEMALE`, `AGE60_85+FEMALE`, `TOTAL_FEMALE`) VALUES
(1, 'Carlow', 7973, 15237, 4221, 27431, 7566, 30282, 8791, 46639),
(2, 'Dublin City', 55324, 163293, 38686, 257303, 53919, 329364, 89005, 472288),
(3, 'South Dublin', 39956, 73086, 16502, 129544, 38009, 151675, 35565, 225249),
(4, 'Fingal', 42072, 78292, 14124, 134488, 39983, 161550, 30386, 231919),
(5, 'Dún Laoghaire-Rathdown', 26076, 55089, 17402, 98567, 25135, 115012, 40038, 180185),
(6, 'Kildare', 33318, 59256, 12084, 104658, 31468, 120186, 25340, 176994),
(7, 'Kilkenny', 14035, 25859, 7894, 47788, 13245, 51727, 16412, 81384),
(8, 'Laois', 12405, 22616, 5566, 40587, 12174, 44547, 11433, 68154),
(9, 'Longford', 5887, 10403, 3359, 19649, 5529, 20643, 6941, 33113),
(10, 'Louth', 18447, 33574, 8742, 60763, 17796, 67656, 18998, 104450),
(11, 'Meath', 29623, 50810, 11477, 91910, 27907, 102671, 23934, 154512),
(12, 'Offaly', 11800, 20621, 6009, 38430, 11109, 41202, 12576, 64887),
(13, 'Westmeath', 12808, 23525, 6450, 42783, 12364, 47306, 13686, 73356),
(14, 'Wexford', 21423, 38176, 12310, 71909, 20667, 77517, 25713, 123897),
(15, 'Wicklow', 20378, 36905, 10259, 67542, 19376, 75246, 21640, 116262),
(16, 'Clare', 16896, 31294, 10108, 58298, 16493, 62872, 20935, 100300),
(17, 'Cork City', 12872, 35279, 10661, 58812, 12279, 70087, 23992, 106358),
(18, 'Cork', 59413, 109276, 29969, 198658, 56916, 220138, 63335, 340389),
(19, 'Kerry', 19313, 39161, 14155, 72629, 18770, 77969, 29450, 126189),
(20, 'Limerick City', 7038, 16240, 4669, 27947, 7201, 32493, 10374, 50068),
(21, 'Limerick', 19593, 37502, 10773, 67868, 18165, 74324, 22621, 115110),
(22, 'Tipperary North', 10146, 18983, 6211, 35340, 9734, 37343, 13099, 60176),
(23, 'Tipperary South', 12618, 23744, 7882, 44244, 11879, 47433, 16502, 75814),
(24, 'Waterford City', 6170, 13006, 3745, 22921, 6027, 26273, 8262, 40562),
(25, 'Waterford', 9999, 17591, 5953, 33543, 9460, 35360, 12244, 57064),
(26, 'Galway City', 8805, 23223, 4486, 36514, 8641, 48077, 10006, 66724),
(27, 'Galway', 26049, 47113, 15082, 88244, 24614, 93681, 30780, 149075),
(28, 'Leitrim', 4477, 8465, 3202, 16144, 4180, 16702, 6439, 27321),
(29, 'Mayo', 18098, 34023, 13299, 65420, 17385, 67876, 27279, 112540),
(30, 'Roscommon', 8804, 17276, 6273, 32353, 8557, 33777, 12927, 55261),
(31, 'Sligo', 9020, 17402, 6013, 32435, 8468, 35234, 12671, 56373),
(32, 'Cavan', 11218, 19660, 6135, 37013, 10597, 38978, 12390, 61965),
(33, 'Donegal', 24407, 41615, 14501, 80523, 23080, 83735, 29915, 136730),
(34, 'Monaghan', 8990, 16470, 4981, 30441, 8465, 32528, 10500, 51493);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorizedusers`
--
ALTER TABLE `authorizedusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `baronys`
--
ALTER TABLE `baronys`
  ADD PRIMARY KEY (`CSO_BARONY_ID`);

--
-- Indexes for table `county`
--
ALTER TABLE `county`
  ADD PRIMARY KEY (`COUNTY_ID`);

--
-- Indexes for table `industrys_persons_at_work_by_industrys_and_sex`
--
ALTER TABLE `industrys_persons_at_work_by_industrys_and_sex`
  ADD PRIMARY KEY (`COUNTY_ID`);

--
-- Indexes for table `persons_at_work_or_unemployed_by_occupation`
--
ALTER TABLE `persons_at_work_or_unemployed_by_occupation`
  ADD PRIMARY KEY (`COUNTY_ID`);

--
-- Indexes for table `populationbysexagegroupcensusyear`
--
ALTER TABLE `populationbysexagegroupcensusyear`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `populationbysexagegroupcensusyear` ADD FULLTEXT KEY `Number` (`Number`);

--
-- Indexes for table `population_by_county_urban_location_gender`
--
ALTER TABLE `population_by_county_urban_location_gender`
  ADD PRIMARY KEY (`COUNTY_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorizedusers`
--
ALTER TABLE `authorizedusers`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `county`
--
ALTER TABLE `county`
  MODIFY `COUNTY_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `populationbysexagegroupcensusyear`
--
ALTER TABLE `populationbysexagegroupcensusyear`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
