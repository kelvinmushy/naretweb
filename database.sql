-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 14, 2024 at 09:38 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u826567401_naret`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_staff`
--

CREATE TABLE `account_staff` (
  `id` int(11) NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice2_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `account_name` varchar(50) NOT NULL,
  `account_group` varchar(50) DEFAULT NULL,
  `account_balance` varchar(50) NOT NULL,
  `staff_type` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_staff`
--

INSERT INTO `account_staff` (`id`, `invoice_id`, `invoice2_id`, `product_id`, `account_name`, `account_group`, `account_balance`, `staff_type`, `status`, `created_at`, `updated_at`) VALUES
(68, 278, 281, NULL, 'Cash in hand', NULL, '60583942', 'staffing', 'active', '2021-03-31 09:23:21', NULL),
(69, 363, 488, NULL, 'Mpesa', NULL, '28453840', 'staffing', 'active', '2021-04-06 11:03:37', NULL),
(70, NULL, 304, NULL, 'Bank', NULL, '481969900', 'staffing', 'active', '2021-04-06 11:08:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `all_purchase`
--

CREATE TABLE `all_purchase` (
  `id` int(10) NOT NULL,
  `purchase_id` int(10) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `qty` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `amt` varchar(50) DEFAULT NULL,
  `date_in` varchar(50) DEFAULT NULL,
  `staff_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `all_purchase1`
--

CREATE TABLE `all_purchase1` (
  `id` int(10) NOT NULL,
  `purchase_id` int(10) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `qty` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `amt` varchar(50) DEFAULT NULL,
  `date_in` varchar(50) DEFAULT NULL,
  `staff_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `furm_id` int(10) UNSIGNED NOT NULL,
  `cname` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_infor`
--

CREATE TABLE `company_infor` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tin_number` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `staff_type` varchar(50) DEFAULT NULL,
  `adds` varchar(50) DEFAULT NULL,
  `vrn` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `normal` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_infor`
--

INSERT INTO `company_infor` (`id`, `name`, `tin_number`, `phone`, `email`, `location`, `staff_type`, `adds`, `vrn`, `status`, `normal`, `created_at`, `updated_at`) VALUES
(153, 'KWANZA COLLECTION COMPANY LIMITED', '100-447-878', '0739377125', 'kwanza@kwanzacollection.com', 'P.O BOX 75870, DAR ES SALAAM TANZANIA', 'staffing', 'Administrator', NULL, 'active', NULL, NULL, NULL),
(154, 'SPEDAG INTERFREIGHT TANZANIA LIMITED', '100-588-080', '0786098862', 'Dipesh.salanki@spedaginterfreight.co.tz', 'P.O BOX 9222, TANZANIA DAR ES SALAAM', 'fumigation', 'Administrator', '10-013896-T', 'active', NULL, NULL, NULL),
(155, 'SPEDAG INTERFREIGHT TANZANIA LIMITED', '100-588-080', '0786098862', 'Dipesh.salanki@spedaginterfreight.co.tz', 'P.O BOX 9222, TANZANIA DAR ES SALAAM', 'staffing', 'Administrator', '10-013896-T', 'active', NULL, NULL, NULL),
(156, 'KWANZA COLLECTION COMPANY LIMITED', '100-447-878', '0739377125', 'kwanza@kwanzacollection.com', 'P.O BOX 75870, DAR ES SALAAM TANZANIA', 'fumigation', 'Superadministrator', NULL, 'active', NULL, NULL, NULL),
(157, 'TEMEKE DOMESTICS OFFICE', '115-473-152', '+255-222864653', 'celestineruth50@gmail.com', 'P.O BOX  45941, DAR ES SALAAM, TANZANIA', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL),
(160, 'MUGYA TRADING COMPANY', '115-137-697', '06596000045', 'tmugya@gmail.com', 'P.O BOX 100012, DAR ES SALAAM TANZANIA', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL),
(161, 'ALISTAIR JAMES COMPANY LTD', '104-679-757', '+255742455855', 'warehousing@alistairgroup.com', 'P.O BOX 4543. DAR ES SALAAM, TANZANIA', 'staffing', 'User', '40-001622-C', 'active', NULL, NULL, NULL),
(163, 'MAXIMA CLEARING AND FORWARDING LIMITED', '115-501-968', '+255784430926', 'joel.uisso@maxima.co.tz', 'P.O BOX 7611. SAMORA AVENUE, ILALA DAR ES SALAAM', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL),
(165, 'SWEDISH SCHOOL SOCIETY', '101-660-710', '+255777007160', 'Mail@nordicschool.net', 'Dar es salaam', 'fumigation', 'User', 'NOT REGISTERED', 'active', NULL, NULL, NULL),
(167, 'TESH NGITORIA', '103-609-178', '0756362153', 'steviejose111@gmail.com', 'Dar es salaam', 'staffing', 'User', '4012586-V', 'active', NULL, NULL, NULL),
(169, 'AGS FRASERS INTERNATIONAL REMOVALS LTD', '100-181-169', '0713873478', 'georgeritty007@gmail.com', 'DAR ES SALAAM, TANZANIA', 'fumigation', 'User', '10-005494-A', 'active', NULL, NULL, NULL),
(170, 'AMS AFRICA ENTERPRISES LIMITED', '129-997-540', '+2557', 'nabdos681@gmail.com', 'P.O BOX 105003. DAR ES SALAAM, TANZANIA', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL),
(172, 'AGRICOVA TANZANIA LTD', '139-514-432', '+255755030105', 'agicovatanzania@gmail.com', 'P.O BOX 79856. SAMORA AVENUE, ILALA DAR ES SALAAM', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(174, 'MAXIMA CLEARING AND FORWARDING LIMITED', NULL, '0786098862', NULL, 'P.O BOX 7611. SAMORA AVENUE, ILALA DAR ES SALAAM', 'fumigation', NULL, NULL, NULL, 'normal', NULL, NULL),
(175, 'MAXIMA CLEARING AND FORWARDING LIMITED', NULL, '0786098862', NULL, 'P.O BOX 7611. SAMORA AVENUE, ILALA DAR ES SALAAM', 'fumigation', NULL, NULL, NULL, 'normal', NULL, NULL),
(176, 'ALISTAIR JAMES COMPANY LTD', NULL, '0739377125', NULL, 'P.O BOX 7611. SAMORA AVENUE, ILALA DAR ES SALAAM', 'staffing', NULL, NULL, NULL, 'normal', NULL, NULL),
(177, 'POLYTRA TANZANIA LTD', NULL, '+255 714 105 011', NULL, 'P.O BOX 23223 DAR ES SALAAM.TPA NEW NASACO YARD', 'fumigation', NULL, NULL, NULL, 'normal', NULL, NULL),
(178, 'ALISTAIR JAMES COMPANY LTD', NULL, '+255755030105', NULL, 'Dar es salaam', 'fumigation', NULL, NULL, NULL, 'normal', NULL, NULL),
(179, 'RAYS IMPEX LIMITED', '144-357-817', '+255', 'raysimpextz@gmail.com', 'P.O BOX  1970 DAR ES SALAAM, TANZANIA', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL),
(180, 'DIAMOND WORLDWIDE LOGISTICS', '000-000-000', '+250 788 302 855', 'dorothy.nt@diamonddwl.com', 'RWANDA', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL),
(181, 'JASHAN AGRO TANZANIA', '152-109-733', '+255', 'deira dubai', 'P.O BOX 12109,DAR ES SALAAM, 12109 TANZANIA', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(182, 'COTACOF LIMITED', '110-736-339', '+2557', 'ezm@sucafina.com /nam@sucafina.com', 'P.O BOX 12934. DAR ES SALAAM, TANZANIA', 'fumigation', 'User', '40-020047-Z', 'active', NULL, NULL, NULL),
(183, 'BSM GLOBAL LOGISTICS', '138-958-418', '0675003999', 'bsmglobal@gmail.com', 'P.O BOX 22521 DAR ES SALAAM, MNAZI MMOJA STREET', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL),
(184, 'RBST INTERNATIONAL AGRIBUSINESS LTD', '135-880-515', '0688292494', 'heripemba@gmail.com', 'P.O.BOX1217,MTWARA,TANZANIA', 'fumigation', 'User', '40032871H', 'active', NULL, NULL, NULL),
(185, 'MW RICE MILLERS LTD', '135-227-560', '+255', 'enterprises.logistics@yahoo.com', 'P.O BOX 1206. MOROGORO, TANZANIA', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(186, 'MGM COMMODITIES LIMITED', '134-556-242', '+255', 'mgmcommodities.tnz@gmail.com', 'P.O BOX 22749,DAR ES SALAAM, TANZANIA.', 'fumigation', 'User', '40-028580A', 'active', NULL, NULL, NULL),
(187, 'MGM COMMODITIES LIMITED', '134-556-242', '+255', 'mgmcommodities.tnz@gmail.com', 'P.O BOX 22749,DAR ES SALAAM, TANZANIA.', 'fumigation', 'User', '40-028580A', 'active', NULL, NULL, NULL),
(189, 'K K CARGO ARRIVAL', '100-252-155', '+255', 'hr@sprit.co.tz/ nasaco@sprit.co.tz', 'P.O BOX 70205, DAR ES SALAAM, TANZANIA', 'fumigation', 'User', '10-012840-L', 'active', NULL, NULL, NULL),
(190, 'ROBUST AGRO COMMODITIES TRADE INTERNATIONAL LIMITED', '148-424-721', '+255 688 292 494', 'alen.gacl.tanzania@gmail.com', 'P.O BOX 1217, MTWARA, TANZANIA', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL),
(191, 'MAMBO COFFEE COMPANY LIMITED', '114-333-131', '+255 713 429 926', 'info@mambocoffeeafrica.com', 'P.O BOX 7689 MOSHI, TANZANIA', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL),
(192, 'OZY MINING TANZANIA LIMITED', '137-819-597', '+255 712 569 910', 'info@samgils.co.tz', 'P.O BOX 4615, MBEYA', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(193, 'HELLMANN INTERNATIONAL LIMITED', '106-153-655', '+255 222122630', 'kmbowe@hellmann.com', 'P.O BOX 15072', 'fumigation', 'User', '40020707-W', 'active', NULL, NULL, NULL),
(194, 'AXIS LOGISTICS (T) LTD', '132-440-743', '+255', '.........', 'P.O BOX 79869', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(196, 'EMAC TANZANIA LTD', '133-557-242', '0753995084', 'janethlubuva3@gmail.com', 'P.O BOX 15072', 'staffing', 'User', 'N/L', 'active', NULL, NULL, NULL),
(197, 'EMAC TANZANIA LTD', '133-557-242', '0753995084', 'janethlubuva3@gmail.com', 'P.O BOX 15072', 'staffing', 'User', 'N/L', 'active', NULL, NULL, NULL),
(198, 'POLYTRA TANZANIA LTD', '117-662-535', '+255 714 105 011', 'wchaula@poltra.be', 'P.O BOX 23223 DAR ES SALAAM.TPA NEW NASACO YARD', 'fumigation', 'User', '40-015533-N', 'active', NULL, NULL, NULL),
(199, 'SISI MULTIBIZ LIMITED', '143-639-169', '+255 677 387 013', 'impex@sisi.co.tz', 'P.O BOX  5664. DAR ES SALAAM, TANZANIA', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(200, 'KO IMPEX LIMITED', '147-134-037', '+255', 'koimpex@gmail.com', 'P.O BOX 75303. DAR ES SALAAM, TANZANIA', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(201, 'BMC WORLDWIDE SUPPLY COMPANY', '155-450-169', '+255', 'bmcworldwide@outlook.com', 'P.O BOX 3675', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(202, 'MAH AGRO COMMODITIES LIMITED', '151-362-362', '+255 676 068 848', 'abdulsamadabdulwahid@gmail.com', 'P.O BOX, 1803,', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(203, 'EVERETT AVIATION LIMITED', '110538367', '+255', '.............', 'P.O BOX 2599 DAR ES SALAAM', 'staffing', 'User', 'N/L', 'active', NULL, NULL, NULL),
(204, 'GALCO LIMITED CFS', '123-663-969', '+255', 'a.mukadam@gsmgroup.africa, f.jamala@gsmgroup.africa, I.godfrey@gsmgroup.afrca', 'P.O BOX 6244, KURASINI DAR ES SALAAM', 'fumigation', 'User', '40019077K', 'active', NULL, NULL, NULL),
(205, 'ELSEWEDY ELECTRIC EAST AFRICA LIMITED', '140-226-378', '+25578580055', 'i.ridhiwani@elsewedy.com', 'P.O BOX 9031', 'fumigation', 'User', '40043606-C', 'active', NULL, NULL, NULL),
(206, 'AGS FRASERS INTERNATIONAL REMOVALS LTD', '100-181-169', '+255', 'null', 'DAR ES SALAAM, TANZANIA', 'staffing', 'User', '10-005494-A', 'active', NULL, NULL, NULL),
(207, 'AGS FRASERS INTERNATIONAL REMOVALS LTD', '100-181-169', '+255', 'null', 'DAR ES SALAAM, TANZANIA', 'fumigation', 'User', '40-005494 - A', 'active', NULL, NULL, NULL),
(208, 'WILMAAR LOGISTICS', '134-879-858', '+255 713 055 510', 'wilmaarlogistics@gmail.com', 'P.O BOX 14526', 'fumigation', 'User', '40-034502-N', 'active', NULL, NULL, NULL),
(209, 'TANZGLOBAL INVESTMENT COMPANY LIMITED', '146-769-004', '+255 744  769 004', 'info@tanzglobal.co.tz, www.tanzglobal.co.tz', 'P.O BOX 34692. DAR ES SALAAM, TANZANIA', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(210, 'Citrusun International limited', '122-751-473', '+255 687 994477', 'sales@citrusun.co.tz', 'P o box 22775 zanaki/makunganya stree', 'fumigation', 'User', '40- 019182 I', 'active', NULL, NULL, NULL),
(211, 'ALISTAIR JAMES COMPANY LTD', '104-679-757', '+255742455855', 'warehousing @alistairgroup.com', 'P.O BOX 4543. DAR ES SALAAM, TANZANIA', 'fumigation', 'User', '40-001622-C', 'active', 'normal', NULL, NULL),
(212, 'ALISTAIR JAMES COMPANY LTD', NULL, '+255742455855', NULL, 'P.O BOX 4543. DAR ES SALAAM, TANZANIA', 'fumigation', NULL, NULL, NULL, 'normal', NULL, NULL),
(213, 'KILIMANJARO BLANKET CORPORATION. LTD', '100-152-176', '+25587256636', 'kilimanjaroroblanketstone@yahoo.com', 'P.O BOX 5020TANGA, TANZANIA', 'fumigation', 'User', '29-004192-C', 'active', NULL, NULL, NULL),
(214, 'ELISHAFEI INVESTMENT LIMITED', '144-548-078', '+255 765 132 046', 'shafei3100@gmail.com', 'KIPATA AND SIKUKUU STREET, DAR ES SALAAM.', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(215, 'PARTAN LOGISTICS LIMITED', '155-763-558', '+255 756 546 373', 'bongoafricaimex@gmail.com', 'P.O BOX 21077 17 FLOOR, GARDEN AVENUE TOWER, DAR ES SALAAM', 'fumigation', 'User', '-', 'active', NULL, NULL, NULL),
(217, 'JJ AND PORT SERVICE COMPANY LIMITED', '156-482-056', '+255659935625', 'jjandportservicescompanyltd@gmail.com', 'P.O BOX 15009 BENDERA TATU KURASINI,BLOCK NO/PLOT NO; 05', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(218, 'WORLD FOOD PROGRAMME', '103-272-866', 'N/L', 'NIL', 'P.O BOX 77778. DAR ES SALAAM, TANZANIA', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(219, 'KIM AFRICA', 'NIL', 'N/L', 'NIL', 'NIL', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(222, 'MITRA S.K. TANZANIA LIMITED', '141-157-523', '+255692012380', 'Emanuel@mitrask.co.in', 'DAR FREE MARKET,FIRST FLOOR F43,P.O.BOX 16102,DAR ES SALAAM TANZANIA', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(223, 'TRA TEMEKE', NULL, '-', NULL, 'TEMEKE', 'staffing', NULL, NULL, NULL, 'normal', NULL, NULL),
(224, 'TRA TEMEKE', '115-473-152', '+255-222864653', 'celestineruth50@gmail.com', 'TEMEKE', 'staffing', 'Administrator', 'N/A', 'active', 'normal', NULL, NULL),
(225, 'WILMAAR LOGISTIC (T) LIMITED', '134-879-858', '0688297935 P.O. BOX 1009', 'lyakurwaone@gmail.com', 'KIPANDE', 'staffing', 'Administrator', 'N/A', 'active', NULL, NULL, NULL),
(226, 'NIDA TEXTILE MILLS TANZANIA LIMITED', '101-437-493', '0755418286', 'info@nidatextiles.com', 'P.O BOX 22745. DAR ES SALAAM, TANZANIA', 'fumigation', 'User', 'N/A', 'active', NULL, NULL, NULL),
(227, 'SMART OCEAN LIMITED', '151-837-905', '0754233382/0658233382', 'limsmartocean@gmail.com', 'P.O. BOX 63243', 'fumigation', 'Administrator', 'N/A', 'active', NULL, NULL, NULL),
(228, 'KEFA CARGO SOLUTIONS LTD', '154-480-218', '0626332921', 'info@kefa.co.tz', 'P.O. BOX 70329', 'staffing', 'Administrator', 'NA', 'active', NULL, NULL, NULL),
(229, 'KEFA CARGO SOLUTIONS LTD', '154-480-218', '0626332921', 'info@kefa.co.tz', 'P.O BOX 70329. DAR ES SALAAM, TANZANIA', 'fumigation', 'Administrator', 'NA', 'active', NULL, NULL, NULL),
(230, 'EURO LINK TANZANIA LIMITED', '131-998-821', '0744440044', 'aerolink_tz@outlook.com', 'P. O. BOX 3204 DAR ES SALAM , SAMORA/MOROGORO ROAD', 'staffing', 'Administrator', NULL, 'active', NULL, NULL, NULL),
(231, 'EURO LINK TANZANIA LIMITED', '131-998-821', '0744440044', 'aerolink_tz@outlook.com', 'P. O. BOX 3204 DAR ES SALAM , SAMORA/MOROGORO ROAD', 'fumigation', 'Administrator', NULL, 'active', NULL, NULL, NULL),
(232, 'AERO LINK TANZANIA LIMITED', '131-998-821', '0744440044', 'aerolink_tz@outlook.com', 'P. O. BOX 3204 DAR ES SALAM , SAMORA/MOROGORO ROAD', 'fumigation', 'Administrator', NULL, 'active', NULL, NULL, NULL),
(233, 'MOUNT MERU MILLERS LIMITED', '100-232-812', '+255 710 911 543', 'sreevalsan@mountmerugroup.com', 'P.O BOX 203, NJUKI AREA, SINGIDA', 'fumigation', 'User', 'NULL', 'active', NULL, NULL, NULL),
(234, 'CEVA LOGISTCS', 'N/A', '+255 767 234 235', 'dipesh.solanki@cevalogistics.com', 'Plot 203 (Oppo. CFAO Motors),  Dar Es Salaam', 'fumigation', 'User', 'N/A', 'active', NULL, NULL, NULL),
(235, 'NARET SAFARI', 'N/A', '+255 769 080 456 654', 'N/bbanda@emac.or.tz', 'P.O BOX 1839 DAR ES SALAAM & SIMANJIRO', 'fumigation', 'User', 'N/A', 'active', NULL, NULL, NULL),
(238, 'EMAC TANZANIA', 'N/A', '0769080456654', 'bbanda@emac.or.tz', 'SIMANJIRO', 'fumigation', 'Administrator', 'N/A', 'active', NULL, NULL, NULL),
(239, 'DAWASA', '101-138-674', '0734151913', 'evodiusnshekanabo@dawasa.go.tz', 'DAR ES SALAAM', 'fumigation', 'Administrator', NULL, 'active', NULL, NULL, NULL),
(240, 'DRTIC TRADING COMPANY LIMITED', '102-146-069', '+255', 'gm@drtc.co.tz', 'P.O BOX 75303. NYERERE ROAD, DAR ES SALAAM', 'fumigation', 'User', '10-017279-R', 'active', NULL, NULL, NULL),
(241, 'KANU EQPMENT TANZANIA LIMITED', '133-069-143', '+255 716 899 553', 'N/L', 'P.O BOX  40624. DAR ES SALAAM, TANZANIA', 'fumigation', 'User', 'N/A', 'active', NULL, NULL, NULL),
(242, 'DATTSON LOGISTICS COMPANY LIMITED', '152-042-051', '+255', 'N/L', 'DAR ES SALAAM', 'fumigation', 'User', 'N/L', 'active', NULL, NULL, NULL),
(244, 'MOUNT MERU MILLERS LIMITED', '100-232-812', '+255 710 911 543', 'sreevalsan@mountmerugroup.com', 'P.O BOX 203, NJUKI AREA, SINGIDA', 'staffing', 'User', 'N/L', 'active', NULL, NULL, NULL),
(245, 'SEABRIDGE CO LIMITED', '100-127-019', '0715656522', 'N/A', 'KURASINI', 'fumigation', 'Administrator', NULL, 'active', NULL, NULL, NULL),
(246, 'ALPHA NAMATE CO. LTD', 'No', '+255143661261', 'Alphanamate@gmail.com', 'P.O BOX 1494', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL),
(247, 'ALPHA NAMATE CO. LTD', '143-661-261', '+255143661261', 'frowinhittu1@gmail.com', 'P.O BOX 1494, MTWARA.', 'fumigation', 'User', NULL, 'active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `container`
--

CREATE TABLE `container` (
  `id` int(10) UNSIGNED NOT NULL,
  `staffing_id` int(10) UNSIGNED NOT NULL,
  `container_number` varchar(255) NOT NULL,
  `container_cost` varchar(255) NOT NULL,
  `admistration_office` varchar(255) NOT NULL,
  `pay_status` varchar(255) NOT NULL,
  `date_in` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `vrn` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposite`
--

CREATE TABLE `deposite` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `from_where` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deposite_date` varchar(255) NOT NULL,
  `staff_type` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposite`
--

INSERT INTO `deposite` (`id`, `account_id`, `invoice_id`, `amount`, `from_where`, `created_at`, `deposite_date`, `staff_type`, `updated_at`) VALUES
(49, 69, NULL, '7003215', 'mpesa', '2021-04-05 21:00:00', '2021-04_06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `qty`, `created_at`, `updated_at`) VALUES
(2, 'jembe', '12', NULL, NULL),
(3, 'kelvin', '12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expensive`
--

CREATE TABLE `expensive` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `furm_id` int(10) UNSIGNED NOT NULL,
  `exp_name` varchar(255) NOT NULL,
  `exp_cost` varchar(255) NOT NULL,
  `date_exp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expensive_staff`
--

CREATE TABLE `expensive_staff` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `staff_type` varchar(50) DEFAULT NULL,
  `adds` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expensive_staff`
--

INSERT INTO `expensive_staff` (`id`, `account_id`, `description`, `amount`, `staff_type`, `adds`, `created_at`) VALUES
(60, 69, 'METHYL BROMIDE GAS', '4008000', 'staffing', 'User', '2021-04-23'),
(61, 69, 'METHYL BROMIDE GAS', '4008000', 'staffing', 'User', '2021-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `task_duration` varchar(255) DEFAULT NULL,
  `task_cost` varchar(255) DEFAULT NULL,
  `task_profit` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farm`
--

INSERT INTO `farm` (`id`, `task_id`, `start_date`, `end_date`, `task_duration`, `task_cost`, `task_profit`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-19', NULL, NULL, '7000', '-7400', NULL, NULL),
(2, 1, '2021-02-19', NULL, NULL, '7000', '-7400', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fumigation`
--

CREATE TABLE `fumigation` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `truck_id` int(10) UNSIGNED NOT NULL,
  `date_in` varchar(255) NOT NULL,
  `pay_method` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_fumigation` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `qty` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `amt` varchar(50) NOT NULL,
  `staff_type` varchar(50) NOT NULL,
  `date_in` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `company_id`, `invoice_fumigation`, `staff_id`, `title`, `description`, `qty`, `price`, `amt`, `staff_type`, `date_in`, `created_at`, `updated_at`) VALUES
(365, 156, 114, NULL, NULL, 'FUMIGATION IRINGA BASKET', '3', '55000', '165000', 'fumigation', '2021-03-31', NULL, NULL),
(450, 155, NULL, 259, 'Fumigation', '3X20FT CONT. ARABICA COFEE 5488673', '3', '23600', '70800', 'staffing', '2021-04-01', NULL, NULL),
(451, 155, NULL, 259, 'Fumigation', '3X20FT CONT. ARABICA COFEE 572220038', '3', '23600', '70800', 'staffing', '2021-04-01', NULL, NULL),
(452, 155, NULL, 259, 'Fumigation', '2X20FT CONT. ARABICA COFEE DAR0127115', '2', '23600', '47200', 'staffing', '2021-04-01', NULL, NULL),
(453, 155, NULL, 259, 'Fumigation', '5X20FT CONT. ARABICA COFEE 207446606', '5', '23600', '118000', 'staffing', '2021-04-01', NULL, NULL),
(454, 155, NULL, 259, 'fumigation', '2X20FT CONT. ARABICA COFEE 584543', '2', '23600', '47200', 'staffing', '2021-04-01', NULL, NULL),
(455, 155, NULL, 259, 'Fumigation', '8X20FT CONT. ARABICA COFEE 584819', '8', '23600', '188800', 'staffing', '2021-04-01', NULL, NULL),
(456, 155, NULL, 259, 'Fumigation', '10X20FT CONT. ARABICA COFEE 584825', '10', '23600', '236000', 'staffing', '2021-04-01', NULL, NULL),
(457, 155, NULL, 259, 'Fumigation', '2X20FT CONT. ARABICA COFEE EBKG1064331', '3', '23600', '70800', 'staffing', '2021-04-01', NULL, NULL),
(458, 155, NULL, 259, 'Fumigation', '2X20FT CONT. ARABICA COFEE 207315007', '2', '23600', '47200', 'staffing', '2021-04-01', NULL, NULL),
(459, 155, NULL, 259, 'fumigation', '3X20FT CONT. ARABICA COFEE 20753685', '6', '23600', '141600', 'staffing', '2021-04-01', NULL, NULL),
(460, 155, NULL, 259, 'Fumigation', '2X20FT CONT. ARABICA COFEE 207536181', '2', '23600', '47200', 'staffing', '2021-04-01', NULL, NULL),
(461, 155, NULL, 259, 'Fumigation', '2X20FT CONT. ARABICA COFEE 50563151', '2', '23600', '47200', 'staffing', '2021-04-01', NULL, NULL),
(462, 155, NULL, 259, 'Fumigation', '3X20FT CONT. ARABICA COFEE 59897427', '3', '23600', '70800', 'staffing', '2021-04-01', NULL, NULL),
(463, 155, NULL, 259, 'Fumigation', '6X20FT CONT. ARABICA COFEE 207535839', '6', '23600', '141600', 'staffing', '2021-04-01', NULL, NULL),
(464, 155, NULL, 259, 'Fumigation', '5X20FT CONT. ARABICA COFEE 207735780', '5', '23600', '118000', 'staffing', '2021-04-01', NULL, NULL),
(465, 155, NULL, 259, 'Fumigation', '1X20FT CONT. ARABICA COFEE EBKG0105182', '1', '23600', '23600', 'staffing', '2021-04-01', NULL, NULL),
(466, 155, NULL, 259, 'Fumigation', '1X20FT CONT. ARABICA COFEE 207446189', '1', '23600', '23600', 'staffing', '2021-04-01', NULL, NULL),
(467, 155, NULL, 259, 'Fumigation', '1X20FT CONT. ARABICA COFFEE EBKG01101168', '1', '23600', '23600', 'staffing', '2021-04-01', NULL, NULL),
(468, 155, NULL, 259, 'fumigation', '5X20FT CONT. ARABICA COFFEE EBKG0110395', '5', '23600', '118000', 'staffing', '2021-04-01', NULL, NULL),
(469, 155, NULL, 259, 'fumigation', '5X20FT CONT. ARABICA COFFEE 55569866', '5', '23600', '118000', 'staffing', '2021-04-01', NULL, NULL),
(470, 155, NULL, 259, 'Fumigation', '5X20FT CONT. ARABICA COFFEE 52236532', '5', '23600', '118000', 'staffing', '2021-04-01', NULL, NULL),
(471, 155, NULL, 259, 'Fumigation', '3X20FT CONT. ARABICA COFFEE 57236522', '3', '23600', '70800', 'staffing', '2021-04-01', NULL, NULL),
(472, 155, NULL, 259, 'Fumigation', '3X20FT CONT. ARABICA COFFEE 55237094', '3', '23600', '70800', 'staffing', '2021-04-01', NULL, NULL),
(473, 155, NULL, 259, 'Fumigation', '5X20FT CONT. ARABICA COFFEE EBKG01123624', '5', '23600', '118000', 'staffing', '2021-04-01', NULL, NULL),
(474, 155, NULL, 259, 'Fumigation', '8X20FT CONT. ARABICA COFFEE 209013556', '8', '23600', '188800', 'staffing', '2021-04-01', NULL, NULL),
(475, 155, NULL, 259, 'Fumigation', '10X20FT CONT. ARABICA COFFEE 57570965', '10', '23600', '236000', 'staffing', '2021-04-01', NULL, NULL),
(476, 155, NULL, 259, 'Fumigation', '5X20FT CONT. ARABICA COFFEE 5990499', '5', '23600', '118000', 'staffing', '2021-04-01', NULL, NULL),
(477, 155, NULL, 259, 'Fumigation', '10X20FT CONT. ARABICA COFFEE 50905503', '10', '23600', '236000', 'staffing', '2021-04-01', NULL, NULL),
(478, 155, NULL, 259, 'Fumigation', '5X20FT CONT. ARABICA COFFEE EBKG01123653', '5', '23600', '118000', 'staffing', '2021-04-01', NULL, NULL),
(479, 155, NULL, 259, 'Fumigation', '1X20FT CONT. ARABICA COFFEE EBKG1150257', '1', '23600', '23600', 'staffing', '2021-04-01', NULL, NULL),
(480, 155, NULL, 259, 'Fumigation', '5X20FT CONT. ARABICA COFFEE EBKG011233665', '5', '23600', '118000', 'staffing', '2021-04-01', NULL, NULL),
(481, 155, NULL, 259, 'Fumigation', '6X20FT CONT. ARABICA COFFEE TBA', '6', '23600', '141600', 'staffing', '2021-04-01', NULL, NULL),
(482, 155, NULL, 259, 'Fumigation', '5X20FT CONT. ARABICA COFFEE EBKG01123672', '5', '23600', '118000', 'staffing', '2021-04-01', NULL, NULL),
(483, 155, NULL, 259, 'Fumigation', '6X20FT CONT. ARABICA COFFEE 57570958', '6', '23600', '141600', 'staffing', '2021-04-01', NULL, NULL),
(484, 155, NULL, 259, 'Fumigation', '3X20FT CONT. ARABICA COFFEE 52570952', '3', '23600', '70800', 'staffing', '2021-04-01', NULL, NULL),
(485, 155, NULL, 259, 'Fumigation', '3X20FT CONT. ARABICA COFFEE DARB0032700', '3', '23600', '70800', 'staffing', '2021-04-01', NULL, NULL),
(489, 160, 122, NULL, NULL, '29 CONTAINER FOR TIMBER FUMIGATION USING BY MENTHLY BROMIDE  GAS', '29', '50000', '1450000', 'fumigation', '2021-04-09', NULL, NULL),
(496, 161, NULL, 265, 'STUFFING', 'STUFFING OF TANTALITE \r\nTRUCK T323AUT\r\nTRAILER T224AZL\r\nCONTAINER NO MRKU8181758 TO OOLU1663520', '1', '115000', '115000', 'staffing', '2021-04-15', NULL, NULL),
(500, 163, 123, NULL, NULL, '2 CONTAINER FOR BEANS & LENTILS  FUMIGATION USING BY METHYL BROMIDE GAS  DAR0129405', '2', '50', '100', 'fumigation', '2021-04-13', NULL, NULL),
(501, 163, 123, NULL, NULL, '10 CONTAINER FOR YELLOW GRAM FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER DAR-0129529', '10', '50', '500', 'fumigation', '2021-04-13', NULL, NULL),
(502, 163, 123, NULL, NULL, '2 CONTAINER FOR YELLOW GRAM FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 57934105', '2', '50', '100', 'fumigation', '2021-04-13', NULL, NULL),
(503, 163, 123, NULL, NULL, '7 CONTAINER FOR PIGEON PEAS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 52953477', '7', '50', '350', 'fumigation', '2021-04-13', NULL, NULL),
(508, 157, 118, NULL, NULL, 'To fumigate and treat workshops, offices, Go down, Septic and sewage system and all compound. This targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '1500000', '1500000', 'fumigation', '2021-04-01', NULL, NULL),
(509, 161, NULL, 267, 'STUFFING', 'cross staffing into a container \r\nTruck no T443DQX\r\nTrailer no T906DQV\r\ncontainer MRSU3804117 TO\r\nMSDU1580639', '320', '325', '104000', 'staffing', '2021-04-20', NULL, NULL),
(510, 161, NULL, 267, 'STUFFING', 'LINING\r\nLining materials and labor charges', '1', '60000', '60000', 'staffing', '2021-04-20', NULL, NULL),
(519, 163, 124, NULL, NULL, '3 container  for kidney beans fumigation using by methyl bromide gas bl/number TZSB/2100089', '3', '50', '150', 'fumigation', '2021-04-19', NULL, NULL),
(520, 163, 124, NULL, NULL, '2 container for teak sawan fumigation using by methyl bromide bl/number DAR 0129410', '2', '50', '100', 'fumigation', '2021-04-19', NULL, NULL),
(521, 163, 124, NULL, NULL, '5 container fumigation using by methyl bromide gas BL/NUMBER 53291049', '5', '50', '250', 'fumigation', '2021-04-19', NULL, NULL),
(522, 163, 124, NULL, NULL, '5 container fumigation using by methyl bromide gas BL/NUMBER 51292222', '5', '50', '250', 'fumigation', '2021-04-19', NULL, NULL),
(523, 163, 124, NULL, NULL, '5 container fumigation using by methyl bromide gas BL/NUMBER 55291095', '5', '50', '250', 'fumigation', '2021-04-19', NULL, NULL),
(524, 163, 124, NULL, NULL, '10 container fumigation using by methyl bromide gas BL/ NUMBER 51292530', '10', '50', '500', 'fumigation', '2021-04-19', NULL, NULL),
(525, 163, 124, NULL, NULL, '1 container fumigation using by methyl bromide gas BL/NUMBER DAR0129410A', '1', '50', '50', 'fumigation', '2021-04-19', NULL, NULL),
(526, 163, 124, NULL, NULL, '2 container fumigation using by methyl bromide gas BL/NUMBER DAR0129633', '2', '50', '100', 'fumigation', '2021-04-19', NULL, NULL),
(529, 165, 127, NULL, NULL, 'To fumigate and treat workshops, offices, School, company, house and sewage system and all compound. This targeted to destroy/ kill\r\nall insects i.e cockroach, mosquitoes and all other domestic\r\ninsects', '8', '75000', '600000', 'fumigation', '2021-05-04', NULL, NULL),
(541, 161, NULL, 268, 'STUFFING', 'STUFFING TANTALILE TRUCK NO T465CBN TRAILER NO T370BNL CONTAINER NO TLLU 2628610', '1', '115000', '115000', 'staffing', '2021-05-06', NULL, NULL),
(552, 163, 130, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BROMIDE GAS B/L NO TZSB-21-00090', '5', '50', '250', 'fumigation', '2021-05-06', NULL, NULL),
(553, 163, 130, NULL, NULL, '8 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BROMIDE GAS B/L NO 56934125', '8', '50', '400', 'fumigation', '2021-05-06', NULL, NULL),
(554, 163, 130, NULL, NULL, '2 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BROMIDE GAS B/L NO 56934125', '2', '50', '100', 'fumigation', '2021-05-06', NULL, NULL),
(555, 163, 130, NULL, NULL, '3 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BROMIDE GAS B/L NO TZSB/2100098', '3', '50', '150', 'fumigation', '2021-05-06', NULL, NULL),
(556, 163, 130, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BROMIDE GAS B/L NO 51951455', '5', '50', '250', 'fumigation', '2021-05-06', NULL, NULL),
(644, 154, 131, NULL, NULL, '1X20FT CONT.  MSKU5549956,                      ARABICA COFEE 206304273206304273', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(645, 154, 131, NULL, NULL, '2X20FT CONT. CBHU4051820,FCIU4567693, ARABICA COFEE B/L NO 6283397160', '2', '23600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(646, 154, 131, NULL, NULL, '2X20FT CONT.OOLU1322523, CSNU1796021 ARABICA COFEE  BL/NO 6283428680', '2', '023600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(647, 154, 131, NULL, NULL, '1X20FT CONT. TGBU20899986 , ARABICA COFEE BL/NO  6283397760', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(648, 154, 131, NULL, NULL, '1X20FT CONT.  CSLU1604163, ARABICA COFEE BL/NO  6283398010', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(649, 154, 131, NULL, NULL, '2X20FT CONT.CSNU1674281, CSNU2386359  , ARABICA COFEE BL/NO  628339940', '2', '23600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(650, 154, 131, NULL, NULL, '1X20FT CONT. CSLU2386359  ARABICA COFEE BL/NO 6283397910', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(651, 154, 131, NULL, NULL, '1X20FT CONT. CXDU1605281  , ARABICA COFEE BL/NO582863', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(652, 154, 131, NULL, NULL, '8X20FT CONT. MRKU7526367,MSKU4428733,MSKU5289524, MSKU7643982, SUDU7787140, TEMU1067581 ARABICA COFEE BL/NO 206871001', '8', '23600', '188800', 'fumigation', '2021-05-13', NULL, NULL),
(653, 154, 131, NULL, NULL, '1X20FT CONT.CAAU2123940  , ARABICA COFEE BL/NO 06DARIN2000272', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(654, 154, 131, NULL, NULL, '3X20FT CONT.HASU1426620,SUDU1524255,MRKU9789085.  , ARABICA COFEE BL/NO 207341220', '3', '23600', '70800', 'fumigation', '2021-05-13', NULL, NULL),
(655, 154, 131, NULL, NULL, '6X20FT CONT MRKU7326681,MSKU5519292,MSKU4390983,PONU0263189,TCLU2395079,TCLU2407945. ARABICA COFFEE BIL/NO 207740939', '6', '23600', '141600', 'fumigation', '2021-05-13', NULL, NULL),
(656, 154, 131, NULL, NULL, '2X20FT CONT CLHU3875564,MSKU4339929 ARABICA COFFEE BIL/NO 207740940', '2', '23600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(657, 154, 131, NULL, NULL, '1X20FT CONT BEAU2780813 ARABICA COFFEE BIL/NO 060DARIN2102003.', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(658, 154, 131, NULL, NULL, '1X20FT CONT HLXU1195110. ARABICA COFFEE BIL/NO 52901375', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(659, 154, 131, NULL, NULL, '4X20FT CONT GESU3900886,MRKU7111329,MRKU7865083,MRKU8580824,MRKU9616048,TLLU2467346. ARABICA COFFEE BIL/NO 207668996', '6', '23600', '141600', 'fumigation', '2021-05-13', NULL, NULL),
(660, 154, 131, NULL, NULL, '8X20FT CONT FTAU1429920,SUDU7891241,BMOU2926760,BMOU2458313,MRKU8843242,TLLU2273680,MSKU2298836,MRKU7217120,MRKU8481673. ARABICA COFFEE BIL/NO 207831124', '8', '23600', '188800', 'fumigation', '2021-05-13', NULL, NULL),
(661, 154, 131, NULL, NULL, '1X20FT CONT HLXU1127774. ARABICA COFFEE BIL/NO 50245277', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(662, 154, 131, NULL, NULL, '2X20FT CONT  FTAU1372044,TLLU2119042ARABICA COFFEE BIL/NO 060DARIN2102052', '2', '23600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(663, 154, 131, NULL, NULL, '1X20FT CONT  MOAU7719951,ARABICA COFFEE BIL/NO DARB00029600', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(664, 154, 131, NULL, NULL, '2X20FT CONT TEMU1785790,HLXU1059710 ARABICA COFFEE BIL/NO 50579584', '2', '23600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(665, 154, 131, NULL, NULL, '5X20FT CONT MRKU7596615,MSKU7585741,PONU0401550,SUDU7945250,TEMU4106948. ARABICA COFFEE BIL/NO 209055273', '5', '23600', '118000', 'fumigation', '2021-05-13', NULL, NULL),
(666, 154, 131, NULL, NULL, '4X20FT CONT MRKU9770264,MSKU5281164,MSKU5452740,MSKU7391860. ARABICA COFFEE BIL/NO 20814691', '4', '23600', '94400', 'fumigation', '2021-05-13', NULL, NULL),
(667, 154, 131, NULL, NULL, '7X20FT CONT MRKU7568090,MRKU7975429,MRKU9560550,MSKU42932181,MSKU5856443,TCKU1240368. ARABICA COFFEE BIL/NO 20814691', '7', '23600', '165200', 'fumigation', '2021-05-13', NULL, NULL),
(668, 154, 131, NULL, NULL, '1X20FT CONT FTAU1426794. ARABICA COFFEE BIL/NO 060DAIN2102068', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(669, 154, 131, NULL, NULL, '2X20FT CONT TCLU3316460,DRYU2673657. ARABICA COFFEE BIL/NO 322100000894', '2', '23600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(670, 154, 131, NULL, NULL, '1X20FT CONT TRHU3996563. ARABICA COFFEE BIL/NO 208513198', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(671, 154, 131, NULL, NULL, '2X20FT CONT MRKU8267131,TCLU3427503 ARABICA COFFEE BIL/NO 208800083', '2', '23600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(672, 154, 131, NULL, NULL, '4X20FT CONT TGHU1493700,SUDU1764002,MSKU5663871,MRKU7727989. ARABICA COFFEE BIL/NO 209370924', '4', '23600', '94400', 'fumigation', '2021-05-13', NULL, NULL),
(673, 154, 131, NULL, NULL, '1X20FT CONT MSDU1548914 ARABICA COFFEE BIL/NO EKBG01270816', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(674, 154, 131, NULL, NULL, '1X20FT CONT MSDU1461922 ARABICA COFFEE BIL/NO EBKG01270777', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(675, 154, 131, NULL, NULL, '3X20FT CONT  MRKU9064714,MRSU0095050,MSKU4448196.ARABICA COFFEE BIL/NO 209455544.', '3', '23600', '70800', 'fumigation', '2021-05-13', NULL, NULL),
(676, 154, 131, NULL, NULL, '1X20FT CONT MSKU4460735. ARABICA COFFEE BIL/NO 209903036', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(677, 154, 131, NULL, NULL, '1X20FT CONT EGSU3044668. ARABICA COFFEE BIL/NO 322100001858.', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(678, 154, 131, NULL, NULL, '2X20FT CONT EITU3108939,EITU05499904 ARABICA COFFEE BIL/NO 32210001840', '2', '23600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(679, 154, 131, NULL, NULL, '2X20FT CONT HLXU3539889,UACU3983760 ARABICA COFFEE BIL/NO 55632378', '2', '23600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(680, 154, 131, NULL, NULL, '1X20FT CONT FTAU1441248 ARABICA COFFEE BIL/NO 060DARIN2102157', '1', '23600', '23600', 'fumigation', '2021-05-13', NULL, NULL),
(681, 154, 131, NULL, NULL, '2X20FT CONT  MSDU1503910, MSDU1505065 ARABICA COFFEE BIL/NO EBKG01435583', '2', '23600', '47200', 'fumigation', '2021-05-13', NULL, NULL),
(749, 163, 134, NULL, NULL, 'ABRI AGRO 10 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NUMBER 631501950 LOCATION SHEKILANGO', '10', '35000', '350000', 'fumigation', '2021-05-26', NULL, NULL),
(758, 163, 133, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS B/L NO 54302201', '5', '50', '250', 'fumigation', '2021-05-24', NULL, NULL),
(759, 163, 133, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS B/L NO 56297785', '5', '50', '250', 'fumigation', '2021-05-24', NULL, NULL),
(760, 163, 133, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS B/L NO 53635522', '5', '50', '250', 'fumigation', '2021-05-24', NULL, NULL),
(761, 163, 133, NULL, NULL, '2 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS B/L NO DAR0129551', '2', '50', '100', 'fumigation', '2021-05-24', NULL, NULL),
(762, 163, 133, NULL, NULL, '2 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS B/L NO DAR0129622', '2', '50', '100', 'fumigation', '2021-05-24', NULL, NULL),
(763, 163, 133, NULL, NULL, '2 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS B/L NO DAR0129621', '2', '50', '100', 'fumigation', '2021-05-24', NULL, NULL),
(764, 163, 133, NULL, NULL, '2 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS B/L NO  DAR0129633', '2', '50', '100', 'fumigation', '2021-05-24', NULL, NULL),
(765, 163, 133, NULL, NULL, '1 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS B/L NO DAR0129410B', '1', '50', '50', 'fumigation', '2021-05-24', NULL, NULL),
(766, 163, 133, NULL, NULL, '16 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS B/L NO 57634158', '16', '50', '800', 'fumigation', '2021-05-24', NULL, NULL),
(776, 160, 129, NULL, NULL, '20 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2021-05-05', NULL, NULL),
(777, 163, 135, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 56303143 LOCATION MOFED', '5', '50', '250', 'fumigation', '2021-05-26', NULL, NULL),
(778, 163, 135, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 57305012 LOCATION MOFED', '5', '50', '250', 'fumigation', '2021-05-26', NULL, NULL),
(779, 163, 135, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 58636474 LOCATION MOFED', '5', '50', '250', 'fumigation', '2021-05-26', NULL, NULL),
(780, 163, 135, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 58304702 LOCATION MOFED', '5', '50', '250', 'fumigation', '2021-05-26', NULL, NULL),
(782, 153, NULL, 269, 'STUFFING', 'STUFFING TANTALITE\r\nTRUCK NO T210DML\r\nTRAILER  NO T816DML\r\nCONTAINER NO DRYU9262719 TO CONTAINER NO CBHU5724058', '1', '150000', '150000', 'staffing', '2021-06-02', NULL, NULL),
(787, 161, NULL, 270, 'STUFFING', 'STUFFING TANTALITE TRUCK NO T210DML TRAILER  NO T816DML CONTAINER NO DRYU9262719 TO CONTAINER NO CBHU5724058', '1', '115000', '115000', 'staffing', '2021-06-02', NULL, NULL),
(788, 156, 137, NULL, NULL, '1 BOX FOR BASKET \r\nFUMIGATION USING BY PHOSPHINE GAS', '1', '47200', '47200', 'fumigation', '2021-06-04', NULL, NULL),
(801, 161, NULL, 271, 'STUFFING', 'SHOVELLING OF MANGANISE (BULK -FLATBED) TRUCK NO T 183 DQGTRAILER NO T 247 DQPCONTAINER NO:', '1', '115000', '115000', 'staffing', '2021-06-07', NULL, NULL),
(802, 161, NULL, 271, 'STUFFING', 'SHOVELLING OF MANGANISE (BULK -FLATBED)\r\n TRUCK NO T 829 DME \r\nTRAILER NO T 935 DMY\r\nCONTAINER NO: BMOU2573791', '1', '115000', '115000', 'staffing', '2021-06-07', NULL, NULL),
(803, 161, NULL, 272, 'STUFFING', 'SHOVELLING MANGANNESS \r\nTRUCK NO T451DVH\r\nTRAILER NO T824DVG\r\nCONTAINER NO: PCIU1002184', '1', '115000', '115000', 'staffing', '2021-06-08', NULL, NULL),
(804, 161, NULL, 272, 'STUFFING', 'SHOVELLING MANGANNESS \r\nTRUCK NO T453DHV\r\nTRAILER NO T828DMY\r\nCONTAINER NO: PCIU1119210', '1', '115000', '115000', 'staffing', '2021-06-08', NULL, NULL),
(819, 161, NULL, 273, 'STUFFING', 'SHOVELLING MANGANNESS \r\nTRUCK NO: T 748 DSM\r\nTRAILER NO T 219 CZB\r\nCONTAINER NO: PCIU1307033', '1', '115000', '115000', 'staffing', '2021-06-10', NULL, NULL),
(820, 161, NULL, 274, 'STUFFING', 'SHOVELLING MANGANNESS \r\nTRUCK NO: T481DVM\r\nTRAILER NO T562DVP\r\nCONTAINER NO: PCIU0085815', '1', '115000', '115000', 'staffing', '2021-06-14', NULL, NULL),
(821, 161, NULL, 274, 'STUFFING', 'SHOVELLING MANGANNESS \r\nTRUCK NO: T466DVH\r\nTRAILER NO T610DVP\r\nCONTAINER NO: PCIU0025734', '1', '115000', '115000', 'staffing', '2021-06-14', NULL, NULL),
(828, 161, NULL, 276, 'STUFFING', 'SHOVELLING MANGANNESS (FLATBED)\r\nTRUCK NO:  T 199 DQG\r\nTRAILER NO T 130 DQG \r\nCONTAINER NO: PCIU 1200873', '1', '115000', '115000', 'staffing', '2021-06-15', NULL, NULL),
(831, 161, NULL, 277, 'STUFFING', 'Labor and administration charges for destuffing and loading 04x20ft containers of Sulphur at KICD. @Tshs. 10,000/=\r\n\r\nBL Number - 210571553', '4', '10000', '40000', 'staffing', '2021-06-15', NULL, NULL),
(832, 161, NULL, 275, 'STUFFING', 'Labor and administration charges for destuffing and loading 36x20ft containers of Sulphur at KICD. @Tshs. 10,000/=', '36', '10000', '360000', 'staffing', '2021-06-15', NULL, NULL),
(833, 161, NULL, 275, 'STUFFING', 'Rebaging – 19 bags @Tshs. 2000/=BL Number - 1KT072481', '19', '2000', '38000', 'staffing', '2021-06-15', NULL, NULL),
(835, 160, 140, NULL, NULL, '20 Container Fumigation Using By Methyl Bromide Gas', '20', '50000', '1000000', 'fumigation', '2021-06-17', NULL, NULL),
(837, 167, NULL, 278, NULL, 'FURMIGATION BY METHANE GAS', '30', '50000', '1500000', 'staffing', '2021-06-17', NULL, NULL),
(853, 163, 142, NULL, NULL, 'JRK TRADING 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 56979055', '5', '50', '250', 'fumigation', '2021-06-18', NULL, NULL),
(854, 163, 142, NULL, NULL, 'JRK TRADING 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 56312372', '5', '50', '250', 'fumigation', '2021-06-18', NULL, NULL),
(855, 163, 142, NULL, NULL, 'JRK TRADING 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 59645687', '5', '50', '250', 'fumigation', '2021-06-18', NULL, NULL),
(856, 163, 142, NULL, NULL, 'JRK TRADING 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 56645698', '5', '50', '250', 'fumigation', '2021-06-18', NULL, NULL),
(857, 163, 142, NULL, NULL, 'JRK TRADING 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 58312382', '5', '50', '250', 'fumigation', '2021-06-18', NULL, NULL),
(858, 169, 143, NULL, NULL, '5 DRAY BAGS', '5', '165000', '825000', 'fumigation', '2021-07-05', NULL, NULL),
(859, 170, 144, NULL, NULL, 'AMS AFRICA ENTERPRISES LIMITED 10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS', '10', '75', '750', 'fumigation', '2021-07-06', NULL, NULL),
(860, 163, 145, NULL, NULL, 'JRK AFRICA 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER  54988815', '5', '50', '250', 'fumigation', '2021-07-06', NULL, NULL),
(861, 163, 145, NULL, NULL, 'JRK AFRICA 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 52655459', '5', '50', '250', 'fumigation', '2021-07-06', NULL, NULL),
(862, 163, 145, NULL, NULL, 'JRK AFRICA 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER  52655426', '5', '50', '250', 'fumigation', '2021-07-06', NULL, NULL),
(863, 163, 145, NULL, NULL, 'JRK AFRICA 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 54655447', '5', '50', '250', 'fumigation', '2021-07-06', NULL, NULL),
(866, 161, NULL, 279, 'STUFFING', 'STUFFING MANGANNESS FLATBED  TRUCK NO T759DMGTRAILER NO T404 CWLCONTAINER NO OOLU1825889', '1', '115000', '115000', 'staffing', '2021-07-06', NULL, NULL),
(867, 161, NULL, 280, 'STUFFING', 'STUFFING COFFEE Crossing stuffing bags into a container  \r\nTRUCK NO: T233DVG \r\nTRAILER NO T889AUA \r\nCONTAINER NO PCIU9005180 TO CONTAINER NO MSDU1617888', '325', '320', '104000', 'staffing', '2021-07-08', NULL, NULL),
(868, 161, NULL, 280, 'LINING', 'LINING MATERIAL AND LABOR CHARGERS', '1', '60000', '60000', 'staffing', '2021-07-08', NULL, NULL),
(872, 161, NULL, 281, 'STUFFING', 'stuffiSTUFFING MANGANESS  FLATBED Truck no: T993DUG Trailer no: T252 DUC CONTAINER NO: CSLU1412068', '1', '115000', '115000', 'staffing', '2021-07-20', NULL, NULL),
(879, 174, 147, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 53327738', '5', '50', '250', 'fumigation', '2021-07-23', NULL, NULL),
(880, 174, 147, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 59328369', '5', '50', '250', 'fumigation', '2021-07-23', NULL, NULL),
(881, 174, 147, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 50328374', '5', '50', '250', 'fumigation', '2021-07-23', NULL, NULL),
(882, 174, 147, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 50661719', '5', '50', '250', 'fumigation', '2021-07-23', NULL, NULL),
(883, 174, 147, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 51328379', '5', '50', '250', 'fumigation', '2021-07-23', NULL, NULL),
(912, 175, 148, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 58993166', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(913, 175, 148, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER  53326185', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(914, 175, 148, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 55326550', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(915, 175, 148, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER  55326554', '10', '50', '500', 'fumigation', '2021-07-28', NULL, NULL),
(916, 175, 148, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 53327738', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(917, 175, 148, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 51328379', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(918, 175, 148, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 59328345', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(919, 175, 148, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 59328369', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(920, 175, 148, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 50328374', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(921, 175, 148, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 51661665', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(922, 175, 148, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 55661641', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(923, 175, 148, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 50661719', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(924, 175, 148, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 53655442', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(925, 175, 148, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 56988731', '5', '50', '250', 'fumigation', '2021-07-28', NULL, NULL),
(928, 154, 149, NULL, NULL, 'To fumigate  offices, Go down, Septic and sewage system and all compound. This targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects', '3', '550000', '1650000', 'fumigation', '2021-07-28', NULL, NULL),
(949, 163, 150, NULL, NULL, 'PSM 10 CONTAINERS FUMIGASTION USING BY METHYL BROMIDE GAS 52327795', '10', '50', '500', 'fumigation', '2021-07-29', NULL, NULL),
(950, 163, 150, NULL, NULL, 'PSM 10 CONTAINERS FUMIGASTION USING BY METHYL BROMIDE GAS 51994479', '10', '50', '500', 'fumigation', '2021-07-29', NULL, NULL),
(951, 163, 150, NULL, NULL, 'PSM 10 CONTAINERS FUMIGASTION USING BY METHYL BROMIDE GAS 55327844', '10', '50', '500', 'fumigation', '2021-07-29', NULL, NULL),
(952, 163, 150, NULL, NULL, 'PSM 5 CONTAINERS FUMIGASTION USING BY METHYL BROMIDE GAS 54662372', '5', '50', '250', 'fumigation', '2021-07-29', NULL, NULL),
(953, 163, 150, NULL, NULL, 'PSM 5 CONTAINERS FUMIGASTION USING BY METHYL BROMIDE GAS 53979107', '5', '50', '250', 'fumigation', '2021-07-29', NULL, NULL),
(956, 161, NULL, 282, 'STUFFING', 'COFFEE BULK  STUFFING TRUCK NO T136DBYTRAILER NO T306DEPCNTAINER NO RFCU4061822 TO CONTAINER NO WECU2062150', '1', '175000', '175000', 'staffing', '2021-07-29', NULL, NULL),
(957, 161, NULL, 282, 'STUFFING', 'RUCK NO  T710CBLTRAILER NO T162CCQCNTAINER NO CMAU 4425667 TO CONTAINER NO WECU 2062823', '1', '175000', '175000', 'staffing', '2021-07-29', NULL, NULL),
(958, 161, NULL, 282, 'LINING', 'LINING MATERIAL AND LABOR CHARGERS', '2', '60000', '120000', 'staffing', '2021-07-29', NULL, NULL),
(959, 155, NULL, 283, 'STUFFING', 'yes', '1', '100', '100', 'staffing', '2021-08-28', NULL, NULL),
(960, 153, NULL, 284, 'STUFFING', 'rr', '1', '4466', '4466', 'staffing', '2021-08-28', NULL, NULL),
(961, 170, 151, NULL, NULL, 'p', '1', '4466', '4466', 'fumigation', '2021-08-28', NULL, NULL),
(963, 176, NULL, 285, 'STUFFING', NULL, '1', '1110', '1110', 'staffing', '2021-08-30', NULL, NULL),
(964, 167, NULL, 286, NULL, NULL, '1', '111110', '111110', 'staffing', '2021-08-30', NULL, NULL),
(965, 167, NULL, 287, 'STUFFING', NULL, '11', '1200', '13200', 'staffing', '2021-08-30', NULL, NULL),
(966, 167, NULL, 288, 'fumigation', 'stuffng', '1', '165000', '165000', 'staffing', '2021-08-30', NULL, NULL),
(967, 153, NULL, 289, NULL, NULL, '1', '10000', '10000', 'staffing', '2021-08-30', NULL, NULL),
(969, 160, 153, NULL, NULL, '31 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '31', '50000', '1550000', 'fumigation', '2021-08-30', NULL, NULL),
(975, 161, NULL, 292, 'STUFFING', '• Labor and administration charges for destuffing and loading 5x40ft Containers of HDPE BLOW P6006N at JEFAG. @Tshs. 20,000/=\r\n\r\n\r\nBL Number - 211776078', '5', '20000', '100000', 'staffing', '2021-08-30', NULL, NULL),
(976, 161, NULL, 293, 'STUFFING', 'STUFFING COFFEE \r\nTRUCK NO T682DES\r\nTRAILER NO:T312DEP\r\nMRKU 6208593 TO CONTAINER NO: TGCU2124890', '1', '175000', '175000', 'staffing', '2021-08-30', NULL, NULL),
(977, 161, NULL, 293, 'STUFFING', 'TRUCK NO T853DVX\r\nTRUCK NO T145DSH\r\nCONTAINER NO ZCSU7747209 TO CONTAINER NO MEDU2046111', '1', '175000', '175000', 'staffing', '2021-08-30', NULL, NULL),
(978, 161, NULL, 293, 'LINING', 'LINING MATERIAL AND LABOUR CHARGES', '2', '60000', '120000', 'staffing', '2021-08-30', NULL, NULL),
(979, 161, NULL, 294, 'STUFFING', 'STUFFING MANGANESS  REMOVE CARGO FROM CONTAINER NO FSCU7920782 TO REPLACE WITH CONTAINER NO MSKU7504210', '1', '115000', '115000', 'staffing', '2021-08-30', NULL, NULL),
(983, 161, NULL, 290, 'STUFFING', 'STUFFING FLATBED  MANGANNESS TRUCK NO T7327DQN TRAILER NO T490 CONTAINER NO TRLU9373276', '1', '115000', '115000', 'staffing', '2021-08-30', NULL, NULL),
(984, 161, NULL, 290, NULL, 'TRUCK NO T256DMS\r\nTRAILER NO T568DML\r\nCONTAINER NO TGHU 1341740', '1', '0115000', '115000', 'staffing', '2021-08-30', NULL, NULL),
(985, 161, NULL, 290, NULL, NULL, '1', '0', '0', 'staffing', '2021-08-30', NULL, NULL),
(986, 161, NULL, 291, 'STUFFING', 'STUFFING FLATBED  MANGANNESS TRUCK NO T337CQP TRAILER NO T726DEW CONTAINER NO HASU1133787', '1', '115000', '115000', 'staffing', '2021-08-30', NULL, NULL),
(987, 161, NULL, 291, 'STUFFING', 'STUFFING FLATBED  MANGANNESS\r\n TRUCK NO T119DAJ \r\nTRAILER T480 DSB \r\n CONTAINER NO 7563362', '1', '115000', '115000', 'staffing', '2021-08-30', NULL, NULL),
(988, 161, NULL, 291, 'STUFFING', 'STUFFING FLATBED  MANGANNESS TRUCK NO T237DQN\r\n TRAILER NO T568DQN\r\nCONTAINER NO TRLU9373276', '1', '0115000', '115000', 'staffing', '2021-08-30', NULL, NULL),
(989, 161, NULL, 291, 'STUFFING', 'STUFFING FLATBED  MANGANNESS\r\n TRUCK NO T256DMS \r\nTRAILER NO T568DML \r\nCONTAINER NO TGHU1341740', '1', '0115000', '115000', 'staffing', '2021-08-30', NULL, NULL),
(990, 161, NULL, 291, 'STUFFING', 'STUFFING FLATBED  MANGANNESS TRUCK NO T381CJR\r\nTRAILER NO T911CHC\r\nCONTAINER NO HLXU1065857', '1', '0115000', '115000', 'staffing', '2021-08-30', NULL, NULL),
(991, 161, NULL, 291, 'STUFFING', 'STUFFING FLATBED  MANGANNESS TRUCK NO T202CWJ\r\n TRAILER NO T635CKC \r\nCONTAINER NO TCLU2416926', '1', '0115000', '115000', 'staffing', '2021-08-30', NULL, NULL),
(1021, 161, NULL, 297, 'STUFFING', 'STUFFING FLATBED  MANGANNESS TRUCK NO T 421 CBNTRAILER NO  T 377CGJCONTAINER NO TCKU 3570775', '1', '115000', '115000', 'staffing', '2021-08-31', NULL, NULL),
(1022, 161, NULL, 297, 'STUFFING', 'STUFFING FLATBED  MANGANNESS TRUCK NO T 984 DEUTRAILER NO  T 993 CUDCONTAINER NO HLBU 3454450', '1', '115000', '115000', 'staffing', '2021-08-31', NULL, NULL),
(1023, 161, NULL, 297, 'STUFFING', 'STUFFING FLATBED  MANGANNESS TRUCK NO T 470 BPGTRAILER NO  T 671 CHZCONTAINER NO UACU 3916397', '1', '115000', '115000', 'staffing', '2021-08-31', NULL, NULL),
(1024, 161, NULL, 297, 'STUFFING', 'STUFFING FLATBED  MANGANNESS TRUCK NO T 571 DCWTRAILER NO  T 827 CHZCONTAINER NO UACU 4059529', '1', '115000', '115000', 'staffing', '2021-08-31', NULL, NULL),
(1030, 163, 154, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS ESLTZDSTL2001648', '10', '50', '500', 'fumigation', '2021-08-30', NULL, NULL),
(1031, 163, 154, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS ESLTZSTL2001647', '10', '50', '500', 'fumigation', '2021-08-30', NULL, NULL),
(1032, 163, 154, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS ESLTZSTL2001371', '10', '50', '500', 'fumigation', '2021-08-30', NULL, NULL),
(1033, 163, 154, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS ESLTZDSTL2001652', '10', '50', '500', 'fumigation', '2021-08-30', NULL, NULL),
(1034, 163, 154, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS ESLTZDSTL2001653', '10', '50', '500', 'fumigation', '2021-08-30', NULL, NULL),
(1035, 163, 154, NULL, NULL, 'PSM 10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 77846979', '10', '50', '500', 'fumigation', '2021-08-30', NULL, NULL),
(1036, 163, 154, NULL, NULL, 'PSM 10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 78634173', '10', '50', '500', 'fumigation', '2021-08-30', NULL, NULL),
(1037, 156, 155, NULL, NULL, '💕', '1', '50', '50', 'fumigation', '2021-09-01', NULL, NULL),
(1038, 177, 156, NULL, NULL, 'YES', '1', '115000', '115000', 'fumigation', '2021-09-01', NULL, NULL),
(1039, 160, 157, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER', '20', '50000', '1000000', 'fumigation', '2021-09-01', NULL, NULL),
(1040, 178, 158, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER', '1', '60', '60', 'fumigation', '2021-09-01', NULL, NULL),
(1041, 161, NULL, 298, 'STUFFING', 'STUFFING MANGANESS FLATBED \r\nTRUCK NO: T775DKG\r\nTRAILER NO T898 DBV\r\nCONTAINER NO: HLBU 1337080', '1', '115000', '115000', 'staffing', '2021-09-01', NULL, NULL),
(1042, 161, NULL, 298, 'STUFFING', 'TRUCK NO: T182 DAJ\r\nTRAILER NO T618 DJN\r\nCONTAINER NO: HLXU 323150', '1', '115000', '115000', 'staffing', '2021-09-01', NULL, NULL),
(1043, 161, NULL, 298, 'STUFFING', 'TRUCK NO: T445 CBN\r\nTRAILER NO:  T570 BJL\r\nCONTAINER NO: HLXU 1257628', '1', '115000', '115000', 'staffing', '2021-09-01', NULL, NULL),
(1044, 161, NULL, 298, NULL, 'TRUCK NO: T 127 BJL\r\nTRAILER NO T127 BST\r\nCONTAINER NO: TEMU 1851021', '1', '115000', '115000', 'staffing', '2021-09-01', NULL, NULL),
(1045, 161, NULL, 296, 'STUFFING', 'STUFFING FLATBED  MANGANNESS TRUCK NO T337CQP TRAILER NO T726DEW CONTAINER NO HASU1133787 BL/NUMBER 212572618', '1', '115000', '115000', 'staffing', '2021-08-31', NULL, NULL),
(1046, 161, NULL, 296, NULL, 'TUCK NO: T119DAJ\r\nTRAILEWR NO T480 DSB\r\nCONTAINER MSKU7563362\r\nBL/NUMBER 212572618', '1', '0115000', '115000', 'staffing', '2021-08-31', NULL, NULL),
(1047, 161, NULL, 299, 'STUFFING', 'STUFFING MANGANESS FLATBED\r\nTRUCK NO: T237DQN\r\nTRAILER NO T568DQN\r\nCONTAINER NO TRLU9373276 \r\nBL/NUMBER DAR0131376', '1', '115000', '115000', 'staffing', '2021-09-03', NULL, NULL),
(1048, 161, NULL, 299, 'STUFFING', 'TRUCK NO: T 256DSM\r\nTRAILER NO T568DML\r\nCONTAINER NO TGHU1341740\r\nB/L NUMBER  DAR0131376', '1', '115000', '115000', 'staffing', '2021-09-03', NULL, NULL),
(1051, 161, NULL, 300, 'STUFFING', 'STUFFING MANGANESS FLATBEDTRUCK NO: T341CJRTRAILER NO TT911CHCCONTAINER NO HLXU1065857B/L NUMBER 77074481', '1', '115000', '115000', 'staffing', '2021-09-03', NULL, NULL),
(1052, 161, NULL, 300, 'STUFFING', 'TRUCK NO: T202CWJTRAILER NO T635CKC CONTAINER NO TCLU2416926 B/L NUMBER 77074481', '1', '115000', '115000', 'staffing', '2021-09-03', NULL, NULL),
(1060, 161, NULL, 301, 'STUFFING', 'stuffing manganess flatbed \r\ntruck T106DAJ\r\ntrailerT872DBV\r\ncontainer no: HLXU1067438', '1', '115000', '115000', 'staffing', '2021-09-06', NULL, NULL),
(1061, 161, NULL, 301, 'STUFFING', 'Truck : T441CBN\r\nTrailer: T532 CSA\r\nContainer no: TCLU 3288732', '1', '115000', '115000', 'staffing', '2021-09-06', NULL, NULL),
(1062, 161, NULL, 301, 'STUFFING', 'Truck T 980 CQP\r\nTrailer T 874 CAB\r\nContainer no FCIU 6500087', '1', '115000', '115000', 'staffing', '2021-09-06', NULL, NULL),
(1063, 161, NULL, 301, 'STUFFING', 'Truck T109DAJ\r\nTrailer T756DCJ\r\nContainer no CAIU3136796', '1', '115000', '115000', 'staffing', '2021-09-06', NULL, NULL),
(1064, 161, NULL, 301, 'STUFFING', 'Truck T721BST\r\nTrailer T956 CAB\r\nContainer no FCIU 6206067', '1', '115000', '115000', 'staffing', '2021-09-06', NULL, NULL),
(1065, 161, NULL, 302, 'STUFFING', 'Truck T121 DAJ\r\nTrailer T 905 CAB\r\nContainer no CMAU 1911454', '1', '115000', '115000', 'staffing', '2021-09-06', NULL, NULL),
(1066, 161, NULL, 302, 'STUFFING', 'Truck T738 BST\r\nTrailer T819 BJL\r\nContainer no CMAU0850246', '1', '115000', '115000', 'staffing', '2021-09-06', NULL, NULL),
(1068, 163, 160, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NUMBER 78045653', '5', '50', '250', 'fumigation', '2021-09-06', NULL, NULL),
(1073, 179, 161, NULL, NULL, '5 Containers Fumigation using by Methyl Bromide Gas Bl/No DAR0131262', '5', '150735', '753675', 'fumigation', '2021-09-06', NULL, NULL),
(1074, 179, 161, NULL, NULL, '5 Containers Fumigation using by Methyl Bromide Gas Bl/No DAR0131346', '5', '150735', '753675', 'fumigation', '2021-09-06', NULL, NULL),
(1083, 163, 159, NULL, NULL, '10 Containers Fumigation using by Methyl Bromide gas Bl/number 77846749', '10', '50', '500', 'fumigation', '2021-09-03', NULL, NULL),
(1084, 163, 159, NULL, NULL, '10 Containers Fumigation using by Methyl Bromide gas Bl/number 78634173', '10', '50', '500', 'fumigation', '2021-09-03', NULL, NULL),
(1085, 163, 159, NULL, NULL, '10 Containers Fumigation using by Methyl Bromide gas Bl/number ESLTZDSTL2001647', '10', '50', '500', 'fumigation', '2021-09-03', NULL, NULL),
(1086, 163, 159, NULL, NULL, '10 Containers Fumigation using by Methyl Bromide gas Bl/number ESLTZDSTL2001371', '10', '50', '500', 'fumigation', '2021-09-03', NULL, NULL),
(1087, 163, 159, NULL, NULL, '10 Containers Fumigation using by Methyl Bromide gas Bl/number ESLTZSTL2001648', '10', '50', '500', 'fumigation', '2021-09-03', NULL, NULL),
(1088, 163, 159, NULL, NULL, '10 Containers Fumigation using by Methyl Bromide gas Bl/number ESLTZDSTL2001652', '10', '50', '500', 'fumigation', '2021-09-03', NULL, NULL),
(1089, 163, 159, NULL, NULL, '10 Containers Fumigation using by Methyl Bromide gas Bl/number ESLTZDSTL2001653', '10', '50', '500', 'fumigation', '2021-09-03', NULL, NULL),
(1130, 161, NULL, 303, 'STUFFING', 'Stuffing Manganness Flatbed\r\nTruck no T658DVM\r\nTrailer no T649DFK\r\nContainer no UETU2162255', '1', '115000', '115000', 'staffing', '2021-09-11', NULL, NULL),
(1131, 161, NULL, 304, 'STUFFING', 'Stuffing manganess (flatbed)\r\nTruck no: T987DPW\r\ntrailer no: T826CLU\r\nContainer no OOLU1714139', '1', '115000', '115000', 'staffing', '2021-09-11', NULL, NULL),
(1132, 161, NULL, 304, 'STUFFING', 'Truck no: T889DNU\r\nTrailer no: T533DNZ\r\nContainer no CCLU3612491', '1', '115000', '115000', 'staffing', '2021-09-11', NULL, NULL),
(1133, 161, NULL, 304, 'STUFFING', 'Truck no: T911DUD\r\nTrailer no: T826CLU\r\nContainer no CSLU2146949', '1', '115000', '115000', 'staffing', '2021-09-11', NULL, NULL),
(1134, 161, NULL, 304, 'STUFFING', 'Truck no: T978DMN\r\ntrailer no: T443DLZ\r\nContainer no: OOLU1710025', '1', '115000', '115000', 'staffing', '2021-09-11', NULL, NULL),
(1141, 160, 166, NULL, NULL, '20 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2021-09-14', NULL, NULL),
(1142, 160, 167, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2021-09-14', NULL, NULL),
(1143, 163, 165, NULL, NULL, '5 containers fumigation using by methyl bromide gas b/l no 77761516', '5', '50', '250', 'fumigation', '2021-09-14', NULL, NULL),
(1144, 163, 165, NULL, NULL, '5 containers fumigation using by methyl bromide gas b/l no 78843179', '5', '50', '250', 'fumigation', '2021-09-14', NULL, NULL),
(1145, 163, 165, NULL, NULL, '5 containers fumigation using by methyl bromide gas b/l no 77171509', '5', '50', '250', 'fumigation', '2021-09-14', NULL, NULL),
(1146, 163, 165, NULL, NULL, '5 containers fumigation using by methyl bromide gas b/l no 77663151', '5', '50', '250', 'fumigation', '2021-09-14', NULL, NULL),
(1147, 163, 165, NULL, NULL, '5 containers fumigation using by methyl bromide gas b/l no 77368181', '5', '50', '250', 'fumigation', '2021-09-14', NULL, NULL),
(1148, 163, 165, NULL, NULL, '5 containers fumigation using by methyl bromide gas b/l no 77663155', '5', '50', '250', 'fumigation', '2021-09-14', NULL, NULL),
(1149, 163, 165, NULL, NULL, '40 containers fumigation using by methyl bromide gas b/l no 21299953', '40', '50', '2000', 'fumigation', '2021-09-14', NULL, NULL),
(1246, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas bl/no 52655291', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1247, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas bl/no 5365568', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1248, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas  bl/no 54328647', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1249, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas bl/no 77743339', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1250, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas bl/no DAR0131009', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1251, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas bl/no 77645032', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1252, 181, 163, NULL, NULL, '10 container fumigation using by methyl bromide gas bl/no 77648670 & 78631992', '10', '151775', '1517750', 'fumigation', '2021-09-09', NULL, NULL),
(1253, 181, 163, NULL, NULL, '10 container fumigation using by methyl bromide gas bl/no 78336997 & 79910335', '10', '151775', '1517750', 'fumigation', '2021-09-09', NULL, NULL),
(1254, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas 78238666', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1255, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas bl/no 78238671', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1256, 181, 163, NULL, NULL, '10 container fumigation using by methyl bromide gas bl/no 793116558', '10', '151775', '1517750', 'fumigation', '2021-09-09', NULL, NULL),
(1257, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas 77850440', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1258, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas bl/no  DAR0129236-E', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1259, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas bl/no DAR0131086-F', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1260, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas bl/no DAR0131086', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1261, 181, 163, NULL, NULL, '5 container fumigation using by methyl bromide gas 78243773', '5', '151775', '758875', 'fumigation', '2021-09-09', NULL, NULL),
(1262, 161, NULL, 305, 'STUFFING', 'Stuffing manganess flatbed\r\nTruck no: T532DQC\r\nTrailer no: T660CRA\r\nContainer no:  CCLU3539282', '1', '115000', '115000', 'staffing', '2021-09-17', NULL, NULL),
(1263, 161, NULL, 306, 'STUFFING', 'Stuffing manganess flatbed\r\nTruck no: T359CJR\r\nTrailer no:T990DHZ\r\nContainer no:  TEMU3030046', '1', '115000', '115000', 'staffing', '2021-09-17', NULL, NULL),
(1264, 161, NULL, 307, 'STUFFING', 'STUFFING  TANTALITE\r\nTruck no: T2983BAK\r\nTrailer no: T543CPJ\r\nContainer no:  PCIU1976640 to Container no: OOLU294281', '1', '115000', '115000', 'staffing', '2021-09-17', NULL, NULL),
(1284, 182, 164, NULL, NULL, 'To fumigate offices, Go down, Septic and sewage system and all compound. this targeted to destroy/kill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '1300000', '1300000', 'fumigation', '2021-09-10', NULL, NULL),
(1285, 182, 164, NULL, NULL, 'Treat rate three Quater per year @Tshs 150,000/=', '3', '150000', '450000', 'fumigation', '2021-09-10', NULL, NULL),
(1286, 161, NULL, 308, 'STUFFING', 'STUFFING MANGANNESS FLATBED TRUCK NO:  T 363 DFQTRAILER NO: T 681 DCYCONATAINER NO: CMAU0941897B/L NO...........................', '1', '115000', '115000', 'staffing', '2021-09-20', NULL, NULL),
(1287, 161, NULL, 308, 'STUFFING', 'TRUCK NO: T 859 DFBTRAILER NO: T 5256 CONATAINER NO: CMAU1669588BL/NO...............................', '1', '115000', '115000', 'staffing', '2021-09-20', NULL, NULL),
(1288, 161, NULL, 308, 'STUFFING', 'TRUCK NO:  T 359 DJW\r\nTRAILER NO: T 310 DJU\r\nCONATAINER NO: CMAU 0669942', '1', '0115000', '115000', 'staffing', '2021-09-20', NULL, NULL),
(1294, 163, 168, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO 77078532', '10', '50', '500', 'fumigation', '2021-09-20', NULL, NULL),
(1295, 163, 168, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO 77078473', '10', '50', '500', 'fumigation', '2021-09-20', NULL, NULL),
(1296, 163, 168, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO 77462453', '5', '50', '250', 'fumigation', '2021-09-20', NULL, NULL),
(1297, 163, 168, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO ESLTZDSTL2001658', '5', '50', '250', 'fumigation', '2021-09-20', NULL, NULL),
(1298, 163, 168, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO 78548176', '5', '50', '250', 'fumigation', '2021-09-20', NULL, NULL),
(1300, 163, 169, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 78253151', '5', '50', '250', 'fumigation', '2021-09-21', NULL, NULL),
(1301, 161, NULL, 309, 'STUFFING', 'STUFFING MANGANNESS (BOX BODY)\r\nTRUCK NO: T314BYH\r\nTRAILER NO: T679 DCY\r\nCONTAINER NO: FCIU6256406', '1', '115000', '115000', 'staffing', '2021-09-21', NULL, NULL),
(1316, 163, 173, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 213284855', '10', '50', '500', 'fumigation', '2021-09-28', NULL, NULL),
(1317, 163, 173, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 213284773', '10', '50', '500', 'fumigation', '2021-09-28', NULL, NULL),
(1320, 163, 170, NULL, NULL, 'JRK 10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS VL/NUMBER CSL00233', '10', '50', '500', 'fumigation', '2021-09-23', NULL, NULL),
(1321, 163, 170, NULL, NULL, 'JRK 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS CSL00237', '5', '50', '250', 'fumigation', '2021-09-23', NULL, NULL),
(1325, 161, NULL, 310, 'STUFFING', 'STUFFING MAMGANESS FLATBED TRUCK NO BAT 4543TRAILER NO BART 4686CONTAINER NO CMAU 0797476', '1', '115000', '115000', 'staffing', '2021-09-30', NULL, NULL),
(1326, 161, NULL, 310, 'STUFFING', 'TRUCK NO  BAT 4539TRAILER NO BAT 4544CONTAINER NO CMAU1477327', '1', '115000', '115000', 'staffing', '2021-09-30', NULL, NULL),
(1327, 161, NULL, 310, 'STUFFING', 'TRUCK NO BAL 9165TRAILER NO AJE 5663CONTAINER NO TRHU1344226', '1', '115000', '115000', 'staffing', '2021-09-30', NULL, NULL),
(1329, 180, 174, NULL, NULL, '1 CARTOON OF SUPER DRY BAGS', '1', '35000', '35000', 'fumigation', '2021-10-06', NULL, NULL),
(1330, 161, NULL, 311, 'STUFFING', 'SHOVELLING OF MANGANISE (FLATBED)\r\nTRUCK NO:  BAT 3796\r\nTRAILER NO: BAT 3796\r\nCONTAINER NO TRHU4525038  (40FT)', '1', '145000', '145000', 'staffing', '2021-10-08', NULL, NULL),
(1331, 161, NULL, 311, NULL, 'TRUCK NO: BAP 886\r\nTRAILER NO:  ABH 1614 T\r\nCONTAINER NO OOLU 6953455   (40FT)', '1', '145000', '145000', 'staffing', '2021-10-08', NULL, NULL),
(1332, 161, NULL, 311, NULL, 'TRUCK NO: BAP 884\r\nTRAILER NO: ................\r\nCONTAINER NOM TGBU 7711330  (40FT)', '1', '145000', '145000', 'staffing', '2021-10-08', NULL, NULL),
(1333, 161, NULL, 312, 'STUFFING', 'SHOVELLING OF MANGANISE (FLATBED)\r\nTRUCK NO:  BAL 9255\r\nTRAILER NO: BAP 883\r\nCONTAINER NO OOCU 7361304 (40FT)', '1', '145000', '145000', 'staffing', '2021-10-08', NULL, NULL),
(1334, 161, NULL, 313, 'STUFFING', 'SHOVELLING OF MANGANISE (FLATBED)\r\nTRUCK NO:  BAT 2985\r\nTRAILER NO: AJB 8465 T\r\nCONTAINER NO: BEAU 5768684 (40FT)', '1', '145000', '145000', 'staffing', '2021-10-08', NULL, NULL),
(1336, 161, NULL, 314, 'STUFFING', 'SHOVELLING OF MANGANISE (FLATBED)\r\nTRUCK NO:  BAT 3911\r\nTRAILER NO: BAT 37698\r\nCONTAINER NO:  OOLU 9168327(40FT)', '1', '145000', '145000', 'staffing', '2021-10-11', NULL, NULL),
(1341, 161, NULL, 315, 'STUFFING', 'SHOVELLING OF MANGANISE (FLATBED)TRUCK NO:  BAT 3911TRAILER NO: BAT 37698CONTAINER NO:  OOLU 9168327(40FT)', '1', '145000', '145000', 'staffing', '2021-10-11', NULL, NULL);
INSERT INTO `invoice` (`id`, `company_id`, `invoice_fumigation`, `staff_id`, `title`, `description`, `qty`, `price`, `amt`, `staff_type`, `date_in`, `created_at`, `updated_at`) VALUES
(1342, 161, NULL, 315, 'STUFFING', 'TRUCK NO: AJE 5667TRAILER NO: BAP 3769CONTAINER NO: TRHU 6746402(40FT)', '1', '145000', '145000', 'staffing', '2021-10-11', NULL, NULL),
(1344, 163, 175, NULL, NULL, '1 CONTAINER FUMIGATION USING BY PHOSPHINE GAS BL/ NUMBER 322100005195', '1', '35000', '35000', 'fumigation', '2021-10-11', NULL, NULL),
(1346, 161, NULL, 316, 'STUFFING', 'SHOVELLING OF MANGANISE (FLATBED)\r\nTRUCK NO:  T199 DQG\r\nTRAILER NO: T 130 DQG\r\nCONTAINER NO: TCNU2380517 (40FT)', '1', '145000', '145000', 'staffing', '2021-10-13', NULL, NULL),
(1347, 161, NULL, 316, 'STUFFING', 'TRUCK NO:  AJE5662\r\nTRAILER NO:  AJE 5664\r\nCONTAINER NO: TGBU 8691590', '1', '145000', '145000', 'staffing', '2021-10-13', NULL, NULL),
(1350, 161, NULL, 317, 'STUFFING', 'Cross staffing of into a for one container BAGS 320Truck  NO: K 0187 ATrailer no: T 1704 AContainer no:  OOLU 1342957 to Container no:  CXDU 2289819', '320', '325', '104000', 'staffing', '2021-10-13', NULL, NULL),
(1351, 161, NULL, 317, 'LINING', 'LINING Lining materials and labour charges (double lining)', '2', '60000', '120000', 'staffing', '2021-10-13', NULL, NULL),
(1353, 161, NULL, 318, 'STUFFING', 'Cross staffing of into a for one container BAGS 320Truck  NO: T 233 DVGTrailer no:T 889 AUAContainer no: TRHU 4501503   to Container no:  WECU 2114980', '320', '325', '104000', 'staffing', '2021-10-13', NULL, NULL),
(1354, 161, NULL, 318, 'STUFFING', 'LINING Lining materials and labour charges', '1', '60000', '60000', 'staffing', '2021-10-13', NULL, NULL),
(1359, 161, NULL, 319, 'STUFFING', 'STUFFING MANGANNESS (FLATBED)\r\nTRUCK NO: T107 ABN\r\nTRAILER NO: T812AAS\r\nCONTAINER NO: CMAU0706162 (20FT)', '1', '115000', '115000', 'staffing', '2021-10-18', NULL, NULL),
(1364, 163, 177, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER DAR0132184', '20', '50', '1000', 'fumigation', '2021-10-18', NULL, NULL),
(1365, 163, 177, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 79939697', '10', '50', '500', 'fumigation', '2021-10-18', NULL, NULL),
(1366, 163, 177, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 78366309', '10', '50', '500', 'fumigation', '2021-10-18', NULL, NULL),
(1367, 163, 177, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 79743040', '10', '50', '500', 'fumigation', '2021-10-18', NULL, NULL),
(1368, 163, 177, NULL, NULL, '15 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER ebkg01894512', '15', '50', '750', 'fumigation', '2021-10-18', NULL, NULL),
(1369, 181, 171, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS  DAR0129236K', '5', '65', '325', 'fumigation', '2021-09-27', NULL, NULL),
(1370, 181, 171, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS DAR0129236M', '10', '65', '650', 'fumigation', '2021-09-27', NULL, NULL),
(1371, 181, 171, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS DAR0129236J', '5', '65', '325', 'fumigation', '2021-09-27', NULL, NULL),
(1372, 181, 171, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS DAR0129236L', '5', '65', '325', 'fumigation', '2021-09-27', NULL, NULL),
(1373, 181, 171, NULL, NULL, '3 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS 7862288287', '3', '65', '195', 'fumigation', '2021-09-27', NULL, NULL),
(1374, 181, 171, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS DAR0129236C', '10', '65', '650', 'fumigation', '2021-09-27', NULL, NULL),
(1375, 181, 171, NULL, NULL, '10 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS 79316558', '10', '65', '650', 'fumigation', '2021-09-27', NULL, NULL),
(1376, 181, 171, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS DAR0129236D', '5', '65', '325', 'fumigation', '2021-09-27', NULL, NULL),
(1377, 181, 171, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS DAR0129236G', '5', '65', '325', 'fumigation', '2021-09-27', NULL, NULL),
(1378, 161, NULL, 320, 'STUFFING', 'STUFFING MANGANNESS FLATBED\r\nTRUCK NO T486DEQ\r\nTRAILER NO T769DDZ\r\nCONTAINER NO: 00CU 7761569', '1', '145000', '145000', 'staffing', '2021-10-22', NULL, NULL),
(1380, 172, 172, NULL, NULL, '5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 79513226A', '5', '149500', '747500', 'fumigation', '2021-09-28', NULL, NULL),
(1383, 185, 178, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS', '4', '40000', '160000', 'fumigation', '2021-10-27', NULL, NULL),
(1384, 185, 178, NULL, NULL, '4 PAPER WORK', '4', '70000', '280000', 'fumigation', '2021-10-27', NULL, NULL),
(1445, 181, 179, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0129236AE', '5', '65', '325', 'fumigation', '2021-10-28', NULL, NULL),
(1446, 181, 179, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0129236', '5', '65', '325', 'fumigation', '2021-10-28', NULL, NULL),
(1447, 181, 179, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  78161345', '10', '65', '650', 'fumigation', '2021-10-28', NULL, NULL),
(1448, 181, 179, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0131517', '5', '65', '325', 'fumigation', '2021-10-28', NULL, NULL),
(1449, 181, 179, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0131518', '5', '65', '325', 'fumigation', '2021-10-28', NULL, NULL),
(1450, 181, 179, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0129236R', '10', '65', '650', 'fumigation', '2021-10-28', NULL, NULL),
(1451, 181, 179, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0129236Y', '10', '65', '650', 'fumigation', '2021-10-28', NULL, NULL),
(1452, 181, 179, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR012936AA', '10', '65', '650', 'fumigation', '2021-10-28', NULL, NULL),
(1453, 181, 179, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0131509', '5', '65', '325', 'fumigation', '2021-10-28', NULL, NULL),
(1461, 186, 182, NULL, NULL, '1 CONTAINER FUMIGATION USING BY PHOSPHINE GAS', '1', '23600', '23600', 'fumigation', '2021-11-01', NULL, NULL),
(1467, 163, 184, NULL, NULL, '10 CONTAINESRS  FUMIGATION USING BY PHOSPHINE GAS BL/NO TZNB2100096', '10', '35000', '350000', 'fumigation', '2021-11-01', NULL, NULL),
(1468, 163, 183, NULL, NULL, '9 CONTANERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 79939632', '9', '50', '450', 'fumigation', '2021-11-01', NULL, NULL),
(1469, 163, 183, NULL, NULL, '10 CONTANERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0131685', '10', '50', '500', 'fumigation', '2021-11-01', NULL, NULL),
(1470, 163, 183, NULL, NULL, '10 CONTANERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0131689', '10', '50', '500', 'fumigation', '2021-11-01', NULL, NULL),
(1471, 163, 183, NULL, NULL, '10 CONTANERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0131673', '10', '50', '500', 'fumigation', '2021-11-01', NULL, NULL),
(1472, 163, 183, NULL, NULL, '10 CONTANERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0131683', '10', '50', '500', 'fumigation', '2021-11-01', NULL, NULL),
(1473, 163, 183, NULL, NULL, '10 CONTANERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 78464705', '10', '50', '500', 'fumigation', '2021-11-01', NULL, NULL),
(1490, 172, 185, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0131519', '5', '149500', '747500', 'fumigation', '2021-11-05', NULL, NULL),
(1491, 172, 185, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0131689', '5', '149500', '747500', 'fumigation', '2021-11-05', NULL, NULL),
(1597, 161, NULL, 324, 'STUFFING', 'STUFFING TANTALITE \r\nTRUCK NO T780DMZ\r\nTRAILER NO T22BAJ\r\nCONTAINER NO OOLU1519507 TO CBHU9543382\r\nBL/NO 268383620', '1', '115000', '115000', 'staffing', '2021-11-09', NULL, NULL),
(1600, 161, NULL, 322, 'STUFFING', 'STUFFING COFFEE BAGS TO BAGSTRUCK NO: E2381ATRAILER NO T1695ACONTAINER NO MSKU7211377 TO CONTAINER NO CXDU2291225BL/NO ANR644127', '320', '325', '104000', 'staffing', '2021-11-09', NULL, NULL),
(1601, 161, NULL, 322, 'LINING', 'LINING AND MATERIAL LABOR CHARGERS', '2', '60000', '120000', 'staffing', '2021-11-09', NULL, NULL),
(1604, 161, NULL, 326, 'STUFFING', 'STUFFING COFFEE (BULK)\r\nTRUCK NO E2451A\r\nTRAILER NOT2004A\r\nCONTAINER NO 0NEU0004960 TO \r\nGVCU5315944\r\nBL/NO 644133', '1', '175000', '175000', 'staffing', '2021-11-09', NULL, NULL),
(1605, 161, NULL, 326, 'STUFFING', 'LINING AND MATERIAL LABOR CHARGES', '2', '60000', '120000', 'staffing', '2021-11-09', NULL, NULL),
(1618, 156, 187, NULL, NULL, '1 CONTAINER BASKET (40FT)', '1', '150000', '150000', 'fumigation', '2021-11-10', NULL, NULL),
(1619, 189, 189, NULL, NULL, 'To fumigate and treat workshops, offices, Go down, Septic and sewage system and all compound. This targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '450000', '450000', 'fumigation', '2021-11-10', NULL, NULL),
(1620, 189, 190, NULL, NULL, 'To fumigate and treat workshops, offices, Go down, Septic and sewage system and all compound. This targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '450000', '450000', 'fumigation', '2021-11-10', NULL, NULL),
(1623, 161, NULL, 323, 'STUFFING', 'STUFFING BAGS TO BAGS TRUCK NO 0187ATRAILER NO T1704ACONTAINER NO PONU0908014 TO CONTAINER NO  TLNU4200103BL/NO ANR 644129', '320', '325', '104000', 'staffing', '2021-11-09', NULL, NULL),
(1624, 161, NULL, 323, 'LINING', 'LINING AND MATERIAL LABOR CHARGES (DOUBLE LINE)', '2', '60000', '120000', 'staffing', '2021-11-09', NULL, NULL),
(1631, 161, NULL, 328, 'STUFFING', 'STUFFING COFFEE (BAGS TO BAGS)TRUCK NO E1276ATRAILER TLNU 4253042CONTAINER NO MRKU3034271TO CONTAINER NO TLNU4253042 BOOKING NO 0644101 EXP 21013', '320', '325', '104000', 'staffing', '2021-11-09', NULL, NULL),
(1632, 161, NULL, 328, 'LINING', 'LINING AND MATERIAL LABOR CHARGERS (DOUBLE LINE)', '2', '060000', '120000', 'staffing', '2021-11-09', NULL, NULL),
(1641, 161, NULL, 332, 'STUFFING', 'STUFFING MANGANESS \r\nTRUCK NO T158DQG\r\nTRAILER NO 128DQG \r\nCONTAINER NO OOLU8291511 \r\nBOOKING NO 2684597240 (40)', '1', '145000', '145000', 'staffing', '2021-11-11', NULL, NULL),
(1648, 160, 191, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2021-11-13', NULL, NULL),
(1696, 184, 186, NULL, NULL, '83 BOX SUPER DRY DESICCANT', '83', '206500', '17139500', 'fumigation', '2021-11-10', NULL, NULL),
(1697, 190, 192, NULL, NULL, '17 BOXS SUPER DRY DESSICCANT', '17', '206500', '3510500', 'fumigation', '2021-11-16', NULL, NULL),
(1699, 186, 181, NULL, NULL, '20 CONTAINER FUMIGATION USING BY PHOSPHINE GAS (40FT) BL/NUMBER DAR0133397', '20', '29500', '590000', 'fumigation', '2021-11-01', NULL, NULL),
(1700, 161, NULL, 334, 'STUFFING', 'MANGANESS \r\nTRUCK NO T945DMY\r\nTRAILER NO T 898 DMP\r\nCONTAINER NO CSNU 6736257\r\nBL/NUMBER 2684597240', '1', '145000', '145000', 'staffing', '2021-11-17', NULL, NULL),
(1701, 161, NULL, 334, 'STUFFING', 'TRUCK NO T970DBX\r\nTRAILER NO\r\nCONTAINER NO TRHU 7253334\r\nBL/NUMBER 2684597240', '1', '145000', '145000', 'staffing', '2021-11-17', NULL, NULL),
(1702, 161, NULL, 334, 'STUFFING', 'TRUCK NO T948 DMY\r\nTRAILER NOT933DMY\r\nCONTAINER NO TGBU 9310738\r\nBL/NUMBER 2684597240', '1', '145000', '145000', 'staffing', '2021-11-17', NULL, NULL),
(1703, 161, NULL, 334, 'STUFFING', 'TRUCK NO T181 DEQ\r\nTRAILER NO T880DMJ\r\nCONTAINER NO OOCU7325164\r\nBL/NUMBER 2684597240', '1', '145000', '145000', 'staffing', '2021-11-17', NULL, NULL),
(1704, 161, NULL, 335, 'STUFFING', 'TANTALITE \r\nTRUCK NO: T720DEA\r\nTRUCK NO: T430DEH \r\nCONTAINER NO TRHU561155 TO CONTAINER NO CSNU1376414\r\nBOOKING NO 2684515160', '1', '115000', '115000', 'staffing', '2021-11-17', NULL, NULL),
(1705, 161, NULL, 336, 'STUFFING', 'STUFFING COFFEE (BULK)\r\nTRUCK NO T455DPN\r\nTRAILER NO T965CVZ\r\nCONTAINER NO MEDU 8495948 TO CONTAINER NO FCIU6047010\r\nBL/NO 649064', '1', '175000', '175000', 'staffing', '2021-11-17', NULL, NULL),
(1706, 161, NULL, 336, 'LINING', 'LINING AND MATERIAL LABOR CHARGERS', '1', '60000', '60000', 'staffing', '2021-11-17', NULL, NULL),
(1707, 161, NULL, 337, 'STUFFING', 'STUFFING COFFEE (BULK)\r\nTRUCK NO E2107A\r\nTRAILER NO T17670A\r\nCONTAINER NO MRKU2206777 TO CONTAINER NO CXDU 1402263\r\nBL/NO 649254', '1', '175000', '175000', 'staffing', '2021-11-17', NULL, NULL),
(1708, 161, NULL, 337, 'LINING', 'LINING AND MATERIAL LABOR CHARGERS', '1', '60000', '60000', 'staffing', '2021-11-17', NULL, NULL),
(1712, 161, NULL, 338, 'STUFFING', 'STUFFING MANGANNESS \r\nTRUCK NO: T834DME\r\nTRAILER NO: T869DMJ\r\nCONTAINER NO OOCU9053086 (40FT)\r\nBOOKING NO 2685091910', '1', '145000', '145000', 'staffing', '2021-11-18', NULL, NULL),
(1713, 161, NULL, 339, 'STUFFING', 'STUFFING COFFEE BULK\r\nTRUCK NO T445DPN\r\nTRAILER NO 965CVZ\r\nCONTAINER NO MEDU 8495948 TO CONTAINER NO FCIU 604710\r\n\r\nBOOKING NO 649064', '1', '175000', '175000', 'staffing', '2021-11-18', NULL, NULL),
(1714, 161, NULL, 339, NULL, 'LINING AND MATERIAL LABOR CHARGERS', '1', '60000', '60000', 'staffing', '2021-11-18', NULL, NULL),
(1719, 161, NULL, 325, 'STUFFING', 'STUFFING COFFEE (BULK)TRUCK NO E1034ATRAILER NO T0849ACONTAINER NO TCNU1496740CONTAINER NO WECU2140567BL/NO ANR644476', '1', '175000', '175000', 'staffing', '2021-11-09', NULL, NULL),
(1720, 161, NULL, 325, 'STUFFING', 'LINING AND MATERIAL LABOUR CHARGERS (DOUBLE LINE)', '1', '60000', '60000', 'staffing', '2021-11-09', NULL, NULL),
(1731, 161, NULL, 329, 'STUFFING', 'STUFFING COFFEE (BULK)TRUCK NO T971 CFFTRAILER T726APZCONTAINER NO BSIU8003317  TO CONTAINER NO WECU2064050BL/NO ANR644478', '1', '175000', '175000', 'staffing', '2021-11-09', NULL, NULL),
(1732, 161, NULL, 329, 'LINING', 'LINING AND MATERIAL LABOR CHARGER (SINGLE LINE 20FT)', '1', '60000', '60000', 'staffing', '2021-11-09', NULL, NULL),
(1733, 161, NULL, 330, 'STUFFING', 'STUFFING COFFEE (BULK)TRUCK NO E 1856 ATRAILER T 17621 ACONTAINER NO BSIU8003317 TO CONTAINER NO MSKU1025821BL/NO HAM644092', '1', '175000', '175000', 'staffing', '2021-11-09', NULL, NULL),
(1734, 161, NULL, 330, 'LINING', 'LINING AND MATERIAL LABOR CHARGER (SINGLE LINE 20FT)', '1', '60000', '60000', 'staffing', '2021-11-09', NULL, NULL),
(1735, 161, NULL, 331, 'STUFFING', 'STUFFING (BAGS TO BAGS) TRUCK NO T283 BAKTRAILER NO 543CPJCONTAINER NO HASU4800116 TO CONTAINER NO MRKU9118976 BOOKING NO 9118976', '320', '325', '104000', 'staffing', '2021-11-11', NULL, NULL),
(1736, 161, NULL, 331, 'LINING', 'LINING AND MATERIAL LABOR CHARGERS (SINGLE LINE', '1', '060000', '60000', 'staffing', '2021-11-11', NULL, NULL),
(1737, 161, NULL, 333, 'TO REMOVE', 'TO REMOVE BAGS TO BAGS FROM MRKU9118976 TO CONTAINE NO CLHU4570908BOOKING NO 2145506311 EXP 21016', '451', '325', '146575', 'staffing', '2021-11-12', NULL, NULL),
(1738, 161, NULL, 333, 'DISTUFFING AND STUFFING', 'DISTUFFING AND STUFFING BAGS AND BOXES CONTAINER NO CLHU4570908 BOOKING NO 2145506311 EXP 21016', '451', '325', '146575', 'staffing', '2021-11-12', NULL, NULL),
(1739, 161, NULL, 333, 'LINING', 'LINING AND MATERIAL LABOUR CHARGERS (DOUBLE LINE)', '2', '60000', '120000', 'staffing', '2021-11-12', NULL, NULL),
(1740, 191, 193, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS', '2', '35000', '70000', 'fumigation', '2021-11-19', NULL, NULL),
(1741, 161, NULL, 340, 'STUFFING', 'STUFFING MANGANESS \r\nTRUCK NO T678DLY\r\nTRAILER NO T936DMY\r\nCONTAINER NO DFSU6902834(40FT)\r\nBOOKING NO 2685091910', '1', '145000', '145000', 'staffing', '2021-11-20', NULL, NULL),
(1742, 161, NULL, 340, 'STUFFING', 'TRUCK NOB T330DLY\r\nTRAILER NO T932DMY\r\nCONTAINER NO FFAU3033546 (40FT)\r\nBOOKING NO 2685091910', '1', '145000', '145000', 'staffing', '2021-11-20', NULL, NULL),
(1743, 161, NULL, 340, 'STUFFING', 'TRUCK NO T199DQG\r\nTRAILER NO T130DQG\r\nCONTAINER NO FFAU1563763 (40FT)\r\nBOOKING NO 2685091910', '1', '145000', '145000', 'staffing', '2021-11-20', NULL, NULL),
(1744, 161, NULL, 340, 'STUFFING', 'TRUCK NO T841DME\r\nTRAILER NO T361DDT\r\nCONTAINER NO TRHU4910420 (40FT)\r\nBOOKING NO 2685091910', '1', '145000', '145000', 'staffing', '2021-11-20', NULL, NULL),
(1753, 153, NULL, 342, 'refe', 'rfrw', '1', '500', '500', 'staffing', '2022-01-28', NULL, NULL),
(1762, 161, NULL, 327, 'STUFFING', 'STUFFING BAGS TO BAGSTRUCK NO T656 DLKTRAILER NO T209 DFFCONTAINER OOCU 8003861 TO SEGU 2010603BL/NO ANR644480', '1', '175000', '175000', 'staffing', '2021-11-09', NULL, NULL),
(1763, 161, NULL, 327, 'LINING', 'LINING AND MATERIALS', '1', '060000', '60000', 'staffing', '2021-11-09', NULL, NULL),
(1766, 161, NULL, 343, 'STUFFING', 'STUFFING COFFEE TRUCK NO D8721ATRAILER NO 1410A CONTAINER NO MRSU4519011 TO CONTAINER NO BSIU2149109 BOOKING NO 649568', '1', '175000', '175000', 'staffing', '2022-01-28', NULL, NULL),
(1767, 161, NULL, 343, 'LINING', 'LINING AND MATERIALS', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1772, 161, NULL, 344, 'STUFFING', 'STUFFING COFFEE \r\nTRUCK NO E1038A\r\nTRAILER NO T0769A\r\nCONTAINER NO  HASU4229120 (40)TO CONAINERS NO FBIU4228933 (20) BOOKING 649057', '1', '175000', '175000', 'staffing', '2022-01-28', NULL, NULL),
(1773, 161, NULL, 344, 'LINING', 'LINING AND MATERIAL', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1774, 161, NULL, 345, 'STUFFING', 'STUFFING COFFEE \r\nTRUCK NO E4281A\r\nTRUCK NO T1403 CONTAINER NOEISU9907040 TO CONTAINER NO PONU 1701818 BOOKING NO 214570495', '393', '325', '127725', 'staffing', '2022-01-28', NULL, NULL),
(1775, 161, NULL, 345, 'LINING', 'LINING AND MATERIALS', '2', '60000', '120000', 'staffing', '2022-01-28', NULL, NULL),
(1781, 192, 198, NULL, NULL, '7 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS @50 USD PER ONE  CONTAINER (@50USD X 2300)', '7', '115000', '805000', 'fumigation', '2022-01-28', NULL, NULL),
(1782, 192, 199, NULL, NULL, '7 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS @50 USD PER ONE  CONTAINER (@50USD X 2300)', '7', '115000', '805000', 'fumigation', '2022-01-28', NULL, NULL),
(1783, 161, NULL, 346, 'STUFFING', 'STUFFING COFFEE (BULK) \r\nTRUCK NO E1034A TRAILER NO T0849A \r\nCONTAINER NO TCNU2140567 BL/NO ANR644476', '1', '175000', '175000', 'staffing', '2022-01-28', NULL, NULL),
(1784, 161, NULL, 346, NULL, 'LINING AND MATERIAL', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1785, 161, NULL, 347, 'STUFFING', 'STUFFING COFFEE BAGS TO BAGS \r\nTRUCK NO  T443 DQX TRAILER NO T906DQV \r\nCONTAINER NO RFCU5030662(40) TO CONTAINER NO TLLU 3265680 (20) BOOKING NO EBKG02286011', '320', '325', '104000', 'staffing', '2022-01-28', NULL, NULL),
(1786, 161, NULL, 347, 'LINING', 'LINING AND MATERIALS', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1787, 161, NULL, 348, 'STUFFING', 'STUFFING BAGS TO BAGS \r\nTRUCK NO T656 DLK TRAILER NO T206DFF CONTAINER OOCU 8003861 TO SEGU 2010603 BL/NO ANR 64480', '1', '175000', '175000', 'staffing', '2022-01-28', NULL, NULL),
(1788, 161, NULL, 348, 'LINING', 'LINING AND MATERIALS', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1789, 161, NULL, 349, 'STUFFING', 'STUFFING TANTALITE TRUCK NO  T937CWN TAILER NO T543DCV CONTAINER NO TEMU3780734 BL/NO 2687128890', '1', '115000', '115000', 'staffing', '2022-01-28', NULL, NULL),
(1796, 161, NULL, 351, 'STUFFING', 'stuffing coffee bags to bags \r\nTruck no T7784A  Trailer T1374A Container no PCIU 2888800 TO Container no TLLU 3407779 booking no ebkg2335611', '320', '325', '104000', 'staffing', '2022-01-28', NULL, NULL),
(1797, 161, NULL, 351, 'LINING', 'LINING AND MATERIAL', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1798, 161, NULL, 352, 'STUFFING', 'STUFFING COFFEE(BULK) TRUCK NO E1034A TRAILER NO TO849A CONTAINER NO WECU2140567BL/NO ANR644476', '1', '175000', '175000', 'staffing', '2022-01-28', NULL, NULL),
(1799, 161, NULL, 352, 'LINING', 'LINING AND MATERIALS', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1800, 161, NULL, 353, 'STUFFING', 'STUFFING COFFEE (BULK) TRUCK NO E1034ATRAILER NO  TO849ACONTAINER NO TCNU 1496740 CONTAINER NO:WECU2140567BL/ NO ANR644476', '1', '175000', '175000', 'staffing', '2022-01-28', NULL, NULL),
(1801, 161, NULL, 353, 'LINING', 'LINNING AND MATERIALS', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1802, 161, NULL, 356, 'STUFFING', 'STUFFING  COFFEE TRUCK NO  E1038ATRAILER  NO  T0769ACONTAINER NO  HASU 4229120(40)  TO CONTAINER NO FBIU0428933  (20)  BOOKING NO 649057', '1', '175000', '175000', 'staffing', '2022-01-28', NULL, NULL),
(1803, 161, NULL, 356, 'LINING', 'LINNING AND MATERIALS', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1804, 161, NULL, 357, 'STUFFING', 'STUFFING BAGS TO BAGS TRUCK  NO T656  DLKTRAILER NO T209 DFFCONTAINER OOCU 8003861 TO SEGU 2010603BL/NO ANR644480', '1', '175000', '175000', 'staffing', '2022-01-28', NULL, NULL),
(1805, 161, NULL, 357, 'LINING', 'LINNING AND MATERIALS', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1806, 161, NULL, 358, 'STUFFING', 'STUFFING COFFEE (BULK) TRUCK NO: T455DPN TRAILER NO T965 CVZ CONTAINER NO MEDU 8495948 TO CONTAINER NO FCIU6047010 BL/NO  649064', '1', '175000', '175000', 'staffing', '2022-01-28', NULL, NULL),
(1807, 161, NULL, 358, 'LINING', 'LINNING AND MATERIALS', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1808, 161, NULL, 359, 'STUFFING', 'STUFFING   COFFEE BAGS TO  BAGS TRUCK NOT7784A TRAILER T1374A CONTAINER NO PCIU 2888800 TO CONTAINER NO TLLU 3407779 BOOKING NO 02335611', '320', '325', '104000', 'staffing', '2022-01-28', NULL, NULL),
(1809, 161, NULL, 359, 'LINING', 'LINNING AND MATERIALS', '1', '60000', '60000', 'staffing', '2022-01-28', NULL, NULL),
(1836, 163, 210, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  213236178', '18', '50', '900', 'fumigation', '2022-01-29', NULL, NULL),
(1837, 163, 211, NULL, NULL, 'CONTAINERS FUMIGATED BY METHYL BROMIDE GASB/L NO: 213236070', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1838, 163, 212, NULL, NULL, 'CONTAINERS FUMIGATED BY METHYL BROMIDE GAS B/L NO: 213236123', '9', '50', '450', 'fumigation', '2022-01-29', NULL, NULL),
(1839, 163, 213, NULL, NULL, 'CONTAINER FUMIGATED BY METHYL BROMIDE GAS B/L NO: 214280383', '1', '50', '50', 'fumigation', '2022-01-29', NULL, NULL),
(1840, 163, 214, NULL, NULL, 'CONTAINERS FUMIGATED BY METHYL BROMIDE B/L NO: 213553907', '3', '50', '150', 'fumigation', '2022-01-29', NULL, NULL),
(1841, 163, 215, NULL, NULL, 'CONTAINERS FUMIGATED BYMETHYL BROMIDE B/L  NO: 212999953', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1842, 163, 216, NULL, NULL, 'CONTAINERS  FUMIGATED BY METHYL BROMIDE GAS B/L NO: DAR0129405', '2', '50', '100', 'fumigation', '2022-01-29', NULL, NULL),
(1843, 163, 217, NULL, NULL, 'CONTAINERS FUMIGATED BY METHYL BROMIDE GAS B/L NO: DAR 0129555', '2', '50', '100', 'fumigation', '2022-01-29', NULL, NULL),
(1844, 163, 218, NULL, NULL, 'CONTAINERS FUMIGATED BY METHYL BROMIDE GAS B/L NO : DAR0128546A', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1845, 163, 219, NULL, NULL, 'CONTAINERS FUMIGATED BY METHYL BROMIDE GAS  B/L NO: DAR106425', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1846, 163, 220, NULL, NULL, 'CONTAINERS FUMIGATED BY METHYL BROMIDE GASB/L NO: DAR 0129621', '2', '50', '100', 'fumigation', '2022-01-29', NULL, NULL),
(1847, 163, 221, NULL, NULL, 'CONTAINERS FUMIGATED BY METHYL BROMIDE GAS B/L NO: DAR0129621', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1850, 163, 224, NULL, NULL, 'CONTAINERS FUMIGATED BY METHYL BROMIDE GAS B/L NO:HCLUDA 3210903058', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1851, 163, 225, NULL, NULL, 'CONTAINERS FUMIGATED BY METHYL BROMIDE GAS B/L NO:HCLUDA 3210903058', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1852, 163, 226, NULL, NULL, 'CONTAINERS FUMIGATED  METHYL BROMIDE GAS B/L NO: HLCUDA-3210902921', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1853, 163, 227, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO: HLCUDA 3211004447', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1854, 163, 228, NULL, NULL, 'CONTAINER]CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO:HLCUDA-3210902932', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1855, 163, 229, NULL, NULL, 'CONTAINERS FUMIGATION BY METHYL BROMIDE GAS  B/L NO:HLCUDA- 3210902932', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1857, 163, 230, NULL, NULL, '5CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS  HLCUDA 3210902910', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1858, 163, 231, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCDA3210903723', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1859, 163, 232, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA 3210905104', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1863, 163, 235, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS HLCUDA 3211004564', '3', '50', '150', 'fumigation', '2022-01-29', NULL, NULL),
(1864, 163, 234, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS HLCUDA3211004586', '1', '50', '50', 'fumigation', '2022-01-29', NULL, NULL),
(1865, 163, 236, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS HLCUDA 3210905813', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1867, 163, 238, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS HLCUDA 3210905802', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1868, 163, 239, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS HLCUDA 3210903204', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1869, 163, 240, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 3210902892', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1870, 163, 241, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS HLCUDA 3211004469', '1', '50', '50', 'fumigation', '2022-01-29', NULL, NULL),
(1871, 163, 242, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS HLCUDA 3210902900', '9', '50', '450', 'fumigation', '2022-01-29', NULL, NULL),
(1872, 163, 243, NULL, NULL, '9 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS HLCUDA 3210903873', '9', '50', '450', 'fumigation', '2022-01-29', NULL, NULL),
(1873, 163, 244, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO :HLCUDA-321807558', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1874, 163, 245, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO: HLCUDA-321090428', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1875, 163, 246, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO: HLCUDA - 3210807474', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1876, 163, 247, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO:HLCUDAR-210201429', '3', '50', '150', 'fumigation', '2022-01-29', NULL, NULL),
(1877, 163, 248, NULL, NULL, 'CONTAINERS FUMIGATION USING  METHYL BROMIDE GAS B/L NO: HLCUDA-3210807284', '9', '50', '450', 'fumigation', '2022-01-29', NULL, NULL),
(1878, 163, 249, NULL, NULL, 'CONTAINERS FUMIGATION USING  METHYL BROMIDE GAS  B/L NO: HLCUDA-3210705090', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1879, 163, 250, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GASB/L NO : DAR 0129551', '2', '50', '100', 'fumigation', '2022-01-29', NULL, NULL),
(1880, 163, 251, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS B/L NO 3210705090', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1881, 163, 252, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0129551', '2', '50', '100', 'fumigation', '2022-01-29', NULL, NULL),
(1882, 163, 253, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA 3210705141', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1883, 163, 254, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA3210804550', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1884, 163, 255, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA 3210702947', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1885, 163, 256, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0128894', '2', '50', '100', 'fumigation', '2022-01-29', NULL, NULL),
(1886, 163, 257, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0128894', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1887, 163, 258, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR 0129622', '2', '50', '100', 'fumigation', '2022-01-29', NULL, NULL),
(1888, 163, 259, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR106393', '3', '50', '150', 'fumigation', '2022-01-29', NULL, NULL),
(1889, 163, 260, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0128893', '2', '50', '100', 'fumigation', '2022-01-29', NULL, NULL),
(1890, 163, 261, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA21020201389', '2', '50', '100', 'fumigation', '2022-01-29', NULL, NULL),
(1891, 163, 262, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA3211000490', '1', '50', '50', 'fumigation', '2022-01-29', NULL, NULL),
(1892, 163, 263, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA3210902943', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1893, 163, 264, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 3210807302', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1894, 163, 265, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA3210804538', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1895, 163, 266, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA 3210705196', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1896, 163, 267, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA 3210702958', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1897, 156, 268, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA 3210705130', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1898, 163, 269, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA 3210704372', '5', '50', '250', 'fumigation', '2022-01-29', NULL, NULL),
(1899, 163, 270, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO:HLCUDA-3210705185', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1900, 163, 271, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO :HLCUDA 3210804940', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1901, 163, 272, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO :HLCUDA-3210804560', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1902, 163, 273, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO: HLCUDA-3210807419', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1903, 163, 274, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA 3210804549', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1904, 163, 275, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO: HLCUDA-3210807408', '10', '50', '500', 'fumigation', '2022-01-29', NULL, NULL),
(1905, 163, 276, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NOHLCUBO 1211095586', '1', '50', '50', 'fumigation', '2022-01-29', NULL, NULL),
(1906, 163, 277, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA HLCUDA 5210903862', '4', '50', '200', 'fumigation', '2022-01-29', NULL, NULL),
(1907, 163, 278, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO HLCUDA 321902881', '8', '50', '400', 'fumigation', '2022-01-29', NULL, NULL),
(1908, 163, 279, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS 78307941', '20', '25000', '500000', 'fumigation', '2022-01-31', NULL, NULL),
(1909, 163, 279, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS  77914603', '20', '25000', '500000', 'fumigation', '2022-01-31', NULL, NULL),
(1910, 163, 279, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS 79291270', '16', '25000', '400000', 'fumigation', '2022-01-31', NULL, NULL),
(1913, 163, 280, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS TZNB-22-00013', '5', '25000', '125000', 'fumigation', '2022-01-31', NULL, NULL),
(1914, 163, 280, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS TZNB 22-00014', '3', '025000', '75000', 'fumigation', '2022-01-31', NULL, NULL),
(1915, 186, 281, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY ALUMINIUM PHOSPHIDE', '2', '29500', '59000', 'fumigation', '2022-01-31', NULL, NULL),
(1959, 155, NULL, 360, 'STUFFING', 'INK', '1', '15000', '15000', 'staffing', '2022-02-01', NULL, NULL),
(1960, 172, 200, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR0130629', '3', '149500', '448500', 'fumigation', '2022-01-29', NULL, NULL),
(2051, 160, 283, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2022-02-02', NULL, NULL),
(2052, 160, 284, NULL, NULL, '20 CONTAIENRS FUMIGATION USING BY METHYL BROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2022-02-02', NULL, NULL),
(2063, 193, 285, NULL, NULL, '1 CONTAINERS 20FT FUMIGATION USING BY PHOSPHINE GAS', '1', '20', '20', 'fumigation', '2022-02-02', NULL, NULL),
(2064, 193, 285, NULL, NULL, '1 CONTAINERS 40FT FUMIGATION USING BY PHOSPHINE GAS', '1', '35', '35', 'fumigation', '2022-02-02', NULL, NULL),
(2070, 193, 287, NULL, NULL, '1 SUPER DRY DESSICANT 1CATTON @12PCS', '1', '206500', '206500', 'fumigation', '2022-02-02', NULL, NULL),
(2098, 194, 288, NULL, NULL, '1CONTAINER (20FT) FUMIGATION  USING BY METHYL  BROMIDE GAS @45USD', '1', '103500', '103500', 'fumigation', '2022-02-04', NULL, NULL),
(2099, 194, 288, NULL, NULL, '1 CONTAINER20FT) FUMIGATION USING BY METHY BROMIDE GAS @45USD', '1', '0103500', '103500', 'fumigation', '2022-02-04', NULL, NULL),
(2100, 194, 288, NULL, NULL, '1 CONTAINER 20FT FUMIGATION USING BY PHOSTOXIN GAS @13USD', '1', '029900', '29900', 'fumigation', '2022-02-04', NULL, NULL),
(2101, 194, 288, NULL, NULL, '1 CONTAINER 40FT FUMIGATION USING BY PHOSTOXIN @18USD', '1', '041400', '41400', 'fumigation', '2022-02-04', NULL, NULL),
(2102, 194, 288, NULL, NULL, 'BULK FUMIGATION (PER TON) PHOTOSTOXIN @0.5USD', '1', '01150', '1150', 'fumigation', '2022-02-04', NULL, NULL),
(2103, 194, 288, NULL, NULL, 'BULK FUMIGATION (PER CUBIC METRE) METHYL BROMIDE', '1', '02760', '2760', 'fumigation', '2022-02-04', NULL, NULL),
(2104, 194, 288, NULL, NULL, 'SUPER DRY BAG/DESSICANT 1 CATTON @12PCS', '1', '0206500', '206500', 'fumigation', '2022-02-04', NULL, NULL),
(2105, 194, 288, NULL, NULL, 'LINING PAPER 20FT CONTAINER', '1', '050000', '50000', 'fumigation', '2022-02-04', NULL, NULL),
(2106, 194, 288, NULL, NULL, 'LINING PAPER 40FT CONTAINER', '1', '060000', '60000', 'fumigation', '2022-02-04', NULL, NULL),
(2107, 194, 288, NULL, NULL, 'LOADING/OFF LOADING (PER BAG)', '1', '0250', '250', 'fumigation', '2022-02-04', NULL, NULL),
(2108, 194, 288, NULL, NULL, 'DRYING PROCESS (FREEE)', '0', '0', '0', 'fumigation', '2022-02-04', NULL, NULL),
(2109, 194, 288, NULL, NULL, 'GLUE FOR LINING PAPER @ CONTAINER', '1', '0100000', '100000', 'fumigation', '2022-02-04', NULL, NULL),
(2110, 194, 288, NULL, NULL, '1CONTAINER (20FT) FUMIGATION  USING BY METHYL  BROMIDE GAS @45USD', '1', '103500', '103500', 'fumigation', '2022-02-04', NULL, NULL),
(2111, 194, 288, NULL, NULL, '1 CONTAINER20FT) FUMIGATION USING BY METHY BROMIDE GAS @45USD', '1', '0103500', '103500', 'fumigation', '2022-02-04', NULL, NULL),
(2112, 194, 288, NULL, NULL, '1 CONTAINER 20FT FUMIGATION USING BY PHOSTOXIN GAS @13USD', '1', '029900', '29900', 'fumigation', '2022-02-04', NULL, NULL),
(2113, 194, 288, NULL, NULL, '1 CONTAINER 40FT FUMIGATION USING BY PHOSTOXIN @18USD', '1', '041400', '41400', 'fumigation', '2022-02-04', NULL, NULL),
(2114, 194, 288, NULL, NULL, 'BULK FUMIGATION (PER TON) PHOTOSTOXIN @0.5USD', '1', '01150', '1150', 'fumigation', '2022-02-04', NULL, NULL),
(2115, 194, 288, NULL, NULL, 'BULK FUMIGATION (PER CUBIC METRE) METHYL BROMIDE', '1', '02760', '2760', 'fumigation', '2022-02-04', NULL, NULL),
(2116, 194, 288, NULL, NULL, 'SUPER DRY BAG/DESSICANT 1 CATTON @12PCS', '1', '0206500', '206500', 'fumigation', '2022-02-04', NULL, NULL),
(2117, 194, 288, NULL, NULL, 'LINING PAPER 20FT CONTAINER', '1', '050000', '50000', 'fumigation', '2022-02-04', NULL, NULL),
(2118, 194, 288, NULL, NULL, 'LINING PAPER 40FT CONTAINER', '1', '060000', '60000', 'fumigation', '2022-02-04', NULL, NULL),
(2119, 194, 288, NULL, NULL, 'LOADING/OFF LOADING (PER BAG)', '1', '0250', '250', 'fumigation', '2022-02-04', NULL, NULL),
(2120, 194, 288, NULL, NULL, 'DRYING PROCESS (FREEE)', '0', '0', '0', 'fumigation', '2022-02-04', NULL, NULL),
(2121, 194, 288, NULL, NULL, 'GLUE FOR LINING PAPER @ CONTAINER', '1', '0100000', '100000', 'fumigation', '2022-02-04', NULL, NULL),
(2134, 194, 289, NULL, NULL, 'FUMIGATION 20FT CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS @45USD', '1', '103500', '103500', 'fumigation', '2022-02-04', NULL, NULL),
(2135, 194, 289, NULL, NULL, '1 CONTAINER 40FT FUMIGATION BY METHYL BROMIDE GAS @ 45USD', '1', '103500', '103500', 'fumigation', '2022-02-04', NULL, NULL),
(2136, 194, 289, NULL, NULL, '1 CONTAINER 20FT FUMIGATION USING BY PHOSPHINE GAS @13USD', '1', '29900', '29900', 'fumigation', '2022-02-04', NULL, NULL),
(2137, 194, 289, NULL, NULL, '1 CONTAINER 40FT FUMIGATIONUSING BY PHOSTOXIN @18USD', '1', '41400', '41400', 'fumigation', '2022-02-04', NULL, NULL),
(2138, 194, 289, NULL, NULL, 'BULKFUMIGATION (PER TON) @0.5USD', '1', '1150', '1150', 'fumigation', '2022-02-04', NULL, NULL),
(2139, 194, 289, NULL, NULL, 'BULK FUMIGATION (PER CUBIC METRE) @1.2USD', '1', '2760', '2760', 'fumigation', '2022-02-04', NULL, NULL),
(2140, 194, 289, NULL, NULL, 'SUPER DRYDESSICANT 1 CATTON @12PCS', '1', '206500', '206500', 'fumigation', '2022-02-04', NULL, NULL),
(2141, 194, 289, NULL, NULL, 'LINING PAPER 20FT CONTAINER', '1', '50000', '50000', 'fumigation', '2022-02-04', NULL, NULL),
(2142, 194, 289, NULL, NULL, 'LINING PAPER 40FT CONTAINER', '1', '60000', '60000', 'fumigation', '2022-02-04', NULL, NULL),
(2143, 194, 289, NULL, NULL, 'LOADING/OF LOADING (PER BAG)', '1', '250', '250', 'fumigation', '2022-02-04', NULL, NULL),
(2144, 194, 289, NULL, NULL, 'GLUE FOR LINING PAPER @CONTAINER', '1', '15000', '15000', 'fumigation', '2022-02-04', NULL, NULL),
(2145, 194, 289, NULL, NULL, 'DRYING PROCESS (PER BAG) FREE', '0', '0', '0', 'fumigation', '2022-02-04', NULL, NULL),
(2146, 186, 290, NULL, NULL, '50 FUMIGATION USING BY ALUMINIUM PHOSPHIDE', '50', '29500', '1475000', 'fumigation', '2022-02-05', NULL, NULL),
(2166, 172, 292, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR 0130629', '3', '149500', '448500', 'fumigation', '2022-02-08', NULL, NULL),
(2167, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR 0130628', '2', '149500', '299000', 'fumigation', '2022-02-08', NULL, NULL),
(2168, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS 78637105', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2169, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR 0131515', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2170, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS 78145557', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2171, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR  0131492', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2172, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DARB00420800', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2173, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR 0131691', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2174, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR 01311686', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2175, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR 0131514', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2176, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DARB00475400', '10', '149500', '1495000', 'fumigation', '2022-02-08', NULL, NULL),
(2177, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR  013818', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2178, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR 01313223A', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2179, 172, 292, NULL, NULL, 'CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR 0133817', '5', '149500', '747500', 'fumigation', '2022-02-08', NULL, NULL),
(2180, 163, 293, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHY BROMIDE GAS BL/NO DAR0135137', '3', '50', '150', 'fumigation', '2022-02-15', NULL, NULL),
(2182, 163, 295, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY PMETHYL BROMIIDE GAS 37427438', '5', '50', '250', 'fumigation', '2022-02-15', NULL, NULL),
(2183, 193, 286, NULL, NULL, '1 CONTAINERS 20FT FUMIGATION USING BY METHYL BROMIDE GAS', '1', '50', '50', 'fumigation', '2022-02-02', NULL, NULL),
(2184, 193, 286, NULL, NULL, '1 CONTAINERS 40T FUMIGATION USING BY METHYL BROMIDE GAS', '1', '100', '100', 'fumigation', '2022-02-02', NULL, NULL),
(2186, 157, 296, NULL, NULL, 'To fumigate and treat  offices, Septic and sewage system and all compound. This targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '2500000', '2500000', 'fumigation', '2022-02-16', NULL, NULL),
(2190, 163, 294, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 79302709', '1', '50', '50', 'fumigation', '2022-02-15', NULL, NULL),
(2193, 187, 298, NULL, NULL, '17 CONTAQINERS FUMIGATION USING BY ALUMINIUM PHOSPHIDE', '17', '29500', '501500', 'fumigation', '2022-02-28', NULL, NULL),
(2197, 161, NULL, 361, 'STUFFING', 'STUFFING TANTALITE TRUCK NO: T678CDSTRAILER NO : T541DSVCONTAIER NO:TRHU 5673657TO CONTAIER NO: CSNU1994881 BOOKING NO COSU6326129450', '1', '115000', '115000', 'staffing', '2022-02-03', NULL, NULL),
(2199, 161, NULL, 362, 'LINING', 'STUFFING TANTALITE TRUCK NO: 937CWN TRAILER NO: T543DCV  CONTAINER NO CAIU8960967  TO CONTAINER NO TGHU3691156 BOOKING NO: 6326732650', '1', '115000', '115000', 'staffing', '2022-02-28', NULL, NULL),
(2201, 163, 300, NULL, NULL, '5 CONTAINERS FUIGATION USING BY METHYL BROMIDE GAS BL/NO 78716952', '5', '50', '250', 'fumigation', '2022-03-09', NULL, NULL),
(2202, 163, 301, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSHINE  GAS BL/NO 060DARIN2200078', '2', '25000', '50000', 'fumigation', '2022-03-09', NULL, NULL),
(2203, 163, 301, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO 060DARIN2200078', '2', '25000', '50000', 'fumigation', '2022-03-09', NULL, NULL),
(2204, 160, 302, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHLY BROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2022-03-09', NULL, NULL),
(2205, 161, NULL, 363, 'STUFFING', 'STUFFING TANTALITETRUCK NO: T937CWNTRAILER NO; T543DCYCONTAINER NO 3371621 TO CONTAINER NO OOLU15922940 BOOKING NO: 2693731710', '1', '115000', '115000', 'staffing', '2022-03-07', NULL, NULL),
(2210, 180, 303, NULL, NULL, '10 CARTONS OF SUPER DRY BAGS', '10', '73', '730', 'fumigation', '2022-03-11', NULL, NULL),
(2211, 180, 303, NULL, NULL, 'TRANSPOR COST FROM TANZANIA TO RWANDA FOR 10 CARTONS', '1', '108', '108', 'fumigation', '2022-03-11', NULL, NULL),
(2216, 177, 304, NULL, NULL, 'STUFFING AND OFFLOADING OF 1500 BAGS 2 CONTAINES @725,000 TSHS CARGO QUATZ FILE NO: 30003310', '2', '725000', '1450000', 'fumigation', '2022-03-21', NULL, NULL),
(2218, 163, 307, NULL, NULL, 'AFRAGRI 10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0135942', '10', '50', '500', 'fumigation', '2022-03-23', NULL, NULL),
(2219, 163, 308, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0135950', '5', '50', '250', 'fumigation', '2022-03-23', NULL, NULL),
(2259, 163, 309, NULL, NULL, 'AFRAGRI 10 CONTAINERS FUMIGATION USING BY METHYL BROIDE GAS BL/NO DAR0136125', '10', '50', '500', 'fumigation', '2022-03-24', NULL, NULL),
(2260, 163, 309, NULL, NULL, 'AFRAGRI 10 CONTAINERS FUMIGATION USING BY METHYL BROIDE GAS BL/NO DAR0136139', '10', '50', '500', 'fumigation', '2022-03-24', NULL, NULL),
(2261, 160, 310, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYLBROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2022-03-25', NULL, NULL),
(2262, 160, 311, NULL, NULL, '20CONTAINERS FUMIGATION USING BY MEHYL BROMIDE GAS', '20', '60000', '1200000', 'fumigation', '2022-03-25', NULL, NULL),
(2263, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 78637105', '5', '149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2264, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0131515', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2265, 172, 180, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR00475400', '10', '0149500', '1495000', 'fumigation', '2021-10-28', NULL, NULL),
(2266, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR00420800', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2267, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  78145557', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2268, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0131492', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2269, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0131323', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2270, 172, 180, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0130629', '3', '0149500', '448500', 'fumigation', '2021-10-28', NULL, NULL),
(2271, 172, 180, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR 0130628', '2', '0149500', '299000', 'fumigation', '2021-10-28', NULL, NULL),
(2272, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0131691', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2273, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0131514', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2274, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR013816', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2275, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 55996599', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2276, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 78637105', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2277, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0131686', '5', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2278, 172, 180, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO', '05', '0149500', '747500', 'fumigation', '2021-10-28', NULL, NULL),
(2279, 160, 312, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYLBROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2022-03-30', NULL, NULL),
(2280, 160, 313, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHLY BROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2022-04-01', NULL, NULL),
(2281, 163, 314, NULL, NULL, '15 FUMIGATION USING BY METHYLBROMIDE GAS BL/NO DAR0136351', '15', '50', '750', 'fumigation', '2022-04-04', NULL, NULL),
(2282, 157, 315, NULL, NULL, 'To fumigate and treat  offices, Septic and sewage system and all compound. This targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '2500000', '2500000', 'fumigation', '2022-04-05', NULL, NULL),
(2284, 163, 317, NULL, NULL, 'MAINSTREAM 6 CONTAINERS FUMIGATION USING BY METHYL BROMIDE BL/NO DAR0136119', '6', '50', '300', 'fumigation', '2022-04-05', NULL, NULL),
(2285, 157, 316, NULL, NULL, 'To fumigate and treat  offices, Septic and sewage system and all compound. This targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '2500000', '2500000', 'fumigation', '2022-04-05', NULL, NULL),
(2288, 200, 318, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (40FT & 20FT 35USD PER 1 CONTAINER )', '1', '35', '35', 'fumigation', '2022-04-08', NULL, NULL),
(2290, 160, 320, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYLBROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2022-04-08', NULL, NULL),
(2291, 198, 306, NULL, NULL, 'STUFFING AND OFFLOADING OF 1500 BAGS 2 CONTAINERS @725,000 TSH CARGO QUARTZ FILE NO: 30003310', '2', '725000', '1450000', 'fumigation', '2022-03-21', NULL, NULL),
(2292, 198, 321, NULL, NULL, 'STUFFING OF OFFLOADING OF 546 BAG 1 CONTAINER @725000TSH CARGO TRUCK NOT456DNC', '1', '725000', '725000', 'fumigation', '2022-04-12', NULL, NULL),
(2293, 191, 322, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS', '2', '35000', '70000', 'fumigation', '2022-04-12', NULL, NULL),
(2294, 160, 323, NULL, NULL, '20 containers fumigation using by methyl  bromide gas', '20', '50000', '1000000', 'fumigation', '2022-04-13', NULL, NULL);
INSERT INTO `invoice` (`id`, `company_id`, `invoice_fumigation`, `staff_id`, `title`, `description`, `qty`, `price`, `amt`, `staff_type`, `date_in`, `created_at`, `updated_at`) VALUES
(2295, 160, 324, NULL, NULL, '20 containers fumigation using by methyl  bromide gas', '20', '50000', '1000000', 'fumigation', '2022-04-13', NULL, NULL),
(2296, 201, 325, NULL, NULL, 'TO FUMIGATE 900PCS OF TIMBER BY USING METHYL BROMIDE GAS (MBR) TOTAL 500000', '1', '500000', '500000', 'fumigation', '2022-04-19', NULL, NULL),
(2297, 201, 325, NULL, NULL, 'TRANSPORT AND FOOD ALLOWANCE GO AND RETURN FOR 2 PERSON 200000', '2', '100000', '200000', 'fumigation', '2022-04-19', NULL, NULL),
(2298, 201, 325, NULL, NULL, 'LABOUR CHARGERS 50000TWO PERSON @ 100000', '2', '50000', '100000', 'fumigation', '2022-04-19', NULL, NULL),
(2300, 163, 327, NULL, NULL, '2 CONTAINERS DSK AGO', '2', '50', '100', 'fumigation', '2022-04-21', NULL, NULL),
(2302, 163, 329, NULL, NULL, 'AFRAGRI GLOBAL 20 CONTAINERS FUMIGATION UING BY PHOSPHINE GAS BL/NO 217823579', '20', '45000', '900000', 'fumigation', '2022-04-21', NULL, NULL),
(2305, 163, 328, NULL, NULL, 'DSK AGRO 2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0135684', '2', '50', '100', 'fumigation', '2022-04-21', NULL, NULL),
(2316, 199, 326, NULL, NULL, 'TO FUMIGATE VESSEL PRICE PER METRICK TON (MT) IS 1200 TSH METHOD USE IS(MBR)', '1', '1200', '1200', 'fumigation', '2022-04-19', NULL, NULL),
(2317, 191, 334, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS', '2', '35000', '70000', 'fumigation', '2022-04-27', NULL, NULL),
(2318, 191, 335, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOPHINE GAS', '1', '35000', '35000', 'fumigation', '2022-04-28', NULL, NULL),
(2321, 198, 331, NULL, NULL, 'CLEANING FOR 13BUNDLE @10000TSH CARGO TRUCK NO T619DYN  TO 379DYN', '12', '10000', '120000', 'fumigation', '2022-04-22', NULL, NULL),
(2322, 198, 330, NULL, NULL, 'CLEANING FOR  13BUNDLE  1 CONTAINER @10000TSH CARGO TRUCK NO T359DXB TO TRAILER T560DPP', '13', '10000', '130000', 'fumigation', '2022-04-22', NULL, NULL),
(2324, 198, 332, NULL, NULL, 'CLEARING FOR 16BUNDLE @10000TSH CARGO TRUCK NO T889DWL TO TRAILER NO T931CDK', '16', '10000', '160000', 'fumigation', '2022-04-22', NULL, NULL),
(2326, 198, 333, NULL, NULL, 'CLEARING FOR 12BUNDLE @10000TSH CARGO TRUCK NO T629DYN  / TRAILER NO T379DYN', '12', '10000', '120000', 'fumigation', '2022-04-22', NULL, NULL),
(2327, 198, 336, NULL, NULL, 'CLEANING FOR 18 BUNDLE @10000 TRUCK NO BBA52192M TRAILER NO BBA52172M', '18', '10000', '180000', 'fumigation', '2022-04-30', NULL, NULL),
(2328, 163, 338, NULL, NULL, 'AFRAGRI GLOBAL LIMITED 10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS. BL/ NO 11390956', '10', '45000', '450000', 'fumigation', '2022-05-02', NULL, NULL),
(2329, 202, 339, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS', '2', '50000', '100000', 'fumigation', '2022-05-02', NULL, NULL),
(2330, 160, 340, NULL, NULL, '20 CONTAINERS FUMIGATION USUNG BY METHYL BROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2022-05-05', NULL, NULL),
(2422, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO: 602851', '5', '23600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2423, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 602227', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2424, 154, 305, NULL, NULL, '6X20FT CONT. ARABICA COFFEE FILE NO 602260', '6', '023600', '141600', 'fumigation', '2022-03-21', NULL, NULL),
(2425, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 602261', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2426, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 602265', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2427, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 602846', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2428, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 602847', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2429, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186603577', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2430, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 918603746', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2431, 154, 305, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 9186603835', '3', '023600', '70800', 'fumigation', '2022-03-21', NULL, NULL),
(2432, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186604406', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2433, 154, 305, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 9186603966', '3', '023600', '70800', 'fumigation', '2022-03-21', NULL, NULL),
(2434, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186604047', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2435, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186604046', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2436, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186603965', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2437, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186603419', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2438, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186604412', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2439, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186604413', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2440, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186604410', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2441, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 9186604415', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2442, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 9186604409', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2443, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 9186604408', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2444, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 9186604884', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2445, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186604883', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2446, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186604880', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2447, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186604996', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2448, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186605003', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2449, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186605000', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2450, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186604882', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2451, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186605388', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2452, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186605390', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2453, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 9186605532', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2454, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 9186604407', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2455, 154, 305, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 9186604048', '3', '023600', '70800', 'fumigation', '2022-03-21', NULL, NULL),
(2456, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186605617', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2457, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186605842', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2458, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186605844', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2459, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186605845', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2460, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186605846', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2461, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 602849', '5', '0236000', '1180000', 'fumigation', '2022-03-21', NULL, NULL),
(2462, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 603398', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2463, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 603404', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2464, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 602269', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2465, 154, 305, NULL, NULL, '6X20FT CONT. ARABICA COFFEE FILE NO 603402', '6', '023600', '141600', 'fumigation', '2022-03-21', NULL, NULL),
(2466, 154, 305, NULL, NULL, '10X20FT CONT. ARABICA COFFEE FILE NO 602853', '10', '023600', '236000', 'fumigation', '2022-03-21', NULL, NULL),
(2467, 154, 305, NULL, NULL, '8X20FT CONT. ARABICA COFFEE FILE NO 603400', '8', '023600', '188800', 'fumigation', '2022-03-21', NULL, NULL),
(2468, 154, 305, NULL, NULL, '10X20FT CONT. ARABICA COFFEE FILE NO 603405', '10', '023600', '236000', 'fumigation', '2022-03-21', NULL, NULL),
(2469, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 604080', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2470, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 604082', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2471, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 604079', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2472, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 604081', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2473, 154, 305, NULL, NULL, '6X20FT CONT. ARABICA COFFEE FILE NO 604084', '6', '023600', '141600', 'fumigation', '2022-03-21', NULL, NULL),
(2474, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 604083', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2475, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 605242', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2476, 154, 305, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 604995', '3', '023600', '70800', 'fumigation', '2022-03-21', NULL, NULL),
(2477, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 603403', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2478, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 604823', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2479, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 606032', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2480, 154, 305, NULL, NULL, '6X20FT CONT. ARABICA COFFEE FILE NO 604086', '6', '023600', '141600', 'fumigation', '2022-03-21', NULL, NULL),
(2481, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 605245', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2482, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 604085', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2483, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 606814', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2484, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 606764', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2485, 154, 305, NULL, NULL, '3 X20FT CONT. ARABICA COFFEE FILE NO 9186605848', '3', '023600', '70800', 'fumigation', '2022-03-21', NULL, NULL),
(2486, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 9186605849', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2487, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 918660850', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2488, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 9186605854', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2489, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 91886605853', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2490, 154, 305, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 9186605996', '3', '023600', '70800', 'fumigation', '2022-03-21', NULL, NULL),
(2491, 154, 305, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 9186605997', '3', '023600', '70800', 'fumigation', '2022-03-21', NULL, NULL),
(2492, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 9186605990', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2493, 154, 305, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 9186605995', '3', '023600', '70800', 'fumigation', '2022-03-21', NULL, NULL),
(2494, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186605920', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2495, 154, 305, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 9186606155', '5', '023600', '118000', 'fumigation', '2022-03-21', NULL, NULL),
(2496, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186606266', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2497, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186606268', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2498, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 91866606267', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2499, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186606269', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2500, 154, 305, NULL, NULL, 'X20FT CONT. ARABICA COFFEE FILE NO 9186606272', '3', '23600', '70800', 'fumigation', '2022-03-21', NULL, NULL),
(2501, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186606602', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2502, 154, 305, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 9186606486', '3', '023600', '70800', 'fumigation', '2022-03-21', NULL, NULL),
(2503, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186606485', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2504, 154, 305, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 9186606696', '4', '023600', '94400', 'fumigation', '2022-03-21', NULL, NULL),
(2505, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186607610', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2506, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186607611', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2507, 154, 305, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 9186607784', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2508, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186608010', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2509, 154, 305, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 9186607987', '1', '23600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2510, 154, 305, NULL, NULL, '2 X20FT CONT. ARABICA COFFEE FILE NO 9186608239', '2', '023600', '47200', 'fumigation', '2022-03-21', NULL, NULL),
(2511, 154, 305, NULL, NULL, 'X20FT CONT. ARABICA COFFEE FILE NO 9186608556', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2512, 154, 305, NULL, NULL, 'X20FT CONT. ARABICA COFFEE FILE NO 9186608557', '1', '023600', '23600', 'fumigation', '2022-03-21', NULL, NULL),
(2518, 198, 342, NULL, NULL, 'RE STRAPPING/ CLEANING COST  @20000TSH CARGO TRUCK NO T817DYN/ T851DYB', '12', '20000', '240000', 'fumigation', '2022-05-13', NULL, NULL),
(2519, 198, 343, NULL, NULL, 'RE STRAPPING/ CLEANING COST  @20000TSH CARGO TRUCK NO T990DMB/ T163DNE', '15', '20000', '300000', 'fumigation', '2022-05-13', NULL, NULL),
(2522, 160, 344, NULL, NULL, '15CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (20ft)', '15', '50000', '750000', 'fumigation', '2022-05-19', NULL, NULL),
(2523, 160, 344, NULL, NULL, '16 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (40ft)', '16', '60000', '960000', 'fumigation', '2022-05-19', NULL, NULL),
(2525, 160, 346, NULL, NULL, '21 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '21', '50000', '1050000', 'fumigation', '2022-05-26', NULL, NULL),
(2529, 196, NULL, 366, 'STUFFING', 'fumigation', '15', '90000', '1350000', 'staffing', '2022-05-31', NULL, NULL),
(2530, 196, NULL, 365, 'LINING', 'containers', '1', '70000', '70000', 'staffing', '2022-05-31', NULL, NULL),
(2538, 199, 347, NULL, NULL, '1 containers fumigation using by methyl phosphine gas', '1', '70800', '70800', 'fumigation', '2022-05-31', NULL, NULL),
(2539, 199, 348, NULL, NULL, '1 container fumigation using by methyl bromide gas', '1', '106200', '106200', 'fumigation', '2022-05-31', NULL, NULL),
(2540, 160, 349, NULL, NULL, '13 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '13', '50000', '650000', 'fumigation', '2022-06-07', NULL, NULL),
(2544, 184, 351, NULL, NULL, '20 BOX SUPER DRY DESICCANT', '20', '206500', '4130000', 'fumigation', '2022-06-08', NULL, NULL),
(2546, 157, 350, NULL, NULL, 'To fumigate and treat  offices, Septic and sewage system and all compound. This targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '2500000', '2500000', 'fumigation', '2022-06-07', NULL, NULL),
(2549, 198, 345, NULL, NULL, 'RE STRAPPING/ CLEANING COST  @30000TSH CARGO TRUCK NO T591ASW/T754ART', '17', '30000', '510000', 'fumigation', '2022-05-25', NULL, NULL),
(2550, 198, 352, NULL, NULL, 'RE STRAPPING/ CLEANING COST  @30000TSH CARGO TRUCK NO T137AGK TRAILER NO T472ADB', '15', '30000', '450000', 'fumigation', '2022-06-10', NULL, NULL),
(2551, 198, 353, NULL, NULL, 'Rebaging 75 bags @ 20000 booking no DAR200036600', '75', '20000', '1500000', 'fumigation', '2022-06-13', NULL, NULL),
(2552, 163, 354, NULL, NULL, 'JRK 6 CONTAINERS FUMIGATION UING BY PHOSPHINE GAS BL/NO DAR200040800', '6', '45000', '270000', 'fumigation', '2022-06-22', NULL, NULL),
(2553, 163, 354, NULL, NULL, 'JRK 6 CONTAINERS FUMIGATION UING BY PHOSPHINE GAS BL/NO DAR200044900', '6', '45000', '270000', 'fumigation', '2022-06-22', NULL, NULL),
(2554, 160, 355, NULL, NULL, '9 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '9', '50000', '450000', 'fumigation', '2022-06-28', NULL, NULL),
(2555, 155, NULL, 367, NULL, 'KUSAFIRISHA PAER LINEAND SUPER DRY', '1', '175000', '175000', 'staffing', '2022-07-01', NULL, NULL),
(2557, 203, NULL, 368, 'FUMIGATION', 'WOODEN BOXES CONTAINING METALINSIDE', '1', '706380', '706380', 'staffing', '2022-07-08', NULL, NULL),
(2560, 163, 356, NULL, NULL, 'AFRAGRI 10 CONTAINERS FUMIGATION USING METHYL BROMIDE GAS 25013258', '10', '50', '500', 'fumigation', '2022-07-06', NULL, NULL),
(2562, 198, 358, NULL, NULL, 'STUFFING INSPECTION 5 CONTAINERS 1@1,200,000 BL/NODAR200036600', '5', '1200000', '6000000', 'fumigation', '2022-07-14', NULL, NULL),
(2563, 163, 359, NULL, NULL, '6 CONTAINERS FUMIGATION USING BY PHOSHINE GAS BL/NO DAR200049301', '6', '35000', '210000', 'fumigation', '2022-07-14', NULL, NULL),
(2564, 163, 359, NULL, NULL, '6 CONTAINERS FUMIGATION USING BY PHOSHINE GAS BL/NO \r\nDAR200049300', '6', '35000', '210000', 'fumigation', '2022-07-14', NULL, NULL),
(2565, 163, 360, NULL, NULL, 'JRK 7 CONTAINERS FUMIGATION USING BY PHOSHINE GAS BL/NO GOSUDAR0000794', '7', '35000', '245000', 'fumigation', '2022-07-14', NULL, NULL),
(2566, 163, 360, NULL, NULL, 'JRK 7 CONTAINERS FUMIGATION USING BY PHOSHINE GAS BL/NO GOSUDAR000801', '7', '35000', '245000', 'fumigation', '2022-07-14', NULL, NULL),
(2567, 163, 360, NULL, NULL, 'JRK 6 CONTAINERS FUMIGATION USING BY PHOSHINE GAS BL/NO DAR200056200', '6', '35000', '210000', 'fumigation', '2022-07-14', NULL, NULL),
(2568, 163, 360, NULL, NULL, 'JRK 4 CONTAINERS FUMIGATION USING BY PHOSHINE GAS BL/NO DAR200056400', '4', '35000', '140000', 'fumigation', '2022-07-14', NULL, NULL),
(2569, 163, 360, NULL, NULL, 'JRK 4 CONTAINERS FUMIGATION USING BY PHOSHINE GAS BL/NO  DAR200056500', '4', '35000', '140000', 'fumigation', '2022-07-14', NULL, NULL),
(2570, 198, 357, NULL, NULL, 'STUFFING AND  OFFLOADING OF BAGS 546 BL/NO DAR200052800 TRUCK T866DJZ TRAILER NO   T693BPZ', '1', '725000', '725000', 'fumigation', '2022-07-13', NULL, NULL),
(2572, 205, 362, NULL, NULL, '7 PACKAGERS DRUM FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 004/2022', '1', '70000', '70000', 'fumigation', '2022-07-22', NULL, NULL),
(2573, 205, 362, NULL, NULL, '7 PACKAGERS DRUM FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 005/2022', '1', '70000', '70000', 'fumigation', '2022-07-22', NULL, NULL),
(2574, 205, 363, NULL, NULL, '7 PACKAGERS DRUM FUMIGATION USING BY METHYL BROMIDE GAS', '1', '70000', '70000', 'fumigation', '2022-07-22', NULL, NULL),
(2575, 160, 364, NULL, NULL, '27 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '27', '50000', '1350000', 'fumigation', '2022-07-22', NULL, NULL),
(2576, 163, 365, NULL, NULL, 'AFRAGRI 10 FUMIGATION USING BY METHYL BROMIDE GAS BL/NO 22435264', '10', '50', '500', 'fumigation', '2022-07-22', NULL, NULL),
(2578, 161, NULL, 341, 'STUFFING', 'STUFFING COFFEE BAGSTO BAGSTRUCK NO E2656ATRAILER NO T1409CONTAINER NO SUDU 7371070 TO CONTAINER NO MSMU 8924584BOOKING NO EBKG02148401', '390', '325', '126750', 'staffing', '2021-11-20', NULL, NULL),
(2579, 161, NULL, 341, 'LINING', 'LINING AND MATERIAL LABOR CHARGERS PER  (40FT)', '1', '120000', '120000', 'staffing', '2021-11-20', NULL, NULL),
(2587, 154, 368, NULL, NULL, '8 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '8', '50', '400', 'fumigation', '2022-07-28', NULL, NULL),
(2592, 154, 370, NULL, NULL, 'To fumigate  Go down, Septic and sewage system and all compound. This targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects. for each one godown is@500000', '3', '500000', '1500000', 'fumigation', '2022-07-29', NULL, NULL),
(2593, 163, 371, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO25812825', '5', '50', '250', 'fumigation', '2022-08-01', NULL, NULL),
(2594, 160, 372, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '20', '50000', '1000000', 'fumigation', '2022-08-02', NULL, NULL),
(2595, 160, 373, NULL, NULL, '2 CONTAINERS FUMIGATIN USING BY METHYL BROMIDE GAS', '2', '50000', '100000', 'fumigation', '2022-08-02', NULL, NULL),
(2598, 163, 374, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR200070700', '4', '35000', '140000', 'fumigation', '2022-08-04', NULL, NULL),
(2599, 163, 374, NULL, NULL, 'JRK 3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS  BL/NO DAR200074400', '3', '35000', '105000', 'fumigation', '2022-08-04', NULL, NULL),
(2600, 163, 374, NULL, NULL, 'JRK 6 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS  BL/NO DAR200070800', '6', '035000', '210000', 'fumigation', '2022-08-04', NULL, NULL),
(2601, 160, 375, NULL, NULL, '16 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS.', '16', '50000', '800000', 'fumigation', '2022-08-09', NULL, NULL),
(2602, 160, 376, NULL, NULL, '16 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS.', '16', '50000', '800000', 'fumigation', '2022-08-09', NULL, NULL),
(2604, 207, 377, NULL, NULL, '1 BOX SUPER DRY DESICCANT @TSH 180,000', '4', '180000', '720000', 'fumigation', '2022-08-10', NULL, NULL),
(2611, 208, 378, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS @70USD', '1', '70', '70', 'fumigation', '2022-08-11', NULL, NULL),
(2612, 208, 378, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS@50USD', '1', '50', '50', 'fumigation', '2022-08-11', NULL, NULL),
(2613, 208, 378, NULL, NULL, '1 PHYTOSANITARY FOR DOCOMENT IS @100USD', '1', '100', '100', 'fumigation', '2022-08-11', NULL, NULL),
(2620, 160, 380, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYLBROMIDE GAS', '5', '50000', '250000', 'fumigation', '2022-08-22', NULL, NULL),
(2622, 182, 381, NULL, NULL, 'CONSULTATION FEE FOR CASUAL LABOUR', '1', '8735044.4', '8735044.4', 'fumigation', '2022-08-22', NULL, NULL),
(2623, 182, 379, NULL, NULL, 'To fumigate  Go down, the Septic and sewage system, and all compounds. This targeted to destroy/ kill all insects i.e cockroaches, mosquitoes, and all other domestic insects. For each go down. plus transport and accommodation @tshs 2,800,000', '1', '1800000', '1800000', 'fumigation', '2022-08-18', NULL, NULL),
(2624, 182, 382, NULL, NULL, 'CONSULTATION FEE FOR CASUAL LABOUR', '1', '8341703.2', '8341703.2', 'fumigation', '2022-08-25', NULL, NULL),
(2628, 163, 383, NULL, NULL, 'JRK 1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO DAR200076400', '1', '35000', '35000', 'fumigation', '2022-08-26', NULL, NULL),
(2629, 163, 383, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO DAR20007500', '5', '035000', '175000', 'fumigation', '2022-08-26', NULL, NULL),
(2630, 163, 383, NULL, NULL, 'JRK 1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO  DAR200074800', '4', '035000', '140000', 'fumigation', '2022-08-26', NULL, NULL),
(2631, 163, 139, NULL, NULL, 'JRK AFRICA TRADING LTD 5 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NUMBER 58978199', '5', '50', '250', 'fumigation', '2021-06-09', NULL, NULL),
(2633, 163, 384, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS DAR0137740', '5', '50', '250', 'fumigation', '2022-08-26', NULL, NULL),
(2635, 184, 385, NULL, NULL, '10 BOX SUPER DRY DESICCANT', '10', '206500', '2065000', 'fumigation', '2022-08-27', NULL, NULL),
(2644, 163, 386, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0137736', '10', '50', '500', 'fumigation', '2022-08-31', NULL, NULL),
(2645, 163, 386, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL  BROMIDE GAS BL/NO DAR0137737', '10', '50', '500', 'fumigation', '2022-08-31', NULL, NULL),
(2646, 163, 386, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0137933A', '10', '50', '500', 'fumigation', '2022-08-31', NULL, NULL),
(2647, 163, 386, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0137933', '10', '50', '500', 'fumigation', '2022-08-31', NULL, NULL),
(2650, 182, 387, NULL, NULL, 'CONSULTATION FEE FOR CASUAL LABOUR', '1', '9224532.00', '9224532', 'fumigation', '2022-09-02', NULL, NULL),
(2652, 163, 388, NULL, NULL, '10 CONTAINER DESSICANT DRY BAGS @ TSH 182900', '10', '182900', '1829000', 'fumigation', '2022-09-06', NULL, NULL),
(2678, 163, 389, NULL, NULL, 'JRK 10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0138687', '15', '135700', '2035500', 'fumigation', '2022-09-08', NULL, NULL),
(2679, 163, 389, NULL, NULL, 'JRK 10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0138297', '10', '135700', '1357000', 'fumigation', '2022-09-08', NULL, NULL),
(2680, 163, 389, NULL, NULL, 'JRK 10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0138299', '10', '135700', '1357000', 'fumigation', '2022-09-08', NULL, NULL),
(2681, 163, 389, NULL, NULL, 'JRK 10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NODAR0138688', '10', '135700', '1357000', 'fumigation', '2022-09-08', NULL, NULL),
(2682, 163, 389, NULL, NULL, 'JRK 10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0138298', '10', '135700', '1357000', 'fumigation', '2022-09-08', NULL, NULL),
(2683, 163, 391, NULL, NULL, '10 CONTAINER DESSICANT DRY BAGS @ TSH 182900', '10', '182900', '1829000', 'fumigation', '2022-09-12', NULL, NULL),
(2692, 163, 367, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO DAR200065200', '4', '50', '200', 'fumigation', '2022-07-27', NULL, NULL),
(2693, 163, 367, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO DAR200065300', '4', '50', '200', 'fumigation', '2022-07-27', NULL, NULL),
(2694, 163, 393, NULL, NULL, '10 CONTAINER DESSICANT DRY BAGS', '10', '182900', '1829000', 'fumigation', '2022-09-19', NULL, NULL),
(2695, 160, 394, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYLBROMIDE GAS', '3', '50000', '150000', 'fumigation', '2022-09-21', NULL, NULL),
(2696, 160, 395, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYLBROMIDE GAS', '3', '50000', '150000', 'fumigation', '2022-09-21', NULL, NULL),
(2699, 205, 390, NULL, NULL, '4 PACKAGERS / DRUMS & PALLETS FUMIGATION USING BY METHYL BROMIDE GAS', '4', '85000', '340000', 'fumigation', '2022-09-08', NULL, NULL),
(2700, 160, 396, NULL, NULL, '15 CONTAINERS FUMIGATION USING BY METHYLBROMIDE GAS', '15', '50000', '750000', 'fumigation', '2022-09-28', NULL, NULL),
(2717, 191, 398, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS', '1', '35000', '35000', 'fumigation', '2022-09-30', NULL, NULL),
(2718, 191, 398, NULL, NULL, 'DELIVERY FEE/DOCUMENT', '1', '4000', '4000', 'fumigation', '2022-09-30', NULL, NULL),
(2726, 209, 399, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY  PHOSPHINE GAS', '10', '30000', '300000', 'fumigation', '2022-10-03', NULL, NULL),
(2727, 209, 399, NULL, NULL, '4 CONTAINER DESSICANT', '4', '165000', '660000', 'fumigation', '2022-10-03', NULL, NULL),
(2728, 209, 399, NULL, NULL, 'PAPER LINING', '10', '40000', '400000', 'fumigation', '2022-10-03', NULL, NULL),
(2729, 209, 399, NULL, NULL, 'VAT', '1', '0244800', '244800', 'fumigation', '2022-10-03', NULL, NULL),
(2730, 163, 401, NULL, NULL, '10 CONTAINER DESSICANT DRY BAGS', '10', '182900', '1829000', 'fumigation', '2022-10-06', NULL, NULL),
(2732, 205, 402, NULL, NULL, '2 PACKAGERS /PALLETS FUMIGATION USING BY METHYL BROMIDE GAS', '2', '100300', '200600', 'fumigation', '2022-10-07', NULL, NULL),
(2733, 160, 403, NULL, NULL, '28 CONTAINERS FUMIGATION USING BY MRTHY BROMIDE GAS', '28', '50000', '1400000', 'fumigation', '2022-10-10', NULL, NULL),
(2734, 157, 404, NULL, NULL, 'To fumigate and treat  offices, Septic and sewage system and all compound. This targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '2600000', '2600000', 'fumigation', '2022-10-11', NULL, NULL),
(2739, 186, 405, NULL, NULL, '1 CONTAINERS FUMIGATION USING USING BY ALUMINIUM PHOSPHIDE GAS (40ft)', '1', '29500', '29500', 'fumigation', '2022-10-15', NULL, NULL),
(2740, 186, 405, NULL, NULL, 'CONTAINERS DESSICANT (DRY BAG)', '1', '160000', '160000', 'fumigation', '2022-10-15', NULL, NULL),
(2741, 186, 406, NULL, NULL, '1 CONTAINERS FUMIGATION USING USING BY ALUMINIUM PHOSPHIDE GAS (20ft)', '1', '23600', '23600', 'fumigation', '2022-10-15', NULL, NULL),
(2742, 186, 406, NULL, NULL, 'CONTAINER DESSICANT (DRY BAG)', '1', '160000', '160000', 'fumigation', '2022-10-15', NULL, NULL),
(2744, 210, 408, NULL, NULL, 'containers fumigation using by phosphine gas', '1', '80000', '80000', 'fumigation', '2022-10-17', NULL, NULL),
(2746, 163, 407, NULL, NULL, '20 CONTAINERS DESSICANT (DRY BAG)', '20', '182900', '3658000', 'fumigation', '2022-10-15', NULL, NULL),
(2844, 163, 411, NULL, NULL, '10 CONTAINERSFUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0139134A', '10', '135700', '1357000', 'fumigation', '2022-10-24', NULL, NULL),
(2845, 163, 411, NULL, NULL, '10 CONTAINERSFUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0139135A', '10', '135700', '1357000', 'fumigation', '2022-10-24', NULL, NULL),
(2846, 163, 411, NULL, NULL, '10 CONTAINERSFUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0139192', '10', '135700', '1357000', 'fumigation', '2022-10-24', NULL, NULL),
(2847, 163, 411, NULL, NULL, '10 CONTAINERSFUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0139191', '10', '135700', '1357000', 'fumigation', '2022-10-24', NULL, NULL),
(2848, 154, 412, NULL, NULL, '3 CONTAINERS DESSICANT (DRY BAGS)', '3', '194700', '584100', 'fumigation', '2022-10-26', NULL, NULL),
(2850, 154, 413, NULL, NULL, '3 CONTAINERS DESSICANT (DRY BAGS)', '3', '194700', '584100', 'fumigation', '2022-10-26', NULL, NULL),
(2951, 200, 409, NULL, NULL, '15 CONTAINERS FUMIGATION USING BY METHYL BROMIDE (MERATUS JAWAWIJAYA)', '15', '45000', '675000', 'fumigation', '2022-10-24', NULL, NULL),
(2952, 200, 414, NULL, NULL, '50 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS(MSC SILVER 11 V. JL2337R)', '50', '45000', '2250000', 'fumigation', '2022-10-28', NULL, NULL),
(2953, 200, 415, NULL, NULL, '50 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS(MSC SILVER 11 V. JL2337R)', '50', '45000', '2250000', 'fumigation', '2022-10-28', NULL, NULL),
(2954, 200, 416, NULL, NULL, '116 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (ESL ASANTE)', '116', '45000', '5220000', 'fumigation', '2022-10-28', NULL, NULL),
(2955, 200, 417, NULL, NULL, '50 CONTAINERS FUMIGATION USING BY METHYL BROMIDE (NORTHERN VIGOUR)', '50', '45000', '2250000', 'fumigation', '2022-10-28', NULL, NULL),
(2956, 200, 418, NULL, NULL, '90 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (MOMBASA EXPRESS)', '90', '45000', '4050000', 'fumigation', '2022-10-28', NULL, NULL),
(2957, 200, 419, NULL, NULL, '90 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (MOMBASA EXPRESS)', '90', '45000', '4050000', 'fumigation', '2022-10-28', NULL, NULL),
(2958, 200, 420, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (SAFRAMINE NGAMI)', '10', '45000', '450000', 'fumigation', '2022-10-28', NULL, NULL),
(2961, 200, 421, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (SPLISH  NINGSIH)', '8', '25000', '200000', 'fumigation', '2022-10-28', NULL, NULL),
(2962, 209, 422, NULL, NULL, '4 SUPER DRY DESSICANT', '4', '194700', '778800', 'fumigation', '2022-11-01', NULL, NULL),
(2963, 209, 422, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY ALUMINIUM PHOSPHINE', '20', '35400', '708000', 'fumigation', '2022-11-01', NULL, NULL),
(2964, 200, 423, NULL, NULL, '45 FUMIGATION USING BY METHYL BROMIDE GAS (AS NOLA)', '45', '45000', '2025000', 'fumigation', '2022-11-01', NULL, NULL),
(2966, 200, 424, NULL, NULL, '10 containers fumigation using by Methyl bromide  Gas (SAFMARINE NYASA)', '10', '45000', '450000', 'fumigation', '2022-11-04', NULL, NULL),
(2968, 200, 425, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (ELS ASANTE/SEAFORTH GENERAL)', '20', '45000', '900000', 'fumigation', '2022-11-08', NULL, NULL),
(2969, 163, 426, NULL, NULL, '10 CONTAINER DESSICANT', '10', '182900', '1829000', 'fumigation', '2022-11-09', NULL, NULL),
(2970, 163, 427, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0138669B', '2', '135700', '271400', 'fumigation', '2022-11-09', NULL, NULL),
(2971, 163, 428, NULL, NULL, '11 CONTAINERS FUMIGATION USING BY MAGTOXIN DEGESCH PLATE BL/NO TZNB2200169', '11', '70800', '778800', 'fumigation', '2022-11-09', NULL, NULL),
(2972, 163, 428, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY MAGTOXIN DEGESCH PLATE BL/NO TZNB 2200167', '1', '70800', '70800', 'fumigation', '2022-11-09', NULL, NULL),
(2977, 200, 430, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (MERATUS JAWAWIJAYA)', '20', '45000', '900000', 'fumigation', '2022-11-14', NULL, NULL),
(2978, 163, 431, NULL, NULL, '25 Container Dessicant', '25', '182900', '4572500', 'fumigation', '2022-11-14', NULL, NULL),
(2982, 200, 434, NULL, NULL, 'CONTAINER DESSICANT (DRY BAGS)', '7', '160000', '1120000', 'fumigation', '2022-11-17', NULL, NULL),
(2983, 209, 392, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS', '20', '30000', '600000', 'fumigation', '2022-09-15', NULL, NULL),
(2984, 209, 392, NULL, NULL, '6 SUPER DRY DESICCANT', '6', '165000', '990000', 'fumigation', '2022-09-15', NULL, NULL),
(2985, 209, 392, NULL, NULL, 'LINING PAPER', '20', '40000', '800000', 'fumigation', '2022-09-15', NULL, NULL),
(2986, 209, 392, NULL, NULL, 'LINING', '6', '7000', '42000', 'fumigation', '2022-09-15', NULL, NULL),
(2987, 209, 392, NULL, NULL, 'GLUE', '1', '10000', '10000', 'fumigation', '2022-09-15', NULL, NULL),
(2988, 209, 392, NULL, NULL, 'VAT', '1', '356400', '356400', 'fumigation', '2022-09-15', NULL, NULL),
(2989, 209, 432, NULL, NULL, '16 PAPER LINING', '16', '47200', '755200', 'fumigation', '2022-11-15', NULL, NULL),
(3012, 200, 438, NULL, NULL, '8 CONTIANERS FUMIGATION USING PHOSPHINE GAS MAERSK JALAN /NYOTA TANZANIA LTD', '8', '25000', '200000', 'fumigation', '2022-11-23', NULL, NULL),
(3023, 163, 439, NULL, NULL, '20 CONTAINER DESSICANT (DRY BAGS)', '20', '182900', '3658000', 'fumigation', '2022-11-23', NULL, NULL),
(3025, 163, 441, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0139200', '10', '135700', '1357000', 'fumigation', '2022-11-23', NULL, NULL),
(3026, 163, 441, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0139135B', '10', '135700', '1357000', 'fumigation', '2022-11-23', NULL, NULL),
(3027, 163, 433, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY  PHOSHINE GAS DAR0139066', '10', '29500', '295000', 'fumigation', '2022-11-16', NULL, NULL),
(3028, 163, 433, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY PHOSHINE GAS  DAR0139065', '10', '29500', '295000', 'fumigation', '2022-11-16', NULL, NULL),
(3061, 209, 437, NULL, NULL, '181 PLATES FUMIGATED USING BY METHYLY BROMIDE GAS.', '1', '150000', '150000', 'fumigation', '2022-11-23', NULL, NULL),
(3062, 209, 436, NULL, NULL, 'LINING PAPER 46 PCS X 40FT ( FULL CONTAINER)', '46', '47200', '2171200', 'fumigation', '2022-11-23', NULL, NULL),
(3063, 209, 436, NULL, NULL, '10 BOXES SUPER DRY DESSICANT', '10', '194700', '1947000', 'fumigation', '2022-11-23', NULL, NULL),
(3064, 209, 436, NULL, NULL, '30X40CONTAINERS FUMIGATED USING BY PHOSPHINE GAS', '30', '35400', '1062000', 'fumigation', '2022-11-23', NULL, NULL),
(3065, 209, 436, NULL, NULL, 'LABOUR CHARGE (6X40FT) PAPER LINING', '6', '7000', '42000', 'fumigation', '2022-11-23', NULL, NULL),
(3066, 209, 436, NULL, NULL, 'GLUE', '1', '010000', '10000', 'fumigation', '2022-11-23', NULL, NULL),
(3067, 163, 440, NULL, NULL, '2BOXES AFRAGRI GLOBAL LTD  CONTAINER DESSICANT (BL/NO DAR0139194)', '2', '182900', '365800', 'fumigation', '2022-11-23', NULL, NULL),
(3068, 163, 440, NULL, NULL, '2BOXES  AFRAGRI GLOBAL LTD CONTAINER DESSICANT  (BL/NO DAR0139065)', '2', '0182900', '365800', 'fumigation', '2022-11-23', NULL, NULL),
(3069, 163, 440, NULL, NULL, '2BOXES AFRAGRI GLOBAL LTD CONTAINER DESSICANT  (BL/NO DAR0139066)', '2', '0182900', '365800', 'fumigation', '2022-11-23', NULL, NULL),
(3070, 163, 440, NULL, NULL, '2BOXES AFRAGRI GLOBAL LTD CONTAINER DESSICANT  (BL/NO DA0139196)', '2', '0182900', '365800', 'fumigation', '2022-11-23', NULL, NULL),
(3071, 163, 440, NULL, NULL, '2BOXES  AFRAGRI GLOBAL LTD CONTAINER DESSICANT  (BL/NO DAR0138574)', '2', '0182900', '365800', 'fumigation', '2022-11-23', NULL, NULL),
(3072, 163, 440, NULL, NULL, '8BOXES UDHAYA AGRO LTD CONTAINER DESSICANT  (BL/NO DAR200121100', '8', '0182900', '1463200', 'fumigation', '2022-11-23', NULL, NULL),
(3073, 163, 440, NULL, NULL, '2BOXES AFRAGRI GLOBAL LTD CONTAINER DESSICANT  (BL/NO DAR0139135B)', '2', '0182900', '365800', 'fumigation', '2022-11-23', NULL, NULL),
(3075, 209, 435, NULL, NULL, '10 BOXES  SUPER DRY  DESSICANT', '10', '194700', '1947000', 'fumigation', '2022-11-23', NULL, NULL),
(3076, 209, 442, NULL, NULL, '10X40(FT) CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 221311010', '10', '34500', '345000', 'fumigation', '2022-11-23', NULL, NULL),
(3078, 209, 444, NULL, NULL, '10X40FTCONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 221584630', '10', '35400', '354000', 'fumigation', '2022-11-23', NULL, NULL),
(3079, 209, 445, NULL, NULL, '10X40FTCONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NOEBKG04191144', '10', '35400', '354000', 'fumigation', '2022-11-23', NULL, NULL),
(3080, 209, 443, NULL, NULL, '10X40(FT) CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 221311010', '10', '35400', '354000', 'fumigation', '2022-11-23', NULL, NULL),
(3083, 200, 447, NULL, NULL, 'CONTAINER  DESSICANT (DRY  BAGS)', '7', '150000', '1050000', 'fumigation', '2022-11-24', NULL, NULL),
(3084, 200, 448, NULL, NULL, 'PAPER  LINING', '8', '60000', '480000', 'fumigation', '2022-11-24', NULL, NULL),
(3085, 200, 449, NULL, NULL, 'CONTAINER  DESICANT (DRY BAGS)', '10', '150000', '1500000', 'fumigation', '2022-11-24', NULL, NULL),
(3086, 200, 450, NULL, NULL, 'PAPER LINING', '8', '600000', '4800000', 'fumigation', '2022-11-24', NULL, NULL),
(3087, 200, 451, NULL, NULL, 'PAPER  LINING', '8', '60000', '480000', 'fumigation', '2022-11-24', NULL, NULL),
(3088, 200, 453, NULL, NULL, 'CONTAINER  DESSICANT  (DRY BAGS)', '7', '150000', '1050000', 'fumigation', '2022-11-24', NULL, NULL),
(3090, 163, 446, NULL, NULL, 'FUMIGATION 18X40\'CONTAINERS(PHOSPHINEGAS) BOOKINGNUMBERDAR0139136', '18', '29500', '531000', 'fumigation', '2022-11-24', NULL, NULL),
(3091, 163, 446, NULL, NULL, 'FUMIGATION  08X40\'CONTAINERS   (PHOSPHINE GAS)  BOOKINGNUMBER 99999688', '8', '29500', '236000', 'fumigation', '2022-11-24', NULL, NULL),
(3092, 163, 455, NULL, NULL, '8 BOXES UDHAYA AGRO TZ LTD.  CONTAINER DESSICANT (BOOKING NO DAR2001221101)', '8', '182900', '1463200', 'fumigation', '2022-11-25', NULL, NULL),
(3093, 163, 455, NULL, NULL, '8 BOXES AFRAGR GLOBAL  LTD.  CONTAINER DESSICANT (BOOKING NO DAR200124100  )', '8', '182900', '1463200', 'fumigation', '2022-11-25', NULL, NULL),
(3094, 163, 455, NULL, NULL, '8 BOXES AFRAGR GLOBAL LTD.   CONTAINER DESSICANT (BOOKING NO DAR200124000)', '8', '182900', '1463200', 'fumigation', '2022-11-25', NULL, NULL),
(3095, 163, 455, NULL, NULL, '4 BOXES AFRAGRI GLOBAL LTD. CONTAINER DESSICANT (BOOKING NO DAR0139198', '4', '182900', '731600', 'fumigation', '2022-11-25', NULL, NULL),
(3096, 163, 455, NULL, NULL, '4 BOXES AFRAGRI GLOBAL LTD. CONTAINER DESSICANT ( BOOKING NO DAR0139199)', '4', '182900', '731600', 'fumigation', '2022-11-25', NULL, NULL),
(3101, 163, 458, NULL, NULL, 'FUMIGATION  (PHOSPHINE GAS)  \r\nBOOKING NUMBER DAR200121100', '15', '29500', '442500', 'fumigation', '2022-11-28', NULL, NULL),
(3102, 163, 458, NULL, NULL, 'FUMIGATION  (PHOSPHINE GAS)  \r\nBOOKING NUMBER DAR200121101', '15', '29500', '442500', 'fumigation', '2022-11-28', NULL, NULL),
(3105, 200, 456, NULL, NULL, 'FUMIGATION4X40\'  CONTAINERS  (PHOSPHINE GAS)BOOKING NUMBER   914679745 (MAERSK PATRAS /NYOTA TANZANIA LTD)', '4', '25000', '100000', 'fumigation', '2022-11-28', NULL, NULL),
(3106, 200, 456, NULL, NULL, 'FUMIGATION4X40\'  CONTAINERS  (PHOSPHINE GAS)BOOKING NUMBER  914679743 (MAERSK PATRAS /NYOTA TANZANIA LTD)', '4', '25000', '100000', 'fumigation', '2022-11-28', NULL, NULL),
(3110, 161, NULL, 369, 'CASUAL LABOUR', 'Charges for casuals and cleaners along Kilwa RD and at FFT Mbagala warehouse Bulk Sulphur granules. Assisting in bagging of suphur / 1 day', '1', '25000', '25000', 'staffing', '2022-11-29', NULL, NULL),
(3111, 163, 460, NULL, NULL, 'FUMIGATION BY (METHYL BROMIDE GAS)10X40\' \r\nBOOKING NUMBER  DAR0139199', '10', '135700', '1357000', 'fumigation', '2022-11-30', NULL, NULL),
(3112, 163, 460, NULL, NULL, 'FUMIGATION BY (METHYL BROMIDE GAS)10X40\' \r\nBOOKING NUMBER  DAR0139196', '10', '135700', '1357000', 'fumigation', '2022-11-30', NULL, NULL),
(3113, 163, 460, NULL, NULL, 'FUMIGATION BY (METHYL BROMIDE GAS)10X40\' \r\nBOOKING NUMBER  DAR0139198', '10', '135700', '1357000', 'fumigation', '2022-11-30', NULL, NULL),
(3114, 163, 460, NULL, NULL, 'FUMIGATION BY (METHYL BROMIDE GAS)10X40\' \r\nBOOKING NUMBER  DAR0138574', '10', '135700', '1357000', 'fumigation', '2022-11-30', NULL, NULL),
(3115, 200, 461, NULL, NULL, '5 CONTAINER DESSICANT (DRY BAGS)', '5', '115000', '575000', 'fumigation', '2022-12-01', NULL, NULL),
(3116, 163, 462, NULL, NULL, '5 UDHAYA  AGRO TZ LTD CONTAINER DESSICANT (BOOKING NO DAR200123700)', '5', '182900', '914500', 'fumigation', '2022-12-01', NULL, NULL),
(3117, 163, 462, NULL, NULL, '6 PARAMOUNT EXIM LTD CONTAINER DESSICANT (BOOKING NO DAR20001243300)', '6', '182900', '1097400', 'fumigation', '2022-12-01', NULL, NULL),
(3118, 163, 462, NULL, NULL, '8 AFRAGRI GLOBAL LTD  TZ LTD CONTAINER DESSICANT (BOOKING NO DAR0138755)', '8', '182900', '1463200', 'fumigation', '2022-12-01', NULL, NULL),
(3119, 163, 462, NULL, NULL, '5 UDHAYA  AGRO TZ LTD CONTAINER DESSICANT (BOOKING NO DAR200123800', '5', '182900', '914500', 'fumigation', '2022-12-01', NULL, NULL),
(3120, 163, 462, NULL, NULL, '5 UDHAYA  AGRO TZ LTD CONTAINER DESSICANT (BOOKING NO DAR200123900', '5', '182900', '914500', 'fumigation', '2022-12-01', NULL, NULL),
(3121, 163, 462, NULL, NULL, '6  AFRAGRI GLOBAL LTD CONTAINER DESSICANT (BOOKING NO DAR200124200', '6', '182900', '1097400', 'fumigation', '2022-12-01', NULL, NULL),
(3122, 211, 463, NULL, NULL, 'CASUAL LABOUR\r\nCharging for casual labour for cleaning along kilwa road and at FFT Mbagala warehouse bulk Sulphur granules and also casual labour in the offloading site.', '1', '25000', '25000', 'fumigation', '2022-12-02', NULL, NULL),
(3123, 212, 465, NULL, NULL, 'Charging for casual labour for cleaning along kilwa road and FFT Mbagala warehouse bulk Sulphur granules and also casual labour  in the offloading site', '1', '25000', '25000', 'fumigation', '2022-12-02', NULL, NULL),
(3124, 160, 466, NULL, NULL, '5 CONTAINERS FUMIGATION BY METHYL BROMIDE GAS (15/10/2022)', '5', '50000', '250000', 'fumigation', '2022-12-05', NULL, NULL),
(3125, 160, 466, NULL, NULL, '1 CONTAINER FUMIGATION BY METHYL BROMIDE GAS (28/10/2022)', '1', '50000', '50000', 'fumigation', '2022-12-05', NULL, NULL),
(3126, 213, 467, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYLBROMIDE GAS', '2', '50', '100', 'fumigation', '2022-12-05', NULL, NULL),
(3131, 163, 397, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0138748', '20', '135700', '2714000', 'fumigation', '2022-09-30', NULL, NULL),
(3132, 163, 397, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR01388747', '20', '135700', '2714000', 'fumigation', '2022-09-30', NULL, NULL),
(3133, 163, 397, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0138566', '20', '135700', '2714000', 'fumigation', '2022-09-30', NULL, NULL),
(3134, 163, 397, NULL, NULL, '20 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS  BL/NO DAR0138573', '20', '135700', '2714000', 'fumigation', '2022-09-30', NULL, NULL),
(3135, 160, 468, NULL, NULL, '11 CONTAINERSFUMIGATION USINGBY METHYL BROMIDE GAS', '11', '50000', '550000', 'fumigation', '2022-12-06', NULL, NULL),
(3136, 200, 469, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (CAP CARMEL /NYOTA TANZANIA LTD)', '4', '25000', '100000', 'fumigation', '2022-12-07', NULL, NULL),
(3137, 186, 470, NULL, NULL, '16 CONTAQINERS FUMIGATION USING BY ALUMINIUM PHOSPHIDE', '16', '29500', '472000', 'fumigation', '2022-12-07', NULL, NULL),
(3140, 214, 471, NULL, NULL, '1 CONTAINER FUMIGATION USING BY ALUMINIUM PHOSPHATE', '1', '50', '50', 'fumigation', '2022-12-10', NULL, NULL),
(3141, 200, 472, NULL, NULL, '10 CONTAINER DESSICANT (DRY BAGS)', '10', '150000', '1500000', 'fumigation', '2022-12-12', NULL, NULL),
(3144, 163, 475, NULL, NULL, 'AFAGRI GLOBAL LTD 6 CONTAINERS DESSICANT ( BOOKING NO DAR20012600', '6', '182900', '1097400', 'fumigation', '2022-12-12', NULL, NULL),
(3145, 163, 475, NULL, NULL, 'UDHAYA AGRO TZ LTD 8 CONTAINERS DESSICANT ( BOOKING NO DAR0140197)', '8', '182900', '1463200', 'fumigation', '2022-12-12', NULL, NULL),
(3146, 163, 475, NULL, NULL, 'UDHAYA AGRO TZ LTD 3 CONTAINERS DESSICANT ( BOOKING NO DAR0140197)', '3', '182900', '548700', 'fumigation', '2022-12-12', NULL, NULL),
(3147, 163, 475, NULL, NULL, 'UDHAYA AGRO TZ LTD 5 CONTAINERS DESSICANT ( BOOKING NO DAR0140195)', '5', '182900', '914500', 'fumigation', '2022-12-12', NULL, NULL),
(3148, 163, 475, NULL, NULL, 'AFAGRI GLOBAL LTD 8 CONTAINERS DESSICANT ( BOOKING NO  223559364)', '8', '182900', '1463200', 'fumigation', '2022-12-12', NULL, NULL),
(3149, 163, 475, NULL, NULL, 'UDHAYA AGRO TZ LTD 17 CONTAINERS DESSICANT ( BOOKING NO  DAR0138755)', '17', '182900', '3109300', 'fumigation', '2022-12-12', NULL, NULL),
(3150, 163, 475, NULL, NULL, 'AFRAGRI GLOBAL LTD 2 CONTAINERS DESSICANT ( BOOKING NO DAR0140318)', '2', '182900', '365800', 'fumigation', '2022-12-12', NULL, NULL),
(3151, 163, 475, NULL, NULL, 'AFRAGRI GLOBAL LTD 2 CONTAINERS DESSICANT ( BOOKING NO DAR0138755)', '2', '182900', '365800', 'fumigation', '2022-12-12', NULL, NULL),
(3153, 200, 473, NULL, NULL, '7 CONTAINERS FUMIGATED USING BY PHOSHINE GAS ( CAP CARMEL/NYOTA TANZANIA)', '7', '25000', '175000', 'fumigation', '2022-12-12', NULL, NULL),
(3154, 200, 474, NULL, NULL, '22  CONTAINERS FUMIGATED USING BY PHOSPHINE GAS ( MAERSK PHUKET/NYOTA TANZANIA LTD)', '22', '25000', '550000', 'fumigation', '2022-12-12', NULL, NULL),
(3155, 163, 476, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR0140177', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL),
(3156, 163, 476, NULL, NULL, '8CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR200126600', '8', '29500', '236000', 'fumigation', '2022-12-12', NULL, NULL),
(3157, 163, 476, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR200124000', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL),
(3158, 163, 476, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR200124100', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL),
(3159, 163, 476, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR0140196', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL),
(3160, 163, 476, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO  DAR0140195', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL),
(3161, 163, 476, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR0140197', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL),
(3162, 163, 476, NULL, NULL, '8 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR0140176', '8', '29500', '236000', 'fumigation', '2022-12-12', NULL, NULL),
(3163, 163, 476, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSOHINE GAS BOOKING NO DAR200123900', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL);
INSERT INTO `invoice` (`id`, `company_id`, `invoice_fumigation`, `staff_id`, `title`, `description`, `qty`, `price`, `amt`, `staff_type`, `date_in`, `created_at`, `updated_at`) VALUES
(3164, 163, 476, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR200123800', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL),
(3165, 163, 476, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO  DAR200123700', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL),
(3166, 163, 476, NULL, NULL, '15 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR200121100', '15', '29500', '442500', 'fumigation', '2022-12-12', NULL, NULL),
(3167, 163, 476, NULL, NULL, '8 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO  DAR200124300', '8', '29500', '236000', 'fumigation', '2022-12-12', NULL, NULL),
(3168, 163, 476, NULL, NULL, '8 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR2001224200', '8', '29500', '236000', 'fumigation', '2022-12-12', NULL, NULL),
(3169, 163, 476, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR0139065', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL),
(3170, 163, 476, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO  223559364', '20', '29500', '590000', 'fumigation', '2022-12-12', NULL, NULL),
(3171, 163, 476, NULL, NULL, '8 CONTAINERS FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR200125800', '8', '29500', '236000', 'fumigation', '2022-12-12', NULL, NULL),
(3172, 163, 476, NULL, NULL, '10 FUMIGATED USING BY PHOSHINE GAS BOOKING NO DAR0139066', '10', '29500', '295000', 'fumigation', '2022-12-12', NULL, NULL),
(3174, 204, 361, NULL, NULL, '2  CONTAINERS FOR PALLET  FUMIGATION USING BY METHYL BROMIDE GAS', '2', '60000', '120000', 'fumigation', '2022-07-20', NULL, NULL),
(3175, 204, 454, NULL, NULL, '2  CONTAINERS FOR PALLET  FUMIGATED BY USING METHYL BROMIDE GAS BOOKING NO 06DARLN2200265', '2', '60000', '120000', 'fumigation', '2022-11-25', NULL, NULL),
(3192, 211, 479, NULL, NULL, 'CHARGING FOR 10 CASUAL LABOURS FOR CLEANING SULPHUR FROM  MV AMANI  AT TANZANIA PORT AUTHORITY FOR TWO SHIFTS', '10', '50000', '500000', 'fumigation', '2022-12-15', NULL, NULL),
(3195, 215, 480, NULL, NULL, '1 CONTAINER FUMIGATED USING BY METHLY BROMIDE GAS', '1', '50', '50', 'fumigation', '2022-12-16', NULL, NULL),
(3198, 161, NULL, 372, 'CASUAL LABOUR', 'CHARGING FOR 10 CASUAL LABOURS FOR CLEANING SULPHUR FROM  MV AMANI  AT TANZANIA PORT AUTHORITY FOR TWO SHIFTS (16/12/2022)', '10', '50000', '500000', 'staffing', '2022-12-16', NULL, NULL),
(3201, 161, NULL, 373, 'CASUAL LABOUR', 'CHARGING FOR 10 CASUAL LABOURS FOR CLEANING SULPHUR FROM  MV AMANI  AT TANZANIA PORT AUTHORITY FOR TWO SHIFTS 17/12/2022', '10', '50000', '500000', 'staffing', '2022-12-19', NULL, NULL),
(3202, 161, NULL, 374, 'CASUAL LABOUR', 'CHARGING FOR 10 CASUAL LABOURS FOR CLEANING SULPHUR FROM  MV AMANI  AT TANZANIA PORT AUTHORITY FOR TWO SHIFTS 18/12/2022', '10', '50000', '500000', 'staffing', '2022-12-19', NULL, NULL),
(3203, 161, NULL, 375, 'CASUAL LABOUR', 'CHARGING FOR 10 CASUAL LABOURS FOR CLEANING SULPHUR FROM  MV AMANI  AT TANZANIA PORT AUTHORITY FOR TWO SHIFTS 19/12/2022', '10', '50000', '500000', 'staffing', '2022-12-19', NULL, NULL),
(3205, 186, 482, NULL, NULL, '12 CONTAINERS FUMIGATED USING BY ALUMINIUM PHOSPHIDE', '12', '29500', '354000', 'fumigation', '2022-12-19', NULL, NULL),
(3206, 200, 481, NULL, NULL, '8 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (AS NORA)', '8', '25000', '200000', 'fumigation', '2022-12-19', NULL, NULL),
(3207, 154, 477, NULL, NULL, '8X20FT CONT. ARABICA COFFEE FILE NO 612466', '8', '23600', '188800', 'fumigation', '2022-12-15', NULL, NULL),
(3208, 154, 477, NULL, NULL, '8X20FT CONT. ARABICA COFFEE FILE NO 612553', '8', '23600', '188800', 'fumigation', '2022-12-15', NULL, NULL),
(3209, 154, 477, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 612312', '2', '23600', '47200', 'fumigation', '2022-12-15', NULL, NULL),
(3210, 154, 477, NULL, NULL, '9X20FT CONT. ARABICA COFFEE FILE NO 612311', '9', '23600', '212400', 'fumigation', '2022-12-15', NULL, NULL),
(3211, 154, 477, NULL, NULL, '6X20FT CONT. ARABICA COFFEE FILE NO 612314', '6', '23600', '141600', 'fumigation', '2022-12-15', NULL, NULL),
(3212, 154, 477, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO613421', '13', '23600', '306800', 'fumigation', '2022-12-15', NULL, NULL),
(3213, 154, 477, NULL, NULL, '8X20FT CONT. ARABICA COFFEE FILE NO 612324', '8', '23600', '188800', 'fumigation', '2022-12-15', NULL, NULL),
(3214, 154, 477, NULL, NULL, '10X20FT CONT. ARABICA COFFEE FILE NO 613420', '10', '23600', '236000', 'fumigation', '2022-12-15', NULL, NULL),
(3215, 154, 477, NULL, NULL, '8X20FT CONT. ARABICA COFFEE FILE NO 614014', '8', '23600', '188800', 'fumigation', '2022-12-15', NULL, NULL),
(3216, 154, 477, NULL, NULL, '10X20FT CONT. ARABICA COFFEE FILE NO 612561', '10', '23600', '236000', 'fumigation', '2022-12-15', NULL, NULL),
(3217, 154, 477, NULL, NULL, '6X20FT CONT. ARABICA COFFEE FILE NO 614854', '6', '23600', '141600', 'fumigation', '2022-12-15', NULL, NULL),
(3218, 154, 477, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 614857', '3', '23600', '70800', 'fumigation', '2022-12-15', NULL, NULL),
(3219, 154, 477, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 614856', '1', '23600', '23600', 'fumigation', '2022-12-15', NULL, NULL),
(3220, 154, 477, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 614855', '2', '23600', '47200', 'fumigation', '2022-12-15', NULL, NULL),
(3221, 154, 477, NULL, NULL, '10X20FT CONT. ARABICA COFFEE FILE NO 614739', '10', '023600', '236000', 'fumigation', '2022-12-15', NULL, NULL),
(3222, 154, 477, NULL, NULL, '10X20FT CONT. ARABICA COFFEE FILE NO  TBA', '10', '023600', '236000', 'fumigation', '2022-12-15', NULL, NULL),
(3223, 154, 477, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 615422', '5', '023600', '118000', 'fumigation', '2022-12-15', NULL, NULL),
(3224, 154, 477, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO TBA', '5', '023600', '118000', 'fumigation', '2022-12-15', NULL, NULL),
(3225, 154, 477, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO TBA', '5', '023600', '118000', 'fumigation', '2022-12-15', NULL, NULL),
(3226, 154, 477, NULL, NULL, '10X20FT CONT. ARABICA COFFEE FILE NO TBA', '10', '023600', '236000', 'fumigation', '2022-12-15', NULL, NULL),
(3227, 154, 477, NULL, NULL, '8X20FT CONT. ARABICA COFFEE FILE NO TBA', '8', '023600', '188800', 'fumigation', '2022-12-15', NULL, NULL),
(3228, 154, 477, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO TBA', '2', '023600', '47200', 'fumigation', '2022-12-15', NULL, NULL),
(3229, 154, 477, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO TBA', '3', '023600', '70800', 'fumigation', '2022-12-15', NULL, NULL),
(3230, 154, 477, NULL, NULL, '5X20FT CONT. ARABICA COFFEE FILE NO 615416', '5', '023600', '118000', 'fumigation', '2022-12-15', NULL, NULL),
(3231, 154, 477, NULL, NULL, '10X20FT CONT. ARABICA COFFEE FILE NO 613420', '10', '023600', '236000', 'fumigation', '2022-12-15', NULL, NULL),
(3232, 154, 477, NULL, NULL, '8X20FT CONT. ARABICA COFFEE FILE NO 614014', '8', '023600', '188800', 'fumigation', '2022-12-15', NULL, NULL),
(3233, 154, 477, NULL, NULL, '10X20FT CONT. ARABICA COFFEE FILE NO 612561', '10', '023600', '236000', 'fumigation', '2022-12-15', NULL, NULL),
(3234, 154, 477, NULL, NULL, '6X20FT CONT. ARABICA COFFEE FILE NO 614854', '6', '023600', '141600', 'fumigation', '2022-12-15', NULL, NULL),
(3235, 154, 477, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 614857', '3', '023600', '70800', 'fumigation', '2022-12-15', NULL, NULL),
(3236, 154, 477, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 614856', '1', '023600', '23600', 'fumigation', '2022-12-15', NULL, NULL),
(3237, 154, 477, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 614855', '2', '023600', '47200', 'fumigation', '2022-12-15', NULL, NULL),
(3238, 154, 477, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 61479', '2', '023600', '47200', 'fumigation', '2022-12-15', NULL, NULL),
(3239, 154, 477, NULL, NULL, '10X20FT CONT. ARABICA COFFEE FILE NO 612561', '10', '023600', '236000', 'fumigation', '2022-12-15', NULL, NULL),
(3240, 154, 477, NULL, NULL, '6X20FT CONT. ARABICA COFFEE FILE NO 614854', '6', '023600', '141600', 'fumigation', '2022-12-15', NULL, NULL),
(3241, 154, 477, NULL, NULL, '3X20FT CONT. ARABICA COFFEE FILE NO 614857', '3', '023600', '70800', 'fumigation', '2022-12-15', NULL, NULL),
(3242, 154, 477, NULL, NULL, '1X20FT CONT. ARABICA COFFEE FILE NO 614856', '1', '023600', '23600', 'fumigation', '2022-12-15', NULL, NULL),
(3243, 154, 477, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 614855', '2', '023600', '47200', 'fumigation', '2022-12-15', NULL, NULL),
(3244, 154, 477, NULL, NULL, '2X20FT CONT. ARABICA COFFEE FILE NO 614779', '2', '023600', '47200', 'fumigation', '2022-12-15', NULL, NULL),
(3245, 154, 477, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 615164', '4', '023600', '94400', 'fumigation', '2022-12-15', NULL, NULL),
(3246, 154, 477, NULL, NULL, '8X20FT CONT. ARABICA COFFEE FILE NO 612466', '8', '023600', '188800', 'fumigation', '2022-12-15', NULL, NULL),
(3247, 154, 477, NULL, NULL, '4X20FT CONT. ARABICA COFFEE FILE NO 612553', '4', '023600', '94400', 'fumigation', '2022-12-15', NULL, NULL),
(3248, 161, NULL, 371, 'CASUAL LABOUR', 'CHARGING FOR 10 CASUAL LABOURS FOR CLEANING SULPHUR FROM  MV AMANI  AT TANZANIA PORT AUTHORITY FOR TWO SHIFTS (21/12/2022)', '10', '50000', '500000', 'staffing', '2022-12-16', NULL, NULL),
(3249, 161, NULL, 370, 'null', 'CHARGING FOR 10 CASUAL LABOURS FOR CLEANING SULPHUR FROM  MV AMANI  AT TANZANIA PORT AUTHORITY FOR TWO SHIFTS (21 DEC 2022', '10', '50000', '500000', 'staffing', '2022-12-16', NULL, NULL),
(3250, 161, NULL, 376, NULL, 'PAYMENT FOR CASUAL LABOURS FOR CLEANING SULPHUR FROM  MV AMANI  AT TANZANIA PORT AUTHORITY FOR TWO SHIFTS (21 DEC 2022', '10', '50000', '500000', 'staffing', '2022-12-22', NULL, NULL),
(3261, 163, 485, NULL, NULL, '18 CONTAINERS FUMIGATED BY USING PHOSPHINE GAS  BOOKING NUMBER DAR 0140390', '18', '29500', '531000', 'fumigation', '2022-12-23', NULL, NULL),
(3262, 163, 485, NULL, NULL, '10 CONTAINERS FUMIGATED BY USING PHOSPHINE GAS BOOKING NUMBER DAR0140393', '10', '29500', '295000', 'fumigation', '2022-12-23', NULL, NULL),
(3263, 163, 485, NULL, NULL, '10 CONTAINERS FUMIGATED BY USING PHOSPHINE GAS BOOKING NUMBER DAR0140394', '10', '29500', '295000', 'fumigation', '2022-12-23', NULL, NULL),
(3267, 186, 487, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY ALUMINIUM PHOSPHIDE', '2', '29500', '59000', 'fumigation', '2022-12-28', NULL, NULL),
(3268, 163, 484, NULL, NULL, 'UDHAYA  AGRO TZ LTD 9 CONTAINER DESSICANTS BOOKING NUMBER  DAR0140390', '9', '182900', '1646100', 'fumigation', '2022-12-23', NULL, NULL),
(3269, 163, 484, NULL, NULL, 'AFAGRI GLOBAL LTD  2 CONTAINER DESSICANT BOOKING NUMBER DAR0140393', '2', '182900', '365800', 'fumigation', '2022-12-23', NULL, NULL),
(3270, 163, 484, NULL, NULL, 'AFAGRI GLOBAL LTD 2 CONTAINER LTD BOOKING NUMBER DAR0140394', '2', '182900', '365800', 'fumigation', '2022-12-23', NULL, NULL),
(3271, 163, 484, NULL, NULL, 'PARAMOUNT EXIM LTD 6 CONTSINER DESSICANTS BOOKING NUMBER 0140800', '7', '182900', '1280300', 'fumigation', '2022-12-23', NULL, NULL),
(3272, 163, 484, NULL, NULL, 'UDHAYA AGRO TZ LTD CONTSINER DESSICANTS BOOKING NUMBER DAR0140506', '10', '0182900', '1829000', 'fumigation', '2022-12-23', NULL, NULL),
(3273, 163, 483, NULL, NULL, '10 CONTAINERS FUMIGATED BY USING METHYL BROMIDE GAS   BOOKING NUMBER DAR0138751', '10', '135700', '1357000', 'fumigation', '2022-12-23', NULL, NULL),
(3274, 163, 483, NULL, NULL, '10 CONTAINERS FUMIGATED BY USING METHYL BROMIDE GAS   BOOKING NUMBER DAR0140310', '10', '135700', '1357000', 'fumigation', '2022-12-23', NULL, NULL),
(3275, 163, 483, NULL, NULL, '20 CONTAINERS FUMIGATED BY USING METHYL BROMIDE GAS   BOOKING NUMBER DAR0138746', '20', '135700', '2714000', 'fumigation', '2022-12-23', NULL, NULL),
(3278, 191, 488, NULL, NULL, '6 CONTAINERS FUMIGATION BY USING PHOSPHINE GAS', '6', '35000', '210000', 'fumigation', '2022-12-30', NULL, NULL),
(3279, 191, 488, NULL, NULL, 'DELIVERY FEE', '1', '4000', '4000', 'fumigation', '2022-12-30', NULL, NULL),
(3281, 163, 490, NULL, NULL, '24  CONTAINER DESSICANT BOOKING NUMBER 223892818', '24', '182900', '4389600', 'fumigation', '2023-01-02', NULL, NULL),
(3282, 163, 491, NULL, NULL, '40 CONTAINERS FUMIGATION BY USING PHOSPHINE GAS BOOKING NUMBER 223892818', '40', '29500', '1180000', 'fumigation', '2023-01-02', NULL, NULL),
(3284, 198, 493, NULL, NULL, 'CHARGES  FOR   TWO STAFFS FOR OFFICE CLEANING', '2', '375000', '750000', 'fumigation', '2023-01-03', NULL, NULL),
(3285, 198, 492, NULL, NULL, 'CHARGES  FOR   TWO STAFFS FOR OFFICE CLEANING', '2', '375000', '750000', 'fumigation', '2023-01-03', NULL, NULL),
(3287, 198, 494, NULL, NULL, 'CHARGES FOR TWO STAFFS FOR OFFICE CLEANING', '2', '442500', '885000', 'fumigation', '2023-01-03', NULL, NULL),
(3288, 198, 495, NULL, NULL, 'CHARGES FOR TWO STAFFS FOR OFFICE CLEANING', '2', '442500', '885000', 'fumigation', '2023-01-03', NULL, NULL),
(3290, 191, 497, NULL, NULL, '2 CONTAINERS  FUMIGATION BY USING PHOSPHINE GAS BOOKING NUMBER \r\nMEDUTZ03315\r\nMEDUTZ203299', '2', '35000', '70000', 'fumigation', '2023-01-04', NULL, NULL),
(3291, 191, 497, NULL, NULL, 'DELIVERY FEE', '1', '4000', '4000', 'fumigation', '2023-01-04', NULL, NULL),
(3292, 186, 498, NULL, NULL, '9 FUMIGATED CONTAINERS BY USING ALLUMINIUM PHOSPHIDE', '9', '29500', '265500', 'fumigation', '2023-01-05', NULL, NULL),
(3300, 186, 504, NULL, NULL, '12 CONTAINERS FUMIGATION BY USING ALUMINIUM PHOSPHIDE', '12', '29500', '354000', 'fumigation', '2023-01-06', NULL, NULL),
(3302, 200, 506, NULL, NULL, '5 CONTAINER FUMIGATION BY USING PHOSPHINE GAS ( NORTHERN VIGOUR)', '5', '25000', '125000', 'fumigation', '2023-01-09', NULL, NULL),
(3303, 200, 507, NULL, NULL, '7  CONTAINERS FUMIGATION BY USING PHOSPHINE GAS', '7', '45000', '315000', 'fumigation', '2023-01-09', NULL, NULL),
(3304, 180, 509, NULL, NULL, '20 CARTONS OF SUPER DRY BAGS', '20', '73', '1460', 'fumigation', '2023-01-10', NULL, NULL),
(3305, 180, 509, NULL, NULL, 'TRANSPORT COST FROM TANZANIA TO RWANDA', '1', '216', '216', 'fumigation', '2023-01-10', NULL, NULL),
(3310, 180, 510, NULL, NULL, '20 CARTONS OF SUPER DRY BAGS', '20', '170000', '3400000', 'fumigation', '2023-01-10', NULL, NULL),
(3311, 180, 510, NULL, NULL, 'TRANSPORT COST FROM TANZANIA TO RWANDA FOR 20 CARTONS', '1', '504000', '504000', 'fumigation', '2023-01-10', NULL, NULL),
(3312, 180, 162, NULL, NULL, '20 CARTONS OF SUPER DRY BAGS', '20', '73', '1460', 'fumigation', '2021-09-08', NULL, NULL),
(3313, 180, 511, NULL, NULL, '20  cartons of super dry bags', '20', '73', '1460', 'fumigation', '2023-01-11', NULL, NULL),
(3318, 191, 516, NULL, NULL, '1 CONTAINER FUMIGATION BY USING PHOSPHINE GAS  BOOKING NUMBER MEDUTZ204826', '1', '35000', '35000', 'fumigation', '2023-01-13', NULL, NULL),
(3319, 191, 516, NULL, NULL, 'DELIVERY FEE', '1', '4000', '4000', 'fumigation', '2023-01-13', NULL, NULL),
(3342, 163, 410, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0139137', '10', '53100', '531000', 'fumigation', '2022-10-24', NULL, NULL),
(3343, 163, 410, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO10 DAR0139139', '10', '53100', '531000', 'fumigation', '2022-10-24', NULL, NULL),
(3344, 163, 410, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0139134B', '10', '53100', '531000', 'fumigation', '2022-10-24', NULL, NULL),
(3345, 163, 410, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  14004680', '10', '53100', '531000', 'fumigation', '2022-10-24', NULL, NULL),
(3346, 163, 410, NULL, NULL, '10 CONTAINERSFUMIGATION USING BY METHYL BROMIDE GAS BL/NO 14692274', '10', '53200', '532000', 'fumigation', '2022-10-24', NULL, NULL),
(3347, 163, 410, NULL, NULL, '10 CONTAINERSFUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0139135B', '10', '53200', '532000', 'fumigation', '2022-10-24', NULL, NULL),
(3348, 163, 410, NULL, NULL, '10 CONTAINERSFUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0139190', '10', '53200', '532000', 'fumigation', '2022-10-24', NULL, NULL),
(3349, 163, 410, NULL, NULL, '10 CONTAINERSFUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0139193', '10', '53200', '532000', 'fumigation', '2022-10-24', NULL, NULL),
(3350, 163, 517, NULL, NULL, 'UDHAYA  AGRO  6 CONTAINER DESSICANTS BOOKING NUMBER  223892818', '6', '182900', '1097400', 'fumigation', '2023-01-13', NULL, NULL),
(3351, 163, 517, NULL, NULL, 'UDHAYA AGRO TZ 7 CONTAINER DESSICANT  BOOKING NUMBER  DAR0140506B', '7', '182900', '1280300', 'fumigation', '2023-01-13', NULL, NULL),
(3352, 163, 517, NULL, NULL, 'AFAGRI GLOBAL LTD 3 CONTAINER DESSICANT BOOKING NUMBER DAR0141019', '10', '182900', '1829000', 'fumigation', '2023-01-13', NULL, NULL),
(3353, 163, 517, NULL, NULL, 'AFAGRI GLOBAL  LTD 2 CONTAINER DESSICANT BOOKING NUMBER  DAE0141026', '6', '182900', '1097400', 'fumigation', '2023-01-13', NULL, NULL),
(3354, 163, 517, NULL, NULL, 'AFAGRI GLOBAL LTD 2 CONTAINER DESSICANT \r\n BOOKING NUMBER  DAR0140393', '2', '182900', '365800', 'fumigation', '2023-01-13', NULL, NULL),
(3355, 163, 517, NULL, NULL, 'AFAGRI GLOBAL LTD 2 CONTAINER DESSICANT  BOOKING NUMBER  DAR0140394', '2', '182900', '365800', 'fumigation', '2023-01-13', NULL, NULL),
(3357, 217, 519, NULL, NULL, 'GENERAL CLEANNES AT BANDARINI SACCOS  NEW OFFICE', '17', '50000', '850000', 'fumigation', '2023-01-17', NULL, NULL),
(3358, 209, 520, NULL, NULL, 'GODOWN  FUMIGATION BY  USING  PHOSPHINE  GAS\r\n(MEASURED BY TONNES)', '713.15', '2500', '1782875', 'fumigation', '2023-01-19', NULL, NULL),
(3359, 163, 518, NULL, NULL, '30 CONTAINER FUMIGATION BY USING PHOSPHINE GAS BOOKING NUMBER DAR0140505', '30', '29500', '885000', 'fumigation', '2023-01-13', NULL, NULL),
(3360, 163, 518, NULL, NULL, '11AFAGRI GLOBAL LTD  CONTAINER FUMUGATION BY USING PHOSPHINE GAS BOOKING NUMBER DAR0141019', '11', '29500', '324500', 'fumigation', '2023-01-13', NULL, NULL),
(3361, 163, 518, NULL, NULL, '8 AFAGRI  GLOBAL LTD CONTAINER FUMIGATION BY USING PHOSPINE GAS  DAR0141026', '8', '29500', '236000', 'fumigation', '2023-01-13', NULL, NULL),
(3362, 163, 518, NULL, NULL, '10 CONTAINER FUMIGATION BY  USING METHYL BROMIDE GAS BOOKING NUMBER  DAR0140393', '10', '135700', '1357000', 'fumigation', '2023-01-13', NULL, NULL),
(3363, 163, 518, NULL, NULL, '10 CONTAINER FUMIGATION BY  USING METHYL BROMIDE GAS BOOKING NUMBER  DAR0140394', '10', '135700', '1357000', 'fumigation', '2023-01-13', NULL, NULL),
(3364, 163, 518, NULL, NULL, '10 CONTAINER FUMIGATION BY  USING METHYL BROMIDE GAS BOOKING NUMBER  DAR0138752', '10', '135700', '1357000', 'fumigation', '2023-01-13', NULL, NULL),
(3365, 163, 518, NULL, NULL, '1  AFAGRI GLOBAL LTD CONTAINER FUMIGATION BY USING PHOSPHINE GAS BOOKING NUMBER 224219186', '1', '29500', '29500', 'fumigation', '2023-01-13', NULL, NULL),
(3366, 191, 521, NULL, NULL, '6  CONTAINER  FUMIGATION BY USING PHOSPHINE GAS', '6', '35000', '210000', 'fumigation', '2023-01-20', NULL, NULL),
(3367, 191, 521, NULL, NULL, 'DELIVERY FEE', '1', '4000', '4000', 'fumigation', '2023-01-20', NULL, NULL),
(3368, 180, 299, NULL, NULL, '10 CARTONS OF SUPER DRY BAGS', '10', '10', '100', 'fumigation', '2022-03-03', NULL, NULL),
(3372, 180, 523, NULL, NULL, '10 CARTONS OF SUPER DRY BAGS', '10', '10', '100', 'fumigation', '2023-01-20', NULL, NULL),
(3375, 180, 524, NULL, NULL, '10 CARONS OF SUPER DRYBAGS', '10', '73', '730', 'fumigation', '2023-01-25', NULL, NULL),
(3376, 180, 524, NULL, NULL, 'TRANSPORT COST FROM TANZANIA TO RWANDA', '1', '65', '65', 'fumigation', '2023-01-25', NULL, NULL),
(3388, 154, 526, NULL, NULL, '5x20 ft  ARABICA COFFEE  MRKU 7490367MSKU5848160WECU2150462MSMU1730376TCLU2514687', '5', '23600', '118000', 'fumigation', '2023-02-01', NULL, NULL),
(3389, 154, 526, NULL, NULL, '5X20FTARABICA COFFEETLLU3435549TLLU3437500MRKU8981283TCLU2883319TEMU1253020', '5', '23600', '118000', 'fumigation', '2023-02-01', NULL, NULL),
(3390, 154, 526, NULL, NULL, '5X20FT ARABICA COFFEENYKU3844180MRKU7578904TEMU5467190MSKU7788820MSMU1615140', '5', '23600', '118000', 'fumigation', '2023-02-01', NULL, NULL),
(3391, 154, 526, NULL, NULL, '5X20FT ARABICA COFFEEMRKU8117764MRKU8183600TLLU3441834TLLU3441069MRKU821089', '5', '23600', '118000', 'fumigation', '2023-02-01', NULL, NULL),
(3392, 154, 526, NULL, NULL, '5X20FT ARABICA COFFEECAIU2514968MRKU9144189MRKU7484744GESU1452885TGHU0279567', '5', '23600', '118000', 'fumigation', '2023-02-01', NULL, NULL),
(3393, 154, 526, NULL, NULL, '5X20FT ARABICA COFFEEMRKU7354226MRKU8019578MRKU9261230MSKU5187841MSKU7966579', '5', '23600', '118000', 'fumigation', '2023-02-01', NULL, NULL),
(3394, 154, 526, NULL, NULL, '5X20FT ARABICA COFFEETEMU1363500GESU3846698MRKU9788704MRKU7592754MRKU8738859', '5', '23600', '118000', 'fumigation', '2023-02-01', NULL, NULL),
(3395, 154, 526, NULL, NULL, '6X20FT ARABICA COFFEETCLU2514687HASU1043831MRKU6716090MRKU6979116MRKU7345878MSKU7785518', '6', '23600', '141600', 'fumigation', '2023-02-01', NULL, NULL),
(3396, 154, 526, NULL, NULL, '8X20FT ARABICA COFFEEMRKU9807635MSKU7366532MSKU5801409CAIU2443967SUDU7970042MSKU5732442TEMU5913517MRKU8679756', '8', '23600', '188800', 'fumigation', '2023-02-01', NULL, NULL),
(3397, 154, 526, NULL, NULL, '8X20FT ARABICA COFFEELMCU1216025HJCU8463977LMCU1232670LMCU1248531LMCU1250668LMCU1244351CAIU3756797LMCU1184951', '8', '23600', '188800', 'fumigation', '2023-02-01', NULL, NULL),
(3398, 154, 526, NULL, NULL, '8X20FT ARABICA COFFEETRHU2028412LMCU1144049LMCU1244120LMCU1194543CAIU3634910LMCU1210011LMCU1172605CAXU3166447', '8', '23600', '188800', 'fumigation', '2023-02-01', NULL, NULL),
(3399, 211, 527, NULL, NULL, 'PAPER LINNING', '15', '60000', '900000', 'fumigation', '2023-02-01', NULL, NULL),
(3400, 211, 527, NULL, NULL, 'LABOUR CHARGE PER CONTAINER', '15', '10000', '150000', 'fumigation', '2023-02-01', NULL, NULL),
(3401, 211, 527, NULL, NULL, 'LIQUID TAPE  2 GALLONS', '2', '80000', '160000', 'fumigation', '2023-02-01', NULL, NULL),
(3402, 211, 528, NULL, NULL, '5  CONTAINER DESSICANT', '5', '170000', '850000', 'fumigation', '2023-02-01', NULL, NULL),
(3403, 204, 529, NULL, NULL, 'PAPER  LINNING', '15', '60000', '900000', 'fumigation', '2023-02-01', NULL, NULL),
(3404, 204, 529, NULL, NULL, 'LABOUR CHARGE PER CONTAINER', '15', '10000', '150000', 'fumigation', '2023-02-01', NULL, NULL),
(3405, 204, 529, NULL, NULL, '2 LIQUID GALLONS', '2', '80000', '160000', 'fumigation', '2023-02-01', NULL, NULL),
(3407, 186, 531, NULL, NULL, '8 CONTAINER FUMIGATION BY USING ALUMINIUM PHOSPHIDE', '8', '29500', '236000', 'fumigation', '2023-02-02', NULL, NULL),
(3408, 154, 532, NULL, NULL, '5X20FT ARABICA COFFEE\r\nFTAU 1357760\r\nWECU2104765\r\nMSDU1122301\r\nTRHU2085428\r\nMSMU 2241256', '5', '23600', '118000', 'fumigation', '2023-02-02', NULL, NULL),
(3409, 154, 532, NULL, NULL, '5X20FT ARABICA COFFEE\r\nHNSU2081258\r\nMRKU8940026\r\nMRKU9008310\r\nMSKU5821494\r\nMSKU3902719', '5', '23600', '118000', 'fumigation', '2023-02-02', NULL, NULL),
(3410, 154, 532, NULL, NULL, '5X20FT ARABICA COFFEE\r\nBMOU2147878\r\nMRKU7590936\r\nMRKU7661238\r\nMRKU9944155\r\nMSKU4331511', '5', '23600', '118000', 'fumigation', '2023-02-02', NULL, NULL),
(3411, 154, 532, NULL, NULL, '5X20FT ARABICA COFFEE\r\nMSKU5666166\r\nPONU0258794\r\nSUDU1311900\r\nTCKU1097468\r\nTEMU5489728', '5', '23600', '118000', 'fumigation', '2023-02-02', NULL, NULL),
(3412, 154, 532, NULL, NULL, 'MSKU4184977\r\nMRKU9217813\r\nTGHU1726058\r\nTRHU3997744\r\nMSKU3049205', '5', '23600', '118000', 'fumigation', '2023-02-02', NULL, NULL),
(3413, 204, 530, NULL, NULL, '5 CONTAINER DESSICANTS', '5', '170000', '850000', 'fumigation', '2023-02-01', NULL, NULL),
(3414, 218, 533, NULL, NULL, 'PAPER LINNING', '15', '60000', '900000', 'fumigation', '2023-02-06', NULL, NULL),
(3415, 218, 533, NULL, NULL, 'LABOUR CHARGE PER CONTAINER', '15', '10000', '150000', 'fumigation', '2023-02-06', NULL, NULL),
(3416, 218, 533, NULL, NULL, '2 GALLONS OF GLUE', '2', '80000', '160000', 'fumigation', '2023-02-06', NULL, NULL),
(3417, 218, 534, NULL, NULL, '5 CONTAINER DESSICANTS', '5', '170000', '850000', 'fumigation', '2023-02-06', NULL, NULL),
(3421, 209, 535, NULL, NULL, '10 SUPER DRYBAGS', '10', '200600', '2006000', 'fumigation', '2023-02-08', NULL, NULL),
(3422, 209, 535, NULL, NULL, '30 CONTAINER LINING', '30', '42700', '1281000', 'fumigation', '2023-02-08', NULL, NULL),
(3423, 209, 535, NULL, NULL, 'LABOUR CHARGE AND LIQUID TAPE', '30', '12000', '360000', 'fumigation', '2023-02-08', NULL, NULL),
(3424, 209, 535, NULL, NULL, '30 CONTAINER FUMIGATION BY USING PHOSPHINE GAS', '30', '29400', '882000', 'fumigation', '2023-02-08', NULL, NULL),
(3430, 200, 538, NULL, NULL, '14 CONTAINER FUMIGATION  METHYL BROMIDE GAS', '14', '45000', '630000', 'fumigation', '2023-02-20', NULL, NULL),
(3431, 219, 539, NULL, NULL, '3 BOXES OF DRY BAGS', '3', '110000', '330000', 'fumigation', '2023-02-22', NULL, NULL),
(3433, 200, 541, NULL, NULL, '16 CONTAINER FUMIGATION BY USING METHYL BROMIDE GAS  BOOKING NUMBER \r\n580BK3000008\r\n580BK3000015\r\n580BK3000009\r\n580BK3000016', '16', '45000', '720000', 'fumigation', '2023-02-22', NULL, NULL),
(3434, 209, 542, NULL, NULL, '10 CONTAINER FUMIGATION BY USING  PHOSPHINE GAS', '10', '29400', '294000', 'fumigation', '2023-02-24', NULL, NULL),
(3435, 209, 542, NULL, NULL, '1 CONTAINER FUMIGATION BY USING METHYL BROMIDE GAS', '1', '129000', '129000', 'fumigation', '2023-02-24', NULL, NULL),
(3436, 209, 542, NULL, NULL, 'LABOUR CHARGE AND GLUE FOR 11 CONTAINER LINING', '11', '12000', '132000', 'fumigation', '2023-02-24', NULL, NULL),
(3437, 209, 542, NULL, NULL, 'PAPER LINNING FOR 11 CONTAINERS', '11', '42700', '469700', 'fumigation', '2023-02-24', NULL, NULL),
(3438, 209, 542, NULL, NULL, '3 CONTAINER DESSICANTS', '3', '200600', '601800', 'fumigation', '2023-02-24', NULL, NULL),
(3439, 209, 542, NULL, NULL, 'GODOWN FUMIGATION  (MEASURED IN TONS)', '20', '2500', '50000', 'fumigation', '2023-02-24', NULL, NULL),
(3442, 200, 544, NULL, NULL, '5 CONTAINER FUMIGATION BY USING PHOSPHINE GAS', '5', '45000', '225000', 'fumigation', '2023-02-28', NULL, NULL),
(3443, 180, 545, NULL, NULL, '10   CARTONS OF SUPER DRYBAGS', '10', '10', '100', 'fumigation', '2023-03-02', NULL, NULL),
(3444, 163, 537, NULL, NULL, '8 container fumigation by using phosphine gas/ certificate methyl bromide gas', '8', '53100', '424800', 'fumigation', '2023-02-16', NULL, NULL),
(3445, 163, 537, NULL, NULL, '2X20 CONTAINER FUMIGATUIN BY USING PHOSPHINE GAS   BOOKING NUMBER 060DARIN2310087 AND 225311248', '2', '29500', '59000', 'fumigation', '2023-02-16', NULL, NULL),
(3446, 180, 546, NULL, NULL, '10 SUPER DRY BAGS', '10', '73', '730', 'fumigation', '2023-03-07', NULL, NULL),
(3447, 180, 546, NULL, NULL, 'TRANSPORT FEE', '1', '80', '80', 'fumigation', '2023-03-07', NULL, NULL),
(3449, 200, 543, NULL, NULL, '10 CONTAINER FUMIGATION BY USING METHYLBROMIDE GAS BOOKING NUMBER  58998579', '10', '45000', '450000', 'fumigation', '2023-02-24', NULL, NULL),
(3451, 200, 548, NULL, NULL, '20 CONTAINER FUMIGATION BY USING METHY BROMIDE GAS  BOOKING NUMBER GOSUDAR0001585', '20', '45000', '900000', 'fumigation', '2023-03-07', NULL, NULL),
(3452, 200, 548, NULL, NULL, '8 CONTAINER FUMIGATION BY USING METHYL BROMIDE GAS BOOKING NUMBER GOSUDAR0001584', '8', '45000', '360000', 'fumigation', '2023-03-07', NULL, NULL),
(3453, 200, 549, NULL, NULL, '10 CONTAINER FUMIGATION BY USING METHYL BROMIDE GAS BOOKING NUMBER 14009663', '10', '45000', '450000', 'fumigation', '2023-03-07', NULL, NULL),
(3454, 200, 549, NULL, NULL, '10 CONTAINER FUMIGATION BY USING METHYL BROMIDE GAS BOOKING NUMBER  99734772', '10', '45000', '450000', 'fumigation', '2023-03-07', NULL, NULL),
(3455, 200, 549, NULL, NULL, '03 CONTAINER FUMIGATION BY USING METHYL BROMIDE GAS BOOKING NUMBER  21735270', '3', '45000', '135000', 'fumigation', '2023-03-07', NULL, NULL),
(3456, 186, 550, NULL, NULL, '22 CONTAINER  FUMIGATION BY USING ALUMINIUM PHOSPHINE', '22', '29500', '649000', 'fumigation', '2023-03-07', NULL, NULL),
(3457, 180, 551, NULL, NULL, '10 CARTONS OF SUPER DRYBAGS', '10', '170000', '1700000', 'fumigation', '2023-03-07', NULL, NULL),
(3458, 180, 551, NULL, NULL, 'TRANSPORT FEE', '1', '180000', '180000', 'fumigation', '2023-03-07', NULL, NULL),
(3459, 200, 552, NULL, NULL, '5 CONTAINER FUMIGATION BY USING METHYL BROMIDE GAS BOOKING NUMBER 30391628', '5', '45000', '225000', 'fumigation', '2023-03-07', NULL, NULL),
(3460, 200, 552, NULL, NULL, '5 CONTAINER FUMIGATION BY USING METHYL BROMIDE GAS BOOKING NUMBER  28380472', '5', '45000', '225000', 'fumigation', '2023-03-07', NULL, NULL),
(3465, 222, 553, NULL, NULL, '33 CONTAINERS STUFFING', '33', '21712', '716496', 'fumigation', '2023-03-08', NULL, NULL),
(3466, 154, 554, NULL, NULL, 'FEBRUARY-2023\r\nCONTAINERS FUMIGATED BY USING PHOSPHINE GAS  \r\nFILE NUMBER 9186616581 10X20FT\r\nCAIU3516420,CAXU3380145,LMCU1149122,LMCU1151259,LMCU1200029,LMCU1238446,LMCU1239062,LMCU1245764,LMCU1251638,LMCU1254874', '10', '23600', '236000', 'fumigation', '2023-03-10', NULL, NULL),
(3467, 154, 554, NULL, NULL, 'FILE NUMBER 9186616365 1X20\r\nMSDU2760506', '1', '23600', '23600', 'fumigation', '2023-03-10', NULL, NULL),
(3468, 154, 554, NULL, NULL, 'FILE NUMBER 9186616691 1X20\r\nMSMU 1467779', '1', '23600', '23600', 'fumigation', '2023-03-10', NULL, NULL),
(3469, 154, 554, NULL, NULL, 'FILE NUMBER 9186616692 3X20\r\nMRKU 9240428,MRKU9940102,MSKU7086660', '3', '23600', '70800', 'fumigation', '2023-03-10', NULL, NULL),
(3470, 154, 554, NULL, NULL, 'FILE NUMBER 9186616877 5X20\r\nFCIU4269847,HASU1531950,MRKU6884303,MRKU7757134,MRKU9166737', '5', '23600', '118000', 'fumigation', '2023-03-10', NULL, NULL),
(3471, 154, 554, NULL, NULL, 'FILE NUMBER 9186616478 2X20\r\nMSMU2189796,MSMU2183740', '2', '23600', '47200', 'fumigation', '2023-03-10', NULL, NULL),
(3472, 154, 554, NULL, NULL, 'FILE NUMBER 9186616269 1X20\r\nMSMU1001440', '1', '23600', '23600', 'fumigation', '2023-03-10', NULL, NULL),
(3473, 154, 554, NULL, NULL, 'FILE NUMBER 9186616579 1X20\r\nMSKU3460290', '1', '23600', '23600', 'fumigation', '2023-03-10', NULL, NULL),
(3474, 154, 554, NULL, NULL, 'FILE NUMBER 9186616197 1X20\r\nSUDU1954173', '1', '23600', '23600', 'fumigation', '2023-03-10', NULL, NULL),
(3475, 154, 554, NULL, NULL, 'FILE NUMBER 9186615890  3X20\r\nMRKU7554862,SUDU1948777,TCLU2182704', '3', '23600', '70800', 'fumigation', '2023-03-10', NULL, NULL),
(3476, 154, 554, NULL, NULL, 'FILE NUMBER 9186616269 1X20\r\nMSMU1001440', '1', '23600', '23600', 'fumigation', '2023-03-10', NULL, NULL),
(3477, 154, 554, NULL, NULL, 'FILE NUMBER 9186615892 10X20\r\nMRKU9509570,TCLU9961814,MSKU7265141,MRKU9056149,MSKU4360274,MSKU4329010,MRSU0240008,TRLU9193090,MRKU8394861,TRHU1134507', '10', '23600', '236000', 'fumigation', '2023-03-10', NULL, NULL),
(3478, 154, 554, NULL, NULL, 'FILE NUMBER 9186616479 1X20\r\nTCLU2808017', '1', '23600', '23600', 'fumigation', '2023-03-10', NULL, NULL),
(3479, 154, 554, NULL, NULL, 'FILE NUMBER 9186616869 1X20\r\nMSKU2972178', '1', '23600', '23600', 'fumigation', '2023-03-10', NULL, NULL),
(3480, 154, 554, NULL, NULL, 'FILE NUMBER 9186619516 5X20\r\nTCLU3694177,CMAU1484310,TRHU1450892,TEMU1015464,TEMU1085142', '5', '23600', '118000', 'fumigation', '2023-03-10', NULL, NULL),
(3481, 154, 554, NULL, NULL, 'FILE NUMBER 9186616935 14X20\r\nMSDU 1822801,MSMU1981989048,MSDU2760506,MSMU1467779,MRKU9240428,MRKU9940102,MSKU7086660,FCIU4269847,HASU1531950,MRKU7757134,MRKU9166737,MSMU2183740,MSMU1001440', '14', '23600', '330400', 'fumigation', '2023-03-10', NULL, NULL),
(3482, 157, 555, NULL, NULL, 'To fumigate and treat  Office, Septic and sewage system and all compound. this targeted to destroy/ kill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '2950000', '2950000', 'fumigation', '2023-03-17', NULL, NULL),
(3483, 200, 319, NULL, NULL, '12 CONTAINER FUMIGATION USING BY PHOSPHINE GAS BL DAR300026200', '12', '25000', '300000', 'fumigation', '2022-04-08', NULL, NULL),
(3487, 200, 556, NULL, NULL, '10*20ft Containers fumigated by using Phosphine Gas BL CSL230049', '10', '25000', '250000', 'fumigation', '2023-03-17', NULL, NULL),
(3488, 200, 557, NULL, NULL, '10*20ft Containers Fumigation by using Phosphine Gas EBKG05137889BL EBKG05137889', '10', '25000', '250000', 'fumigation', '2023-03-17', NULL, NULL),
(3494, 180, 559, NULL, NULL, '10 Boxes of Dry Bag Brand SUPER DRY', '10', '73', '730', 'fumigation', '2023-03-18', NULL, NULL),
(3495, 180, 559, NULL, NULL, 'Transport Chargers', '1', '78', '78', 'fumigation', '2023-03-18', NULL, NULL),
(3496, 200, 558, NULL, NULL, '12*20Ft containers Fumigated by using phosphine gas BL DAR300026200', '12', '25000', '300000', 'fumigation', '2023-03-18', NULL, NULL),
(3497, 200, 558, NULL, NULL, '10*20Ft Containers fumigated by using Phosphine Gas BL EBKG05137889', '10', '25000', '250000', 'fumigation', '2023-03-18', NULL, NULL),
(3498, 200, 558, NULL, NULL, '10*20Ft Containers fumigated by using Phosphine Gas BL CSL230049', '10', '25000', '250000', 'fumigation', '2023-03-18', NULL, NULL),
(3499, 200, 547, NULL, NULL, '5 CONTAINERS FUMIGATION BY USING METHYL BROMIDE GAS BOOKING NUMBER  580BK3000059', '2', '45000', '90000', 'fumigation', '2023-03-07', NULL, NULL),
(3512, 208, 562, NULL, NULL, '1*20Ft Containers Fumigated by using Phosphine Gas. NOTE: Roles and regulation of our country doesn\'t allow to treat Cash Crops by using METHLY BROMIDE GAS', '1', '50000', '50000', 'fumigation', '2023-03-25', NULL, NULL),
(3513, 163, 563, NULL, NULL, '10Ft Containers fumigated by using Phosphine gas BL DAR0141658', '10', '29500', '295000', 'fumigation', '2023-03-29', NULL, NULL),
(3514, 163, 563, NULL, NULL, '3Ft Containers Fumigated by Using Phosphine Gas BL 226164346', '3', '29500', '88500', 'fumigation', '2023-03-29', NULL, NULL),
(3516, 200, 564, NULL, NULL, '10*20Ft Containers Fumigated by using Phosphine Gas BL DAR300033600', '10', '25000', '250000', 'fumigation', '2023-03-29', NULL, NULL),
(3517, 226, 565, NULL, NULL, '40*Ft Containers Fumigated by using by Phosphine', '4', '50', '200', 'fumigation', '2023-03-29', NULL, NULL),
(3518, 200, 561, NULL, NULL, '5*20Ft Containers fumigated by using Phosphine Gas BL CSL230051', '05', '25000', '125000', 'fumigation', '2023-03-25', NULL, NULL),
(3529, 200, 566, NULL, NULL, '10*20FT Containers fumigated by using Phosphine Gas BL EBKG05149455', '10', '25000', '250000', 'fumigation', '2023-03-31', NULL, NULL),
(3530, 200, 566, NULL, NULL, '10*20FT Containers fumigated by using Phosphine Gas BL EBKG05137945', '10', '25000', '250000', 'fumigation', '2023-03-31', NULL, NULL),
(3531, 200, 566, NULL, NULL, '20*20FT Containers fumigated by using Phosphine Gas BL EBKG05232946', '20', '25000', '500000', 'fumigation', '2023-03-31', NULL, NULL),
(3532, 200, 566, NULL, NULL, '14*20FT Containers fumigated by using Phosphine Gas BL DAR30027600', '14', '25000', '350000', 'fumigation', '2023-03-31', NULL, NULL),
(3536, 227, 568, NULL, NULL, '8*40Ft Containers Fumigated by using Methyl bromide', '8', '50', '400', 'fumigation', '2023-04-04', NULL, NULL),
(3537, 229, 569, NULL, NULL, 'To fumigate and treat office, septic and sewage system and all compound, this targeted to destroy/ ill all insects i.e cockroach, mosquitoes and all other domestic insects', '1', '1480000', '1480000', 'fumigation', '2023-04-05', NULL, NULL),
(3538, 154, 570, NULL, NULL, 'Fumigation 7*20 Ft containers 225216464\r\nMRKU8255418, TRHU2838223, FTU1377581, MSDU2732910, MRKU7535230, MSKU283406, MSKU3917473', '7', '23600', '165200', 'fumigation', '2023-04-18', NULL, NULL),
(3539, 154, 570, NULL, NULL, 'Fumigation 1*20ft container EBKG05208743\r\nMSMU2164165', '1', '23600', '23600', 'fumigation', '2023-04-18', NULL, NULL),
(3540, 154, 570, NULL, NULL, 'Fumigation 1*20Ft container EBK40504848807\r\nMEDU5738710', '1', '23600', '23600', 'fumigation', '2023-04-18', NULL, NULL),
(3541, 154, 570, NULL, NULL, 'Fumigation 2*20ft container DAR0141375 \r\nFCIU5289391, TEMU3192936', '2', '23600', '47200', 'fumigation', '2023-04-18', NULL, NULL),
(3542, 154, 570, NULL, NULL, 'Fumigation 1*20Ft container SO192\r\nFTAU1529283', '1', '23600', '23600', 'fumigation', '2023-04-18', NULL, NULL),
(3543, 154, 570, NULL, NULL, 'BULK CONTAINER MSC LEVINA 1*20FT CONTAINER \r\nTLLU3439929', '1', '23600', '23600', 'fumigation', '2023-04-18', NULL, NULL),
(3544, 154, 570, NULL, NULL, 'Fumigation 2*20Ft container S0127 AND S0178\r\nFCIU4486478, HJMU2062827', '2', '23600', '47200', 'fumigation', '2023-04-18', NULL, NULL),
(3545, 154, 570, NULL, NULL, 'Fumigation 1*20Ft container S0048\r\nMSMU1742248', '1', '23600', '23600', 'fumigation', '2023-04-18', NULL, NULL),
(3546, 154, 570, NULL, NULL, 'Fumigation 4*20ft containers EXP lot 28/025/22002/22203/28/025/22204,28/025/22219\r\nMSKU7276491, TLLU2226708,MRKU0108521, MSKU7965320', '4', '23600', '94400', 'fumigation', '2023-04-18', NULL, NULL),
(3547, 154, 570, NULL, NULL, 'Fumigation 1*20Ft container EBKG04859953\r\nMSMU2347124', '1', '23600', '23600', 'fumigation', '2023-04-18', NULL, NULL),
(3548, 154, 570, NULL, NULL, 'Fumigation 1*20Ft container EBKG05048789\r\nMSDU2042279, MSMU1299470, MEDU3846247, MSDU2312646, MSMU1371152', '5', '23600', '118000', 'fumigation', '2023-04-18', NULL, NULL),
(3549, 154, 570, NULL, NULL, 'Fumigation 2*20Ft containers 224709579\r\nMRSU0236780, TCLU3477295', '2', '23600', '47200', 'fumigation', '2023-04-18', NULL, NULL),
(3550, 154, 570, NULL, NULL, 'Fumigation 2*20Ft containers DAR0141295\r\nMSDU2594302, MSMU1234247', '2', '23600', '47200', 'fumigation', '2023-04-18', NULL, NULL),
(3551, 154, 570, NULL, NULL, 'Fumigation 2*20Ft Containers EBKG04946874\r\nMSDU2594302, MSMU1234247', '2', '23600', '47200', 'fumigation', '2023-04-18', NULL, NULL),
(3637, 165, 588, NULL, NULL, 'ggg', '1', '2', '2', 'fumigation', '2023-04-19', NULL, NULL),
(3688, 153, NULL, 380, 'try', 'rr', '1', '10', '10', 'staffing', '2023-04-20', NULL, NULL),
(3689, 155, NULL, 379, 'FUMIGATION', 'fumigation', '1', '25', '25', 'staffing', '2023-03-18', NULL, NULL),
(3690, 154, 590, NULL, NULL, 'Fumigation 10*20ft Containers * DAR0141295 \r\nAPZU3489584, CMAU170640, CMAU0752620, GESU3816815, MAGU2494273, RFCU2201118, TEMU928793, TRHU1624778, TRHU1763515, UETU2324510', '10', '23600', '236000', 'fumigation', '2023-04-20', NULL, NULL),
(3691, 154, 590, NULL, NULL, 'Fumigation 2*20Ft containers *EBKG0494687  \r\nMSDU2594302, MSMU1234247', '2', '23600', '47200', 'fumigation', '2023-04-20', NULL, NULL),
(3692, 154, 590, NULL, NULL, 'Fumigation 2*20Ft containers *224709579  MRSU0236780, TCLU3477295', '2', '23600', '47200', 'fumigation', '2023-04-20', NULL, NULL),
(3693, 154, 590, NULL, NULL, 'Fumigation 5*20Ft containers  *EBKGO4964336   MEDU5846547, MSDU2312646, MSDU2473569, MSMU1299470, MSMU1371152', '5', '23600', '118000', 'fumigation', '2023-04-20', NULL, NULL),
(3694, 154, 590, NULL, NULL, 'FUMIGATION 1*20FT CONTAINERS *BULK\r\n KKKTU7762839', '1', '23600', '23600', 'fumigation', '2023-04-20', NULL, NULL),
(3695, 154, 590, NULL, NULL, 'FUMIGATION 03*20FT CONTAINERS *225216464 FBIU 0088495, TEMU3965770, CAIU6993576', '3', '23600', '70800', 'fumigation', '2023-04-20', NULL, NULL),
(3696, 154, 590, NULL, NULL, 'FUMIGATION 7*20FT CONTAINERS *225216464 TLLU3440036, MSDU1771770, MSKU4458466, CMAU0702969, SGRU2092790, TRHU2838223, MSKU59030340', '7', '23600', '165200', 'fumigation', '2023-04-20', NULL, NULL),
(3697, 154, 590, NULL, NULL, 'FUMIGATION 15*20FT CONTAINERS *225216464  FTAU1377581, MRKU7535230, MSKU3917473, MRKU8255418, APZU3609290, TCLU7367721, GESU1179472, TLLU2799021, TEMU0900374, MSDU2732910, MSKU2834060', '13', '23600', '306800', 'fumigation', '2023-04-20', NULL, NULL),
(3698, 154, 591, NULL, NULL, 'FUMIGATION 2*20FT CONTAINERS *EBKGO4946874 \r\n MSDU2594302, MSMU1234247', '2', '23600', '47200', 'fumigation', '2023-04-20', NULL, NULL),
(3699, 154, 591, NULL, NULL, 'FUMIGATION 2*20FT *DAR0141295 \r\n MSDU2594302, MSMU1234247', '2', '23600', '47200', 'fumigation', '2023-04-20', NULL, NULL),
(3700, 154, 591, NULL, NULL, 'FUMIGATION 2*20FT CONTAINERS * 224709579 \r\nMRSU0236780, TCLU3477295', '2', '23600', '47200', 'fumigation', '2023-04-20', NULL, NULL),
(3701, 154, 591, NULL, NULL, 'FUMIGATION 5*20FT CONTAINERS * EBKG04964336 \r\nMSMU1371152, MSDU2473569, MSMU1299470, MEDU3846247, MSDU2312646', '5', '23600', '118000', 'fumigation', '2023-04-20', NULL, NULL),
(3702, 154, 591, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER *EBKG05048789\r\nMSDU2042279', '1', '23600', '23600', 'fumigation', '2023-04-20', NULL, NULL),
(3703, 154, 591, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER *EBKG04859953\r\nMSMU2347124', '1', '23600', '23600', 'fumigation', '2023-04-20', NULL, NULL),
(3704, 154, 591, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER *S0048\r\nMSMU1742248', '1', '23600', '23600', 'fumigation', '2023-04-20', NULL, NULL),
(3705, 154, 591, NULL, NULL, 'FUMIGATION 2*20FT CONTAINER *S0127 AND S0178', '2', '23600', '47200', 'fumigation', '2023-04-20', NULL, NULL),
(3706, 154, 591, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER  *EBKGO5048807\r\n MEDU5738710', '1', '23600', '23600', 'fumigation', '2023-04-20', NULL, NULL),
(3707, 154, 591, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER  * EBKGO5208743\r\nMSMU2164165', '1', '23600', '23600', 'fumigation', '2023-04-20', NULL, NULL),
(3708, 154, 591, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER *LOT NO 28/025/22191\r\nMRKU8255418', '1', '23600', '23600', 'fumigation', '2023-04-20', NULL, NULL),
(3709, 154, 591, NULL, NULL, 'FUMIGATION 2*20FT CONTAINER * DAR0141375 \r\nFCIU5289391, TEMU3192936,', '2', '23600', '47200', 'fumigation', '2023-04-20', NULL, NULL),
(3710, 154, 591, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER *S0192\r\n FTAU1529283', '1', '23600', '23600', 'fumigation', '2023-04-20', NULL, NULL),
(3711, 154, 591, NULL, NULL, 'FUMIGATION 5*20FT CONTAINER *225216464\r\n MRKU8255418, TRHU2838223, FTTU1377581, MSDU2732910', '5', '23600', '118000', 'fumigation', '2023-04-20', NULL, NULL),
(3717, 200, 592, NULL, NULL, 'FUMIGATION 9*20FT CONTAINERS BY USING PHOSPHINE GAS  BL DAR0141931 (09/04/2023)', '9', '25000', '225000', 'fumigation', '2023-04-21', NULL, NULL),
(3718, 200, 592, NULL, NULL, 'FUMIGATION 20*FT CONTAINERS BY USING PHOSPHINE GAS BL EBKG05382459 (09/04/2023)', '20', '25000', '500000', 'fumigation', '2023-04-21', NULL, NULL),
(3719, 200, 592, NULL, NULL, 'FUMIGATION 20FT CONTAINERS BY USING PHOSPHINE GAS BL DAR0141860 (08/04/2023)', '20', '25000', '500000', 'fumigation', '2023-04-21', NULL, NULL),
(3720, 200, 592, NULL, NULL, 'FUMIGATION 5*20FT CONTAINER BY USING PHOSPHINE GAS BL DAR0141949 (08/04/2023)', '5', '25000', '125000', 'fumigation', '2023-04-21', NULL, NULL),
(3737, 154, 593, NULL, NULL, 'FUMIGATION 2*20 CONTAINERS BY USING PHOSPHINE GAS  FBIU0088495, TEMU3965770', '2', '23600', '47200', 'fumigation', '2023-04-24', NULL, NULL),
(3738, 154, 593, NULL, NULL, 'FUMIGATION 01*20FT CONTAINERS BY USING PHOSPHINE GAS CAIU6993576', '1', '23600', '23600', 'fumigation', '2023-04-24', NULL, NULL),
(3739, 154, 593, NULL, NULL, 'FUMIGATION 1*20 FT CONTAINER BY USING PHOSPHINE GAS TLLU3440036', '1', '23600', '23600', 'fumigation', '2023-04-24', NULL, NULL),
(3740, 154, 593, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER BY USING PHOSPHINE GAS  KKTU7762839', '1', '23600', '23600', 'fumigation', '2023-04-24', NULL, NULL),
(3741, 154, 593, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER BY USING PHOSPHINE GAS  MSKU4458466', '1', '23600', '23600', 'fumigation', '2023-04-24', NULL, NULL),
(3742, 154, 593, NULL, NULL, 'FUMIGATION 2*20FT CONTAINERS BY PHOSPHINE GAS CMAU0702969, SGRU2092790', '2', '23600', '47200', 'fumigation', '2023-04-24', NULL, NULL),
(3743, 154, 593, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER BY USING PHOSPHINE GAS  MSDU1771770', '1', '23600', '23600', 'fumigation', '2023-04-24', NULL, NULL),
(3744, 154, 593, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER BY USING PHOSPHINE GAS TRHU2838223', '1', '23600', '23600', 'fumigation', '2023-04-24', NULL, NULL),
(3745, 154, 593, NULL, NULL, 'FUMIGATION 2*20FT CONTAINER BY USING PHOSPHINE GAS  FTAU1377581, MSDU2732910', '2', '23600', '47200', 'fumigation', '2023-04-24', NULL, NULL),
(3746, 154, 593, NULL, NULL, 'FUMIGATION 3*20FT  BY USING PHOSPHINE GAS CONTAINERS MRKU7535230, MSKU391747, MSKU2834060', '3', '23600', '70800', 'fumigation', '2023-04-24', NULL, NULL),
(3747, 154, 593, NULL, NULL, 'FUMIGATION 5*20FT CONTAINERS BY USING PHOSHINE GAS APZU3609290, TCLU7367721, GESU1179472, TLLU2799021, TEMU0900374,', '5', '23600', '118000', 'fumigation', '2023-04-24', NULL, NULL),
(3748, 154, 593, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER BY USING PHOSPHINE GAS  CMAU755022', '1', '23600', '23600', 'fumigation', '2023-04-24', NULL, NULL),
(3749, 154, 593, NULL, NULL, 'FUMIGATYION 1*20FT CONTAINERS BY USING PHOSPHINE GAS TLLU3434408', '1', '23600', '23600', 'fumigation', '2023-04-24', NULL, NULL),
(3750, 154, 593, NULL, NULL, 'FUMIGATION 1*20FT CONTAINER BY USING PHOSPHINE GAS TRHU2838223', '1', '23600', '23600', 'fumigation', '2023-04-24', NULL, NULL),
(3752, 200, 594, NULL, NULL, 'DATE: 09/04/2023 BL: DAR0141932 5*20 Ft CONTAINERS FUMIGATED BY USING METHYLY BROMIDE GAS', '5', '45000', '225000', 'fumigation', '2023-04-28', NULL, NULL),
(3753, 209, 595, NULL, NULL, 'PAPER LINING 40*40FT CONTAINERS', '40', '40000', '1600000', 'fumigation', '2023-05-02', NULL, NULL),
(3754, 209, 595, NULL, NULL, 'LABOUR CHARGES LINING THE CONTAINERS  (LINING AND ACCESSORIES (GUNDI))', '40', '12000', '480000', 'fumigation', '2023-05-02', NULL, NULL),
(3755, 209, 596, NULL, NULL, '40*40FT FUMIGATION BY USING PHOSPHINE GAS', '40', '29400', '1176000', 'fumigation', '2023-05-02', NULL, NULL),
(3758, 227, 597, NULL, NULL, '7 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS', '7', '50', '350', 'fumigation', '2023-05-03', NULL, NULL),
(3759, 163, 598, NULL, NULL, 'AFAGRI GLOBAL LTD 2 CONTAINER DESSICANT BL/NO DAR0141658', '2', '182900', '365800', 'fumigation', '2023-05-05', NULL, NULL),
(3760, 163, 598, NULL, NULL, 'AFAGRI GLOBAL LTD 5 CONTAINER DESSICANT BL/NO DAR0141193B', '5', '182900', '914500', 'fumigation', '2023-05-05', NULL, NULL),
(3761, 163, 598, NULL, NULL, 'AFAGRI GLOBAL LTD 4 CONTAINER DESSICANT BL/NO DAR0141896', '4', '182900', '731600', 'fumigation', '2023-05-05', NULL, NULL),
(3762, 160, 599, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS', '2', '50000', '100000', 'fumigation', '2023-05-09', NULL, NULL),
(3769, 200, 601, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142032 (23 APRIL 2023)', '10', '25000', '250000', 'fumigation', '2023-05-09', NULL, NULL),
(3770, 200, 601, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  MEDUTZ213322 (23 APRIL 2023)', '10', '25000', '250000', 'fumigation', '2023-05-09', NULL, NULL),
(3771, 200, 601, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  MEDUTZ213298 (23 APRIL 2023)', '10', '25000', '250000', 'fumigation', '2023-05-09', NULL, NULL),
(3772, 200, 601, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  DAR0141956 (2 MAY 2023)', '20', '25000', '500000', 'fumigation', '2023-05-09', NULL, NULL),
(3773, 200, 602, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142032 (23 APRIL 2023)', '10', '25000', '250000', 'fumigation', '2023-05-09', NULL, NULL),
(3774, 200, 602, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  MEDUTZ213322 (23 APRIL 2023)', '10', '25000', '250000', 'fumigation', '2023-05-09', NULL, NULL),
(3775, 200, 602, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  MEDUTZ213298 (23 APRIL 2023)', '10', '25000', '250000', 'fumigation', '2023-05-09', NULL, NULL),
(3776, 200, 602, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  DAR0141956 (2 MAY 2023)', '20', '25000', '500000', 'fumigation', '2023-05-09', NULL, NULL),
(3777, 200, 600, NULL, NULL, '15 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142132 (07 MAY 2023)', '15', '25000', '375000', 'fumigation', '2023-05-09', NULL, NULL),
(3778, 200, 600, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOPHINE GAS BL/NO DAR0142077 (03 MAY 2023)', '10', '25000', '250000', 'fumigation', '2023-05-09', NULL, NULL),
(3779, 200, 600, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 72626290 (03 MAY 2023)', '3', '25000', '75000', 'fumigation', '2023-05-09', NULL, NULL),
(3780, 200, 600, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 70501137 (03 MAY 2023)', '3', '25000', '75000', 'fumigation', '2023-05-09', NULL, NULL),
(3781, 200, 600, NULL, NULL, 'CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142150 (07 MAY 2023)', '10', '25000', '250000', 'fumigation', '2023-05-09', NULL, NULL),
(3782, 200, 603, NULL, NULL, '15 CONTAINER DESSICANT', '15', '150000', '2250000', 'fumigation', '2023-05-10', NULL, NULL),
(3783, 232, 604, NULL, NULL, 'DRY BAG DESSICANT 5 CARTON OF 20PCS/1KG BRAND SILICA GIL', '5', '160000', '800000', 'fumigation', '2023-05-12', NULL, NULL),
(3784, 232, 604, NULL, NULL, 'DRY BAG DESSICANT 1 CARTON OF 12PCS/1KG  BRAND SUPER DRY', '1', '170000', '170000', 'fumigation', '2023-05-12', NULL, NULL),
(3785, 156, 605, NULL, NULL, 'p', '10', '50000', '500000', 'fumigation', '2023-05-15', NULL, NULL),
(3796, 200, 607, NULL, NULL, '5 CONTAINERS DESSICANT (DRY BAGS 16 MAY 2023)', '5', '150000', '750000', 'fumigation', '2023-05-16', NULL, NULL),
(3797, 227, 608, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS', '5', '50', '250', 'fumigation', '2023-05-18', NULL, NULL),
(3798, 200, 609, NULL, NULL, '9 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142240 (18 MAY 2023)', '9', '25000', '225000', 'fumigation', '2023-05-19', NULL, NULL),
(3799, 200, 609, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142204 (19 MAY 2023)', '10', '25000', '250000', 'fumigation', '2023-05-19', NULL, NULL),
(3800, 200, 609, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 71218155 (19 MAY 2023)', '4', '25000', '100000', 'fumigation', '2023-05-19', NULL, NULL),
(3801, 200, 606, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142184 (11 MAY 2023)', '10', '25000', '250000', 'fumigation', '2023-05-16', NULL, NULL),
(3802, 200, 606, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142182 (11 MAY 2023)', '10', '025000', '250000', 'fumigation', '2023-05-16', NULL, NULL);
INSERT INTO `invoice` (`id`, `company_id`, `invoice_fumigation`, `staff_id`, `title`, `description`, `qty`, `price`, `amt`, `staff_type`, `date_in`, `created_at`, `updated_at`) VALUES
(3803, 200, 606, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO EBKG05672167 (15 MAY 2023)', '10', '025000', '250000', 'fumigation', '2023-05-16', NULL, NULL),
(3804, 200, 606, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO EBKG055744516 (13 MAY 2023)', '3', '025000', '75000', 'fumigation', '2023-05-16', NULL, NULL),
(3805, 200, 606, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0142192', '5', '045000', '225000', 'fumigation', '2023-05-16', NULL, NULL),
(3810, 200, 610, NULL, NULL, '5 CONTAIERS DESSICANT (DRY BAGS) 20 MAY 2023', '5', '150000', '750000', 'fumigation', '2023-05-22', NULL, NULL),
(3813, 200, 611, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580KB3000126 (21 MAY 2023)', '20', '25000', '500000', 'fumigation', '2023-05-22', NULL, NULL),
(3814, 200, 611, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS DAR0142203 (21MAY2023)', '05', '025000', '125000', 'fumigation', '2023-05-22', NULL, NULL),
(3816, 163, 612, NULL, NULL, '22 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR0142144', '22', '135700', '2985400', 'fumigation', '2023-05-24', NULL, NULL),
(3817, 163, 613, NULL, NULL, 'AFAGRI GLOBAL LTD 4 CONTAINER DESSICANT B/L DAR0142144', '4', '182900', '731600', 'fumigation', '2023-05-25', NULL, NULL),
(3818, 163, 613, NULL, NULL, 'AFAGRI GLOBAL LTD 4 CONTAINER DESSICANT B/L 71877176', '4', '182900', '731600', 'fumigation', '2023-05-25', NULL, NULL),
(3819, 163, 613, NULL, NULL, 'AFAGRI GLOBAL LTD 4 CONTAINER DESSICANT B/L 71203527', '4', '182900', '731600', 'fumigation', '2023-05-25', NULL, NULL),
(3820, 160, 614, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS (27 FEBR 2023)', '2', '50000', '100000', 'fumigation', '2023-05-25', NULL, NULL),
(3821, 209, 615, NULL, NULL, 'Fumigation 4*40Ft containers by using Phosphine Gas', '4', '29500', '118000', 'fumigation', '2023-05-26', NULL, NULL),
(3822, 209, 615, NULL, NULL, 'Paper lining, labor charge, gundi', '4', '61360', '245440', 'fumigation', '2023-05-26', NULL, NULL),
(3825, 209, 616, NULL, NULL, '1*40Ft CONTAINER FUMIGATION USING BY PHOSPHINE GAS', '1', '35400', '35400', 'fumigation', '2023-05-31', NULL, NULL),
(3826, 209, 616, NULL, NULL, 'Paper lining, labor charge, gundi', '1', '61360', '61360', 'fumigation', '2023-05-31', NULL, NULL),
(3827, 163, 617, NULL, NULL, 'JRK 5 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO 3000168', '5', '29500', '147500', 'fumigation', '2023-05-31', NULL, NULL),
(3829, 227, 618, NULL, NULL, '9 containers fumigated using by methyl bromide gas', '9', '50', '450', 'fumigation', '2023-06-05', NULL, NULL),
(3833, 200, 619, NULL, NULL, '5 Containers descant (dry bags 5/6/2023)', '5', '150000', '750000', 'fumigation', '2023-06-05', NULL, NULL),
(3834, 200, 619, NULL, NULL, '5 Containers descant (dry bags 7/6/2023)', '5', '0150000', '750000', 'fumigation', '2023-06-05', NULL, NULL),
(3835, 200, 621, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142250 (25 MAY 23)', '20', '20000', '400000', 'fumigation', '2023-06-16', NULL, NULL),
(3836, 200, 621, NULL, NULL, '22CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 70325450', '22', '20000', '440000', 'fumigation', '2023-06-16', NULL, NULL),
(3837, 200, 622, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142318 (5 JUNE 23', '5', '20000', '100000', 'fumigation', '2023-06-16', NULL, NULL),
(3838, 200, 622, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CNSLINNSA2300257  (11 JUNE 23', '20', '20000', '400000', 'fumigation', '2023-06-16', NULL, NULL),
(3839, 200, 622, NULL, NULL, '35 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300258 (11 JUNE 23', '35', '20000', '700000', 'fumigation', '2023-06-16', NULL, NULL),
(3840, 200, 622, NULL, NULL, '30 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  580BK3000162 ( 27 MAY 23', '30', '20000', '600000', 'fumigation', '2023-06-16', NULL, NULL),
(3841, 200, 622, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000153A (27 MAY 23)', '20', '20000', '400000', 'fumigation', '2023-06-16', NULL, NULL),
(3842, 200, 622, NULL, NULL, '20CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000153B (27 MAY 23', '20', '20000', '400000', 'fumigation', '2023-06-16', NULL, NULL),
(3843, 200, 622, NULL, NULL, '50 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINMU23001222 (3 JUNE 23', '50', '20000', '1000000', 'fumigation', '2023-06-16', NULL, NULL),
(3844, 200, 622, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSL2300253', '20', '20000', '400000', 'fumigation', '2023-06-16', NULL, NULL),
(3845, 200, 623, NULL, NULL, '5 CONTAINER DESSICANT (DRY BAGS ) 8 JUNE 23', '5', '150000', '750000', 'fumigation', '2023-06-16', NULL, NULL),
(3846, 200, 623, NULL, NULL, '10 CONTAINER DESSICANT (DRY BAGS) 10 JUNE 23', '10', '150000', '1500000', 'fumigation', '2023-06-16', NULL, NULL),
(3847, 200, 623, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) 16 JUNE 23', '2', '150000', '300000', 'fumigation', '2023-06-16', NULL, NULL),
(3858, 163, 620, NULL, NULL, '11 Afagri Global Ltd 11 contaners fumigated using by methyl bromide gas bl/no 72104874', '11', '135700', '1492700', 'fumigation', '2023-06-05', NULL, NULL),
(3859, 163, 620, NULL, NULL, '11 Afagri Global Ltd 11 contaners fumigated using by methyl bromide gas bl/no 71939108', '11', '135700', '1492700', 'fumigation', '2023-06-05', NULL, NULL),
(3860, 163, 620, NULL, NULL, '5 Afagri Global Ltd 11 contaners fumigated using by methyl bromide gas bl/no DAR0142462', '5', '0135700', '678500', 'fumigation', '2023-06-05', NULL, NULL),
(3861, 163, 620, NULL, NULL, '11 Afagri Global Ltd 11 contaners fumigated using by methyl bromide gas bl/no DAR0142446', '11', '0135700', '1492700', 'fumigation', '2023-06-05', NULL, NULL),
(3862, 163, 620, NULL, NULL, '5 Afagri Global Ltd 11 contaners fumigated using by methyl bromide gas bl/no DAR0142461', '5', '0135700', '678500', 'fumigation', '2023-06-05', NULL, NULL),
(3867, 163, 626, NULL, NULL, '7 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS B/L DAR0142445', '7', '29500', '206500', 'fumigation', '2023-06-19', NULL, NULL),
(3868, 163, 626, NULL, NULL, '5 CONTAINERS FUMIGATED USIING BY PHOSPHINE GAS B/L 6358297660', '5', '29500', '147500', 'fumigation', '2023-06-19', NULL, NULL),
(3869, 163, 626, NULL, NULL, '5 CONTAINERS FUMIGATED USIING BY PHOSPHINE GAS B/L 6358145620', '5', '29500', '147500', 'fumigation', '2023-06-19', NULL, NULL),
(3881, 192, 628, NULL, NULL, '12 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS @50USD PER ONE CONTAINER (@50USDx2300)', '12', '115000', '1380000', 'fumigation', '2023-06-24', NULL, NULL),
(3882, 154, 629, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSM2702445, MSMU2702276, MSDU2575745)', '3', '23600', '70800', 'fumigation', '2023-06-26', NULL, NULL),
(3883, 154, 629, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MEDU5789229, MSMU2698330', '2', '23600', '47200', 'fumigation', '2023-06-26', NULL, NULL),
(3884, 154, 629, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (BEAU2780670, FCIU4472582, MEDU5129056)', '3', '23600', '70800', 'fumigation', '2023-06-26', NULL, NULL),
(3885, 154, 629, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (CXDU1833316)', '1', '23600', '23600', 'fumigation', '2023-06-26', NULL, NULL),
(3886, 154, 629, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSDU2174948, MSMU1018926, MSMU2732856)', '3', '23600', '70800', 'fumigation', '2023-06-26', NULL, NULL),
(3887, 154, 629, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSDU1596065, MSMU2019336)', '2', '23600', '47200', 'fumigation', '2023-06-26', NULL, NULL),
(3888, 154, 629, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSDU2524347, FCIU5820147, MSMU2368282)', '3', '23600', '70800', 'fumigation', '2023-06-26', NULL, NULL),
(3889, 154, 629, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS\r\n (EITU0149702)', '1', '23600', '23600', 'fumigation', '2023-06-26', NULL, NULL),
(3890, 154, 629, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (FSCU3800264, FTAU1522123, MEDU5424196, MSMU2116418,MSMU2733317)', '5', '23600', '118000', 'fumigation', '2023-06-26', NULL, NULL),
(3891, 154, 629, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSDU2558990, MSDU1332416, MSMU1092055)', '3', '23600', '70800', 'fumigation', '2023-06-26', NULL, NULL),
(3892, 154, 629, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (WECU2061370)', '1', '23600', '23600', 'fumigation', '2023-06-26', NULL, NULL),
(3893, 154, 629, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSMU2702445, MSMU2702276, MSDU2575745)', '3', '23600', '70800', 'fumigation', '2023-06-26', NULL, NULL),
(3894, 154, 629, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (FCIU3158999)', '1', '23600', '23600', 'fumigation', '2023-06-26', NULL, NULL),
(3895, 154, 629, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (TTNU1146493)', '1', '23600', '23600', 'fumigation', '2023-06-26', NULL, NULL),
(3896, 154, 629, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSDU2174948, MSMU1018926, MSMU2732856)', '3', '23600', '70800', 'fumigation', '2023-06-26', NULL, NULL),
(3897, 154, 629, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MRKU9035064)', '1', '23600', '23600', 'fumigation', '2023-06-26', NULL, NULL),
(3898, 154, 629, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSDU1684886, TGBU2555683, MSMU1516404, MSMU2100812, MSMU1059421, MEDU6613384, MSDU1328313, MSMU1607401, FCIU6367400, MSDU1528380.', '10', '23600', '236000', 'fumigation', '2023-06-26', NULL, NULL),
(3899, 154, 629, NULL, NULL, '6 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (HASU1012390, HASU1410731, MRKU7501184, MRKU9255520 SUDU1961402, TCLU2418908)', '6', '23600', '141600', 'fumigation', '2023-06-26', NULL, NULL),
(3900, 154, 629, NULL, NULL, '11 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (HASU1420576, MRKU6505884, MRKU6995570, MRKU528966, MRKU7649274, MSKU3397670, MSKU5018029, MSKU7736386, PONU02866728, PONU0541530, SUDU7382959)', '11', '23600', '259600', 'fumigation', '2023-06-26', NULL, NULL),
(3901, 154, 629, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSMU2671447, TLLU3262464, MSMU2687839, MSDU1848608, MSMU1419472, MSMU204911, MSMU2308724, MSMU2682605, MSMU26878790, MSMU2698350)', '10', '23600', '236000', 'fumigation', '2023-06-26', NULL, NULL),
(3902, 154, 629, NULL, NULL, '11 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (FCIU4717622, MSDU2302463, MSMU136927, TCKU1284469, MSMU1172654, MSMU2698406, MSDU2945602, MSMU1692050, MSMU1800869, MSMU2682523, MSDU1899950', '11', '23600', '259600', 'fumigation', '2023-06-26', NULL, NULL),
(3903, 154, 629, NULL, NULL, '8 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MRKU8800549, MSKU7423099, MSKU7990955, PONU2081861, SUDU7728532, TCLU070962, TRHU2824739, TRLU9299332.)', '8', '23600', '188800', 'fumigation', '2023-06-26', NULL, NULL),
(3904, 154, 629, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (SUDU7572157)', '1', '23600', '23600', 'fumigation', '2023-06-26', NULL, NULL),
(3905, 154, 629, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (TGBU3236295)', '1', '23600', '23600', 'fumigation', '2023-06-26', NULL, NULL),
(3906, 154, 629, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (NYKU3871859)', '1', '23600', '23600', 'fumigation', '2023-06-26', NULL, NULL),
(3907, 154, 629, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSKU5541873, MRKU762164, MSKU7660104)', '3', '23600', '70800', 'fumigation', '2023-06-26', NULL, NULL),
(3908, 154, 629, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS(BMOU5336746, EMCU82069310', '2', '23600', '47200', 'fumigation', '2023-06-26', NULL, NULL),
(3909, 154, 629, NULL, NULL, NULL, '1', '0', '0', 'fumigation', '2023-06-26', NULL, NULL),
(3916, 209, 630, NULL, NULL, '12 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS', '12', '29500', '354000', 'fumigation', '2023-06-26', NULL, NULL),
(3917, 209, 630, NULL, NULL, '12 PAPER LINING', '12', '40000', '480000', 'fumigation', '2023-06-26', NULL, NULL),
(3918, 209, 630, NULL, NULL, 'LABOUR CHARGES LINING THE CONTAINERS  (LINING AND ACCESSORIES (GUNDI)', '1', '12000', '12000', 'fumigation', '2023-06-26', NULL, NULL),
(3947, 227, 633, NULL, NULL, '6 Containers fumigated using by methly bromide gas', '6', '50', '300', 'fumigation', '2023-07-03', NULL, NULL),
(3948, 209, 634, NULL, NULL, '97 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS', '97', '29500', '2861500', 'fumigation', '2023-07-03', NULL, NULL),
(3949, 209, 634, NULL, NULL, '97 PAPER LINING', '97', '42700', '4141900', 'fumigation', '2023-07-03', NULL, NULL),
(3950, 209, 634, NULL, NULL, '13 CONTAINER DESSICANT (DRY BAGS)', '13', '200600', '2607800', 'fumigation', '2023-07-03', NULL, NULL),
(3951, 209, 634, NULL, NULL, '97 GLUE, LABOUR CHARGE AND CONTAINER LINING', '97', '12000', '1164000', 'fumigation', '2023-07-03', NULL, NULL),
(3952, 209, 634, NULL, NULL, 'GODOWN FUMIGATION (MEASUERD IN TONS)', '20', '2500', '50000', 'fumigation', '2023-07-03', NULL, NULL),
(3953, 209, 634, NULL, NULL, '1 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS', '1', '129000', '129000', 'fumigation', '2023-07-03', NULL, NULL),
(3954, 233, 635, NULL, NULL, '50 CONTAINERS DESSICANT (DRY BAGS)', '50', '150000', '7500000', 'fumigation', '2023-07-03', NULL, NULL),
(4015, 154, 632, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS  (mrku90355064)', '1', '23600', '23600', 'fumigation', '2023-06-27', NULL, NULL),
(4016, 154, 632, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (EITU0149702', '1', '023600', '23600', 'fumigation', '2023-06-27', NULL, NULL),
(4017, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (FSIU3800264, FTAU1522123, MEDU5424149, MSMU2116418, MSMU2733317)', '5', '023600', '118000', 'fumigation', '2023-06-27', NULL, NULL),
(4018, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (WECU2061370)', '1', '023600', '23600', 'fumigation', '2023-06-27', NULL, NULL),
(4019, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (FCIU315899)', '1', '023600', '23600', 'fumigation', '2023-06-27', NULL, NULL),
(4020, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSDU2524347, FCIU1582147, MSMU2368282)', '3', '023600', '70800', 'fumigation', '2023-06-27', NULL, NULL),
(4021, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSDU1596065, MSMU2019333)', '2', '023600', '47200', 'fumigation', '2023-06-27', NULL, NULL),
(4022, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSDU2174948, MSMU1018926, MSMU2732856)', '3', '023600', '70800', 'fumigation', '2023-06-27', NULL, NULL),
(4023, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (CXDU1833316)', '1', '023600', '23600', 'fumigation', '2023-06-27', NULL, NULL),
(4024, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (BEAU2780670, FCIU4472582, MEDU5129056)', '3', '023600', '70800', 'fumigation', '2023-06-27', NULL, NULL),
(4025, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MEDU789229, MSMU5129056)', '2', '023600', '47200', 'fumigation', '2023-06-27', NULL, NULL),
(4026, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSMU2702445, MSMU2702276, MSDU2575743', '3', '023600', '70800', 'fumigation', '2023-06-27', NULL, NULL),
(4027, 154, 632, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (NYKU3502341, KKTU8174510', '2', '023600', '47200', 'fumigation', '2023-06-27', NULL, NULL),
(4028, 154, 632, NULL, NULL, NULL, '1', '0', '0', 'fumigation', '2023-06-27', NULL, NULL),
(4029, 154, 632, NULL, NULL, NULL, '1', '0', '0', 'fumigation', '2023-06-27', NULL, NULL),
(4030, 209, 636, NULL, NULL, '17 CONTAINER DESSICANT (DRY BAGS)', '17', '150000', '2550000', 'fumigation', '2023-07-05', NULL, NULL),
(4031, 154, 631, NULL, NULL, '11 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (FCIU4717622, MSDU2302463, MSMU136927, TCKU1284469, MSMU1172654, MSMU2698406, MSDU2945602, MSMU1692050, MSMU1800869, MSMU2682523, MSDU1899950', '11', '23600', '259600', 'fumigation', '2023-06-27', NULL, NULL),
(4032, 154, 631, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSMU2671447, TLLU3262464, MSMU2687839, MSDU1848608, MSMU1419472, MSMU204911, MSMU2308724, MSMU2682605, MSMU26878790, MSMU2698350)', '10', '23600', '236000', 'fumigation', '2023-06-27', NULL, NULL),
(4033, 154, 631, NULL, NULL, '11 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (HASU1420576, MRKU6505884, MRKU6995570, MRKU528966, MRKU7649274, MSKU3397670, MSKU5018029, MSKU7736386, PONU02866728, PONU0541530, SUDU7382959)', '11', '23600', '259600', 'fumigation', '2023-06-27', NULL, NULL),
(4034, 154, 631, NULL, NULL, '6 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (HASU1012390, HASU1410731, MRKU7501184, MRKU9255520 SUDU1961402, TCLU2418908)', '6', '23600', '141600', 'fumigation', '2023-06-27', NULL, NULL),
(4035, 154, 631, NULL, NULL, '10 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MSDU1684886, TGBU2555683, MSMU1516404, MSMU2100812, MSMU1059421, MEDU6613384, MSDU1328313, MSMU1607401, FCIU6367400, MSDU1528380.', '10', '23600', '236000', 'fumigation', '2023-06-27', NULL, NULL),
(4036, 154, 631, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (SUDU7572157)', '1', '23600', '23600', 'fumigation', '2023-06-27', NULL, NULL),
(4037, 154, 631, NULL, NULL, '8 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MRKU8800549, MSKU7423099, MSKU7990955, PONU2081861, SUDU7728532, TCLU070962, TRHU2824739, TRLU9299332.)', '8', '23600', '188800', 'fumigation', '2023-06-27', NULL, NULL),
(4038, 154, 631, NULL, NULL, 'null', '1', '0', '0', 'fumigation', '2023-06-27', NULL, NULL),
(4040, 160, 637, NULL, NULL, '2 containers fumigated using by methyl bromide gas', '5', '50000', '250000', 'fumigation', '2023-07-10', NULL, NULL),
(4041, 163, 638, NULL, NULL, '22 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR0142480', '22', '135700', '2985400', 'fumigation', '2023-07-10', NULL, NULL),
(4042, 163, 638, NULL, NULL, '22 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0142448', '22', '135700', '2985400', 'fumigation', '2023-07-10', NULL, NULL),
(4043, 163, 639, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 228303959', '10', '135700', '1357000', 'fumigation', '2023-07-10', NULL, NULL),
(4044, 163, 639, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 228342572', '10', '135700', '1357000', 'fumigation', '2023-07-10', NULL, NULL),
(4045, 163, 639, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0142479', '10', '135700', '1357000', 'fumigation', '2023-07-10', NULL, NULL),
(4046, 163, 624, NULL, NULL, '4 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0142446', '4', '182900', '731600', 'fumigation', '2023-06-19', NULL, NULL),
(4047, 163, 624, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO228303959', '2', '182900', '365800', 'fumigation', '2023-06-19', NULL, NULL),
(4048, 163, 624, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAG) BL/NO DAR0142462', '1', '182900', '182900', 'fumigation', '2023-06-19', NULL, NULL),
(4049, 163, 624, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAG) BL/ NO DAR0142447', '2', '182900', '365800', 'fumigation', '2023-06-19', NULL, NULL),
(4050, 163, 624, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAG) BL/NO  DAR0142479', '2', '0182900', '365800', 'fumigation', '2023-06-19', NULL, NULL),
(4051, 163, 624, NULL, NULL, '5 CONTA INER DESSICANT (DRY BAG) BL/NO DAR0142448', '5', '0182900', '914500', 'fumigation', '2023-06-19', NULL, NULL),
(4052, 163, 624, NULL, NULL, '5  CONTA INER DESSICANT (DRY BAG) BL/NO DAR0142480', '5', '0182900', '914500', 'fumigation', '2023-06-19', NULL, NULL),
(4053, 163, 624, NULL, NULL, '5  CONTA INER DESSICANT (DRY BAG)BL/NO DAR0142835', '5', '0182900', '914500', 'fumigation', '2023-06-19', NULL, NULL),
(4054, 163, 624, NULL, NULL, '2  CONTA INER DESSICANT (DRY BAG) BL/NO DAR01422833', '2', '0182900', '365800', 'fumigation', '2023-06-19', NULL, NULL),
(4055, 163, 624, NULL, NULL, '5 CONTA INER DESSICANT (DRY BAG) BL/NO DAR01422836', '5', '0182900', '914500', 'fumigation', '2023-06-19', NULL, NULL),
(4090, 209, 641, NULL, NULL, '26 CONTAINERS FURMIGATED USING BY PHOSPHINE GAS', '26', '29500', '767000', 'fumigation', '2023-07-11', NULL, NULL),
(4091, 209, 641, NULL, NULL, '26 PAPER LINING', '26', '47200', '1227200', 'fumigation', '2023-07-11', NULL, NULL),
(4092, 209, 641, NULL, NULL, 'CASUAL LABOR (LINING, GLUE)', '26', '12000', '312000', 'fumigation', '2023-07-11', NULL, NULL),
(4213, 200, 642, NULL, NULL, '49 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142483', '49', '20000', '980000', 'fumigation', '2023-07-13', NULL, NULL),
(4215, 200, 640, NULL, NULL, '21 CONTAINERS FUMIGATED USING BY  PHOSPHINE GAS BL/NO 580BK3000202) 3/07/2023', '21', '20000', '420000', 'fumigation', '2023-07-11', NULL, NULL),
(4216, 200, 640, NULL, NULL, '8 CONTAINERS FUMIGATED USING BY  PHOSPHINE GAS BL/NO DAR0142398) 3/07/2023', '8', '20000', '160000', 'fumigation', '2023-07-11', NULL, NULL),
(4217, 200, 640, NULL, NULL, '100 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO EBKG05981325) 06/07/2023', '100', '20000', '2000000', 'fumigation', '2023-07-11', NULL, NULL),
(4218, 200, 640, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO EBKG06005843) 06/07/2023', '10', '20000', '200000', 'fumigation', '2023-07-11', NULL, NULL),
(4219, 200, 640, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000228) 06/07/2023', '20', '20000', '400000', 'fumigation', '2023-07-11', NULL, NULL),
(4220, 200, 640, NULL, NULL, '7 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000192) 24/06/2023', '7', '20000', '140000', 'fumigation', '2023-07-11', NULL, NULL),
(4221, 200, 640, NULL, NULL, '20  CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000178A) 23/06/2023', '20', '20000', '400000', 'fumigation', '2023-07-11', NULL, NULL),
(4222, 200, 640, NULL, NULL, '56 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  CSLINNSA23002629) 22/06/2023', '56', '20000', '1120000', 'fumigation', '2023-07-11', NULL, NULL),
(4223, 200, 640, NULL, NULL, '37 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300264) 22/06/2023', '37', '20000', '740000', 'fumigation', '2023-07-11', NULL, NULL),
(4224, 200, 640, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000204) 22/06/2023', '20', '20000', '400000', 'fumigation', '2023-07-11', NULL, NULL),
(4225, 200, 640, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 72930130) 20/07/2023', '20', '20000', '400000', 'fumigation', '2023-07-11', NULL, NULL),
(4226, 200, 640, NULL, NULL, '21 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 70283137) 20/07/2023', '21', '20000', '420000', 'fumigation', '2023-07-11', NULL, NULL),
(4227, 200, 640, NULL, NULL, '21 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 70718151) 20/06/2023', '21', '20000', '420000', 'fumigation', '2023-07-11', NULL, NULL),
(4228, 200, 640, NULL, NULL, '20  CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000178B', '20', '20000', '400000', 'fumigation', '2023-07-11', NULL, NULL),
(4229, 200, 640, NULL, NULL, 'CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 71913821 (02/06/2023', '2', '20000', '40000', 'fumigation', '2023-07-11', NULL, NULL),
(4230, 200, 640, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 71062034 (01/06/2023)', '2', '20000', '40000', 'fumigation', '2023-07-11', NULL, NULL),
(4231, 200, 640, NULL, NULL, '20 CONTAINERS FUMIGATED  USING BY PHOSPHINE GAS  DAR0142257 (18/06/2023', '20', '20000', '400000', 'fumigation', '2023-07-11', NULL, NULL),
(4232, 200, 640, NULL, NULL, '5 CONTAINERS FUMIGATED  USING BY PHOSPHINE GAS  BL/NO EBKG06034545 (6/7/2023)', '5', '020000', '100000', 'fumigation', '2023-07-11', NULL, NULL),
(4233, 200, 640, NULL, NULL, 'CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO DAR300079300', '4', '020000', '80000', 'fumigation', '2023-07-11', NULL, NULL),
(4234, 200, 640, NULL, NULL, '10 CONTAINERS FUMIGATED  USING BY PHOSPHINE GAS  B/NO CSLINNSA2300272 (07/07/2023', '10', '020000', '200000', 'fumigation', '2023-07-11', NULL, NULL),
(4241, 154, 645, NULL, NULL, 'LOADING AND OFFLOADING@LABOUR CHARGER TSH 200 PER BAG ADMINISTRATION CHARGER TSH 50 TOTAL AMOUNT 250/= PLUS VAT TSH 295', '1', '295', '295', 'fumigation', '2023-07-21', NULL, NULL),
(4242, 154, 645, NULL, NULL, 'BULK WITHOUT MARK @LABOR CHARGERS TSH 350 PER BAG, ADMINISTRATION CHARGERS TSH 50 TOTAL AMOUNT 400/= PLUS VAT TSH 472', '1', '472', '472', 'fumigation', '2023-07-21', NULL, NULL),
(4243, 234, 646, NULL, NULL, 'Stuffing, Marking and weight', '1', '600', '600', 'fumigation', '2023-07-24', NULL, NULL),
(4244, 234, 646, NULL, NULL, 'stuffing and weight', '1', '500', '500', 'fumigation', '2023-07-24', NULL, NULL),
(4245, 234, 647, NULL, NULL, 'Stuffing, Marking and weight', '1', '600', '600', 'fumigation', '2023-07-24', NULL, NULL),
(4246, 234, 647, NULL, NULL, 'stuffing and weight', '1', '500', '500', 'fumigation', '2023-07-24', NULL, NULL),
(4284, 160, 651, NULL, NULL, '1 CONTAINER FUMIGATED USING BY METHYL BROMIDE GAS', '1', '50000', '50000', 'fumigation', '2023-07-25', NULL, NULL),
(4287, 200, 649, NULL, NULL, '21 CONTAIINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 71553563 (18/07/2023', '21', '20000', '420000', 'fumigation', '2023-07-25', NULL, NULL),
(4288, 200, 649, NULL, NULL, '10 CONTAIINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 2300283 (18/07/2023', '10', '20000', '200000', 'fumigation', '2023-07-25', NULL, NULL),
(4289, 200, 649, NULL, NULL, '10CONTAIINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 2300286 (20/07/2023', '10', '20000', '200000', 'fumigation', '2023-07-25', NULL, NULL),
(4290, 200, 649, NULL, NULL, '30 CONTAIINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000246 (10/07/2023)', '30', '20000', '600000', 'fumigation', '2023-07-25', NULL, NULL),
(4291, 200, 649, NULL, NULL, '60 CONTAIINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142874 (16/07/2023', '60', '20000', '1200000', 'fumigation', '2023-07-25', NULL, NULL),
(4292, 200, 649, NULL, NULL, 'CONTAIINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 2300269', '14', '20000', '280000', 'fumigation', '2023-07-25', NULL, NULL),
(4293, 200, 649, NULL, NULL, '20 CONTAIINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO SCL23000277 (07/07/2023', '20', '20000', '400000', 'fumigation', '2023-07-25', NULL, NULL),
(4298, 200, 655, NULL, NULL, '1 CONTAINERS DESSICANT (DRY BAGS) 27/JULY/2023', '1', '150000', '150000', 'fumigation', '2023-07-27', NULL, NULL),
(4300, 235, 657, NULL, NULL, 'Transportation Service for June and July 2023', '1', '2900000', '2900000', 'fumigation', '2023-07-28', NULL, NULL),
(4302, 235, 658, NULL, NULL, 'Transportation Service for June and July 2023', '1', '2900000', '2900000', 'fumigation', '2023-07-28', NULL, NULL),
(4303, 238, 659, NULL, NULL, 'Transportation Services for June and July 2023', '1', '2900000', '2900000', 'fumigation', '2023-07-28', NULL, NULL),
(4365, 154, 660, NULL, NULL, '1 CONTAINER FUMIGATION USING BY PHOSPHINE GAS (00492225', '1', '23600', '23600', 'fumigation', '2023-07-31', NULL, NULL),
(4366, 154, 660, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (00491056))', '2', '23600', '47200', 'fumigation', '2023-07-31', NULL, NULL),
(4367, 154, 660, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (00495514)', '2', '23600', '47200', 'fumigation', '2023-07-31', NULL, NULL),
(4368, 154, 660, NULL, NULL, '1 CONTAINER FUMIGATION USING BY PHOSPHINE GAS (00488533)', '1', '23600', '23600', 'fumigation', '2023-07-31', NULL, NULL),
(4369, 154, 660, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (00497374', '2', '023600', '47200', 'fumigation', '2023-07-31', NULL, NULL),
(4374, 154, 665, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (LYGU0102330, LYGU0101483, MSMU1208211, LYGU010247, MSDU1602168)', '5', '50', '250', 'fumigation', '2023-08-01', NULL, NULL),
(4375, 200, 667, NULL, NULL, '60 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/ NO 71552122 (30/07/2023', '60', '20000', '1200000', 'fumigation', '2023-08-04', NULL, NULL),
(4376, 200, 667, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/ NO 71372079 30/07/2023', '20', '20000', '400000', 'fumigation', '2023-08-04', NULL, NULL),
(4377, 200, 667, NULL, NULL, '30 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/ NO DAR0142486', '30', '20000', '600000', 'fumigation', '2023-08-04', NULL, NULL),
(4378, 200, 667, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/ NO 71664087 2/08/2023', '20', '20000', '400000', 'fumigation', '2023-08-04', NULL, NULL),
(4379, 200, 667, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/ NO DAR0143118 (31/07/2023', '20', '20000', '400000', 'fumigation', '2023-08-04', NULL, NULL),
(4380, 200, 667, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/ NO 229599663 (02/08/2023)', '10', '20000', '200000', 'fumigation', '2023-08-04', NULL, NULL),
(4381, 200, 667, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/ NO 229563682', '10', '20000', '200000', 'fumigation', '2023-08-04', NULL, NULL),
(4382, 200, 667, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/ NO 71414504', '5', '20000', '100000', 'fumigation', '2023-08-04', NULL, NULL),
(4383, 163, 668, NULL, NULL, '14 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0143153', '14', '29500', '413000', 'fumigation', '2023-08-04', NULL, NULL),
(4384, 163, 668, NULL, NULL, '7 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/ NO DAR0143091', '7', '29500', '206500', 'fumigation', '2023-08-04', NULL, NULL),
(4385, 163, 668, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/ NO 228904836', '10', '29500', '295000', 'fumigation', '2023-08-04', NULL, NULL),
(4408, 226, 664, NULL, NULL, '1x40FT CONTAINER FUMIGATED USING BY PHOSPHINE GAS', '1', '115000', '115000', 'fumigation', '2023-07-31', NULL, NULL),
(4409, 163, 670, NULL, NULL, '11 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0142840', '11', '135700', '1492700', 'fumigation', '2023-08-04', NULL, NULL),
(4410, 163, 670, NULL, NULL, '11 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR0142838A', '11', '135700', '1492700', 'fumigation', '2023-08-04', NULL, NULL),
(4411, 163, 670, NULL, NULL, '11 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0142839', '11', '135700', '1492700', 'fumigation', '2023-08-04', NULL, NULL),
(4412, 163, 670, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143074', '5', '135700', '678500', 'fumigation', '2023-08-04', NULL, NULL),
(4413, 163, 670, NULL, NULL, '11 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0142833', '11', '135700', '1492700', 'fumigation', '2023-08-04', NULL, NULL),
(4414, 163, 670, NULL, NULL, '11 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143004', '11', '135700', '1492700', 'fumigation', '2023-08-04', NULL, NULL),
(4415, 163, 670, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143156', '5', '135700', '678500', 'fumigation', '2023-08-04', NULL, NULL),
(4416, 163, 670, NULL, NULL, 'CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143112', '5', '135700', '678500', 'fumigation', '2023-08-04', NULL, NULL),
(4417, 163, 670, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS DAR0143093', '5', '0135700', '678500', 'fumigation', '2023-08-04', NULL, NULL),
(4418, 163, 662, NULL, NULL, 'AFAGRI GLOBAL LTD 2 SILCON DESSICANT (DRY BAGS) BL/NO  DAR0142839', '2', '182900', '365800', 'fumigation', '2023-07-31', NULL, NULL),
(4419, 163, 662, NULL, NULL, 'AFAGRI GLOBAL LTD 2 SILCON DESSICANT (DRY BAGS) BL/NO  DAR0143004', '2', '182900', '365800', 'fumigation', '2023-07-31', NULL, NULL),
(4420, 163, 662, NULL, NULL, 'AFAGRI GLOBAL LTD 3 SILCON DESSICANT (DRY BAGS) BL/NO DAR0142840', '3', '182900', '548700', 'fumigation', '2023-07-31', NULL, NULL),
(4421, 163, 662, NULL, NULL, 'AFAGRI GLOBAL LTD 2 SILCON DESSICANT (DRY BAGS) BL/NO DAR0142838A', '2', '182900', '365800', 'fumigation', '2023-07-31', NULL, NULL),
(4422, 163, 662, NULL, NULL, 'AFAGRI GLOBAL LTD 3 SILCON DESSICANT (DRY BAGS) BL/NO DAR0142838B', '3', '182900', '548700', 'fumigation', '2023-07-31', NULL, NULL),
(4423, 163, 662, NULL, NULL, 'AFAGRI GLOBAL LTD 5 SILCON DESSICANT (DRY BAGS) BL/NO DAR0143347', '5', '182900', '914500', 'fumigation', '2023-07-31', NULL, NULL),
(4424, 163, 662, NULL, NULL, 'AFAGRI GLOBAL LTD 8 SILCON DESSICANT (DRY BAGS) BL/NO DAR0143346', '8', '182900', '1463200', 'fumigation', '2023-07-31', NULL, NULL),
(4425, 163, 662, NULL, NULL, 'AFAGRI GLOBAL LTD  2 SILCON DESSICANT (DRY BAGS) BL/NO DAR0142873', '2', '182900', '365800', 'fumigation', '2023-07-31', NULL, NULL),
(4426, 163, 662, NULL, NULL, 'AFAGRI GLOBAL LTD 5 SILCON DESSICANT (DRY BAGS) BL/NO 71375721', '5', '182900', '914500', 'fumigation', '2023-07-31', NULL, NULL),
(4427, 163, 662, NULL, NULL, 'AFAGRI GLOBAL LTD 5 SILCON DESSICANT (DRY BAGS) BL/NO 71306962', '5', '182900', '914500', 'fumigation', '2023-07-31', NULL, NULL),
(4443, 200, 644, NULL, NULL, '49 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0142483', '49', '20000', '980000', 'fumigation', '2023-07-21', NULL, NULL),
(4444, 227, 673, NULL, NULL, '22 Containers Fumigated using by Methyl Bromide Gas', '22', '50', '1100', 'fumigation', '2023-08-14', NULL, NULL),
(4452, 227, 674, NULL, NULL, '22 Containers Fumigated using by Methyl Bromide Gas', '22', '127500', '2805000', 'fumigation', '2023-08-14', NULL, NULL),
(4459, 200, 675, NULL, NULL, '10 containers fumigated using by phosphine gas bl/no 229559687 (10/08/23)', '10', '20000', '200000', 'fumigation', '2023-08-15', NULL, NULL),
(4460, 200, 675, NULL, NULL, '10 containers fumigated using by phosphine gas bl/no 229559652 (10/08/23)', '10', '20000', '200000', 'fumigation', '2023-08-15', NULL, NULL),
(4461, 200, 675, NULL, NULL, '10 containers fumigated using by phosphine gas bl/no 229559666  (10/08/23)', '10', '20000', '200000', 'fumigation', '2023-08-15', NULL, NULL),
(4462, 200, 675, NULL, NULL, '40 containers fumigated using by phosphine gas bl/no 229860861 (09/08/2023', '40', '20000', '800000', 'fumigation', '2023-08-15', NULL, NULL),
(4463, 200, 675, NULL, NULL, '20 containers fumigated using by phosphine gas bl/no 229764250 (09/08/2023)', '20', '20000', '400000', 'fumigation', '2023-08-15', NULL, NULL),
(4464, 200, 675, NULL, NULL, '20 containers fumigated using by phosphine gas bl/no 229606033 (09/08/2023)', '20', '20000', '400000', 'fumigation', '2023-08-15', NULL, NULL),
(4468, 209, 650, NULL, NULL, 'The amount paid is five million and the remaining amount is two million thirty eight six hundred', '1', '2038600', '2038600', 'fumigation', '2023-07-25', NULL, NULL),
(4547, 239, 678, NULL, NULL, 'Fumigation Services to the Go down, Offices and all surrounding Environment', '1', '1000000', '1000000', 'fumigation', '2023-08-16', NULL, NULL),
(4548, 238, 682, NULL, NULL, 'TRANSPORTATION SERVICES FOR AUGUST', '1', '1450000', '1450000', 'fumigation', '2023-08-30', NULL, NULL),
(4549, 238, 681, NULL, NULL, 'TRANSPORTATION SERVICES FOR AUGUST', '1', '1450000', '1450000', 'fumigation', '2023-08-30', NULL, NULL),
(4550, 227, 683, NULL, NULL, '7 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS', '7', '50', '350', 'fumigation', '2023-09-04', NULL, NULL),
(4583, 163, 684, NULL, NULL, 'BOSS ENTERPRISES LTD 1 SILCON CONTAINER DESSICANT  (DRY BAGS) BL/NO 71375721', '1', '182900', '182900', 'fumigation', '2023-09-08', NULL, NULL),
(4584, 163, 684, NULL, NULL, 'AFAGRI GLOBAL  LTD 2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143155', '2', '182900', '365800', 'fumigation', '2023-09-08', NULL, NULL),
(4585, 163, 684, NULL, NULL, 'AFAGRI GLOBAL LTD 2 SILCON CONTAINERS DESSICANT (DRY BAGS) BL/NO DAR0143155', '2', '182900', '365800', 'fumigation', '2023-09-08', NULL, NULL),
(4586, 163, 684, NULL, NULL, 'AFAGRI GLOBAL LTD 3 SILCON CONTAINERS DESSICANT (DRY BAGS) BL/NO DAR0143650', '3', '182900', '548700', 'fumigation', '2023-09-08', NULL, NULL),
(4587, 163, 684, NULL, NULL, 'AFAGRI GLOBAL LTD 2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR 0143645', '2', '182900', '365800', 'fumigation', '2023-09-08', NULL, NULL),
(4588, 163, 684, NULL, NULL, 'AFAGRI  GLOBAL LTD 2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143653', '2', '182900', '365800', 'fumigation', '2023-09-08', NULL, NULL),
(4589, 163, 684, NULL, NULL, 'AH ZAMBIA 2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143521', '2', '182900', '365800', 'fumigation', '2023-09-08', NULL, NULL),
(4590, 163, 684, NULL, NULL, 'MAHVIR IMPEX 1 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143526', '1', '182900', '182900', 'fumigation', '2023-09-08', NULL, NULL),
(4591, 163, 684, NULL, NULL, 'AFAGRI GLOBAL LTD 2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143654', '2', '182900', '365800', 'fumigation', '2023-09-08', NULL, NULL),
(4592, 163, 684, NULL, NULL, 'AFAGRI GLOBAL LTD 2 SILCON CONTAINER DESSICANT (DRY BAGS ) BL/NO DAR0143657', '2', '182900', '365800', 'fumigation', '2023-09-08', NULL, NULL),
(4593, 163, 684, NULL, NULL, 'AFAGRI GLOBAL LTD 4 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143665', '4', '182900', '731600', 'fumigation', '2023-09-08', NULL, NULL),
(4594, 163, 684, NULL, NULL, 'MAXIMA SOLUTION/ SARAN 2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143652', '2', '182900', '365800', 'fumigation', '2023-09-08', NULL, NULL),
(4595, 163, 684, NULL, NULL, 'AFAGRI GLOBAL LTD 2 SILCON CONTAINERS DESSICANT (DRY BAGS) BL/NO DAR0143522B', '2', '182900', '365800', 'fumigation', '2023-09-08', NULL, NULL),
(4596, 163, 684, NULL, NULL, 'AFAGRI GLOBAL  LTD 4 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143664', '4', '182900', '731600', 'fumigation', '2023-09-08', NULL, NULL),
(4597, 163, 684, NULL, NULL, 'AFAGRI GLOBAL LTD 1 SILCON CONTAINERS DESSICANT (DRY BAGS) BL/NO  DAR0143663', '1', '182900', '182900', 'fumigation', '2023-09-08', NULL, NULL),
(4598, 163, 684, NULL, NULL, 'null', '1', '0', '0', 'fumigation', '2023-09-08', NULL, NULL),
(4599, 209, 685, NULL, NULL, '6 SILCON DESSICANT (DRY BAGS)', '6', '170000', '1020000', 'fumigation', '2023-09-11', NULL, NULL),
(4700, 200, 688, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231021492', '10', '40000', '400000', 'fumigation', '2023-09-14', NULL, NULL),
(4701, 200, 688, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230529017', '20', '40000', '800000', 'fumigation', '2023-09-14', NULL, NULL),
(4702, 200, 688, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230569914', '5', '40000', '200000', 'fumigation', '2023-09-14', NULL, NULL),
(4703, 200, 688, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230181395', '3', '40000', '120000', 'fumigation', '2023-09-14', NULL, NULL),
(4704, 200, 688, NULL, NULL, '30  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MEDUTZ226571', '30', '040000', '1200000', 'fumigation', '2023-09-14', NULL, NULL),
(4705, 200, 688, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MAEU 221077222', '5', '040000', '200000', 'fumigation', '2023-09-14', NULL, NULL),
(4706, 200, 680, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143118 (16/08/23', '20', '40000', '800000', 'fumigation', '2023-08-25', NULL, NULL),
(4707, 200, 680, NULL, NULL, '12 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0142486C (16/08/23', '12', '40000', '480000', 'fumigation', '2023-08-25', NULL, NULL),
(4708, 200, 680, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MAEU230081675 (15/08/23', '5', '40000', '200000', 'fumigation', '2023-08-25', NULL, NULL),
(4709, 200, 680, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 3100005211', '10', '40000', '400000', 'fumigation', '2023-08-25', NULL, NULL),
(4710, 200, 680, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MAEU229985270', '5', '40000', '200000', 'fumigation', '2023-08-25', NULL, NULL),
(4711, 200, 680, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230181395', '3', '40000', '120000', 'fumigation', '2023-08-25', NULL, NULL),
(4712, 200, 680, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MAEU230339194', '5', '40000', '200000', 'fumigation', '2023-08-25', NULL, NULL),
(4713, 200, 680, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MAEU230369652', '5', '40000', '200000', 'fumigation', '2023-08-25', NULL, NULL),
(4714, 200, 680, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE  GAS BL/NO MAEU230251653', '5', '40000', '200000', 'fumigation', '2023-08-25', NULL, NULL),
(4715, 200, 680, NULL, NULL, '6 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0142486E', '6', '40000', '240000', 'fumigation', '2023-08-25', NULL, NULL),
(4716, 200, 680, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MAEU230375716', '5', '40000', '200000', 'fumigation', '2023-08-25', NULL, NULL),
(4717, 200, 680, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  3100005210', '10', '40000', '400000', 'fumigation', '2023-08-25', NULL, NULL),
(4718, 200, 680, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MAEU230081487', '5', '40000', '200000', 'fumigation', '2023-08-25', NULL, NULL),
(4719, 200, 680, NULL, NULL, 'null', '1', '0', '0', 'fumigation', '2023-08-25', NULL, NULL),
(4908, 163, 690, NULL, NULL, '14  CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO EBKG06076786', '14', '29500', '413000', 'fumigation', '2023-09-14', NULL, NULL),
(4909, 163, 690, NULL, NULL, '18 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO DAR0143346', '18', '29500', '531000', 'fumigation', '2023-09-14', NULL, NULL),
(4910, 163, 690, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO DAR0143682', '10', '29500', '295000', 'fumigation', '2023-09-14', NULL, NULL),
(4911, 163, 690, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO DAR0143680', '5', '29500', '147500', 'fumigation', '2023-09-14', NULL, NULL),
(5000, 163, 689, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143651', '10', '135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5001, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143522A', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5002, 163, 689, NULL, NULL, '20  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143664', '20', '0135700', '2714000', 'fumigation', '2023-09-14', NULL, NULL),
(5003, 163, 689, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143658', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5004, 163, 689, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143654B', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5005, 163, 689, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143530', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5006, 163, 689, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143655', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5007, 163, 689, NULL, NULL, '2  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143791', '2', '0135700', '271400', 'fumigation', '2023-09-14', NULL, NULL),
(5008, 163, 689, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143653', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5009, 163, 689, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143667', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5010, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143650B', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5011, 163, 689, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143654 A', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5012, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143654A', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5013, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143666B', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5014, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143524', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5015, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143650A', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5016, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143665A', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5017, 163, 689, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143523', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5018, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR0143522B', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5019, 163, 689, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143525', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5020, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143668B', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5021, 163, 689, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143657', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5022, 163, 689, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143653', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5023, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143668A', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5024, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143454', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5025, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143665B', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5026, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143695', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5027, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR0143456', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5028, 163, 689, NULL, NULL, 'CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143455', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5029, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143453', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5030, 163, 689, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143695', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5031, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230259945', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5032, 163, 689, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143451', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5033, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143445', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5034, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143442', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5035, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143450', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5036, 163, 689, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143645', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5037, 163, 689, NULL, NULL, '11  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 73106962A', '11', '0135700', '1492700', 'fumigation', '2023-09-14', NULL, NULL),
(5038, 163, 689, NULL, NULL, '11  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  73106962B', '11', '0135700', '1492700', 'fumigation', '2023-09-14', NULL, NULL),
(5039, 163, 689, NULL, NULL, '22  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 71375721', '22', '0135700', '2985400', 'fumigation', '2023-09-14', NULL, NULL),
(5040, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143155A', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5041, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143155B', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5042, 163, 689, NULL, NULL, '11  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0142873', '11', '0135700', '1492700', 'fumigation', '2023-09-14', NULL, NULL),
(5043, 163, 689, NULL, NULL, '22  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 71375721', '22', '0135700', '2985400', 'fumigation', '2023-09-14', NULL, NULL),
(5044, 163, 689, NULL, NULL, '22  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 73106962', '22', '0135700', '2985400', 'fumigation', '2023-09-14', NULL, NULL),
(5045, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 25010186', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5046, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143519', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL);
INSERT INTO `invoice` (`id`, `company_id`, `invoice_fumigation`, `staff_id`, `title`, `description`, `qty`, `price`, `amt`, `staff_type`, `date_in`, `created_at`, `updated_at`) VALUES
(5047, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 22072070', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5048, 163, 689, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143520', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5049, 163, 689, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143645', '10', '0135700', '1357000', 'fumigation', '2023-09-14', NULL, NULL),
(5050, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 99047677', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5051, 163, 689, NULL, NULL, '1 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143739', '1', '0135700', '135700', 'fumigation', '2023-09-14', NULL, NULL),
(5052, 163, 689, NULL, NULL, '1  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143740', '1', '0135700', '135700', 'fumigation', '2023-09-14', NULL, NULL),
(5053, 163, 689, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 72804879', '5', '0135700', '678500', 'fumigation', '2023-09-14', NULL, NULL),
(5054, 209, 691, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS', '20', '29500', '590000', 'fumigation', '2023-09-15', NULL, NULL),
(5055, 209, 691, NULL, NULL, '20 PAPER LINING', '20', '47200', '944000', 'fumigation', '2023-09-15', NULL, NULL),
(5056, 209, 691, NULL, NULL, 'CASUAL LABOR (LINING & GLUE)', '20', '12000', '240000', 'fumigation', '2023-09-15', NULL, NULL),
(5085, 209, 693, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY METHYL BROMOIDE GAS BL/NO  EBKG06519005  (SISAL)', '2', '182900', '365800', 'fumigation', '2023-09-25', NULL, NULL),
(5140, 227, 697, NULL, NULL, '9 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS', '9', '50', '450', 'fumigation', '2023-09-27', NULL, NULL),
(5282, 200, 702, NULL, NULL, '25 CONTAINERS FUMIGATED USING PHOSPHINE GAS', '25', '20000', '500000', 'fumigation', '2023-10-02', NULL, NULL),
(5395, 163, 703, NULL, NULL, '5 CONTAINER DESSICANT (DRY BAGS) BL/NO BK 71375721', '5', '188800', '944000', 'fumigation', '2023-10-02', NULL, NULL),
(5396, 163, 703, NULL, NULL, '5 CONTAINER DESSICANT (DRY BAGS) BL/NO 713069962', '5', '188000', '940000', 'fumigation', '2023-10-02', NULL, NULL),
(5397, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR01431739', '1', '18800', '18800', 'fumigation', '2023-10-02', NULL, NULL),
(5398, 163, 703, NULL, NULL, '5 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143155', '5', '188800', '944000', 'fumigation', '2023-10-02', NULL, NULL),
(5399, 163, 703, NULL, NULL, '3 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143650', '3', '188800', '566400', 'fumigation', '2023-10-02', NULL, NULL),
(5400, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143645', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5401, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143651', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5402, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143653', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5403, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143521', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5404, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143526', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5405, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143654', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5406, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143657', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5407, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143658', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5408, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143665', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5409, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143652', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5410, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143664', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5411, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143665', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5412, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143522', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5413, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143664', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5414, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143663', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5415, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143523', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5416, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143676', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5417, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143672', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5418, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143668', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5419, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143670', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5420, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143696B', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5421, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143696A', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5422, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143669', '2', '1888800', '3777600', 'fumigation', '2023-10-02', NULL, NULL),
(5423, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143522', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5424, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143656', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5425, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143531A', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5426, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143531B', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5427, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143655', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5428, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143661', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5429, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143662', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5430, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143660', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5431, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0144215', '1', '188000', '188000', 'fumigation', '2023-10-02', NULL, NULL),
(5432, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0144214', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5433, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143693', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5434, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0144263A', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5435, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143673', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5436, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143673', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5437, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143674', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5438, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143675', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5439, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143690', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5440, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0144467', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5441, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO BK101066968', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5442, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143694', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5443, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143666A', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5444, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143546', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5445, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143666B', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5446, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143530', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5447, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143539A', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5448, 163, 703, NULL, NULL, '1 CONTAINER DESSICANT (DRY BAGS) BL/NO DAR014339B', '1', '188800', '188800', 'fumigation', '2023-10-02', NULL, NULL),
(5449, 163, 703, NULL, NULL, '2 CONTAINER DESSICANT (DRY BAGS) BL/NO DARBK10106634', '2', '188800', '377600', 'fumigation', '2023-10-02', NULL, NULL),
(5549, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143694', '10', '135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5550, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0143693', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5551, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0144263B', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5552, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0144263A', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5553, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143531A', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5554, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR0143531B', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5555, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143696A', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5556, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143675', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5557, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR0143674', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5558, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143536', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5559, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0144233', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5560, 163, 700, NULL, NULL, '10CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143669', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5561, 163, 700, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143662', '20', '0135700', '2714000', 'fumigation', '2023-09-29', NULL, NULL),
(5562, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143660', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5563, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR0143659', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5564, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR0143673B', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5565, 163, 700, NULL, NULL, '1 CONTAINER FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143854', '1', '0135700', '135700', 'fumigation', '2023-09-29', NULL, NULL),
(5566, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0144234', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5567, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR01435535', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5568, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143536', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5569, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143540A', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5570, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR01434213', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5571, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR01434232', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5572, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143529', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5573, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143672', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5574, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143671B', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5575, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR01143666B', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5576, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143670', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5577, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143544', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5578, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 580BK3000307', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5579, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 580BK3000308', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5580, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143541', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5581, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143696B', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5582, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 580BK3000309', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5583, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143543', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5584, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143676', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5585, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143671A', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5586, 163, 700, NULL, NULL, '10CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143656', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5587, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143546', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5588, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143671', '10', '135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5589, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143529', '10', '135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5590, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 580BK3000312', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5591, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 580BK300311', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5592, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 580BK3000310', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5593, 163, 700, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230938904', '10', '0135700', '1357000', 'fumigation', '2023-09-29', NULL, NULL),
(5594, 163, 700, NULL, NULL, '1 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230938541', '1', '135700', '135700', 'fumigation', '2023-09-29', NULL, NULL),
(5595, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GASBL/NO DAR0143535', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5596, 163, 700, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR 0144231', '5', '0135700', '678500', 'fumigation', '2023-09-29', NULL, NULL),
(5604, 163, 701, NULL, NULL, '9 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230938541', '9', '135700', '1221300', 'fumigation', '2023-10-02', NULL, NULL),
(5605, 163, 701, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230939181', '10', '135700', '1357000', 'fumigation', '2023-10-02', NULL, NULL),
(5606, 163, 701, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230938753', '10', '135700', '1357000', 'fumigation', '2023-10-02', NULL, NULL),
(5607, 163, 701, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230937877', '5', '0135700', '678500', 'fumigation', '2023-10-02', NULL, NULL),
(5608, 163, 701, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230934898', '5', '0135700', '678500', 'fumigation', '2023-10-02', NULL, NULL),
(5609, 163, 701, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230889215', '5', '0135700', '678500', 'fumigation', '2023-10-02', NULL, NULL),
(5610, 163, 701, NULL, NULL, '5  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143529', '5', '0135700', '678500', 'fumigation', '2023-10-02', NULL, NULL),
(5611, 200, 694, NULL, NULL, '50 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 28029546', '50', '20000', '1000000', 'fumigation', '2023-09-25', NULL, NULL),
(5612, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230530858', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5613, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230658681', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5614, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230530725', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5615, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING PHOSPHINE GAS BL/NO 230827310', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5616, 200, 694, NULL, NULL, '40 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 30053900', '40', '020000', '800000', 'fumigation', '2023-09-25', NULL, NULL),
(5617, 200, 694, NULL, NULL, '1 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA23000319', '1', '020000', '20000', 'fumigation', '2023-09-25', NULL, NULL),
(5618, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA23000413A', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5619, 200, 694, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319E', '4', '020000', '80000', 'fumigation', '2023-09-25', NULL, NULL),
(5620, 200, 694, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319F', '4', '020000', '80000', 'fumigation', '2023-09-25', NULL, NULL),
(5621, 200, 694, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319A', '4', '20000', '80000', 'fumigation', '2023-09-25', NULL, NULL),
(5622, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300413', '5', '020000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5623, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319J', '5', '020000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5624, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319I', '5', '020000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5625, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319D', '5', '20000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5626, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319H', '5', '020000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5627, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319B', '5', '20000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5628, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230988229', '5', '020000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5629, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230953448', '5', '020000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5630, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230953287', '5', '020000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5631, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230952773', '5', '20000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5632, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230953619', '5', '020000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5633, 200, 694, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 231422189', '3', '020000', '60000', 'fumigation', '2023-09-25', NULL, NULL),
(5634, 200, 694, NULL, NULL, '50 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 28029546', '50', '20000', '1000000', 'fumigation', '2023-09-25', NULL, NULL),
(5635, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230530858', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5636, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230658681', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5637, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230530725', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5638, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 23087310', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5639, 200, 694, NULL, NULL, '6 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230989283', '6', '020000', '120000', 'fumigation', '2023-09-25', NULL, NULL),
(5640, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 231422011', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5641, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000330', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5642, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 231620834', '10', '20000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5643, 200, 694, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 231596377', '5', '020000', '100000', 'fumigation', '2023-09-25', NULL, NULL),
(5644, 200, 694, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319C', '4', '020000', '80000', 'fumigation', '2023-09-25', NULL, NULL),
(5645, 200, 694, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA23000319G', '4', '20000', '80000', 'fumigation', '2023-09-25', NULL, NULL),
(5646, 200, 694, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 2315576048', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5647, 200, 694, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 231437888', '10', '020000', '200000', 'fumigation', '2023-09-25', NULL, NULL),
(5667, 198, 705, NULL, NULL, 'Doing Cleanness inside and surrounding of the go down daily  total number of staff is 5 peoples quoted per Month plus Administration fees', '5', '470000', '2350000', 'fumigation', '2023-10-05', NULL, NULL),
(5670, 200, 706, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 70625945', '20', '20000', '400000', 'fumigation', '2023-10-06', NULL, NULL),
(5671, 200, 706, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 231437020', '4', '20000', '80000', 'fumigation', '2023-10-06', NULL, NULL),
(5672, 200, 706, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 71407733', '20', '020000', '400000', 'fumigation', '2023-10-06', NULL, NULL),
(5673, 200, 706, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 90121819', '20', '020000', '400000', 'fumigation', '2023-10-06', NULL, NULL),
(5694, 200, 707, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MEDUTZ230672', '10', '40000', '400000', 'fumigation', '2023-10-09', NULL, NULL),
(5695, 200, 707, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231604681', '10', '040000', '400000', 'fumigation', '2023-10-09', NULL, NULL),
(5696, 200, 707, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  MEDUTZ230052', '10', '040000', '400000', 'fumigation', '2023-10-09', NULL, NULL),
(5697, 200, 707, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 23159677', '5', '040000', '200000', 'fumigation', '2023-10-09', NULL, NULL),
(5698, 233, 695, NULL, NULL, 'SILCON CONTAINER DESSICANT 1BOX/20PIECES @1KG PRINCE 160000 (WHOLESALE PRINCE AND FREE DELIVERY)', '70', '160000', '11200000', 'fumigation', '2023-09-26', NULL, NULL),
(5819, 209, 692, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO EBKG06499333', '10', '29500', '295000', 'fumigation', '2023-09-25', NULL, NULL),
(5820, 209, 692, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0143517', '5', '29500', '147500', 'fumigation', '2023-09-25', NULL, NULL),
(5821, 209, 692, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO EBKG06076786', '20', '29500', '590000', 'fumigation', '2023-09-25', NULL, NULL),
(5822, 209, 692, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0143491', '5', '029500', '147500', 'fumigation', '2023-09-25', NULL, NULL),
(5823, 209, 692, NULL, NULL, 'CASUAL LABOUR (GLUE & LINING)', '40', '012000', '480000', 'fumigation', '2023-09-25', NULL, NULL),
(5824, 209, 692, NULL, NULL, 'PAPER LINING', '40', '47200', '1888000', 'fumigation', '2023-09-25', NULL, NULL),
(5902, 200, 672, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS HLCUDA3230703072 (29.07.23)', '20', '40000', '800000', 'fumigation', '2023-08-07', NULL, NULL),
(5903, 200, 672, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS HLCUDA3230703040 (29.7.2023)', '20', '40000', '800000', 'fumigation', '2023-08-07', NULL, NULL),
(5904, 200, 672, NULL, NULL, '5 CONTSAINERS  FUMIGATED USING BY METHYL BROMIDE GAS 580310004276 (20.07.23)', '5', '40000', '200000', 'fumigation', '2023-08-07', NULL, NULL),
(5905, 200, 672, NULL, NULL, '21 CONTAINERS FUMIGATED USING BY  METHYL BROMIDE GAS HLCUDA32230602093 18.07.2023', '21', '40000', '840000', 'fumigation', '2023-08-07', NULL, NULL),
(6013, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSL2300288A (17/08/2023', '10', '20000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6014, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSL2300288B (17/08/2023', '10', '20000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6015, 200, 679, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSL2300288C(17/08/2023', '20', '20000', '400000', 'fumigation', '2023-08-22', NULL, NULL),
(6016, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE BL/NO 230081675 (19/08/2023', '10', '20000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6017, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230081487 (19/08/2023', '10', '20000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6018, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 229985270 (19/08/2023', '10', '20000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6019, 200, 679, NULL, NULL, 'null', '0', '0', '0', 'fumigation', '2023-08-22', NULL, NULL),
(6020, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000296 (22/08/2023', '5', '20000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6021, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000295', '10', '20000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6022, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 580BK3000294', '5', '20000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6023, 200, 679, NULL, NULL, '40 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO EBKG06460181 (28/08/2023', '40', '20000', '800000', 'fumigation', '2023-08-22', NULL, NULL),
(6024, 200, 679, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSL2300301 (21/08/23', '20', '020000', '400000', 'fumigation', '2023-08-22', NULL, NULL),
(6025, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230279064 (24/08/2023', '5', '20000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6026, 200, 679, NULL, NULL, '20 CONTAINERS FUM IGATED USING BY PHOSPHINE GAS BL/NO 70625945', '20', '020000', '400000', 'fumigation', '2023-08-22', NULL, NULL),
(6027, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 213284773', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6028, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 29129831', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6029, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 72424953', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6030, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 70847043', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6031, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 29799252', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6032, 200, 679, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0143426', '4', '020000', '80000', 'fumigation', '2023-08-22', NULL, NULL),
(6033, 200, 679, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0143429', '4', '020000', '80000', 'fumigation', '2023-08-22', NULL, NULL),
(6034, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230569850', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6035, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 72275779', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6036, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 23067515', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6037, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 70567060', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6038, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 13399870', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6039, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 18392090', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6040, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 90114015', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6041, 200, 679, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 231437020', '4', '020000', '80000', 'fumigation', '2023-08-22', NULL, NULL),
(6042, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 10706792', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6043, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 17097528', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6044, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 12030331', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6045, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 72604559', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6046, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 12711872', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6047, 200, 679, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230378002', '20', '020000', '400000', 'fumigation', '2023-08-22', NULL, NULL),
(6048, 200, 679, NULL, NULL, 'n/l', '0', '020000', '0', 'fumigation', '2023-08-22', NULL, NULL),
(6049, 200, 679, NULL, NULL, '26 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 2722804050', '26', '020000', '520000', 'fumigation', '2023-08-22', NULL, NULL),
(6050, 200, 679, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO 230657359', '20', '020000', '400000', 'fumigation', '2023-08-22', NULL, NULL),
(6051, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO 230658681', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6052, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO EBKG06523589', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6053, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO EBKG06523584', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6054, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO EBKG06523580', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6055, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO 230521202', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6056, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO 11054069', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6057, 200, 679, NULL, NULL, '50 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 28029546', '50', '020000', '1000000', 'fumigation', '2023-08-22', NULL, NULL),
(6058, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230530858', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6059, 200, 679, NULL, NULL, 'n/l', '0', '0', '0', 'fumigation', '2023-08-22', NULL, NULL),
(6060, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230530725', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6061, 200, 679, NULL, NULL, '40 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 30053900', '40', '020000', '800000', 'fumigation', '2023-08-22', NULL, NULL),
(6062, 200, 679, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319', '1', '020000', '20000', 'fumigation', '2023-08-22', NULL, NULL),
(6063, 200, 679, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300413A', '10', '020000', '200000', 'fumigation', '2023-08-22', NULL, NULL),
(6064, 200, 679, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319E', '4', '020000', '80000', 'fumigation', '2023-08-22', NULL, NULL),
(6065, 200, 679, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319F', '4', '020000', '80000', 'fumigation', '2023-08-22', NULL, NULL),
(6066, 200, 679, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319A', '4', '020000', '80000', 'fumigation', '2023-08-22', NULL, NULL),
(6067, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319J', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6068, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319I', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6069, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319D', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6070, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319H', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6071, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319B', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6072, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230988229', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6073, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230953619', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6074, 200, 679, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 230953287', '5', '020000', '100000', 'fumigation', '2023-08-22', NULL, NULL),
(6075, 200, 679, NULL, NULL, 'n/l', '0', '0', '0', 'fumigation', '2023-08-22', NULL, NULL),
(6076, 200, 679, NULL, NULL, 'n/l', '0', '0', '0', 'fumigation', '2023-08-22', NULL, NULL),
(6077, 200, 679, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319C', '4', '020000', '80000', 'fumigation', '2023-08-22', NULL, NULL),
(6078, 200, 679, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO CSLINNSA2300319G', '4', '020000', '80000', 'fumigation', '2023-08-22', NULL, NULL),
(6079, 200, 679, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 71407733', '20', '020000', '400000', 'fumigation', '2023-08-22', NULL, NULL),
(6080, 200, 679, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 90121819', '20', '020000', '400000', 'fumigation', '2023-08-22', NULL, NULL),
(6081, 200, 679, NULL, NULL, '25 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO', '25', '020000', '500000', 'fumigation', '2023-08-22', NULL, NULL),
(6082, 200, 679, NULL, NULL, 'N/L', '1', '0', '0', 'fumigation', '2023-08-22', NULL, NULL),
(6083, 200, 696, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  3100005951', '10', '40000', '400000', 'fumigation', '2023-09-27', NULL, NULL),
(6084, 200, 696, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MAEU230953448', '5', '040000', '200000', 'fumigation', '2023-09-27', NULL, NULL),
(6085, 200, 696, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230988895', '5', '040000', '200000', 'fumigation', '2023-09-27', NULL, NULL),
(6086, 200, 696, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MEDUTZ231076', '2', '040000', '80000', 'fumigation', '2023-09-27', NULL, NULL),
(6087, 200, 696, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MAEU230987697', '5', '040000', '200000', 'fumigation', '2023-09-27', NULL, NULL),
(6088, 200, 696, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  MAEU231634259', '10', '040000', '400000', 'fumigation', '2023-09-27', NULL, NULL),
(6089, 200, 696, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 23163415', '5', '040000', '200000', 'fumigation', '2023-09-27', NULL, NULL),
(6090, 200, 696, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231021492', '10', '040000', '400000', 'fumigation', '2023-09-27', NULL, NULL),
(6091, 200, 696, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO HLCUDA3230902193', '10', '040000', '400000', 'fumigation', '2023-09-27', NULL, NULL),
(6092, 200, 696, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 580310006034', '5', '040000', '200000', 'fumigation', '2023-09-27', NULL, NULL),
(6093, 200, 696, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 580310006041', '5', '040000', '200000', 'fumigation', '2023-09-27', NULL, NULL),
(6094, 200, 696, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 2302518992', '5', '040000', '200000', 'fumigation', '2023-09-27', NULL, NULL),
(6095, 200, 696, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 230181395', '3', '040000', '120000', 'fumigation', '2023-09-27', NULL, NULL),
(6096, 200, 696, NULL, NULL, '30 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MEDUTZ226571', '30', '040000', '1200000', 'fumigation', '2023-09-27', NULL, NULL),
(6097, 200, 696, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MAEU221077222', '5', '040000', '200000', 'fumigation', '2023-09-27', NULL, NULL),
(6098, 200, 696, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MEDUTZ230672', '10', '040000', '400000', 'fumigation', '2023-09-27', NULL, NULL),
(6099, 200, 696, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231604681', '10', '040000', '400000', 'fumigation', '2023-09-27', NULL, NULL),
(6100, 200, 696, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO MEDUTZ230052', '10', '040000', '400000', 'fumigation', '2023-09-27', NULL, NULL),
(6101, 200, 696, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 23159677', '5', '040000', '200000', 'fumigation', '2023-09-27', NULL, NULL),
(6102, 200, 696, NULL, NULL, 'null', '1', '0', '0', 'fumigation', '2023-09-27', NULL, NULL),
(6103, 163, 710, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0143927', '5', '29500', '147500', 'fumigation', '2023-10-11', NULL, NULL),
(6134, 163, 711, NULL, NULL, '6 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143660A', '6', '135700', '814200', 'fumigation', '2023-10-11', NULL, NULL),
(6135, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143534A', '5', '135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6136, 163, 711, NULL, NULL, '6 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR01436559A', '6', '135700', '814200', 'fumigation', '2023-10-11', NULL, NULL),
(6137, 163, 711, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143674', '4', '135700', '542800', 'fumigation', '2023-10-11', NULL, NULL),
(6138, 163, 711, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143673C', '2', '135700', '271400', 'fumigation', '2023-10-11', NULL, NULL),
(6139, 163, 711, NULL, NULL, '7 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143662A', '7', '135700', '949900', 'fumigation', '2023-10-11', NULL, NULL),
(6140, 163, 711, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143535A', '3', '135700', '407100', 'fumigation', '2023-10-11', NULL, NULL),
(6141, 163, 711, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143533A', '2', '135700', '271400', 'fumigation', '2023-10-11', NULL, NULL),
(6142, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143675A', '5', '135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6143, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0144234', '5', '135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6144, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0144231A', '5', '135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6145, 163, 711, NULL, NULL, '1 CONTAINER FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143854', '1', '135700', '135700', 'fumigation', '2023-10-11', NULL, NULL),
(6146, 163, 711, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143536A', '3', '135700', '407100', 'fumigation', '2023-10-11', NULL, NULL),
(6147, 163, 711, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0144263C', '3', '135700', '407100', 'fumigation', '2023-10-11', NULL, NULL),
(6148, 163, 711, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0144263E', '3', '135700', '407100', 'fumigation', '2023-10-11', NULL, NULL),
(6149, 163, 711, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143531C', '4', '135700', '542800', 'fumigation', '2023-10-11', NULL, NULL),
(6150, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143531A', '5', '135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6151, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR01436556B', '5', '135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6152, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO DAR0143673A', '5', '135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6153, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143540B', '5', '0135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6154, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143673', '5', '0135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6155, 163, 711, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143536A', '3', '0135700', '407100', 'fumigation', '2023-10-11', NULL, NULL),
(6156, 163, 711, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0144263C', '3', '0135700', '407100', 'fumigation', '2023-10-11', NULL, NULL),
(6157, 163, 711, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0144263E', '3', '0135700', '407100', 'fumigation', '2023-10-11', NULL, NULL),
(6158, 163, 711, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143531C', '4', '0135700', '542800', 'fumigation', '2023-10-11', NULL, NULL),
(6159, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143531A', '5', '0135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6160, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143656B', '5', '0135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6161, 163, 711, NULL, NULL, '6 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO   DAR0143660A', '6', '0135700', '814200', 'fumigation', '2023-10-11', NULL, NULL),
(6162, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143534A', '5', '0135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6163, 163, 711, NULL, NULL, '6 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143659A', '6', '0135700', '814200', 'fumigation', '2023-10-11', NULL, NULL),
(6164, 163, 711, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO   DAR0143674A', '4', '0135700', '542800', 'fumigation', '2023-10-11', NULL, NULL),
(6165, 163, 711, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143673C', '2', '0135700', '271400', 'fumigation', '2023-10-11', NULL, NULL),
(6166, 163, 711, NULL, NULL, '7 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143662A', '7', '0135700', '949900', 'fumigation', '2023-10-11', NULL, NULL),
(6167, 163, 711, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143535A', '3', '0135700', '407100', 'fumigation', '2023-10-11', NULL, NULL),
(6168, 163, 711, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143533A', '2', '0135700', '271400', 'fumigation', '2023-10-11', NULL, NULL),
(6169, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143675A', '5', '0135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6170, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0144234', '5', '0135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6171, 163, 711, NULL, NULL, '5 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0144231A', '5', '0135700', '678500', 'fumigation', '2023-10-11', NULL, NULL),
(6172, 163, 711, NULL, NULL, '1 CONTAINERS FUMIGATION USING BY METHYL BROMIDE GAS BL/NO  DAR0143854', '1', '0135700', '135700', 'fumigation', '2023-10-11', NULL, NULL),
(6186, 227, 713, NULL, NULL, '1 containers fumigated using by phosphine gas', '1', '50', '50', 'fumigation', '2023-10-19', NULL, NULL),
(6187, 163, 712, NULL, NULL, '1 SILCON CONTAINERS DESSICANT (DRY BAG) BL/NO DAR0144270', '1', '188800', '188800', 'fumigation', '2023-10-11', NULL, NULL),
(6188, 163, 712, NULL, NULL, '1 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0144222', '1', '188800', '188800', 'fumigation', '2023-10-11', NULL, NULL);
INSERT INTO `invoice` (`id`, `company_id`, `invoice_fumigation`, `staff_id`, `title`, `description`, `qty`, `price`, `amt`, `staff_type`, `date_in`, `created_at`, `updated_at`) VALUES
(6189, 163, 712, NULL, NULL, '2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0144279', '2', '188800', '377600', 'fumigation', '2023-10-11', NULL, NULL),
(6190, 163, 712, NULL, NULL, '2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0143690', '2', '188800', '377600', 'fumigation', '2023-10-11', NULL, NULL),
(6191, 163, 712, NULL, NULL, '2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0144274', '2', '188800', '377600', 'fumigation', '2023-10-11', NULL, NULL),
(6192, 163, 712, NULL, NULL, '2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0144467', '2', '188800', '377600', 'fumigation', '2023-10-11', NULL, NULL),
(6193, 163, 712, NULL, NULL, '2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0144213', '2', '188800', '377600', 'fumigation', '2023-10-11', NULL, NULL),
(6194, 163, 712, NULL, NULL, '2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO 99325565', '2', '188800', '377600', 'fumigation', '2023-10-11', NULL, NULL),
(6195, 163, 712, NULL, NULL, '1 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR015165', '1', '188800', '188800', 'fumigation', '2023-10-11', NULL, NULL),
(6196, 163, 712, NULL, NULL, '1 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0145164', '1', '188800', '188800', 'fumigation', '2023-10-11', NULL, NULL),
(6197, 163, 712, NULL, NULL, '1 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO 20796065', '1', '188800', '188800', 'fumigation', '2023-10-11', NULL, NULL),
(6198, 163, 712, NULL, NULL, '2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO :DAR0145143', '2', '0188800', '377600', 'fumigation', '2023-10-11', NULL, NULL),
(6199, 163, 712, NULL, NULL, '2 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0144300', '2', '0188800', '377600', 'fumigation', '2023-10-11', NULL, NULL),
(6200, 163, 712, NULL, NULL, '1 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO DAR0145158', '1', '0188800', '188800', 'fumigation', '2023-10-11', NULL, NULL),
(6201, 163, 712, NULL, NULL, '1 SILCON CONTAINER DESSICANT (DRY BAGS) BL/NO  232011579', '1', '0188800', '188800', 'fumigation', '2023-10-11', NULL, NULL),
(6205, 163, 709, NULL, NULL, 'CASUAL LABOUR Charging for lashing and matenal', '1', '259600', '259600', 'fumigation', '2023-10-10', NULL, NULL),
(6206, 209, 714, NULL, NULL, '8 CONTAINER DESSICANT (DRY BAGS)', '8', '170000', '1360000', 'fumigation', '2023-10-23', NULL, NULL),
(6273, 154, 699, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (REF: SSTZ-87666, 230562)', '10', '23600', '236000', 'fumigation', '2023-09-29', NULL, NULL),
(6274, 154, 699, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (REF. 5900077090, SSTZ-86968)', '5', '023600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6275, 154, 699, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS (REF:  NO SSTZ-87081,TN073)', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6276, 154, 699, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS (REF. SSTZ87348, P23-0653)', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6277, 154, 699, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS (REF. SSTZ88962', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6278, 154, 699, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS (REF. CPTZ - 12964, ANTW/86270', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6279, 154, 699, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS (SSTZ 86316', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6280, 154, 699, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS (STZ-87092, M88SM2309NU 002010-DOC-976871-T4.', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6281, 154, 699, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS (SSTZ-87091', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6282, 154, 699, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (SSTZ-86969,1005440912', '4', '023600', '94400', 'fumigation', '2023-09-29', NULL, NULL),
(6283, 154, 699, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (REF NO. SSTZ-86985, UG078', '2', '023600', '47200', 'fumigation', '2023-09-29', NULL, NULL),
(6284, 154, 699, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (REF NO. SSTZ-87974', '2', '023600', '47200', 'fumigation', '2023-09-29', NULL, NULL),
(6285, 154, 699, NULL, NULL, 'n/l', '0', '0', '0', 'fumigation', '2023-09-29', NULL, NULL),
(6286, 154, 699, NULL, NULL, 'n/l', '0', '0', '0', 'fumigation', '2023-09-29', NULL, NULL),
(6369, 241, 720, NULL, NULL, 'FUMIGATED USING BY METHYL BROMIDE GAS', '1', '250000', '250000', 'fumigation', '2023-11-06', NULL, NULL),
(6370, 200, 719, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  231634069', '10', '20000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6371, 200, 719, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO  231576048', '10', '20000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6372, 200, 719, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  231437888', '10', '20000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6373, 200, 719, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  CSLINNSA2300520', '10', '020000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6374, 200, 719, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO CSLINNSA2300519A', '10', '020000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6375, 200, 719, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  CSLINNSA2300519', '10', '020000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6376, 200, 719, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  CSLINNSA300509B', '10', '020000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6377, 200, 719, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  CSLINNSA300509A', '10', '020000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6378, 200, 719, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  CSLINNSA300509', '10', '020000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6400, 200, 718, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 73213558', '10', '40000', '400000', 'fumigation', '2023-11-02', NULL, NULL),
(6401, 200, 718, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  73213558', '10', '40000', '400000', 'fumigation', '2023-11-02', NULL, NULL),
(6402, 200, 718, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  29342612', '5', '40000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6403, 200, 718, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  2934612', '5', '40000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6404, 200, 718, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  29342612', '10', '40000', '400000', 'fumigation', '2023-11-02', NULL, NULL),
(6405, 200, 718, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231684733', '4', '40000', '160000', 'fumigation', '2023-11-02', NULL, NULL),
(6406, 200, 718, NULL, NULL, '6 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  231932226', '6', '40000', '240000', 'fumigation', '2023-11-02', NULL, NULL),
(6407, 200, 718, NULL, NULL, '1 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  231637367', '1', '40000', '40000', 'fumigation', '2023-11-02', NULL, NULL),
(6408, 200, 718, NULL, NULL, '1 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231637373', '1', '40000', '40000', 'fumigation', '2023-11-02', NULL, NULL),
(6409, 200, 718, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231931989', '5', '40000', '200000', 'fumigation', '2023-11-02', NULL, NULL),
(6410, 200, 718, NULL, NULL, '6 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  231908262', '6', '40000', '240000', 'fumigation', '2023-11-02', NULL, NULL),
(6411, 200, 718, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  580BK3000375', '10', '40000', '400000', 'fumigation', '2023-11-02', NULL, NULL),
(6412, 200, 718, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  CSLINNSA300518', '10', '40000', '400000', 'fumigation', '2023-11-02', NULL, NULL),
(6413, 200, 718, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO CSLINNSA300508', '10', '40000', '400000', 'fumigation', '2023-11-02', NULL, NULL),
(6414, 200, 718, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  232302293', '20', '40000', '800000', 'fumigation', '2023-11-02', NULL, NULL),
(6415, 200, 718, NULL, NULL, 'N/L', '0', '0', '0', 'fumigation', '2023-11-02', NULL, NULL),
(6416, 200, 718, NULL, NULL, 'N/L', '0', '0', '0', 'fumigation', '2023-11-02', NULL, NULL),
(6417, 200, 718, NULL, NULL, 'N/L', '0', '0', '0', 'fumigation', '2023-11-02', NULL, NULL),
(6418, 200, 718, NULL, NULL, 'N/L', '0', '0', '0', 'fumigation', '2023-11-02', NULL, NULL),
(6419, 200, 718, NULL, NULL, 'N/L', '0', '0', '0', 'fumigation', '2023-11-02', NULL, NULL),
(6420, 200, 718, NULL, NULL, 'N/L', '0', '0', '0', 'fumigation', '2023-11-02', NULL, NULL),
(6422, 227, 721, NULL, NULL, '23 CONTAINERS FUMIGATED USING BY USING BY METHYL GAS', '23', '50', '1150', 'fumigation', '2023-11-13', NULL, NULL),
(6444, 200, 540, NULL, NULL, '15 CONTAINER FUMIGATION BY USING METHYL BROMIDE GAS', '15', '45000', '675000', 'fumigation', '2023-02-22', NULL, NULL),
(6448, 242, 722, NULL, NULL, '30 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS', '30', '60000', '1800000', 'fumigation', '2023-11-20', NULL, NULL),
(6452, 200, 723, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY MRTHYL BROMIDE GAS BL/NO 232934628', '5', '40000', '200000', 'fumigation', '2023-11-21', NULL, NULL),
(6453, 200, 723, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231864990', '5', '40000', '200000', 'fumigation', '2023-11-21', NULL, NULL),
(6454, 200, 723, NULL, NULL, '7 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 47332738', '7', '40000', '280000', 'fumigation', '2023-11-21', NULL, NULL),
(6455, 200, 723, NULL, NULL, '8 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 27367985', '8', '40000', '320000', 'fumigation', '2023-11-21', NULL, NULL),
(6456, 200, 723, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 38350655 (HLCDA3231000953', '5', '40000', '200000', 'fumigation', '2023-11-21', NULL, NULL),
(6457, 200, 723, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 38350655 (HLCUDA3231000964', '5', '40000', '200000', 'fumigation', '2023-11-21', NULL, NULL),
(6458, 200, 723, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  38350655 (HLCUDA3231000975', '10', '40000', '400000', 'fumigation', '2023-11-21', NULL, NULL),
(6459, 200, 723, NULL, NULL, '1 CONTAINER FUMIGATED USING BY METHYL BROMIDE GAS BL/NO CSLINNSA2300143A', '1', '40000', '40000', 'fumigation', '2023-11-21', NULL, NULL),
(6460, 200, 723, NULL, NULL, '1 CONTAINER FUMIGATED USING BY METHYL BROMIDE GAS BL/NO CSLINNSA2300319G', '1', '40000', '40000', 'fumigation', '2023-11-21', NULL, NULL),
(6461, 200, 723, NULL, NULL, '1 CONTAINER FUMIGATED USING BY METHYL BROMIDE GAS BL/NO CSLINNSA2300319C', '1', '40000', '40000', 'fumigation', '2023-11-21', NULL, NULL),
(6462, 200, 723, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  EBKG06987192', '2', '40000', '80000', 'fumigation', '2023-11-21', NULL, NULL),
(6463, 200, 567, NULL, NULL, '5*20Ft Fumigated by using Methyl bromide Gas DAR 30027900', '05', '45000', '225000', 'fumigation', '2023-03-31', NULL, NULL),
(6464, 200, 525, NULL, NULL, '19 CONTAINERS FUMIGATED BY USING METHYL BROMIDE GAS', '19', '45000', '855000', 'fumigation', '2023-03-25', NULL, NULL),
(6466, 244, NULL, 381, 'DRY BAGS', '40 CONTAINER DESSICANT (DRY BAGS', '40', '150000', '6000000', 'staffing', '2023-11-21', NULL, NULL),
(6469, 233, 725, NULL, NULL, '40 CONTAINER DESSICANT (DRY BAGS)', '40', '160000', '6400000', 'fumigation', '2023-11-21', NULL, NULL),
(6509, 238, 704, NULL, NULL, 'TRANSPORTATION SERVICES FOR SEPTEMBER', '1', '1450000', '1450000', 'fumigation', '2023-10-05', NULL, NULL),
(6511, 238, 728, NULL, NULL, 'RANSPORTATION SERVICES FOR OCTOBER', '1', '1450000', '1450000', 'fumigation', '2023-11-30', NULL, NULL),
(6554, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  12004101', '5', '135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6555, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  99376465', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6556, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 99570198', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6557, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 70224354', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6558, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 232468261', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6559, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231854615', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6560, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 232011410', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6561, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 232011579', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6562, 163, 724, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  231854287', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6563, 163, 724, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231854406', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6564, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231854830', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6565, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231854549', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6566, 163, 724, NULL, NULL, '1 CONTAINER FUMIGATED USING BY METHYL BROMIDE GAS BL/NO', '1', '0135700', '135700', 'fumigation', '2023-11-27', NULL, NULL),
(6567, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0145156', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6568, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0145158', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6569, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0145146A', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6570, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0145146B', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6571, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 232170759', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6572, 163, 724, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 232171085', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6573, 163, 724, NULL, NULL, 'CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 232170955', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6574, 163, 724, NULL, NULL, 'CONTAINER FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 232225376', '1', '0135700', '135700', 'fumigation', '2023-11-27', NULL, NULL),
(6575, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 231854734', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6576, 163, 724, NULL, NULL, 'CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 232169818', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6577, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO 232169260', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6578, 163, 724, NULL, NULL, 'CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR01433691', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6579, 163, 724, NULL, NULL, '20 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0144300', '20', '0135700', '2714000', 'fumigation', '2023-11-27', NULL, NULL),
(6580, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0145164', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6581, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0145162', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6582, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR01455160', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6583, 163, 724, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   17668063', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6584, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0144270', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6585, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0144218', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6586, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0144220', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6587, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0143673A', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6588, 163, 724, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO  DAR0144467', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6589, 163, 724, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0144211', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6590, 163, 724, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0144213', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6591, 163, 724, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0144222', '5', '0135700', '678500', 'fumigation', '2023-11-27', NULL, NULL),
(6592, 163, 724, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0144269', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6593, 163, 724, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   99325565', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6594, 163, 724, NULL, NULL, 'CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0143690', '10', '0135700', '1357000', 'fumigation', '2023-11-27', NULL, NULL),
(6595, 163, 724, NULL, NULL, '1 CONTAINER FUMIGATED USING BY METHYL BROMIDE GAS BL/NO DAR0143543A', '1', '0135700', '135700', 'fumigation', '2023-11-27', NULL, NULL),
(6596, 163, 729, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0143540A', '5', '135700', '678500', 'fumigation', '2023-12-01', NULL, NULL),
(6597, 163, 729, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO   DAR0143690', '10', '135700', '1357000', 'fumigation', '2023-12-01', NULL, NULL),
(6598, 163, 727, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 2328800384', '5', '29500', '147500', 'fumigation', '2023-12-01', NULL, NULL),
(6599, 163, 727, NULL, NULL, '1 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 232993484', '1', '029500', '29500', 'fumigation', '2023-12-01', NULL, NULL),
(6600, 163, 727, NULL, NULL, '7 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  232469341', '7', '029500', '206500', 'fumigation', '2023-12-01', NULL, NULL),
(6601, 163, 727, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 232011857', '5', '029500', '147500', 'fumigation', '2023-12-01', NULL, NULL),
(6602, 163, 727, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO 232012158', '5', '029500', '147500', 'fumigation', '2023-12-01', NULL, NULL),
(6603, 163, 727, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0145154', '5', '029500', '147500', 'fumigation', '2023-12-01', NULL, NULL),
(6604, 163, 727, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0145155', '5', '029500', '147500', 'fumigation', '2023-12-01', NULL, NULL),
(6605, 238, 730, NULL, NULL, 'TRANSPORTATION SERVICES FOR NOVEMBER', '1', '1450000', '1450000', 'fumigation', '2023-11-30', NULL, NULL),
(6606, 240, 716, NULL, NULL, 'Fumigated cash crop ton 7508 by using phosphine gas/ tablet and  environment of this the go down', '1', '14750000', '14750000', 'fumigation', '2023-10-24', NULL, NULL),
(6607, 240, 716, NULL, NULL, 'Note: The quated prince with be for six month', '1', '0', '0', 'fumigation', '2023-10-24', NULL, NULL),
(6623, 163, 731, NULL, NULL, '6 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0146385', '6', '21240', '127440', 'fumigation', '2023-12-04', NULL, NULL),
(6624, 163, 731, NULL, NULL, '10  CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO  DAR0146182', '10', '21240', '212400', 'fumigation', '2023-12-04', NULL, NULL),
(6625, 163, 731, NULL, NULL, '4  CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0146384', '4', '21240', '84960', 'fumigation', '2023-12-04', NULL, NULL),
(6626, 163, 731, NULL, NULL, '6  CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0146384', '6', '21240', '127440', 'fumigation', '2023-12-04', NULL, NULL),
(6627, 163, 731, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE  GAS BL/NO DAR0146151', '4', '021240', '84960', 'fumigation', '2023-12-04', NULL, NULL),
(6628, 163, 731, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS BL/NO DAR0146132', '4', '021240', '84960', 'fumigation', '2023-12-04', NULL, NULL),
(6629, 163, 731, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS DAR0146191', '10', '021240', '212400', 'fumigation', '2023-12-04', NULL, NULL),
(6632, 233, 734, NULL, NULL, '30 CONTAINERS DESSICANT (DRY BAGS)', '30', '160000', '4800000', 'fumigation', '2023-12-04', NULL, NULL),
(6647, 238, 735, NULL, NULL, 'Car hire for 4 days @ 400,000/= dated 29th November 2023.', '4', '400000', '1600000', 'fumigation', '2023-12-29', NULL, NULL),
(6649, 226, 663, NULL, NULL, '4X40FT CONTAINERS FUMIGATION USING BY PHOSPHINE GAS', '4', '50', '200', 'fumigation', '2023-07-31', NULL, NULL),
(6653, 209, 737, NULL, NULL, '17 CONTAINERS FUMIHATION USING BY PHOSPHINE GAS BL NO/ 580310007932', '17', '29500', '501500', 'fumigation', '2023-12-11', NULL, NULL),
(6654, 209, 737, NULL, NULL, '17 PAPERLING', '17', '47200', '802400', 'fumigation', '2023-12-11', NULL, NULL),
(6655, 209, 737, NULL, NULL, '17 GLUE, CASUAL LABOR', '17', '12000', '204000', 'fumigation', '2023-12-11', NULL, NULL),
(6658, 233, 738, NULL, NULL, '50 container desiccant (dry bags)', '50', '160000', '8000000', 'fumigation', '2023-12-15', NULL, NULL),
(6662, 227, 736, NULL, NULL, 'CONTAINERS FUMIGATED USING BY PHOSPHINE GAS', '1', '100', '100', 'fumigation', '2023-12-06', NULL, NULL),
(6663, 227, 726, NULL, NULL, '8 containers fumigated using by methyl bromide gas', '8', '50', '400', 'fumigation', '2023-11-30', NULL, NULL),
(6697, 163, 733, NULL, NULL, 'SARAN 1 CONTAINERS DESSICANT (DRY BAGS) BL/NO DAR0145154', '1', '188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6698, 163, 733, NULL, NULL, 'SARAN 1 CONTAINERS DESSICANT (DRY BAG) BL/NO DAR0145155', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6699, 163, 733, NULL, NULL, 'AFAGRI 2 CONTAINERS DESSICANT (DRY BAG) BL/NO DAR0145145', '2', '0188800', '377600', 'fumigation', '2023-12-04', NULL, NULL),
(6700, 163, 733, NULL, NULL, 'SARAN 2 CONTAINERS DESSICANT (DRY BAG) BL/NO 232171085', '2', '0188800', '377600', 'fumigation', '2023-12-04', NULL, NULL),
(6701, 163, 733, NULL, NULL, 'SARAN 1 CONTAINERS DESSICANT (DRY BAG) BL/NO 232170955', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6702, 163, 733, NULL, NULL, 'SARAN 1 CONTAINERS DESSICANT (DRY BAG) BL/NO 232012158', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6703, 163, 733, NULL, NULL, 'SARAN 1 CONTAINERS DESSICANT (DRY BAG) BL/NO 232011857', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6704, 163, 733, NULL, NULL, 'SARAN 1 CONTAINERS DESSICANT (DRY BAGS) BL/NO 232011410', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6705, 163, 733, NULL, NULL, 'RAYS 2 CONTAINERS DESSICANT (DRY BAG) BL/NO DAR0145146B', '2', '0188800', '377600', 'fumigation', '2023-12-04', NULL, NULL),
(6706, 163, 733, NULL, NULL, 'RAYS 1 CONTAINERS DESSICANT (DRY BAG) BL/NO DAR0145146A', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6707, 163, 733, NULL, NULL, 'SARAN/MAXIMA 1 CONTAINERS DESSICANT (DRY BAG) BL/NO 232170759', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6708, 163, 733, NULL, NULL, 'AFAGRI 1 CONTAINERS DESSICANT (DRY BAG) BL/NO 70224354', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6709, 163, 733, NULL, NULL, 'AFAGRI 1 CONTAINERS DESSICANT (DRY BAG) BL/NO 99376465', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6710, 163, 733, NULL, NULL, 'AFAGRI 1 CONTAINERS DESSICANT (DRY BAGS) BL/NO 12004101', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6711, 163, 733, NULL, NULL, 'AFAGRI 1 CONTAINER DESSICANT (DRY BAGS) BL/NO 99570198', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6712, 163, 733, NULL, NULL, 'SHRI BALAJ 3 CONTAINERS DESSICANT (DRY BAGS) BL 232469341', '3', '0188800', '566400', 'fumigation', '2023-12-04', NULL, NULL),
(6713, 163, 733, NULL, NULL, 'AFAGRI 2 CONTAINERS DESSICANT (DRY BAGS) BL/NO BDAR23000008', '2', '0188800', '377600', 'fumigation', '2023-12-04', NULL, NULL),
(6714, 163, 733, NULL, NULL, 'SARAN 1 CONTAINER DESSICANT (DRY BAGS) BL/NO 232468261', '1', '0188800', '188800', 'fumigation', '2023-12-04', NULL, NULL),
(6755, 154, 740, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE (SSTZ-88789', '1', '23600', '23600', 'fumigation', '2024-01-02', NULL, NULL),
(6756, 154, 740, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (REF NO OUR REF: SSTZ-89041,1005440.945', '2', '023600', '47200', 'fumigation', '2024-01-02', NULL, NULL),
(6757, 154, 740, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (REF OUR REF:2023 S-000/GDM004)', '3', '023600', '70800', 'fumigation', '2024-01-02', NULL, NULL),
(6758, 154, 740, NULL, NULL, '1 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (SSTZ-89048', '1', '023600', '23600', 'fumigation', '2024-01-02', NULL, NULL),
(6759, 154, 740, NULL, NULL, '1  CONTAINERS FUMIGATED USING BY PHOSPHINE GAS ( REF NO NPTZ-32063, SSTZ-89464', '1', '023600', '23600', 'fumigation', '2024-01-02', NULL, NULL),
(6760, 154, 740, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHSOPHINE GAS ( REF NO SSTZ-88794', '1', '023600', '23600', 'fumigation', '2024-01-02', NULL, NULL),
(6763, 233, 742, NULL, NULL, '20 SILCON CONTAINERS DESSICANT ( DRY BAGS)', '20', '160000', '3200000', 'fumigation', '2024-01-03', NULL, NULL),
(6764, 200, 743, NULL, NULL, '78 Containers fumigation using by phosphine gas (mtwara port)', '78', '20000', '1560000', 'fumigation', '2024-01-17', NULL, NULL),
(6765, 200, 744, NULL, NULL, '30 containers fumigation using by methyl bromide gas ( bl no maeu 234845682', '30', '40000', '1200000', 'fumigation', '2024-01-17', NULL, NULL),
(6768, 154, 698, NULL, NULL, '10 CONTAINER FUMIGATED USING BY PHOSPHINE GAS (RE. FILE NO  STZTANO00500560)', '10', '23600', '236000', 'fumigation', '2023-09-29', NULL, NULL),
(6769, 154, 698, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS ( RE. FILE NO STZTANO00500552)', '5', '23600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6770, 154, 698, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (REF. FILE NO STZTANO00500564)', '5', '23600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6771, 154, 698, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (RE. FILE NO: STZTANO00503020)', '5', '23600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6772, 154, 698, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (RE. FILE NO. STZTANO00500628)', '10', '23600', '236000', 'fumigation', '2023-09-29', NULL, NULL),
(6773, 154, 698, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (RE. FILE NO: STZTANO00500635)', '2', '23600', '47200', 'fumigation', '2023-09-29', NULL, NULL),
(6774, 154, 698, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (FILE NO STZTANO00503011)', '10', '023600', '236000', 'fumigation', '2023-09-29', NULL, NULL),
(6775, 154, 698, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (Re: FILE STZTANO00503042', '3', '023600', '70800', 'fumigation', '2023-09-29', NULL, NULL),
(6776, 154, 698, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (Re: FILE STZTANO00503015', '5', '023600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6777, 154, 698, NULL, NULL, '3 CONTAINERS FUMIOGATED USING BY PHOSPHINE GAS Re: (FILE STZTANO00503467', '3', '023600', '70800', 'fumigation', '2023-09-29', NULL, NULL),
(6778, 154, 698, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS (Re: FILE STZTANO00506893', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6779, 154, 698, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (Re: FILE STZTANO00508571', '5', '023600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6780, 154, 698, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (FILE-STZTANO00518878Re:', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6781, 154, 698, NULL, NULL, '1  CONTAINER FUMIGATED USING BY PHOSPHINE GAS FILE STZTANO00503462', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6782, 154, 698, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS  Re: FILE STZTANO00506780', '3', '023600', '70800', 'fumigation', '2023-09-29', NULL, NULL),
(6783, 154, 698, NULL, NULL, '1 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS Re:  FILE-STZTANO00518312', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6784, 154, 698, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS Re: FILE STZTANO00511376', '2', '023600', '47200', 'fumigation', '2023-09-29', NULL, NULL),
(6785, 154, 698, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS FILE STZTANO00506770', '3', '023600', '70800', 'fumigation', '2023-09-29', NULL, NULL),
(6786, 154, 698, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS Re: FILE STZTANO00506761', '10', '023600', '236000', 'fumigation', '2023-09-29', NULL, NULL),
(6787, 154, 698, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS Re: FILE STZTANO00503043', '10', '023600', '236000', 'fumigation', '2023-09-29', NULL, NULL),
(6788, 154, 698, NULL, NULL, '5CONTAINERS FUMIGATED USING BY PHOSPHINE GAS CONTAINERS NO:- STZTANOO050979', '5', '023600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6789, 154, 698, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS (STZTANO00508566', '5', '023600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6790, 154, 698, NULL, NULL, '4 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS FILE NO STZTANO00509849', '4', '023600', '94400', 'fumigation', '2023-09-29', NULL, NULL),
(6791, 154, 698, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS FILE NO STZTANO00509850', '5', '023600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6792, 154, 698, NULL, NULL, '6 CONATINERS FUMIGATED USING BY PHOSPHINE GAS FILE NO STZTANO00509827', '6', '023600', '141600', 'fumigation', '2023-09-29', NULL, NULL),
(6793, 154, 698, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS FILE NO STZTANO00506987', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6794, 154, 698, NULL, NULL, '10 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS  FILE STZTANO00511369', '10', '023600', '236000', 'fumigation', '2023-09-29', NULL, NULL),
(6795, 154, 698, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS FILE STZTANO00511371', '5', '023600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6796, 154, 698, NULL, NULL, '15 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS FILE STZTANO00511374', '15', '023600', '354000', 'fumigation', '2023-09-29', NULL, NULL),
(6797, 154, 698, NULL, NULL, '3 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS  FILE STZTANO00515213', '3', '023600', '70800', 'fumigation', '2023-09-29', NULL, NULL),
(6798, 154, 698, NULL, NULL, '5 CONATAINERS FUMIGATED USING BY PHOSPHINE GAS FILE STZTANO00515205', '5', '023600', '118000', 'fumigation', '2023-09-29', NULL, NULL),
(6799, 154, 698, NULL, NULL, '2 CONTAINERS FUMIGATED USING BY PHOSPHINE GAS  FILE STZTANO00515234', '2', '023600', '47200', 'fumigation', '2023-09-29', NULL, NULL),
(6800, 154, 698, NULL, NULL, '1 CONTAINER FUMIGATED USING BY PHOSPHINE GAS FILE STZTANO00519468', '1', '023600', '23600', 'fumigation', '2023-09-29', NULL, NULL),
(6801, 154, 698, NULL, NULL, '3 CONTAINER FUMIGATED USING BY PHOSPHINE GAS  FILE-STZTANO00518323', '3', '023600', '70800', 'fumigation', '2023-09-29', NULL, NULL),
(6803, 227, 739, NULL, NULL, '8 containers fumigated using by methyl bromide gas', '8', '50', '400', 'fumigation', '2023-12-20', NULL, NULL),
(6807, 200, 746, NULL, NULL, '5 CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS BL/NO', '5', '20000', '100000', 'fumigation', '2024-01-24', NULL, NULL),
(6808, 233, 747, NULL, NULL, '20 container desiccant (dry bags)', '20', '160000', '3200000', 'fumigation', '2024-01-27', NULL, NULL),
(6809, 163, 748, NULL, NULL, '181 SILCON CONTAINER DESSICANT (DRY BAGS)', '181', '212400', '38444400', 'fumigation', '2024-01-29', NULL, NULL),
(6810, 163, 732, NULL, NULL, '56 CONTAINER DESSICANT (CUSTOMER MAXIMA SOLUTION, EMPIRE LTD & AFAGRI)', '114', '212400', '24213600', 'fumigation', '2023-12-04', NULL, NULL),
(6811, 163, 749, NULL, NULL, '598 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS (MTWARA)', '598', '23600', '14112800', 'fumigation', '2024-01-29', NULL, NULL),
(6814, 160, 741, NULL, NULL, '11 (20FT) CONTAINERS FUMIGATED USING BY METHYL BROMIDE GAS', '11', '50000', '550000', 'fumigation', '2024-01-03', NULL, NULL),
(6815, 160, 741, NULL, NULL, '1 (40FT) CONTAINER FUMIGATED USING BY METHYL BROMIDE GAS', '1', '60000', '60000', 'fumigation', '2024-01-03', NULL, NULL),
(6816, 160, 741, NULL, NULL, 'THE DEBT FOR THE YEAR 2023 TSH 1,000,000/=', '1', '01000000', '1000000', 'fumigation', '2024-01-03', NULL, NULL),
(6817, 233, 750, NULL, NULL, '20 SILCON CONTAINER DESSICANT (DRY BAGS)', '20', '160000', '3200000', 'fumigation', '2024-01-13', NULL, NULL),
(6818, 233, 745, NULL, NULL, '20 SUPER DRY CONTAINERS DESSICANT (DRY BAGS)', '20', '160000', '3200000', 'fumigation', '2024-01-18', NULL, NULL),
(6819, 233, 751, NULL, NULL, '20 SILCON CONTAINER DESSICANT (DRY BAGS)', '20', '160000', '3200000', 'fumigation', '2024-01-08', NULL, NULL),
(6820, 233, 752, NULL, NULL, '20 Silcon container dessicnat (dry bag)', '20', '160000', '3200000', 'fumigation', '2024-02-03', NULL, NULL),
(6821, 163, 753, NULL, NULL, '4 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO 233907739', '4', '29500', '118000', 'fumigation', '2024-02-05', NULL, NULL),
(6822, 163, 753, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO 233758028', '2', '29500', '59000', 'fumigation', '2024-02-05', NULL, NULL),
(6823, 163, 753, NULL, NULL, '1 CONTAINER FUMIGATION USING BY PHOSPHINE GAS BL/NO EBKG07659760', '1', '29500', '29500', 'fumigation', '2024-02-05', NULL, NULL),
(6824, 163, 753, NULL, NULL, '3 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO DAR0146589', '3', '29500', '88500', 'fumigation', '2024-02-05', NULL, NULL),
(6825, 163, 753, NULL, NULL, '1 CONTAINER FUMIGATION USING BY PHOSPHINE GAS BL/NO 233750286', '1', '29500', '29500', 'fumigation', '2024-02-05', NULL, NULL),
(6826, 163, 753, NULL, NULL, '1 CONTAINER FUMIGATION USING BY PHOSPHINE GAS BL/NO EBKG07264717', '1', '29500', '29500', 'fumigation', '2024-02-05', NULL, NULL),
(6827, 163, 753, NULL, NULL, '1 CONTAINER FUMIGATION USING BY PHOSPHINE GAS BL/NO EBKG07461346', '1', '29500', '29500', 'fumigation', '2024-02-05', NULL, NULL),
(6828, 163, 753, NULL, NULL, '1 CONTAINER FUMIGATION USING BY PHOSPHINE GAS BL/NO32240000190', '1', '29500', '29500', 'fumigation', '2024-02-05', NULL, NULL),
(6829, 163, 753, NULL, NULL, '1 CONTAINERS FUMIGTION USING BY PHOSPHINE GAS BL/NO DAR0148696', '1', '29500', '29500', 'fumigation', '2024-02-05', NULL, NULL),
(6830, 163, 753, NULL, NULL, '2 CONTAINERS FUMIGATION USING BY PHOSPHINE GAS BL/NO DAR0148625', '2', '29500', '59000', 'fumigation', '2024-02-05', NULL, NULL),
(6833, 233, 754, NULL, NULL, '20 container desiccant (dry bag)', '20', '160000', '3200000', 'fumigation', '2024-02-07', NULL, NULL),
(6834, 233, 755, NULL, NULL, '20 SILCON CONTAINERS DESSICANT (DRY BAGS)', '20', '160000', '3200000', 'fumigation', '2024-02-12', NULL, NULL),
(6835, 233, 756, NULL, NULL, '20 Container desiccant (dry bags)', '20', '160000', '3200000', 'fumigation', '2024-02-17', NULL, NULL),
(6836, 160, 757, NULL, NULL, '8 containers fumigation using by methly bromide gas', '8', '50000', '400000', 'fumigation', '2024-02-22', NULL, NULL),
(6837, 246, 758, NULL, NULL, 'To fumigate and treat the godown office, the Septic and sewage system, and all compounds. this targeted to destroy/ kill all insects, i.e., cockroaches, mosquitoes, and all other domestic insects', '1', '944000', '944000', 'fumigation', '2024-02-27', NULL, NULL),
(6838, 247, 759, NULL, NULL, 'To fumigate and treat the godown office, the Septic and sewage system, and all compounds. this targeted to destroy/ kill all insects, i.e., cockroaches, mosquitoes, and all other domestic insects', '1', '944000', '944000', 'fumigation', '2024-02-27', NULL, NULL),
(6839, 200, 760, NULL, NULL, '5 containers fumigation using by methyl bromide gas Bl/no EBKG07939480', '5', '40000', '200000', 'fumigation', '2024-03-04', NULL, NULL),
(6840, 200, 760, NULL, NULL, '5 containers fumigation using by methyl bromide gas Bl/no EBKG07953952', '5', '40000', '200000', 'fumigation', '2024-03-04', NULL, NULL),
(6841, 200, 760, NULL, NULL, '10 containers fumigation using by methyl bromide gas Bl/no EBKG07963777', '10', '40000', '400000', 'fumigation', '2024-03-04', NULL, NULL),
(6842, 200, 760, NULL, NULL, '5 containers fumigation using by methyl bromide gas Bl/no EBKG07953903', '5', '40000', '200000', 'fumigation', '2024-03-04', NULL, NULL),
(6843, 200, 760, NULL, NULL, '5 containers fumigation using by methyl bromide gas Bl/no EBKG07840437', '5', '40000', '200000', 'fumigation', '2024-03-04', NULL, NULL),
(6844, 200, 760, NULL, NULL, '3 containers fumigation using by methyl bromide gas Bl/no EBKG07840490', '3', '40000', '120000', 'fumigation', '2024-03-04', NULL, NULL),
(6845, 200, 760, NULL, NULL, '3 containers fumigation using by methyl bromide gas Bl/no EBKG07840437', '3', '40000', '120000', 'fumigation', '2024-03-04', NULL, NULL),
(6846, 200, 760, NULL, NULL, '3 containers fumigation using by methyl bromide gas Bl/no EBKG07840350', '3', '40000', '120000', 'fumigation', '2024-03-04', NULL, NULL),
(6847, 200, 760, NULL, NULL, '15 containers fumigation using by methyl bromide gas Bl/no 235919531', '15', '40000', '600000', 'fumigation', '2024-03-04', NULL, NULL),
(6848, 200, 760, NULL, NULL, '5 containers fumigation using by methyl bromide gas Bl/no 235889099', '5', '40000', '200000', 'fumigation', '2024-03-04', NULL, NULL),
(6849, 200, 760, NULL, NULL, '5 containers fumigation using by methyl bromide gas Bl/no 235889587', '5', '40000', '200000', 'fumigation', '2024-03-04', NULL, NULL),
(6850, 200, 760, NULL, NULL, '1containers fumigation using by methyl bromide gas Bl/no CSLINNSA2300644', '1', '40000', '40000', 'fumigation', '2024-03-04', NULL, NULL),
(6851, 200, 760, NULL, NULL, '4 containers fumigation using by methyl bromide gas Bl/no CSLINNSA 2300642', '4', '40000', '160000', 'fumigation', '2024-03-04', NULL, NULL),
(6852, 200, 760, NULL, NULL, '10 containers fumigation using by methyl bromide gas Bl/no CSLINNSA 2300643', '10', '40000', '400000', 'fumigation', '2024-03-04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_fumigation`
--

CREATE TABLE `invoice_fumigation` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `date_in` varchar(255) NOT NULL,
  `sub_total` varchar(50) NOT NULL,
  `vat` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `net_total` varchar(50) NOT NULL,
  `withhold` varchar(50) DEFAULT NULL,
  `withhold_amount` varchar(50) DEFAULT NULL,
  `amount_paid` varchar(50) NOT NULL,
  `amount_due` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `currency_value` varchar(50) DEFAULT NULL,
  `invoice_status` varchar(50) NOT NULL,
  `adds` varchar(50) DEFAULT NULL,
  `start_date` varchar(50) NOT NULL,
  `due_date` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `close_date` varchar(50) DEFAULT NULL,
  `prove_status` varchar(50) DEFAULT NULL,
  `tax_inclusive` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(50) NOT NULL,
  `tax_exclusive` varchar(50) DEFAULT NULL,
  `discount1` varchar(50) DEFAULT NULL,
  `amount_due1` varchar(50) DEFAULT NULL,
  `tax` varchar(50) DEFAULT NULL,
  `withhold1` varchar(50) DEFAULT NULL,
  `withhold_amount1` varchar(50) DEFAULT NULL,
  `vat_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_fumigation`
--

INSERT INTO `invoice_fumigation` (`id`, `invoice_number`, `company_id`, `date_in`, `sub_total`, `vat`, `discount`, `net_total`, `withhold`, `withhold_amount`, `amount_paid`, `amount_due`, `currency`, `currency_value`, `invoice_status`, `adds`, `start_date`, `due_date`, `created_at`, `close_date`, `prove_status`, `tax_inclusive`, `updated_at`, `payment_status`, `tax_exclusive`, `discount1`, `amount_due1`, `tax`, `withhold1`, `withhold_amount1`, `vat_status`) VALUES
(114, '2021-0002', 156, '2021-03-31', '165000', '25169.491525423575', '0', '139830.50847457643', NULL, NULL, '165000', '0', 'Tsh', NULL, 'waiting', 'User', '2023-10-27 00:00:00', '2023-11-03 00:00:00', '2021-03-30 21:00:00', '2021-04-06', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2021-0005', 157, '2021-04-01', '1500000', '228813.56', '0', '1271186.44', NULL, NULL, '0', '1500000', 'Tsh', NULL, 'waiting', 'User', '2023-10-27 00:00:00', '2023-11-03 00:00:00', '2021-04-19 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2021-0008', 160, '2021-04-09', '1450000', '0', '0', '1450000', NULL, NULL, '1450000', '0', 'Tsh', NULL, 'waiting', 'User', '2023-10-27 00:00:00', '2023-11-03 00:00:00', '2021-04-08 21:00:00', '2021-04-13', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(123, '2021-0009', 163, '2021-04-13', '24150000', '0', '0', '24150000', NULL, NULL, '24150000', '0', 'USD', '23000', 'closed', 'User', '2021-04-30 00:00:00', '2021-05-07 00:00:00', '2021-04-15 21:00:00', '2021-07-22', NULL, '1050', NULL, 'paid', '1050', '0', '1050', '0', NULL, NULL, '0'),
(124, '2021-0010', 163, '2021-04-19', '37950000', '0', '0', '37950000', NULL, NULL, '37950000', '0', 'USD', '23000', 'closed', 'User', '2021-04-30 00:00:00', '2021-05-07 00:00:00', '2021-04-29 21:00:00', '2022-12-07', NULL, '1650', NULL, 'paid', '1650', '0', '1650', '0', NULL, NULL, '0'),
(127, '2021-0012', 165, '2021-05-04', '600000', '91525.42', '0', '508474.58', NULL, NULL, '0', '600000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2021-05-03 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(129, '2021-0014', 160, '2021-05-05', '1000000', '0', '0', '1000000', NULL, NULL, '1000000', '0', 'Tsh', NULL, 'closed', 'User', '2021-05-05 00:00:00', '2021-05-12 00:00:00', '2021-05-27 21:00:00', '2021-05-28', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(130, '2021-0015', 163, '2021-05-06', '26450000', '0', '0', '26450000', NULL, NULL, '24150000', '2300000', 'USD', '23000', 'waiting', 'User', '2022-03-14 00:00:00', '2022-03-21 00:00:00', '2021-05-06 21:00:00', '2021-07-22', NULL, '1150', NULL, 'partial paid', '1150', '0', '1150', '0', NULL, NULL, '0'),
(131, '2021-0016', 154, '2021-05-13', '2194800', '334800', '0', '1860000', NULL, NULL, '0', '2194800', 'Tsh', NULL, 'waiting', 'User', '2023-10-27 00:00:00', '2023-11-03 00:00:00', '2021-05-12 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(133, '2021-0017', 163, '2021-05-24', '46000000', '0', '0', '46000000', NULL, NULL, '4604000', '41396000', 'USD', '23000', 'waiting', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-05-25 21:00:00', '2021-06-05', NULL, '2000', NULL, 'partial paid', '2000', '0', '2000', '0', NULL, NULL, '0'),
(134, '2021-0018', 163, '2021-05-26', '350000', '0', '0', '350000', NULL, NULL, '350000', '0', 'Tsh', NULL, 'closed', 'User', '2021-07-23 00:00:00', '2021-07-30 00:00:00', '2021-05-25 21:00:00', '2022-12-07', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(135, '2021-0019', 163, '2021-05-26', '23000000', '0', '0', '23000000', NULL, NULL, '0', '23000000', 'USD', '23000', 'waiting', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2021-05-31 21:00:00', NULL, NULL, '1000', NULL, 'Not paid', '1000', '0', '1000', '0', NULL, NULL, '0'),
(137, '2021-0020', 156, '2021-06-04', '47200', '7200', '0', '40000', NULL, NULL, '47200', '0', 'Tsh', NULL, 'closed', 'User', '2021-06-04 00:00:00', '2021-06-11 00:00:00', '2021-06-03 21:00:00', '2021-06-07', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(139, '2021-0022', 163, '2021-06-09', '5750000', '0', '0', '5750000', NULL, NULL, '575000', '5175000', 'USD', '23000', 'waiting', 'User', '2023-05-16 00:00:00', '2023-05-23 00:00:00', '2022-08-26 00:00:00', '2022-12-07', NULL, '250', NULL, 'partial paid', '250', '0', '250', '0', NULL, '0', '0'),
(140, '2021-0023', 160, '2021-06-17', '1000000', '0', '0', '1000000', NULL, NULL, '0', '1000000', 'Tsh', NULL, 'draft', 'User', '2023-08-14 00:00:00', '2023-08-21 00:00:00', '2021-06-16 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(142, '2021-0024', 163, '2021-06-18', '28750000', '0', '0', '28750000', NULL, NULL, '28750000', '0', 'USD', '23000', 'closed', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-06-17 21:00:00', '2022-12-07', NULL, '1250', NULL, 'paid', '1250', '0', '1250', '0', NULL, NULL, '0'),
(143, '2021-0025', 169, '2021-07-05', '825000', '0', '0', '825000', NULL, NULL, '0', '825000', 'Tsh', NULL, 'draft', 'User', '2021-07-05 00:00:00', '2021-07-12 00:00:00', '2021-07-04 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(144, '2021-0026', 170, '2021-07-06', '17250000', '0', '0', '17250000', NULL, NULL, '0', '17250000', 'USD', '23000', 'waiting', 'User', '2021-07-06 00:00:00', '2021-07-13 00:00:00', '2021-07-05 21:00:00', NULL, NULL, '750', NULL, 'Not paid', '750', '0', '750', '0', NULL, NULL, '0'),
(145, '2021-0027', 163, '2021-07-06', '23000000', '0', '0', '23000000', NULL, NULL, '0', '23000000', 'USD', '23000', 'waiting', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-07-05 21:00:00', NULL, NULL, '1000', NULL, 'Not paid', '1000', '0', '1000', '0', NULL, NULL, '0'),
(147, '2021-0028', 174, '2021-07-23', '28750000', '0', '0', '28750000', NULL, NULL, '0', '28750000', 'USD', '23000', 'waiting', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-07-22 21:00:00', NULL, NULL, '1250', NULL, 'Not paid', '1250', '0', '1250', '0', NULL, NULL, '0'),
(148, '2021-0029', 175, '2021-07-28', '86250000', '0', '0', '86250000', NULL, NULL, '0', '86250000', 'USD', NULL, 'waiting', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-07-27 21:00:00', NULL, NULL, '3750', NULL, 'Not paid', '3750', '0', '3750', '0', NULL, NULL, '0'),
(149, '2021-0030', 154, '2021-07-28', '1650000', '251694.92', '0', '1398305.08', NULL, NULL, '0', '1650000', 'Tsh', NULL, 'waiting', 'User', '2021-08-02 00:00:00', '2021-08-09 00:00:00', '2021-07-27 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(150, '2021-0031', 163, '2021-07-29', '46000000', '0', '0', '46000000', NULL, NULL, '0', '46000000', 'USD', '23000', 'waiting', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-07-28 21:00:00', NULL, NULL, '2000', NULL, 'Not paid', '2000', '0', '2000', '0', NULL, NULL, '0'),
(151, '2021-0032', 170, '2021-08-28', '4466', '681.25', '0', '3784.75', '0.0', '0', '0', '4466', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2021-08-27 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(153, '2021-0033', 160, '2021-08-30', '1550000', '0', '0', '1550000', '0.0', '0', '0', '1550000', 'Tsh', NULL, 'waiting', 'User', '2021-08-30 00:00:00', '2021-09-06 00:00:00', '2021-08-29 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(154, '2021-0034', 163, '2021-08-30', '80500000', '0', '0', '80500000', '0.0', '0', '0', '80500000', 'USD', '23000', 'waiting', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-08-31 21:00:00', NULL, NULL, '3500', NULL, 'Not paid', '3500', '0', '3500', '0', '0.0', '0', '0'),
(155, '2021-0035', 156, '2021-09-01', '50', '7.63', '0', '42.37', '0.0', '0', '0', '50', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2021-08-31 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(156, '2021-0036', 177, '2021-09-01', '115000', '17542.37', '0', '97457.63', '0.0', '0', '115000', '0', 'Tsh', NULL, 'waiting', 'User', '2023-03-20 00:00:00', '2023-03-27 00:00:00', '2021-08-31 21:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(157, '2021-0037', 160, '2021-09-01', '1000000', '152542.37', '0', '847457.63', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2021-09-06 00:00:00', '2021-09-13 00:00:00', '2021-08-31 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(158, '2021-0038', 178, '2021-09-01', '60', '9.15', '0', '50.85', '0.0', '0', '0', '60', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2021-08-31 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(159, '2021-0039', 163, '2021-09-03', '8116500', '0', '0', '8116500', '0.0', '0', '0', '8116500', 'USD', '2319', 'waiting', 'User', '2023-05-31 00:00:00', '2023-06-07 00:00:00', '2021-09-07 21:00:00', NULL, NULL, '3500', NULL, 'Not paid', '3500', '0', '3500', '0', '0.0', '0', '0'),
(160, '2021-0040', 163, '2021-09-06', '5750000', '0', '0', '5750000', '0.0', '0', '0', '5750000', 'USD', '23000', 'waiting', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-09-05 21:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(161, '2021-0041', 179, '2021-09-06', '1507350', '0', '0', '1507350', '0.0', '0', '0', '1507350', 'Tsh', NULL, 'waiting', 'User', '2021-09-07 00:00:00', '2021-09-14 00:00:00', '2021-09-06 21:00:00', NULL, NULL, '650', NULL, 'Not paid', '650', '0', '650', '0', '0.0', '0', '0'),
(162, '2021-0042', 180, '2021-09-08', '3358000', '0', '0', '3358000', NULL, NULL, '0', '3358000', 'USD', '2300', 'waiting', 'User', '2023-01-10 00:00:00', '2023-01-17 00:00:00', '2023-01-11 00:00:00', NULL, NULL, '1460', NULL, 'Not paid', '1460', '0', '1460', '0', '0.0', '0', '0'),
(163, '2021-0043', 181, '2021-09-09', '33667489375', '5135718718.22', '0', '28531770656.78', '0.0', '0', '0', '33667489375', 'USD', '2335', 'waiting', 'User', '2021-09-28 00:00:00', '2021-10-05 00:00:00', '2021-09-14 21:00:00', NULL, NULL, '14418625', NULL, 'Not paid', '12219173.73', '0', '14418625', '2199451.27', '0.0', '0', '0.152542372881355'),
(164, '2021-0044', 182, '2021-09-10', '1750000', '266949.15', '150000', '1483050.85', '0.0', '0', '0', '1600000', 'Tsh', NULL, 'waiting', 'User', '2022-05-17 00:00:00', '2022-05-24 00:00:00', '2021-09-19 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(165, '2021-0045', 163, '2021-09-14', '80500000', '0', '0', '80500000', '0.0', '0', '0', '80500000', 'USD', '23000', 'waiting', 'User', '2021-09-21 00:00:00', '2021-09-28 00:00:00', '2021-09-13 21:00:00', NULL, NULL, '3500', NULL, 'Not paid', '3500', '0', '3500', '0', '0.0', '0', '0'),
(166, '2021-0046', 160, '2021-09-14', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2021-10-07 00:00:00', '2021-10-14 00:00:00', '2021-09-13 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(167, '2021-0047', 160, '2021-09-14', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2021-09-14 00:00:00', '2021-09-21 00:00:00', '2021-09-13 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(168, '2021-0048', 163, '2021-09-20', '40250000', '0', '0', '40250000', '0.0', '0', '0', '40250000', 'USD', '23000', 'waiting', 'User', '2021-09-21 00:00:00', '2021-09-28 00:00:00', '2021-09-20 21:00:00', NULL, NULL, '1750', NULL, 'Not paid', '1750', '0', '1750', '0', '0.0', '0', '0'),
(169, '2021-0049', 163, '2021-09-21', '5750000', '0', '0', '5750000', '0.0', '0', '0', '5750000', 'USD', '23000', 'waiting', 'User', '2021-09-28 00:00:00', '2021-10-05 00:00:00', '2021-09-20 21:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(170, '2021-0050', 163, '2021-09-23', '1739250', '0', '0', '1739250', NULL, NULL, '0', '1739250', 'USD', '2319', 'waiting', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-09-27 21:00:00', NULL, NULL, '750', NULL, 'Not paid', '750', '0', '750', '0', '0.0', '0', '0'),
(171, '2021-0051', 181, '2021-09-27', '8742630', '1333610.52', '0', '7409019.48', '0.0', '0', '0', '8742630', 'USD', '2319', 'waiting', 'User', '2021-10-22 00:00:00', '2021-10-29 00:00:00', '2021-10-21 21:00:00', NULL, NULL, '3770', NULL, 'Not paid', '3194.92', '0', '3770', '575.08', '0.0', '0', '0.152542372881355'),
(172, '2021-0052', 172, '2021-09-28', '747500', '114025.42', '0', '633474.58', '0.05', '31673.73', '0', '715826.27', 'Tsh', NULL, 'waiting', 'User', '2023-03-31 00:00:00', '2023-04-07 00:00:00', '2021-10-22 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(173, '2021-0053', 163, '2021-09-28', '2319000', '0', '0', '2319000', NULL, NULL, '0', '2319000', 'USD', '2319', 'waiting', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-09-27 21:00:00', NULL, NULL, '1000', NULL, 'Not paid', '1000', '0', '1000', '0', '0.0', '0', '0'),
(174, '2021-0054', 180, '2021-10-06', '35000', '0', '0', '35000', '0.0', '0', '0', '35000', 'Tsh', NULL, 'waiting', 'User', '2023-03-31 00:00:00', '2023-04-07 00:00:00', '2021-10-05 21:00:00', NULL, NULL, '210', NULL, 'Not paid', '210', '0', '210', '0', '0.0', '0', '0'),
(175, '2021-0055', 163, '2021-10-11', '35000', '0', '0', '35000', '0.0', '0', '0', '35000', 'Tsh', NULL, 'waiting', 'User', '2021-10-11 00:00:00', '2021-10-18 00:00:00', '2021-10-10 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(177, '2021-0057', 163, '2021-10-18', '74750000', '0', '0', '74750000', NULL, NULL, '0', '74750000', 'USD', '23000', 'draft', 'User', '2021-10-25 00:00:00', '2021-11-01 00:00:00', '2021-10-17 21:00:00', NULL, NULL, '3250', NULL, 'Not paid', '3250', '0', '3250', '0', '0.0', '0', '0'),
(178, '2021-0058', 185, '2021-10-27', '440000', '0', '0', '440000', '0.0', '0', '0', '440000', 'Tsh', NULL, 'waiting', 'User', '2021-10-28 00:00:00', '2021-11-04 00:00:00', '2021-10-26 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(179, '2021-0059', 181, '2021-10-28', '9797775', '1494575.85', '0', '8303199.15', NULL, NULL, '0', '9797775', 'USD', '2319', 'waiting', 'User', '2021-10-28 00:00:00', '2021-11-04 00:00:00', '2021-10-27 21:00:00', NULL, NULL, '4225', NULL, 'Not paid', '3580.51', '0', '4225', '644.49', '0.0', '0', '0.152542372881355'),
(180, '2021-0060', 172, '2021-10-28', '11960000', '1824406.78', '0', '10135593.22', '0.05', '506779.66', '0', '11453220.34', 'Tsh', NULL, 'waiting', 'User', '2022-03-31 00:00:00', '2022-04-07 00:00:00', '2022-03-29 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(181, '2021-0061', 186, '2021-11-01', '590000', '90000', '0', '500000', '0.0', '0', '590000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-13 00:00:00', '2021-11-20 00:00:00', '2021-11-16 21:00:00', '2023-01-13', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(182, '2021-0062', 186, '2021-11-01', '23600', '3600', '0', '20000', '0.0', '0', '23600', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-31 00:00:00', '2022-02-07 00:00:00', '2021-10-31 21:00:00', '2023-01-13', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(183, '2021-0063', 163, '2021-11-01', '67850000', '0', '0', '67850000', NULL, NULL, '0', '67850000', 'USD', '23000', 'draft', 'User', '2021-11-01 00:00:00', '2021-11-08 00:00:00', '2021-10-31 21:00:00', NULL, NULL, '2950', NULL, 'Not paid', '2950', '0', '2950', '0', '0.0', '0', '0'),
(184, '2021-0064', 163, '2021-11-01', '350000', '0', '0', '350000', '0.0', '0', '0', '350000', 'Tsh', NULL, 'draft', 'User', '2021-11-01 00:00:00', '2021-11-08 00:00:00', '2021-10-31 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(185, '2021-0065', 172, '2021-11-05', '1495000', '228050.85', '0', '1266949.15', '0.05', '63347.46', '0', '1431652.54', 'Tsh', NULL, 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2021-11-04 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(186, '2021-0066', 184, '2021-11-10', '17139500', '2614500', '0', '14525000', '0.0', '0', '0', '17139500', 'Tsh', NULL, 'waiting', 'User', '2022-05-12 00:00:00', '2022-05-19 00:00:00', '2021-11-15 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(187, '2021-0067', 156, '2021-11-10', '150000', '22881.36', '0', '127118.64', '0.0', '0', '0', '150000', 'Tsh', NULL, 'draft', 'User', '2021-11-10 00:00:00', '2021-11-17 00:00:00', '2021-11-09 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(189, '2021-0068', 189, '2021-11-10', '450000', '68644.07', '0', '381355.93', '0.0', '0', '0', '450000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2021-11-09 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(190, '2021-0068', 189, '2021-11-10', '450000', '68644.07', '0', '381355.93', '0.0', '0', '0', '450000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2021-11-09 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(191, '2021-0069', 160, '2021-11-13', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2021-11-19 00:00:00', '2021-11-26 00:00:00', '2021-11-12 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(192, '2021-0070', 190, '2021-11-16', '3510500', '535500', '0', '2975000', '0.0', '0', '0', '3510500', 'Tsh', NULL, 'waiting', 'User', '2022-02-02 00:00:00', '2022-02-09 00:00:00', '2021-11-15 21:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(193, '2021-0071', 191, '2021-11-19', '70000', '0', '0', '70000', '0.0', '0', '70000', '0', 'Tsh', NULL, 'closed', 'User', '2022-12-30 00:00:00', '2023-01-06 00:00:00', '2021-11-18 21:00:00', '2023-01-13', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(198, '2021-0072', 192, '2022-01-28', '805000', '122796.61', '0', '682203.39', '0.0', '0', '0', '805000', 'Tsh', NULL, 'waiting', 'User', '2023-06-24 00:00:00', '2023-07-01 00:00:00', '2022-01-28 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(199, '2021-0073', 192, '2022-01-28', '805000', '122796.61', '0', '682203.39', '0.0', '0', '0', '805000', 'Tsh', NULL, 'waiting', 'User', '2023-06-24 00:00:00', '2023-07-01 00:00:00', '2022-01-28 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(200, '2021-0074', 172, '2022-01-29', '448500', '68415.25', '0', '380084.75', '0.05', '0', '0', '448500', 'Tsh', NULL, 'waiting', 'User', '2022-02-01 00:00:00', '2022-02-08 00:00:00', '2022-02-01 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(210, '2021-0075', 163, '2022-01-29', '2070000', '0', '0', '2070000', NULL, NULL, '0', '2070000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '900', NULL, 'Not paid', '900', '0', '900', '0', '0.0', '0', '0'),
(211, '2021-0076', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(212, '2021-0077', 163, '2022-01-29', '1035000', '0', '0', '1035000', NULL, NULL, '0', '1035000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '450', NULL, 'Not paid', '450', '0', '450', '0', '0.0', '0', '0'),
(213, '2021-0078', 163, '2022-01-29', '115000', '0', '0', '115000', NULL, NULL, '0', '115000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '50', NULL, 'Not paid', '50', '0', '50', '0', '0.0', '0', '0'),
(214, '2021-0079', 163, '2022-01-29', '345000', '0', '0', '345000', NULL, NULL, '0', '345000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '150', NULL, 'Not paid', '150', '0', '150', '0', '0.0', '0', '0'),
(215, '2021-0080', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(216, '2021-0081', 163, '2022-01-29', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(217, '2021-0082', 163, '2022-01-29', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(218, '2021-0083', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(219, '2021-0084', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(220, '2021-0085', 163, '2022-01-29', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(221, '2021-0086', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(224, '2021-0087', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'pending', 'User', 'pending', 'pending', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(225, '2021-0088', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(226, '2021-0089', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(227, '2021-0090', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(228, '2021-0091', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(229, '2021-0092', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(230, '2021-0093', 163, '2022-01-29', '575000', '0', '0', '575000', '0.0', '0', '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(231, '2021-0094', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(232, '2021-0095', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(234, '2021-0096', 163, '2022-01-29', '115000', '0', '0', '115000', '0.0', '0', '0', '115000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '50', NULL, 'Not paid', '50', '0', '50', '0', '0.0', '0', '0'),
(235, '2021-0097', 163, '2022-01-29', '345000', '0', '0', '345000', NULL, NULL, '0', '345000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '150', NULL, 'Not paid', '150', '0', '150', '0', '0.0', '0', '0'),
(236, '2021-0098', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(238, '2021-0099', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(239, '2021-0100', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(240, '2021-0101', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(241, '2021-0102', 163, '2022-01-29', '115000', '0', '0', '115000', NULL, NULL, '115000', '0', 'USD', '2300', 'closed', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', '2022-12-07', NULL, '50', NULL, 'paid', '50', '0', '50', '0', '0.0', '0', '0'),
(242, '2021-0103', 163, '2022-01-29', '1035000', '0', '0', '1035000', NULL, NULL, '0', '1035000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '450', NULL, 'Not paid', '450', '0', '450', '0', '0.0', '0', '0'),
(243, '2021-0104', 163, '2022-01-29', '1035000', '0', '0', '1035000', NULL, NULL, '0', '1035000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '450', NULL, 'Not paid', '450', '0', '450', '0', '0.0', '0', '0'),
(244, '2021-0105', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(245, '2021-0106', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(246, '2021-0107', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(247, '2021-0108', 163, '2022-01-29', '345000', '0', '0', '345000', NULL, NULL, '0', '345000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '150', NULL, 'Not paid', '150', '0', '150', '0', '0.0', '0', '0'),
(248, '2021-0109', 163, '2022-01-29', '1035000', '0', '0', '1035000', NULL, NULL, '0', '1035000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '450', NULL, 'Not paid', '450', '0', '450', '0', '0.0', '0', '0'),
(249, '2021-0110', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(250, '2021-0111', 163, '2022-01-29', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(251, '2021-0112', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'draft', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(252, '2021-0113', 163, '2022-01-29', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(253, '2021-0114', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(254, '2021-0115', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(255, '2021-0116', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(256, '2021-0117', 163, '2022-01-29', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(257, '2021-0118', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(258, '2021-0119', 163, '2022-01-29', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(259, '2021-0120', 163, '2022-01-29', '345000', '0', '0', '345000', NULL, NULL, '0', '345000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '150', NULL, 'Not paid', '150', '0', '150', '0', '0.0', '0', '0'),
(260, '2021-0121', 163, '2022-01-29', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(261, '2021-0122', 163, '2022-01-29', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(262, '2021-0123', 163, '2022-01-29', '115000', '0', '0', '115000', NULL, NULL, '0', '115000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '50', NULL, 'Not paid', '50', '0', '50', '0', '0.0', '0', '0'),
(263, '2021-0124', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(264, '2021-0125', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(265, '2021-0126', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(266, '2021-0127', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(267, '2021-0128', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(268, '2021-0129', 156, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(269, '2021-0130', 163, '2022-01-29', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(270, '2021-0131', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(271, '2021-0132', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(272, '2021-0133', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(273, '2021-0134', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(274, '2021-0135', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(275, '2021-0136', 163, '2022-01-29', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(276, '2021-0137', 163, '2022-01-29', '115000', '0', '0', '115000', NULL, NULL, '0', '115000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '50', NULL, 'Not paid', '50', '0', '50', '0', '0.0', '0', '0'),
(277, '2021-0138', 163, '2022-01-29', '460000', '0', '0', '460000', NULL, NULL, '0', '460000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(278, '2021-0139', 163, '2022-01-29', '920000', '0', '0', '920000', NULL, NULL, '0', '920000', 'USD', '2300', 'waiting', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, NULL, '400', NULL, 'Not paid', '400', '0', '400', '0', '0.0', '0', '0'),
(279, '2021-0140', 163, '2022-01-31', '1400000', '0', '0', '1400000', '0.0', '0', '0', '1400000', 'Tsh', NULL, 'waiting', 'User', '2022-01-31 00:00:00', '2022-02-07 00:00:00', '2022-01-31 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(280, '2021-0141', 163, '2022-01-31', '200000', '0', '0', '200000', '0.0', '0', '0', '200000', 'Tsh', NULL, 'waiting', 'User', '2022-01-31 00:00:00', '2022-02-07 00:00:00', '2022-01-31 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(281, '2021-0142', 186, '2022-01-31', '59000', '9000', '0', '50000', '0.05', '2500', '0', '56500', 'Tsh', NULL, 'waiting', 'User', '2023-02-02 00:00:00', '2023-02-09 00:00:00', '2022-01-31 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(282, '2021-0143', 172, '2022-02-01', '10465000', '1596355.93', '0', '8868644.07', '0.05', '443432.2', '0', '10021567.8', 'Tsh', NULL, 'waiting', 'User', '2022-03-29 00:00:00', '2022-04-05 00:00:00', '2022-02-08 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(283, '2021-0144', 160, '2022-02-02', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-02-02 00:00:00', '2022-02-09 00:00:00', '2022-02-02 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(284, '2021-0145', 160, '2022-02-02', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-02-02 00:00:00', '2022-02-09 00:00:00', '2022-02-02 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(285, '2021-0146', 193, '2022-02-02', '126500', '19296.61', '0', '107203', NULL, NULL, '0', '126500', 'USD', '2300', 'draft', 'User', '2022-02-02 00:00:00', '2022-02-09 00:00:00', '2022-02-02 08:00:00', NULL, NULL, '55', NULL, 'Not paid', '46.61', '0', '55', '8.39', '0.0', '0', '0.152542372881355'),
(286, '2021-0147', 193, '2022-02-02', '345000', '52624', '0', '292376', NULL, NULL, '0', '345000', 'USD', '2300', 'waiting', 'User', '2022-02-15 00:00:00', '2022-02-22 00:00:00', '2022-02-15 08:00:00', NULL, NULL, '150', NULL, 'Not paid', '127.12', '0', '150', '22.88', '0.0', '0', '0.152542372881355'),
(287, '2021-0148', 193, '2022-02-02', '206500', '31500', '0', '175000', '0.0', '0', '0', '206500', 'Tsh', NULL, 'draft', 'User', '2022-02-02 00:00:00', '2022-02-09 00:00:00', '2022-02-02 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(288, '2021-0149', 194, '2022-02-04', '698960', '106621.02', '0', '592338.98', '0.0', '0', '0', '698960', 'Tsh', NULL, 'draft', 'User', '2022-02-04 00:00:00', '2022-02-11 00:00:00', '2022-02-04 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(289, '2021-0150', 194, '2022-02-04', '613960', '93654.92', '0', '520305.08', '0.0', '0', '0', '613960', 'Tsh', NULL, 'draft', 'User', '2022-02-04 00:00:00', '2022-02-11 00:00:00', '2022-02-04 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(290, '2021-0151', 186, '2022-02-05', '1475000', '225000', '0', '1250000', '0.05', '62500', '0', '1412500', 'Tsh', NULL, 'waiting', 'User', '2022-02-12 00:00:00', '2022-02-19 00:00:00', '2022-02-05 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(292, '2021-0152', 172, '2022-02-08', '10465000', '1596355.93', '0', '8868644.07', '0.05', '443432.2', '0', '10021567.8', 'Tsh', NULL, 'waiting', 'User', '2022-03-29 00:00:00', '2022-04-05 00:00:00', '2022-02-08 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(293, '2021-0153', 163, '2022-02-15', '345000', '0', '0', '345000', NULL, NULL, '0', '345000', 'USD', '2300', 'waiting', 'User', '2022-02-15 00:00:00', '2022-02-22 00:00:00', '2022-02-15 08:00:00', NULL, NULL, '150', NULL, 'Not paid', '150', '0', '150', '0', '0.0', '0', '0'),
(294, '2021-0154', 163, '2022-02-15', '115000', '0', '0', '115000', '0.0', '0', '0', '115000', 'USD', '2300', 'waiting', 'User', '2022-02-18 00:00:00', '2022-02-25 00:00:00', '2022-02-18 08:00:00', NULL, NULL, '50', NULL, 'Not paid', '50', '0', '50', '0', '0.0', '0', '0'),
(295, '2021-0155', 163, '2022-02-15', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-02-18 00:00:00', '2022-02-25 00:00:00', '2022-02-15 08:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(296, '2021-0156', 157, '2022-02-16', '2500000', '381355.93', '0', '2118644.07', '0.05', '105932.2', '0', '2394067.8', 'Tsh', NULL, 'draft', 'User', '2022-03-03 00:00:00', '2022-03-10 00:00:00', '2022-02-18 08:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(298, '2022-0157', 187, '2022-02-28', '501500', '76500', '0', '425000', '0.05', '21250', '0', '480250', 'Tsh', NULL, 'draft', 'User', '2022-03-01 00:00:00', '2022-03-08 00:00:00', '2022-02-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(299, '2022-0158', 180, '2022-03-03', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2023-01-20 00:00:00', '2023-01-27 00:00:00', '2023-01-20 00:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(300, '2022-0159', 163, '2022-03-09', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'draft', 'User', '2022-03-09 00:00:00', '2022-03-16 00:00:00', '2022-03-09 00:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(301, '2022-0160', 163, '2022-03-09', '100000', '0', '0', '100000', '0.0', '0', '0', '100000', 'Tsh', NULL, 'waiting', 'User', '2022-03-24 00:00:00', '2022-03-31 00:00:00', '2022-03-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(302, '2022-0161', 160, '2022-03-09', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-03-09 00:00:00', '2022-03-16 00:00:00', '2022-03-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(303, '2022-0162', 180, '2022-03-11', '1927400', '0', '0', '1927400', NULL, NULL, '0', '1927400', 'USD', '2300', 'waiting', 'User', '2023-03-17 00:00:00', '2023-03-24 00:00:00', '2022-03-11 00:00:00', NULL, NULL, '838', NULL, 'Not paid', '838', '0', '838', '0', '0.0', '0', '0'),
(304, '2022-0163', 177, '2022-03-21', '1450000', '221186.44', '0', '1228813.56', '0.05', '0', '1450000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-20 00:00:00', '2023-03-27 00:00:00', '2022-03-21 00:00:00', '2023-03-20', NULL, '1450000', NULL, 'paid', '1228813.56', '0', '1450000', '221186.44', NULL, NULL, '0.152542372881355'),
(305, '2022-0164', 154, '2022-03-21', '7976800', '1216800', '0', '6760000', '0.05', '338000', '0', '7638800', 'Tsh', NULL, 'waiting', 'User', '2023-01-23 00:00:00', '2023-01-30 00:00:00', '2022-05-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(306, '2022-0165', 198, '2022-03-21', '1450000', '0', '0', '1450000', '0.0', '0', '1450000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-20 00:00:00', '2023-03-27 00:00:00', '2022-04-12 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(307, '2022-0166', 163, '2022-03-23', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-03-25 00:00:00', '2022-04-01 00:00:00', '2022-03-23 00:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(308, '2022-0167', 163, '2022-03-23', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-03-25 00:00:00', '2022-04-01 00:00:00', '2022-03-23 00:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(309, '2022-0168', 163, '2022-03-24', '2300000', '0', '0', '2300000', NULL, NULL, '0', '2300000', 'USD', '2300', 'waiting', 'User', '2022-05-11 00:00:00', '2022-05-18 00:00:00', '2022-03-24 00:00:00', NULL, NULL, '1000', NULL, 'Not paid', '1000', '0', '1000', '0', '0.0', '0', '0'),
(310, '2022-0169', 160, '2022-03-25', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-05-11 00:00:00', '2022-05-18 00:00:00', '2022-03-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(311, '2022-0170', 160, '2022-03-25', '1200000', '0', '0', '1200000', '0.0', '0', '0', '1200000', 'Tsh', NULL, 'waiting', 'User', '2022-05-11 00:00:00', '2022-05-18 00:00:00', '2022-03-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(312, '2022-0171', 160, '2022-03-30', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-05-11 00:00:00', '2022-05-18 00:00:00', '2022-03-30 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(313, '2022-0172', 160, '2022-04-01', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-05-11 00:00:00', '2022-05-18 00:00:00', '2022-04-01 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(314, '2022-0173', 163, '2022-04-04', '1725000', '0', '0', '1725000', NULL, NULL, '0', '1725000', 'USD', '2300', 'waiting', 'User', '2022-04-04 00:00:00', '2022-04-11 00:00:00', '2022-04-04 00:00:00', NULL, NULL, '750', NULL, 'Not paid', '750', '0', '750', '0', '0.0', '0', '0'),
(315, '2022-0174', 157, '2022-04-05', '2500000', '381355.93', '0', '2118644.07', '0.0', '0', '0', '2500000', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2022-04-05 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(316, '2022-0175', 157, '2022-04-05', '2500000', '381355.93', '0', '2118644.07', '0.05', '105932.2', '0', '2394067.8', 'Tsh', NULL, 'draft', 'User', '2022-04-05 00:00:00', '2022-04-12 00:00:00', '2022-04-05 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(317, '2022-0176', 163, '2022-04-05', '690000', '0', '0', '690000', NULL, NULL, '0', '690000', 'USD', '2300', 'waiting', 'User', '2022-04-05 00:00:00', '2022-04-12 00:00:00', '2022-04-05 00:00:00', NULL, NULL, '300', NULL, 'Not paid', '300', '0', '300', '0', '0.0', '0', '0'),
(318, '2022-0177', 200, '2022-04-08', '80500', '0', '0', '80500', NULL, NULL, '0', '80500', 'USD', '2300', 'draft', 'User', 'pending', 'pending', '2022-04-08 00:00:00', NULL, NULL, '35', NULL, 'Not paid', '35', '0', '35', '0', '0.0', '0', '0'),
(319, '2022-0178', 200, '2022-04-08', '300000', '0', '0', '300000', '0.0', '0', '0', '300000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-03-17 00:00:00', '2023-03-24 00:00:00', '2023-03-17 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(320, '2022-0179', 160, '2022-04-08', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-04-08 00:00:00', '2022-04-15 00:00:00', '2022-04-08 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(321, '2022-0180', 198, '2022-04-12', '725000', '0', '0', '725000', '0.0', '0', '725000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-20 00:00:00', '2023-03-27 00:00:00', '2022-04-12 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(322, '2022-0181', 191, '2022-04-12', '70000', '0', '0', '70000', '0.0', '0', '70000', '0', 'Tsh', NULL, 'closed', 'User', '2022-04-12 00:00:00', '2022-04-19 00:00:00', '2022-04-12 00:00:00', '2023-01-13', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(323, '2022-0182', 160, '2022-04-13', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-05-11 00:00:00', '2022-05-18 00:00:00', '2022-04-13 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(324, '2022-0183', 160, '2022-04-13', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-05-11 00:00:00', '2022-05-18 00:00:00', '2022-04-13 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `invoice_fumigation` (`id`, `invoice_number`, `company_id`, `date_in`, `sub_total`, `vat`, `discount`, `net_total`, `withhold`, `withhold_amount`, `amount_paid`, `amount_due`, `currency`, `currency_value`, `invoice_status`, `adds`, `start_date`, `due_date`, `created_at`, `close_date`, `prove_status`, `tax_inclusive`, `updated_at`, `payment_status`, `tax_exclusive`, `discount1`, `amount_due1`, `tax`, `withhold1`, `withhold_amount1`, `vat_status`) VALUES
(325, '2022-0184', 201, '2022-04-19', '800000', '0', '0', '800000', '0.0', '0', '0', '800000', 'Tsh', NULL, 'waiting', 'User', '2022-04-19 00:00:00', '2022-04-26 00:00:00', '2022-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(326, '2022-0185', 199, '2022-04-19', '1200', '0', '0', '1200', '0.0', '0', '0', '1200', 'Tsh', NULL, 'waiting', 'User', '2022-04-25 00:00:00', '2022-05-02 00:00:00', '2022-04-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(327, '2022-0186', 163, '2022-04-21', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'pending', 'User', 'pending', 'pending', '2022-04-21 00:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(328, '2022-0187', 163, '2022-04-21', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-04-21 00:00:00', '2022-04-28 00:00:00', '2022-04-21 00:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(329, '2022-0188', 163, '2022-04-21', '900000', '0', '0', '900000', '0.0', '0', '0', '900000', 'Tsh', NULL, 'waiting', 'User', '2022-04-21 00:00:00', '2022-04-28 00:00:00', '2022-04-21 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(330, '2022-0189', 198, '2022-04-22', '130000', '0', '0', '130000', '0.0', '0', '130000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-20 00:00:00', '2023-03-27 00:00:00', '2022-04-30 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(331, '2022-0190', 198, '2022-04-22', '120000', '0', '0', '120000', '0.0', '0', '120000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-20 00:00:00', '2023-03-27 00:00:00', '2022-04-30 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(332, '2022-0191', 198, '2022-04-22', '160000', '0', '0', '160000', '0.0', '0', '160000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-20 00:00:00', '2023-03-27 00:00:00', '2022-04-30 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(333, '2022-0192', 198, '2022-04-22', '120000', '0', '0', '120000', '0.0', '0', '120000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-20 00:00:00', '2023-03-27 00:00:00', '2022-04-30 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(334, '2022-0193', 191, '2022-04-27', '70000', '0', '0', '70000', '0.0', '0', '70000', '0', 'Tsh', NULL, 'closed', 'User', '2022-04-27 00:00:00', '2022-05-04 00:00:00', '2022-04-27 00:00:00', '2023-01-13', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(335, '2022-0194', 191, '2022-04-28', '35000', '0', '0', '35000', '0.0', '0', '35000', '0', 'Tsh', NULL, 'closed', 'User', '2022-04-28 00:00:00', '2022-05-05 00:00:00', '2022-04-28 00:00:00', '2023-01-13', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(336, '2022-0195', 198, '2022-04-30', '180000', '0', '0', '180000', '0.0', '0', '180000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-20 00:00:00', '2023-03-27 00:00:00', '2022-04-30 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(338, '2022-0196', 163, '2022-05-02', '450000', '0', '0', '450000', '0.0', '0', '0', '450000', 'Tsh', NULL, 'waiting', 'User', '2022-05-02 00:00:00', '2022-05-09 00:00:00', '2022-05-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(339, '2022-0197', 202, '2022-05-02', '100000', '0', '0', '100000', '0.0', '0', '0', '100000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2022-05-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(340, '2022-0198', 160, '2022-05-05', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-05-11 00:00:00', '2022-05-18 00:00:00', '2022-05-05 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(342, '2022-0199', 198, '2022-05-13', '240000', '0', '0', '240000', '0.0', '0', '240000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-20 00:00:00', '2023-03-27 00:00:00', '2022-05-13 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(343, '2022-0200', 198, '2022-05-13', '300000', '0', '0', '300000', '0.0', '0', '300000', '0', 'Tsh', NULL, 'closed', 'User', '2022-05-13 00:00:00', '2022-05-20 00:00:00', '2022-05-13 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(344, '2022-0201', 160, '2022-05-19', '1710000', '0', '0', '1710000', '0.0', '0', '0', '1710000', 'Tsh', NULL, 'draft', 'User', '2022-08-04 00:00:00', '2022-08-11 00:00:00', '2022-05-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(345, '2022-0202', 198, '2022-05-25', '510000', '0', '0', '510000', '0.0', '0', '510000', '0', 'Tsh', NULL, 'closed', 'User', '2022-06-14 00:00:00', '2022-06-21 00:00:00', '2022-06-10 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(346, '2022-0203', 160, '2022-05-26', '1050000', '0', '0', '1050000', '0.0', '0', '0', '1050000', 'Tsh', NULL, 'waiting', 'User', '2022-05-26 00:00:00', '2022-06-02 00:00:00', '2022-05-26 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(347, '2022-0204', 199, '2022-05-31', '70800', '10800', '0', '60000', '0.0', '0', '0', '70800', 'Tsh', NULL, 'draft', 'User', '2022-05-31 00:00:00', '2022-06-07 00:00:00', '2022-05-31 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(348, '2022-0205', 199, '2022-05-31', '106200', '16200', '0', '90000', '0.0', '0', '0', '106200', 'Tsh', NULL, 'draft', 'User', '2022-05-31 00:00:00', '2022-06-07 00:00:00', '2022-05-31 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(349, '2022-0206', 160, '2022-06-07', '650000', '0', '0', '650000', '0.0', '0', '0', '650000', 'Tsh', NULL, 'waiting', 'User', '2022-06-07 00:00:00', '2022-06-14 00:00:00', '2022-06-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(350, '2022-0207', 157, '2022-06-07', '2500000', '381355.93', '0', '2118644.07', '0.05', '105932.2', '0', '2394067.8', 'Tsh', NULL, 'waiting', 'User', '2022-06-09 00:00:00', '2022-06-16 00:00:00', '2022-06-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(351, '2022-0208', 184, '2022-06-08', '4130000', '630000', '0', '3500000', '0.0', '0', '0', '4130000', 'Tsh', NULL, 'draft', 'User', '2022-06-22 00:00:00', '2022-06-29 00:00:00', '2022-06-08 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(352, '2022-0209', 198, '2022-06-10', '450000', '0', '0', '450000', '0.0', '0', '450000', '0', 'Tsh', NULL, 'closed', 'User', '2022-06-13 00:00:00', '2022-06-20 00:00:00', '2022-06-10 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(353, '2022-0210', 198, '2022-06-13', '1500000', '0', '0', '1500000', '0.0', '0', '1500000', '0', 'Tsh', NULL, 'closed', 'User', '2022-06-22 00:00:00', '2022-06-29 00:00:00', '2022-06-13 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(354, '2022-0211', 163, '2022-06-22', '540000', '0', '0', '540000', '0.0', '0', '0', '540000', 'Tsh', NULL, 'waiting', 'User', '2022-07-14 00:00:00', '2022-07-21 00:00:00', '2022-06-22 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(355, '2022-0212', 160, '2022-06-28', '450000', '0', '0', '450000', '0.0', '0', '0', '450000', 'Tsh', NULL, 'draft', 'User', '2022-08-04 00:00:00', '2022-08-11 00:00:00', '2022-06-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(356, '2022-0213', 163, '2022-07-06', '1150000', '0', '0', '1150000', '0.0', '0', '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-07-14 00:00:00', '2022-07-21 00:00:00', '2022-07-13 00:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(357, '2022-0214', 198, '2022-07-13', '725000', '0', '0', '725000', '0.0', '0', '725000', '0', 'Tsh', NULL, 'closed', 'User', '2022-07-14 00:00:00', '2022-07-21 00:00:00', '2022-07-14 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(358, '2022-0215', 198, '2022-07-14', '6000000', '0', '0', '6000000', '0.0', '0', '6000000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-09 00:00:00', '2023-03-16 00:00:00', '2022-07-14 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(359, '2022-0216', 163, '2022-07-14', '420000', '0', '0', '420000', '0.0', '0', '0', '420000', 'Tsh', NULL, 'waiting', 'User', '2022-07-14 00:00:00', '2022-07-21 00:00:00', '2022-07-14 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(360, '2022-0217', 163, '2022-07-14', '980000', '0', '0', '980000', '0.0', '0', '0', '980000', 'Tsh', NULL, 'waiting', 'User', '2022-07-14 00:00:00', '2022-07-21 00:00:00', '2022-07-14 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(361, '2022-0218', 204, '2022-07-20', '120000', '0', '0', '120000', '0.0', '0', '0', '120000', 'Tsh', NULL, 'draft', 'User', '2022-07-20 00:00:00', '2022-07-27 00:00:00', '2022-12-13 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(362, '2022-0219', 205, '2022-07-22', '140000', '0', '0', '140000', '0.0', '0', '0', '140000', 'Tsh', NULL, 'waiting', 'User', '2022-07-22 00:00:00', '2022-07-29 00:00:00', '2022-07-22 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(363, '2022-0220', 205, '2022-07-22', '70000', '0', '0', '70000', '0.0', '0', '0', '70000', 'Tsh', NULL, 'waiting', 'User', '2022-07-22 00:00:00', '2022-07-29 00:00:00', '2022-07-22 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(364, '2022-0221', 160, '2022-07-22', '1350000', '0', '0', '1350000', '0.0', '0', '0', '1350000', 'Tsh', NULL, 'waiting', 'User', '2022-08-04 00:00:00', '2022-08-11 00:00:00', '2022-07-22 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(365, '2022-0222', 163, '2022-07-22', '1150000', '0', '0', '1150000', NULL, NULL, '0', '1150000', 'USD', '2300', 'waiting', 'User', '2022-07-22 00:00:00', '2022-07-29 00:00:00', '2022-07-22 00:00:00', NULL, NULL, '500', NULL, 'Not paid', '500', '0', '500', '0', '0.0', '0', '0'),
(367, '2022-0223', 163, '2022-07-27', '920000', '0', '0', '920000', '0.0', '0', '0', '920000', 'USD', '2300', 'waiting', 'User', '2022-07-27 00:00:00', '2022-08-03 00:00:00', '2022-09-16 00:00:00', NULL, NULL, '400', NULL, 'Not paid', '400', '0', '400', '0', '0.0', '0', '0'),
(368, '2022-0224', 154, '2022-07-28', '920000', '140338.98', '0', '779661.02', NULL, NULL, '0', '920000', 'USD', '2300', 'waiting', 'User', '2022-08-02 00:00:00', '2022-08-09 00:00:00', '2022-07-29 00:00:00', NULL, NULL, '400', NULL, 'Not paid', '338.98', '0', '400', '61.02', '0.05', '0', '0.152542372881355'),
(370, '2022-0225', 154, '2022-07-29', '1500000', '228813.56', '0', '1271186.44', '0.0', '0', '0', '1500000', 'Tsh', NULL, 'waiting', 'User', '2023-02-01 00:00:00', '2023-02-08 00:00:00', '2022-07-29 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(371, '2022-0226', 163, '2022-08-01', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-08-03 00:00:00', '2022-08-10 00:00:00', '2022-08-01 00:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(372, '2022-0227', 160, '2022-08-02', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2022-08-02 00:00:00', '2022-08-09 00:00:00', '2022-08-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(373, '2022-0228', 160, '2022-08-02', '100000', '0', '0', '100000', '0.0', '0', '0', '100000', 'Tsh', NULL, 'waiting', 'User', '2022-08-02 00:00:00', '2022-08-09 00:00:00', '2022-08-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(374, '2022-0229', 163, '2022-08-04', '455000', '0', '0', '455000', '0.0', '0', '0', '455000', 'Tsh', NULL, 'draft', 'User', '2022-08-04 00:00:00', '2022-08-11 00:00:00', '2022-08-04 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(375, '2022-0230', 160, '2022-08-09', '800000', '0', '0', '800000', '0.0', '0', '0', '800000', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2022-08-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(376, '2022-0231', 160, '2022-08-09', '800000', '0', '0', '800000', '0.0', '0', '0', '800000', 'Tsh', NULL, 'waiting', 'User', '2022-08-11 00:00:00', '2022-08-18 00:00:00', '2022-08-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(377, '2022-0232', 207, '2022-08-10', '720000', '0', '0', '720000', '0.0', '0', '0', '720000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2022-08-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(378, '2022-0233', 208, '2022-08-11', '506000', '0', '0', '506000', NULL, NULL, '0', '506000', 'USD', '2300', 'draft', 'User', 'pending', 'pending', '2022-08-11 00:00:00', NULL, NULL, '220', NULL, 'Not paid', '220', '0', '220', '0', '0.0', '0', '0'),
(379, '2022-0234', 182, '2022-08-18', '1800000', '274576.27', '0', '1525423.73', '0.0', '0', '0', '1800000', 'Tsh', NULL, 'waiting', 'User', '2022-08-24 00:00:00', '2022-08-31 00:00:00', '2022-08-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(380, '2022-0235', 160, '2022-08-22', '250000', '0', '0', '250000', '0.0', '0', '0', '250000', 'Tsh', NULL, 'waiting', 'User', '2022-08-22 00:00:00', '2022-08-29 00:00:00', '2022-08-22 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(381, '2022-0236', 182, '2022-08-22', '8735044.4', '1332464.4', '0', '7402580', '0.05', '370129', '0', '8364915.4', 'Tsh', NULL, 'waiting', 'User', '2022-08-24 00:00:00', '2022-08-31 00:00:00', '2022-08-22 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(382, '2022-0237', 182, '2022-08-25', '8341703.2', '1272463.2', '0', '7069240', '0.05', '353462', '0', '7988241.2', 'Tsh', NULL, 'waiting', 'User', '2022-08-26 00:00:00', '2022-09-02 00:00:00', '2022-08-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(383, '2022-0238', 163, '2022-08-26', '350000', '0', '0', '350000', '0.0', '0', '0', '350000', 'Tsh', NULL, 'waiting', 'User', '2022-08-26 00:00:00', '2022-09-02 00:00:00', '2022-08-26 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(384, '2022-0239', 163, '2022-08-26', '575000', '0', '0', '575000', '0.0', '0', '0', '575000', 'USD', '2300', 'waiting', 'User', '2022-08-26 00:00:00', '2022-09-02 00:00:00', '2022-08-26 00:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(385, '2022-0240', 184, '2022-08-27', '2065000', '315000', '0', '1750000', '0.0', '0', '0', '2065000', 'Tsh', NULL, 'waiting', 'User', '2022-09-01 00:00:00', '2022-09-08 00:00:00', '2022-08-29 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(386, '2022-0241', 163, '2022-08-31', '4600000', '0', '0', '4600000', NULL, NULL, '0', '4600000', 'USD', '2300', 'waiting', 'User', '2022-09-02 00:00:00', '2022-09-09 00:00:00', '2022-09-01 00:00:00', NULL, NULL, '2000', NULL, 'Not paid', '2000', '0', '2000', '0', '0.0', '0', '0'),
(387, '2022-0242', 182, '2022-09-02', '9224532', '1407132', '0', '7817400', '0.05', '390870', '0', '8833662', 'Tsh', NULL, 'waiting', 'User', '2022-09-02 00:00:00', '2022-09-09 00:00:00', '2022-09-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(388, '2022-0243', 163, '2022-09-06', '1829000', '279000', '0', '1550000', '0.0', '0', '1829000', '0', 'Tsh', NULL, 'closed', 'User', '2022-09-12 00:00:00', '2022-09-19 00:00:00', '2022-09-06 00:00:00', '2022-12-07', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(389, '2022-0244', 163, '2022-09-08', '7463500', '1138500', '0', '6325000', '0.05', '0', '7463500', '0', 'Tsh', NULL, 'closed', 'User', '2022-09-12 00:00:00', '2022-09-19 00:00:00', '2022-09-12 00:00:00', '2022-12-07', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(390, '2022-0245', 205, '2022-09-08', '340000', '0', '0', '340000', '0.0', '0', '0', '340000', 'Tsh', NULL, 'waiting', 'User', '2022-09-28 00:00:00', '2022-10-05 00:00:00', '2022-09-22 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(391, '2022-0246', 163, '2022-09-12', '1829000', '279000', '0', '1550000', '0.0', '0', '0', '1829000', 'Tsh', NULL, 'waiting', 'User', '2022-09-12 00:00:00', '2022-09-19 00:00:00', '2022-09-12 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(392, '2022-0247', 209, '2022-09-15', '2798400', '426874.58', '0', '2371525.42', '0.0', '0', '0', '2798400', 'Tsh', NULL, 'draft', 'User', '2022-12-19 00:00:00', '2022-12-26 00:00:00', '2022-11-17 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(393, '2022-0248', 163, '2022-09-19', '1829000', '279000', '0', '1550000', '0.0', '0', '1829000', '0', 'Tsh', NULL, 'closed', 'User', '2022-09-20 00:00:00', '2022-09-27 00:00:00', '2022-09-19 00:00:00', '2022-12-07', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(394, '2022-0249', 160, '2022-09-21', '150000', '0', '0', '150000', '0.0', '0', '0', '150000', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2022-09-21 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(395, '2022-0250', 160, '2022-09-21', '150000', '0', '0', '150000', '0.0', '0', '0', '150000', 'Tsh', NULL, 'waiting', 'User', '2022-09-21 00:00:00', '2022-09-28 00:00:00', '2022-09-21 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(396, '2022-0251', 160, '2022-09-28', '750000', '0', '0', '750000', '0.0', '0', '0', '750000', 'Tsh', NULL, 'waiting', 'User', '2022-09-28 00:00:00', '2022-10-05 00:00:00', '2022-09-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(397, '2022-0252', 163, '2022-09-30', '10856000', '1656000', '0', '9200000', '0.0', '0', '10856000', '0', 'Tsh', NULL, 'closed', 'User', '2022-12-06 00:00:00', '2022-12-13 00:00:00', '2022-12-06 00:00:00', '2022-12-07', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(398, '2022-0253', 191, '2022-09-30', '39000', '0', '0', '39000', '0.0', '0', '39000', '0', 'Tsh', NULL, 'closed', 'User', '2022-11-10 00:00:00', '2022-11-17 00:00:00', '2022-09-30 00:00:00', '2023-01-13', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(399, '2022-0254', 209, '2022-10-03', '1604800', '244800', '0', '1360000', '0.0', '0', '0', '1604800', 'Tsh', NULL, 'draft', 'User', '2022-12-19 00:00:00', '2022-12-26 00:00:00', '2022-10-03 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(401, '2022-0255', 163, '2022-10-06', '1829000', '279000', '0', '1550000', '0.0', '0', '1829000', '0', 'Tsh', NULL, 'closed', 'User', '2022-10-07 00:00:00', '2022-10-14 00:00:00', '2022-10-06 00:00:00', '2022-12-07', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(402, '2022-0256', 205, '2022-10-07', '200600', '30600', '0', '170000', '0.0', '0', '0', '200600', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2022-10-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(403, '2022-0257', 160, '2022-10-10', '1400000', '0', '0', '1400000', '0.0', '0', '0', '1400000', 'Tsh', NULL, 'waiting', 'User', '2022-10-10 00:00:00', '2022-10-17 00:00:00', '2022-10-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(404, '2022-0258', 157, '2022-10-11', '2600000', '396610.17', '0', '2203389.83', '0.05', '110169.49', '0', '2489830.51', 'Tsh', NULL, 'draft', 'User', '2022-10-11 00:00:00', '2022-10-18 00:00:00', '2022-10-11 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(405, '2022-0259', 186, '2022-10-15', '189500', '28906.78', '0', '160593.22', '0.05', '8029.66', '0', '181470.34', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2022-10-15 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(406, '2022-0260', 186, '2022-10-15', '183600', '28006.78', '0', '155593.22', '0.05', '7779.66', '0', '175820.34', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2022-10-15 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(407, '2022-0261', 163, '2022-10-15', '3658000', '558000', '0', '3100000', '0.0', '0', '3658000', '0', 'Tsh', NULL, 'closed', 'User', '2022-12-07 00:00:00', '2022-12-14 00:00:00', '2022-10-20 00:00:00', '2022-12-07', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(408, '2022-0262', 210, '2022-10-17', '80000', '12203.39', '0', '67796.61', '0.0', '0', '0', '80000', 'Tsh', NULL, 'waiting', 'User', '2022-10-17 00:00:00', '2022-10-24 00:00:00', '2022-10-17 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(409, '2022-0263', 200, '2022-10-24', '675000', '0', '0', '675000', '0.0', '0', '0', '675000', 'Tsh', NULL, 'waiting', 'User', '2023-03-17 00:00:00', '2023-03-24 00:00:00', '2022-10-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(410, '2022-0264', 163, '2022-10-24', '4252000', '648610.17', '0', '3603389.83', '0.0', '0', '0', '4252000', 'Tsh', NULL, 'waiting', 'User', '2023-01-14 00:00:00', '2023-01-21 00:00:00', '2023-01-14 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(411, '2022-0265', 163, '2022-10-24', '5428000', '828000', '0', '4600000', '0.0', '0', '0', '5428000', 'Tsh', NULL, 'waiting', 'User', '2022-10-24 00:00:00', '2022-10-31 00:00:00', '2022-10-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(412, '2022-0266', 154, '2022-10-26', '584100', '89100', '0', '495000', '0.05', '24750', '0', '559350', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2022-10-26 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(413, '2022-0267', 154, '2022-10-26', '584100', '89100', '0', '495000', '0.0', '0', '0', '584100', 'Tsh', NULL, 'waiting', 'User', '2022-10-26 00:00:00', '2022-11-02 00:00:00', '2022-10-26 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(414, '2022-0268', 200, '2022-10-28', '2250000', '0', '0', '2250000', '0.0', '0', '0', '2250000', 'Tsh', NULL, 'waiting', 'User', '2023-03-17 00:00:00', '2023-03-24 00:00:00', '2022-10-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(415, '2022-0269', 200, '2022-10-28', '2250000', '0', '0', '2250000', '0.0', '0', '0', '2250000', 'Tsh', NULL, 'waiting', 'User', '2022-10-28 00:00:00', '2022-11-04 00:00:00', '2022-10-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(416, '2022-0270', 200, '2022-10-28', '5220000', '0', '0', '5220000', '0.0', '0', '0', '5220000', 'Tsh', NULL, 'waiting', 'User', '2023-03-17 00:00:00', '2023-03-24 00:00:00', '2022-10-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(417, '2022-0271', 200, '2022-10-28', '2250000', '0', '0', '2250000', '0.0', '0', '0', '2250000', 'Tsh', NULL, 'waiting', 'User', '2022-10-28 00:00:00', '2022-11-04 00:00:00', '2022-10-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(418, '2022-0272', 200, '2022-10-28', '4050000', '0', '0', '4050000', '0.0', '0', '0', '4050000', 'Tsh', NULL, 'waiting', 'User', '2023-02-20 00:00:00', '2023-02-27 00:00:00', '2022-10-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(419, '2022-0273', 200, '2022-10-28', '4050000', '0', '0', '4050000', '0.0', '0', '0', '4050000', 'Tsh', NULL, 'waiting', 'User', '2023-03-17 00:00:00', '2023-03-24 00:00:00', '2022-10-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(420, '2022-0274', 200, '2022-10-28', '450000', '0', '0', '450000', '0.0', '0', '0', '450000', 'Tsh', NULL, 'waiting', 'User', '2023-03-17 00:00:00', '2023-03-24 00:00:00', '2022-10-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(421, '2022-0275', 200, '2022-10-28', '200000', '0', '0', '200000', '0.0', '0', '0', '200000', 'Tsh', NULL, 'waiting', 'User', '2022-10-28 00:00:00', '2022-11-04 00:00:00', '2022-10-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(422, '2022-0276', 209, '2022-11-01', '1486800', '226800', '0', '1260000', '0.0', '0', '0', '1486800', 'Tsh', NULL, 'draft', 'User', '2022-12-19 00:00:00', '2022-12-26 00:00:00', '2022-11-01 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(423, '2022-0277', 200, '2022-11-01', '2025000', '0', '0', '2025000', '0.0', '0', '0', '2025000', 'Tsh', NULL, 'waiting', 'User', '2022-11-01 00:00:00', '2022-11-08 00:00:00', '2022-11-01 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(424, '2022-0278', 200, '2022-11-04', '450000', '0', '0', '450000', '0.0', '0', '0', '450000', 'Tsh', NULL, 'waiting', 'User', '2022-11-04 00:00:00', '2022-11-11 00:00:00', '2022-11-04 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(425, '2022-0279', 200, '2022-11-08', '900000', '0', '0', '900000', '0.0', '0', '0', '900000', 'Tsh', NULL, 'waiting', 'User', '2022-11-08 00:00:00', '2022-11-15 00:00:00', '2022-11-08 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(426, '2022-0280', 163, '2022-11-09', '1829000', '279000', '0', '1550000', '0.0', '0', '0', '1829000', 'Tsh', NULL, 'waiting', 'User', '2022-11-09 00:00:00', '2022-11-16 00:00:00', '2022-11-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(427, '2022-0281', 163, '2022-11-09', '271400', '41400', '0', '230000', '0.0', '0', '0', '271400', 'Tsh', NULL, 'waiting', 'User', '2022-11-09 00:00:00', '2022-11-16 00:00:00', '2022-11-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(428, '2022-0282', 163, '2022-11-09', '849600', '129600', '0', '720000', '0.0', '0', '0', '849600', 'Tsh', NULL, 'waiting', 'User', '2022-11-09 00:00:00', '2022-11-16 00:00:00', '2022-11-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(430, '2022-0284', 200, '2022-11-14', '900000', '0', '0', '900000', '0.0', '0', '0', '900000', 'Tsh', NULL, 'waiting', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-14 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(431, '2022-0285', 163, '2022-11-14', '4572500', '697500', '0', '3875000', '0.0', '0', '0', '4572500', 'Tsh', NULL, 'waiting', 'User', '2022-11-14 00:00:00', '2022-11-21 00:00:00', '2022-11-14 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(432, '2022-0286', 209, '2022-11-15', '755200', '115200', '0', '640000', '0.0', '0', '0', '755200', 'Tsh', NULL, 'draft', 'User', '2022-12-19 00:00:00', '2022-12-26 00:00:00', '2022-11-17 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(433, '2022-0287', 163, '2022-11-16', '590000', '90000', '0', '500000', '0.05', '0', '0', '590000', 'Tsh', NULL, 'waiting', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(434, '2022-0288', 200, '2022-11-17', '1120000', '0', '0', '1120000', '0.0', '0', '0', '1120000', 'Tsh', NULL, 'draft', 'User', '2022-11-17 00:00:00', '2022-11-24 00:00:00', '2022-11-17 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(435, '2022-0289', 209, '2022-11-23', '1947000', '297000', '0', '1650000', '0.0', '0', '0', '1947000', 'Tsh', NULL, 'draft', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(436, '2022-0290', 209, '2022-11-23', '5232200', '798132.2', '0', '4434067.8', '0.0', '0', '0', '5232200', 'Tsh', NULL, 'draft', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(437, '2022-0291', 209, '2022-11-23', '150000', '22881.36', '0', '127118.64', '0.0', '0', '0', '150000', 'Tsh', NULL, 'draft', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(438, '2022-0292', 200, '2022-11-23', '200000', '0', '0', '200000', '0.0', '0', '0', '200000', 'Tsh', NULL, 'waiting', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(439, '2022-0293', 163, '2022-11-23', '3658000', '558000', '0', '3100000', '0.0', '0', '0', '3658000', 'Tsh', NULL, 'waiting', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(440, '2022-0294', 163, '2022-11-23', '3658000', '558000', '0', '3100000', '0.0', '0', '0', '3658000', 'Tsh', NULL, 'waiting', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(441, '2022-0295', 163, '2022-11-23', '2714000', '414000', '0', '2300000', '0.0', '0', '2714000', '0', 'Tsh', NULL, 'closed', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', '2022-12-07', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(442, '2022-0296', 209, '2022-11-23', '345000', '52627.12', '0', '292372.88', '0.0', '0', '0', '345000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(443, '2022-0297', 209, '2022-11-23', '354000', '54000', '0', '300000', '0.0', '0', '0', '354000', 'Tsh', NULL, 'draft', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(444, '2022-0298', 209, '2022-11-23', '354000', '54000', '0', '300000', '0.0', '0', '0', '354000', 'Tsh', NULL, 'draft', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(445, '2022-0299', 209, '2022-11-23', '354000', '54000', '0', '300000', '0.0', '0', '0', '354000', 'Tsh', NULL, 'draft', 'User', '2022-11-23 00:00:00', '2022-11-30 00:00:00', '2022-11-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(446, '2022-0300', 163, '2022-11-24', '767000', '117000', '0', '650000', '0.0', '0', '0', '767000', 'Tsh', NULL, 'waiting', 'User', '2022-11-25 00:00:00', '2022-12-02 00:00:00', '2022-11-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(447, '2022-0301', 200, '2022-11-24', '1050000', '0', '0', '1050000', '0.0', '0', '0', '1050000', 'Tsh', NULL, 'waiting', 'User', '2022-11-24 00:00:00', '2022-12-01 00:00:00', '2022-11-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(448, '2022-0302', 200, '2022-11-24', '480000', '0', '0', '480000', '0.0', '0', '0', '480000', 'Tsh', NULL, 'waiting', 'User', '2022-11-24 00:00:00', '2022-12-01 00:00:00', '2022-11-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(449, '2022-0303', 200, '2022-11-24', '1500000', '0', '0', '1500000', '0.0', '0', '0', '1500000', 'Tsh', NULL, 'waiting', 'User', '2022-12-01 00:00:00', '2022-12-08 00:00:00', '2022-11-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(450, '2022-0304', 200, '2022-11-24', '4800000', '0', '0', '4800000', '0.0', '0', '0', '4800000', 'Tsh', NULL, 'waiting', 'User', '2023-03-31 00:00:00', '2023-04-07 00:00:00', '2022-11-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(451, '2022-0305', 200, '2022-11-24', '480000', '0', '0', '480000', '0.0', '0', '0', '480000', 'Tsh', NULL, 'waiting', 'User', '2023-01-25 00:00:00', '2023-02-01 00:00:00', '2022-11-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(452, '2022-0306', 200, '2022-11-24', '4800000', '0', '0', '4800000', '0.0', '0', '0', '4800000', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2022-11-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(453, '2022-0307', 200, '2022-11-24', '1050000', '0', '0', '1050000', '0.0', '0', '0', '1050000', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2022-11-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(454, '2022-0308', 204, '2022-11-25', '120000', '0', '0', '120000', '0.0', '0', '0', '120000', 'Tsh', NULL, 'waiting', 'User', '2022-12-16 00:00:00', '2022-12-23 00:00:00', '2022-12-13 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(455, '2022-0309', 163, '2022-11-25', '5852800', '892800', '0', '4960000', '0.0', '0', '0', '5852800', 'Tsh', NULL, 'waiting', 'User', '2022-11-25 00:00:00', '2022-12-02 00:00:00', '2022-11-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(456, '2022-0310', 200, '2022-11-28', '200000', '0', '0', '200000', '0.0', '0', '0', '200000', 'Tsh', NULL, 'waiting', 'User', '2022-11-29 00:00:00', '2022-12-06 00:00:00', '2022-11-29 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(458, '2022-0311', 163, '2022-11-28', '885000', '135000', '0', '750000', '0.0', '0', '0', '885000', 'Tsh', NULL, 'waiting', 'User', '2022-12-06 00:00:00', '2022-12-13 00:00:00', '2022-11-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(460, '2022-0312', 163, '2022-11-30', '5428000', '828000', '0', '4600000', '0.0', '0', '5428000', '0', 'Tsh', NULL, 'closed', 'User', '2022-12-23 00:00:00', '2022-12-30 00:00:00', '2022-11-30 00:00:00', '2023-01-09', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(461, '2022-0313', 200, '2022-12-01', '575000', '0', '0', '575000', '0.0', '0', '0', '575000', 'Tsh', NULL, 'waiting', 'User', '2022-12-07 00:00:00', '2022-12-14 00:00:00', '2022-12-01 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(462, '2022-0314', 163, '2022-12-01', '6401500', '976500', '0', '5425000', '0.0', '0', '6401500', '0', 'Tsh', NULL, 'closed', 'User', '2022-12-23 00:00:00', '2022-12-30 00:00:00', '2022-12-01 00:00:00', '2023-01-09', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(463, '2022-0315', 211, '2022-12-02', '25000', '0', '0', '25000', '0.0', '0', '0', '25000', 'Tsh', NULL, 'waiting', 'User', '2022-12-02 00:00:00', '2022-12-09 00:00:00', '2022-12-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(464, '2022-0316', 211, '2022-12-02', '25000', '0', '0', '25000', '0.0', '0', '0', '25000', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2022-12-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(465, '2022-0317', 212, '2022-12-02', '25000', '0', '0', '25000', '0.0', '0', '0', '25000', 'Tsh', NULL, 'draft', 'User', '2022-12-02 00:00:00', '2022-12-09 00:00:00', '2022-12-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(466, '2022-0318', 160, '2022-12-05', '300000', '0', '0', '300000', '0.0', '0', '0', '300000', 'Tsh', NULL, 'waiting', 'User', '2022-12-06 00:00:00', '2022-12-13 00:00:00', '2022-12-05 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(467, '2022-0319', 213, '2022-12-05', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2022-12-07 00:00:00', '2022-12-14 00:00:00', '2022-12-05 00:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(468, '2022-0320', 160, '2022-12-06', '550000', '0', '0', '550000', '0.0', '0', '0', '550000', 'Tsh', NULL, 'waiting', 'User', '2022-12-06 00:00:00', '2022-12-13 00:00:00', '2022-12-06 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(469, '2022-0321', 200, '2022-12-07', '100000', '0', '0', '100000', '0.0', '0', '0', '100000', 'Tsh', NULL, 'waiting', 'User', '2022-12-07 00:00:00', '2022-12-14 00:00:00', '2022-12-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(470, '2022-0322', 186, '2022-12-07', '472000', '72000', '0', '400000', '0.05', '20000', '0', '452000', 'Tsh', NULL, 'waiting', 'User', '2022-12-16 00:00:00', '2022-12-23 00:00:00', '2022-12-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(471, '2022-0323', 214, '2022-12-10', '115000', '0', '0', '115000', '0.0', '0', '0', '115000', 'USD', '2300', 'draft', 'User', 'pending', 'pending', '2022-12-10 00:00:00', NULL, NULL, '50', NULL, 'Not paid', '50', '0', '50', '0', '0.0', '0', '0'),
(472, '2022-0324', 200, '2022-12-12', '1500000', '0', '0', '1500000', '0.0', '0', '0', '1500000', 'Tsh', NULL, 'waiting', 'User', '2022-12-13 00:00:00', '2022-12-20 00:00:00', '2022-12-12 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(473, '2022-0325', 200, '2022-12-12', '175000', '0', '0', '175000', '0.0', '0', '0', '175000', 'Tsh', NULL, 'waiting', 'User', '2023-03-31 00:00:00', '2023-04-07 00:00:00', '2022-12-12 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(474, '2022-0326', 200, '2022-12-12', '550000', '0', '0', '550000', '0.0', '0', '0', '550000', 'Tsh', NULL, 'waiting', 'User', '2022-12-12 00:00:00', '2022-12-19 00:00:00', '2022-12-12 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(475, '2022-0327', 163, '2022-12-12', '9327900', '1422900', '0', '7905000', '0.0', '0', '9327900', '0', 'Tsh', NULL, 'closed', 'User', '2022-12-23 00:00:00', '2022-12-30 00:00:00', '2022-12-12 00:00:00', '2023-01-18', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(476, '2022-0328', 163, '2022-12-12', '5457500', '832500', '0', '4625000', '0.0', '0', '5457500', '0', 'Tsh', NULL, 'closed', 'User', '2022-12-23 00:00:00', '2022-12-30 00:00:00', '2022-12-12 00:00:00', '2023-01-18', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(477, '2022-0329', 154, '2022-12-15', '5640400', '860400', '0', '4780000', '0.0', '0', '0', '5640400', 'Tsh', NULL, 'waiting', 'User', '2023-03-10 00:00:00', '2023-03-17 00:00:00', '2022-12-21 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(479, '2022-0331', 211, '2022-12-15', '500000', '0', '0', '500000', '0.0', '0', '0', '500000', 'Tsh', NULL, 'waiting', 'User', '2022-12-16 00:00:00', '2022-12-23 00:00:00', '2022-12-15 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(480, '2022-0332', 215, '2022-12-16', '115000', '0', '0', '115000', '0.0', '0', '0', '115000', 'USD', '2300', 'waiting', 'User', '2022-12-20 00:00:00', '2022-12-27 00:00:00', '2022-12-16 00:00:00', NULL, NULL, '50', NULL, 'Not paid', '50', '0', '50', '0', '0.0', '0', '0'),
(481, '2022-0333', 200, '2022-12-19', '200000', '0', '0', '200000', '0.0', '0', '0', '200000', 'Tsh', NULL, 'waiting', 'User', '2023-02-21 00:00:00', '2023-02-28 00:00:00', '2022-12-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(482, '2022-0334', 186, '2022-12-19', '354000', '54000', '0', '300000', '0.05', '15000', '0', '339000', 'Tsh', NULL, 'waiting', 'User', '2023-01-05 00:00:00', '2023-01-12 00:00:00', '2022-12-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(483, '2022-0335', 163, '2022-12-23', '5428000', '828000', '0', '4600000', '0.0', '0', '0', '5428000', 'Tsh', NULL, 'waiting', 'User', '2022-12-30 00:00:00', '2023-01-06 00:00:00', '2022-12-29 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(484, '2022-0336', 163, '2022-12-23', '5487000', '837000', '0', '4650000', '0.0', '0', '5487000', '0', 'Tsh', NULL, 'closed', 'User', '2022-12-30 00:00:00', '2023-01-06 00:00:00', '2022-12-29 00:00:00', '2023-01-18', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(485, '2022-0337', 163, '2022-12-23', '1121000', '171000', '0', '950000', '0.0', '0', '0', '1121000', 'Tsh', NULL, 'waiting', 'User', '2022-12-30 00:00:00', '2023-01-06 00:00:00', '2022-12-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(487, '2022-0338', 186, '2022-12-28', '59000', '9000', '0', '50000', '0.05', '2500', '0', '56500', 'Tsh', NULL, 'waiting', 'User', '2023-01-05 00:00:00', '2023-01-12 00:00:00', '2022-12-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(488, '2022-0339', 191, '2022-12-30', '214000', '0', '0', '214000', '0.0', '0', '214000', '0', 'Tsh', NULL, 'closed', 'User', '2022-12-30 00:00:00', '2023-01-06 00:00:00', '2022-12-30 00:00:00', '2023-01-13', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(490, '2022-0340', 163, '2023-01-02', '4389600', '669600', '0', '3720000', '0.0', '0', '0', '4389600', 'Tsh', NULL, 'waiting', 'User', '2023-01-02 00:00:00', '2023-01-09 00:00:00', '2023-01-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(491, '2022-0341', 163, '2023-01-02', '1180000', '180000', '0', '1000000', '0.0', '0', '0', '1180000', 'Tsh', NULL, 'waiting', 'User', '2023-01-13 00:00:00', '2023-01-20 00:00:00', '2023-01-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(492, '2022-0342', 198, '2023-01-03', '750000', '114406.78', '0', '635593.22', '0.0', '0', '750000', '0', 'Tsh', NULL, 'closed', 'User', 'pending', 'pending', '2023-01-03 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(493, '2022-0342', 198, '2023-01-03', '750000', '0', '0', '750000', '0.0', '0', '750000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-09 00:00:00', '2023-03-16 00:00:00', '2023-01-03 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(494, '2022-0343', 198, '2023-01-03', '885000', '135000', '0', '750000', '0.05', '0', '885000', '0', 'Tsh', NULL, 'closed', 'User', 'pending', 'pending', '2023-01-03 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(495, '2022-0344', 198, '2023-01-03', '885000', '135000', '0', '750000', '0.0', '0', '885000', '0', 'Tsh', NULL, 'closed', 'User', '2023-03-09 00:00:00', '2023-03-16 00:00:00', '2023-01-03 00:00:00', '2023-03-20', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(497, '2022-0346', 191, '2023-01-04', '74000', '0', '0', '74000', '0.0', '0', '74000', '0', 'Tsh', NULL, 'closed', 'User', '2023-01-04 00:00:00', '2023-01-11 00:00:00', '2023-01-04 00:00:00', '2023-03-02', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(498, '2022-0347', 186, '2023-01-05', '265500', '40500', '0', '225000', '0.05', '11250', '0', '254250', 'Tsh', NULL, 'waiting', 'User', '2023-03-02 00:00:00', '2023-03-09 00:00:00', '2023-01-05 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(504, '2022-0351', 186, '2023-01-06', '354000', '54000', '0', '300000', '0.05', '15000', '0', '339000', 'Tsh', NULL, 'waiting', 'User', '2023-03-02 00:00:00', '2023-03-09 00:00:00', '2023-01-06 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(506, '2022-0353', 200, '2023-01-09', '125000', '0', '0', '125000', '0.0', '0', '0', '125000', 'Tsh', NULL, 'waiting', 'User', '2023-02-23 00:00:00', '2023-03-02 00:00:00', '2023-01-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(507, '2022-0354', 200, '2023-01-09', '315000', '0', '0', '315000', '0.0', '0', '0', '315000', 'Tsh', NULL, 'waiting', 'User', '2023-02-23 00:00:00', '2023-03-02 00:00:00', '2023-01-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(509, '2022-0355', 180, '2023-01-10', '1676', '255.66', '0', '1420.34', '0.0', '0', '0', '1676', 'Tsh', NULL, 'waiting', 'User', '2023-03-02 00:00:00', '2023-03-09 00:00:00', '2023-01-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(510, '2022-0356', 180, '2023-01-10', '3904000', '595525.42', '0', '3308474.58', '0.0', '0', '0', '3904000', 'Tsh', NULL, 'waiting', 'User', '2023-03-07 00:00:00', '2023-03-14 00:00:00', '2023-01-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(511, '2022-0357', 180, '2023-01-11', '3358000', '0', '0', '3358000', NULL, NULL, '0', '3358000', 'USD', '2300', 'waiting', 'User', '2023-03-07 00:00:00', '2023-03-14 00:00:00', '2023-01-11 00:00:00', NULL, NULL, '1460', NULL, 'Not paid', '1460', '0', '1460', '0', '0.0', '0', '0'),
(516, '2022-0361', 191, '2023-01-13', '39000', '0', '0', '39000', '0.0', '0', '39000', '0', 'Tsh', NULL, 'closed', 'User', '2023-01-13 00:00:00', '2023-01-20 00:00:00', '2023-01-13 00:00:00', '2023-03-02', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(517, '2022-0362', 163, '2023-01-13', '6035700', '920700', '0', '5115000', '0.0', '0', '0', '6035700', 'Tsh', NULL, 'waiting', 'User', '2023-03-07 00:00:00', '2023-03-14 00:00:00', '2023-01-16 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(518, '2022-0363', 163, '2023-01-13', '5546000', '846000', '0', '4700000', '0.0', '0', '0', '5546000', 'Tsh', NULL, 'waiting', 'User', '2023-03-07 00:00:00', '2023-03-14 00:00:00', '2023-01-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(519, '2022-0364', 217, '2023-01-17', '850000', '0', '0', '850000', '0.0', '0', '0', '850000', 'Tsh', NULL, 'draft', 'User', '2023-02-02 00:00:00', '2023-02-09 00:00:00', '2023-01-17 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(520, '2022-0365', 209, '2023-01-19', '1782875', '271963.98', '0', '1510911.02', '0.05', '75545.55', '0', '1707329.45', 'Tsh', NULL, 'waiting', 'User', '2023-05-02 00:00:00', '2023-05-09 00:00:00', '2023-01-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(521, '2022-0366', 191, '2023-01-20', '214000', '0', '0', '214000', '0.0', '0', '214000', '0', 'Tsh', NULL, 'closed', 'User', '2023-01-20 00:00:00', '2023-01-27 00:00:00', '2023-01-20 00:00:00', '2023-03-02', NULL, NULL, NULL, 'paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(523, '2022-0367', 180, '2023-01-20', '230000', '0', '0', '230000', NULL, NULL, '0', '230000', 'USD', '2300', 'waiting', 'User', '2023-03-07 00:00:00', '2023-03-14 00:00:00', '2023-01-20 00:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(524, '2022-0368', 180, '2023-01-25', '1828500', '0', '0', '1828500', NULL, NULL, '0', '1828500', 'USD', '2300', 'waiting', 'User', '2023-03-02 00:00:00', '2023-03-09 00:00:00', '2023-01-25 00:00:00', NULL, NULL, '795', NULL, 'Not paid', '795', '0', '795', '0', '0.0', '0', '0');
INSERT INTO `invoice_fumigation` (`id`, `invoice_number`, `company_id`, `date_in`, `sub_total`, `vat`, `discount`, `net_total`, `withhold`, `withhold_amount`, `amount_paid`, `amount_due`, `currency`, `currency_value`, `invoice_status`, `adds`, `start_date`, `due_date`, `created_at`, `close_date`, `prove_status`, `tax_inclusive`, `updated_at`, `payment_status`, `tax_exclusive`, `discount1`, `amount_due1`, `tax`, `withhold1`, `withhold_amount1`, `vat_status`) VALUES
(525, '2022-0369', 200, '2023-03-25', '855000', '0', '0', '855000', '0.0', '0', '0', '855000', 'Tsh', NULL, 'waiting', 'User', '2023-04-01 07:36:20', '2023-04-01 07:36:20', '2023-04-01 07:36:20', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(526, '2022-0370', 154, '2023-02-01', '1534000', '234000', '0', '1300000', '0.0', '0', '0', '1534000', 'Tsh', NULL, 'draft', 'User', '2023-03-07 00:00:00', '2023-03-14 00:00:00', '2023-02-01 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(527, '2022-0371', 211, '2023-02-01', '1210000', '0', '0', '1210000', '0.0', '0', '0', '1210000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-02-01 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(528, '2022-0372', 211, '2023-02-01', '850000', '129661.02', '0', '720338.98', '0.0', '0', '0', '850000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-02-01 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(529, '2022-0373', 204, '2023-02-01', '1210000', '0', '0', '1210000', '0.0', '0', '0', '1210000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-02-01 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(530, '2022-0374', 204, '2023-02-01', '850000', '0', '0', '850000', '0.0', '0', '0', '850000', 'Tsh', NULL, 'draft', 'User', '2023-02-03 00:00:00', '2023-02-10 00:00:00', '2023-02-03 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(531, '2022-0375', 186, '2023-02-02', '236000', '36000', '0', '200000', '0.05', '10000', '0', '226000', 'Tsh', NULL, 'waiting', 'User', '2023-03-02 00:00:00', '2023-03-09 00:00:00', '2023-02-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(532, '2022-0376', 154, '2023-02-02', '590000', '90000', '0', '500000', '0.0', '0', '0', '590000', 'Tsh', NULL, 'draft', 'User', '2023-03-09 00:00:00', '2023-03-16 00:00:00', '2023-02-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(533, '2022-0377', 218, '2023-02-06', '1210000', '0', '0', '1210000', '0.0', '0', '0', '1210000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-02-06 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(534, '2022-0378', 218, '2023-02-06', '850000', '0', '0', '850000', '0.0', '0', '0', '850000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-02-06 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(535, '2022-0379', 209, '2023-02-08', '4529000', '690864.41', '0', '3838135.59', '0.0', '0', '0', '4529000', 'Tsh', NULL, 'waiting', 'User', '2023-05-02 00:00:00', '2023-05-09 00:00:00', '2023-02-08 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(537, '2022-0381', 163, '2023-02-16', '483800', '73800', '0', '410000', '0.0', '0', '0', '483800', 'Tsh', NULL, 'waiting', 'User', '2023-05-19 00:00:00', '2023-05-26 00:00:00', '2023-03-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(538, '2022-0382', 200, '2023-02-20', '630000', '0', '0', '630000', '0.0', '0', '0', '630000', 'Tsh', NULL, 'waiting', 'User', '2023-11-16 00:00:00', '2023-11-23 00:00:00', '2023-02-20 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(539, '2022-0383', 219, '2023-02-22', '330000', '0', '0', '330000', '0.0', '0', '0', '330000', 'Tsh', NULL, 'waiting', 'User', '2023-02-22 00:00:00', '2023-03-01 00:00:00', '2023-02-22 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(540, '2022-0384', 200, '2023-02-22', '675000', '0', '0', '675000', '0.0', '0', '0', '675000', 'Tsh', NULL, 'waiting', 'User', '2023-11-16 00:00:00', '2023-11-23 00:00:00', '2023-03-01 12:16:02', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(541, '2022-0385', 200, '2023-02-22', '720000', '0', '0', '720000', '0.0', '0', '0', '720000', 'Tsh', NULL, 'waiting', 'User', '2023-03-22 00:00:00', '2023-03-29 00:00:00', '2023-02-22 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(542, '2022-0386', 209, '2023-02-24', '1676500', '255737.29', '0', '1420762.71', '0.0', '0', '0', '1676500', 'Tsh', NULL, 'draft', 'User', '2023-03-10 00:00:00', '2023-03-17 00:00:00', '2023-02-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(543, '2022-0387', 200, '2023-02-24', '450000', '0', '0', '450000', '0.0', '0', '0', '450000', 'Tsh', NULL, 'waiting', 'User', '2023-03-22 00:00:00', '2023-03-29 00:00:00', '2023-03-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(544, '2022-0388', 200, '2023-02-28', '225000', '0', '0', '225000', '0.0', '0', '0', '225000', 'Tsh', NULL, 'waiting', 'User', '2023-03-22 00:00:00', '2023-03-29 00:00:00', '2023-02-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(545, '2022-0389', 180, '2023-03-02', '0', '0', '0', '0', NULL, NULL, '0', '0', 'USD', NULL, 'waiting', 'User', '2023-03-07 00:00:00', '2023-03-14 00:00:00', '2023-03-02 00:00:00', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(546, '2022-0390', 180, '2023-03-07', '1863000', '0', '0', '1863000', NULL, NULL, '0', '1863000', 'USD', '2300', 'waiting', 'User', '2023-03-07 00:00:00', '2023-03-14 00:00:00', '2023-03-07 00:00:00', NULL, NULL, '810', NULL, 'Not paid', '810', '0', '810', '0', '0.0', '0', '0'),
(547, '2022-0391', 200, '2023-03-07', '90000', '0', '0', '90000', '0.0', '0', '0', '90000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-11-08 00:00:00', '2023-11-15 00:00:00', '2023-03-20 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(548, '2022-0392', 200, '2023-03-07', '1260000', '0', '0', '1260000', '0.0', '0', '0', '1260000', 'Tsh', NULL, 'waiting', 'User', '2023-11-08 00:00:00', '2023-11-15 00:00:00', '2023-03-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(549, '2022-0393', 200, '2023-03-07', '1035000', '0', '0', '1035000', '0.0', '0', '0', '1035000', 'Tsh', NULL, 'waiting', 'User', '2023-11-08 00:00:00', '2023-11-15 00:00:00', '2023-03-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(550, '2022-0394', 186, '2023-03-07', '649000', '0', '0', '649000', '0.05', '32450', '0', '616550', 'Tsh', NULL, 'waiting', 'User', '2023-03-07 00:00:00', '2023-03-14 00:00:00', '2023-03-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(551, '2022-0395', 180, '2023-03-07', '1880000', '0', '0', '1880000', '0.0', '0', '0', '1880000', 'Tsh', NULL, 'waiting', 'User', '2023-03-07 00:00:00', '2023-03-14 00:00:00', '2023-03-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(552, '2022-0396', 200, '2023-03-07', '450000', '0', '0', '450000', '0.0', '0', '0', '450000', 'Tsh', NULL, 'waiting', 'User', '2023-11-08 00:00:00', '2023-11-15 00:00:00', '2023-03-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(553, '2022-0397', 222, '2023-03-08', '716496', '109296', '0', '607200', '0.05', '30360', '0', '686136', 'Tsh', NULL, 'waiting', 'User', '2023-03-08 00:00:00', '2023-03-15 00:00:00', '2023-03-08 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(554, '2022-0398', 154, '2023-03-10', '1416000', '216000', '0', '1200000', '0.0', '0', '0', '1416000', 'Tsh', NULL, 'waiting', 'User', '2023-04-18 00:00:00', '2023-04-25 00:00:00', '2023-03-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(555, '2022-0399', 157, '2023-03-17', '2950000', '450000', '0', '2500000', '0.05', '125000', '0', '2825000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-04-11 00:00:00', '2023-04-18 00:00:00', '2023-03-17 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(556, '2022-0400', 200, '2023-03-17', '250000', '0', '0', '250000', '0.0', '0', '0', '250000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-03-22 00:00:00', '2023-03-29 00:00:00', '2023-03-17 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(557, '2022-0401', 200, '2023-03-17', '250000', '0', '0', '250000', '0.0', '0', '0', '250000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-03-31 00:00:00', '2023-04-07 00:00:00', '2023-03-17 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(558, '2022-0402', 200, '2023-03-18', '800000', '0', '0', '800000', '0.0', '0', '0', '800000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-11-08 00:00:00', '2023-11-15 00:00:00', '2023-03-20 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(559, '2022-0403', 180, '2023-03-18', '0', '0', '0', '0', NULL, NULL, '0', '0', 'USD', NULL, 'waiting', 'Administrator', '2023-03-18 00:00:00', '2023-03-25 00:00:00', '2023-03-18 00:00:00', NULL, NULL, '808', NULL, 'Not paid', '808', '0', '808', '0', '0.0', '0', '0'),
(560, '2022-0404', 200, '2023-03-22', '1500000', '0', '0', '1500000', '0.0', '0', '0', '1500000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-03-31 00:00:00', '2023-04-07 00:00:00', '2023-03-31 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(561, '2022-0405', 200, '2023-03-25', '125000', '0', '0', '125000', '0.0', '0', '0', '125000', 'Tsh', NULL, 'draft', 'Administrator', '2023-03-31 00:00:00', '2023-04-07 00:00:00', '2023-03-31 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(562, '2022-0406', 208, '2023-03-25', '50000', '7627.12', '0', '42372.88', '0.05', '2118.64', '0', '47881.36', 'Tsh', NULL, 'draft', 'Administrator', '2023-03-25 00:00:00', '2023-04-01 00:00:00', '2023-03-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(563, '2022-0407', 163, '2023-03-29', '383500', '58500', '0', '325000', '0.0', '0', '0', '383500', 'Tsh', NULL, 'waiting', 'Administrator', '2023-05-09 00:00:00', '2023-05-16 00:00:00', '2023-03-29 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(564, '2022-0408', 200, '2023-03-29', '250000', '0', '0', '250000', '0.0', '0', '0', '250000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-11-08 00:00:00', '2023-11-15 00:00:00', '2023-03-29 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(565, '2022-0409', 226, '2023-03-29', '0', '0', '0', '0', NULL, NULL, '0', '0', 'USD', NULL, 'waiting', 'Administrator', '2023-07-31 00:00:00', '2023-08-07 00:00:00', '2023-03-29 00:00:00', NULL, NULL, '200', NULL, 'Not paid', '169.49', '0', '200', '30.51', '0.0', '0', '0.152542372881355'),
(566, '2022-0410', 200, '2023-03-31', '1350000', '0', '0', '1350000', '0.0', '0', '0', '1350000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-03-31 00:00:00', '2023-04-07 00:00:00', '2023-03-31 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(567, '2022-0411', 200, '2023-03-31', '225000', '0', '0', '225000', '0.0', '0', '0', '225000', 'Tsh', NULL, 'waiting', 'User', '2023-04-07 10:57:34', '2023-04-07 10:57:34', '2023-04-07 10:57:34', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(568, '2022-0412', 227, '2023-04-04', '400', '0', '0', '400', '0.0', '0', '0', '400', 'Tsh', NULL, 'waiting', 'Administrator', '2023-04-04 00:00:00', '2023-04-11 00:00:00', '2023-04-04 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(569, '2022-0413', 229, '2023-04-05', '1480000', '225762.71', '0', '1254237.29', '0.05', '62711.86', '0', '1417288.14', 'Tsh', NULL, 'draft', 'Administrator', 'pending', 'pending', '2023-04-05 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(570, '2022-0414', 154, '2023-04-18', '755200', '115200', '0', '640000', '0.0', '0', '0', '755200', 'Tsh', NULL, 'waiting', 'Administrator', '2023-04-20 00:00:00', '2023-04-27 00:00:00', '2023-04-18 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(571, '2022-0415', 154, '2023-04-19', '1038400', '158400', '0', '880000', '0.0', '0', '0', '1038400', 'Tsh', NULL, 'draft', 'Administrator', 'pending', 'pending', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(572, '2022-0416', 154, '2023-04-19', '1038400', '158400', '0', '880000', '0.0', '0', '0', '1038400', 'Tsh', NULL, 'pending', 'Administrator', 'pending', 'pending', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(573, '2022-0417', 154, '2023-04-19', '1038400', '158400', '0', '880000', '0.0', '0', '0', '1038400', 'Tsh', NULL, 'pending', 'Administrator', 'pending', 'pending', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(574, '2022-0418', 154, '2023-04-19', '1038400', '158400', '0', '880000', '0.0', '0', '0', '1038400', 'Tsh', NULL, 'pending', 'Administrator', 'pending', 'pending', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(575, '2022-0419', 154, '2023-04-19', '1038400', '158400', '0', '880000', '0.0', '0', '0', '1038400', 'Tsh', NULL, 'pending', 'Administrator', 'pending', 'pending', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(576, '2022-0420', 154, '2023-04-19', '1038400', '158400', '0', '880000', '0.05', '44000', '0', '994400', 'Tsh', NULL, 'pending', 'Administrator', 'pending', 'pending', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(577, '2022-0421', 154, '2023-04-19', '1038400', '158400', '0', '880000', '0.05', '44000', '0', '994400', 'Tsh', NULL, 'draft', 'Administrator', 'pending', 'pending', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(584, '2022-0428', 160, '2023-04-19', '1038400', '0', '0', '1038400', '0.0', '0', '0', '1038400', 'Tsh', NULL, 'draft', 'Administrator', '2023-08-01 00:00:00', '2023-08-08 00:00:00', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(585, '2022-0429', 182, '2023-04-19', '1038400', '0', '0', '1038400', '0.0', '0', '0', '1038400', 'Tsh', NULL, 'pending', 'Administrator', 'pending', 'pending', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(586, '2022-0430', 154, '2023-04-19', '1038400', '158400', '0', '880000', '0.0', '0', '0', '1038400', 'Tsh', NULL, 'waiting', 'Administrator', '2023-04-20 00:00:00', '2023-04-27 00:00:00', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(588, '2022-0432', 165, '2023-04-19', '2', '0.31', '0', '1.69', '0.0', '0', '0', '2', 'Tsh', NULL, 'pending', 'Administrator', 'pending', 'pending', '2023-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(590, '2022-0433', 154, '2023-04-20', '1014800', '154800', '0', '860000', '0.0', '0', '0', '1014800', 'Tsh', NULL, 'draft', 'Administrator', 'pending', 'pending', '2023-04-20 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(591, '2022-0434', 154, '2023-04-20', '637200', '97200', '0', '540000', '0.0', '0', '0', '637200', 'Tsh', NULL, 'draft', 'Administrator', 'pending', 'pending', '2023-04-20 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(592, '2022-0435', 200, '2023-04-21', '1350000', '0', '0', '1350000', '0.0', '0', '0', '1350000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-04-21 00:00:00', '2023-04-28 00:00:00', '2023-04-21 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(593, '2022-0436', 154, '2023-04-24', '542800', '82800', '0', '460000', '0.0', '0', '0', '542800', 'Tsh', NULL, 'waiting', 'Administrator', '2023-04-25 00:00:00', '2023-05-02 00:00:00', '2023-04-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(594, '2022-0437', 200, '2023-04-28', '225000', '0', '0', '225000', '0.0', '0', '0', '225000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-04-28 00:00:00', '2023-05-05 00:00:00', '2023-04-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(595, '2022-0438', 209, '2023-05-02', '2080000', '0', '0', '2080000', '0.0', '0', '0', '2080000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-05-02 00:00:00', '2023-05-09 00:00:00', '2023-05-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(596, '2022-0439', 209, '2023-05-02', '1176000', '179389.83', '0', '996610.17', '0.0', '0', '0', '1176000', 'Tsh', NULL, 'waiting', 'Administrator', '2023-05-02 00:00:00', '2023-05-09 00:00:00', '2023-05-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(597, '2022-0440', 227, '2023-05-03', '805000', '0', '0', '805000', '0.0', '0', '0', '805000', 'USD', '2300', 'waiting', 'User', '2023-05-05 00:00:00', '2023-05-12 00:00:00', '2023-05-03 00:00:00', NULL, NULL, '350', NULL, 'Not paid', '350', '0', '350', '0', '0.0', '0', '0'),
(598, '2022-0441', 163, '2023-05-05', '2011900', '306900', '0', '1705000', '0.0', '0', '0', '2011900', 'Tsh', NULL, 'waiting', 'User', '2023-05-09 00:00:00', '2023-05-16 00:00:00', '2023-05-05 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(599, '2022-0442', 160, '2023-05-09', '100000', '0', '0', '100000', '0.0', '0', '0', '100000', 'Tsh', NULL, 'waiting', 'User', '2023-05-09 00:00:00', '2023-05-16 00:00:00', '2023-05-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(600, '2022-0443', 200, '2023-05-09', '1025000', '0', '0', '1025000', '0.0', '0', '0', '1025000', 'Tsh', NULL, 'waiting', 'User', '2023-05-09 00:00:00', '2023-05-16 00:00:00', '2023-05-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(601, '2022-0444', 200, '2023-05-09', '1250000', '0', '0', '1250000', '0.0', '0', '0', '1250000', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2023-05-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(602, '2022-0445', 200, '2023-05-09', '1250000', '0', '0', '1250000', '0.0', '0', '0', '1250000', 'Tsh', NULL, 'waiting', 'User', '2023-05-09 00:00:00', '2023-05-16 00:00:00', '2023-05-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(603, '2022-0446', 200, '2023-05-10', '2250000', '0', '0', '2250000', '0.0', '0', '0', '2250000', 'Tsh', NULL, 'waiting', 'User', '2023-05-10 00:00:00', '2023-05-17 00:00:00', '2023-05-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(604, '2022-0447', 232, '2023-05-12', '970000', '147966.1', '0', '822033.9', '0.0', '0', '0', '970000', 'Tsh', NULL, 'draft', 'Administrator', '2023-05-15 00:00:00', '2023-05-22 00:00:00', '2023-05-12 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(605, '2023-0448', 156, '2023-05-15', '500000', '0', '0', '500000', '0.0', '0', '0', '500000', 'Tsh', NULL, 'waiting', 'User', '2023-05-15 00:00:00', '2023-05-22 00:00:00', '2023-05-15 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(606, '2023-0449', 200, '2023-05-16', '1050000', '0', '0', '1050000', '0.0', '0', '0', '1050000', 'Tsh', NULL, 'waiting', 'User', '2023-05-20 00:00:00', '2023-05-27 00:00:00', '2023-05-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(607, '2023-0450', 200, '2023-05-16', '750000', '0', '0', '750000', '0.0', '0', '0', '750000', 'Tsh', NULL, 'waiting', 'User', '2023-05-19 00:00:00', '2023-05-26 00:00:00', '2023-05-16 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(608, '2023-0451', 227, '2023-05-18', '575000', '0', '0', '575000', NULL, NULL, '0', '575000', 'USD', '2300', 'waiting', 'User', '2023-05-18 00:00:00', '2023-05-25 00:00:00', '2023-05-18 00:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(609, '2023-0452', 200, '2023-05-19', '575000', '0', '0', '575000', '0.0', '0', '0', '575000', 'Tsh', NULL, 'waiting', 'User', '2023-05-19 00:00:00', '2023-05-26 00:00:00', '2023-05-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(610, '2023-0453', 200, '2023-05-22', '750000', '0', '0', '750000', '0.0', '0', '0', '750000', 'Tsh', NULL, 'waiting', 'User', '2023-05-24 00:00:00', '2023-05-31 00:00:00', '2023-05-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(611, '2023-0454', 200, '2023-05-22', '625000', '0', '0', '625000', '0.0', '0', '0', '625000', 'Tsh', NULL, 'waiting', 'User', '2023-05-24 00:00:00', '2023-05-31 00:00:00', '2023-05-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(612, '2023-0455', 163, '2023-05-24', '2985400', '455400', '0', '2530000', '0.0', '0', '0', '2985400', 'Tsh', NULL, 'waiting', 'User', '2023-05-25 00:00:00', '2023-06-01 00:00:00', '2023-05-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(613, '2023-0456', 163, '2023-05-25', '2194800', '334800', '0', '1860000', '0.0', '0', '0', '2194800', 'Tsh', NULL, 'waiting', 'User', '2023-05-25 00:00:00', '2023-06-01 00:00:00', '2023-05-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(614, '2023-0457', 160, '2023-05-25', '100000', '0', '0', '100000', '0.0', '0', '0', '100000', 'Tsh', NULL, 'waiting', 'User', '2023-05-25 00:00:00', '2023-06-01 00:00:00', '2023-05-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(615, '2023-0458', 209, '2023-05-26', '363440', '55440', '0', '308000', '0.0', '0', '0', '363440', 'Tsh', NULL, 'waiting', 'Administrator', '2023-05-26 00:00:00', '2023-06-02 00:00:00', '2023-05-26 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(616, '2023-0459', 209, '2023-05-31', '96760', '14760', '0', '82000', '0.0', '0', '0', '96760', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-05-31 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(617, '2023-0460', 163, '2023-05-31', '147500', '22500', '0', '125000', '0.0', '0', '0', '147500', 'Tsh', NULL, 'draft', 'User', '2023-05-31 00:00:00', '2023-06-07 00:00:00', '2023-05-31 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(618, '2023-0461', 227, '2023-06-05', '1035000', '0', '0', '1035000', '0.0', '0', '0', '1035000', 'USD', '2300', 'waiting', 'User', '2023-06-06 00:00:00', '2023-06-13 00:00:00', '2023-06-05 00:00:00', NULL, NULL, '450', NULL, 'Not paid', '450', '0', '450', '0', '0.0', '0', '0'),
(619, '2023-0462', 200, '2023-06-05', '1500000', '0', '0', '1500000', '0.0', '0', '0', '1500000', 'Tsh', NULL, 'waiting', 'User', '2023-06-07 00:00:00', '2023-06-14 00:00:00', '2023-06-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(620, '2023-0463', 163, '2023-06-05', '5835100', '890100', '0', '4945000', '0.0', '0', '0', '5835100', 'Tsh', NULL, 'waiting', 'User', '2023-07-10 00:00:00', '2023-07-17 00:00:00', '2023-06-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(621, '2023-0464', 200, '2023-06-16', '840000', '0', '0', '840000', '0.0', '0', '0', '840000', 'Tsh', NULL, 'waiting', 'User', '2023-06-16 00:00:00', '2023-06-23 00:00:00', '2023-06-16 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(622, '2023-0465', 200, '2023-06-16', '4000000', '0', '0', '4000000', '0.0', '0', '0', '4000000', 'Tsh', NULL, 'waiting', 'User', '2023-06-16 00:00:00', '2023-06-23 00:00:00', '2023-06-16 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(623, '2023-0466', 200, '2023-06-16', '2550000', '0', '0', '2550000', '0.0', '0', '0', '2550000', 'Tsh', NULL, 'waiting', 'User', '2023-06-16 00:00:00', '2023-06-23 00:00:00', '2023-06-16 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(624, '2023-0467', 163, '2023-06-19', '6035700', '920700', '0', '5115000', '0.0', '0', '0', '6035700', 'Tsh', NULL, 'waiting', 'User', '2023-07-10 00:00:00', '2023-07-17 00:00:00', '2023-07-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(626, '2023-0468', 163, '2023-06-19', '501500', '76500', '0', '425000', '0.0', '0', '0', '501500', 'Tsh', NULL, 'waiting', 'User', '2023-07-10 00:00:00', '2023-07-17 00:00:00', '2023-06-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(628, '2023-0469', 192, '2023-06-24', '1380000', '210508.47', '0', '1169491.53', '0.0', '0', '0', '1380000', 'Tsh', NULL, 'draft', 'Administrator', '2023-06-26 00:00:00', '2023-07-03 00:00:00', '2023-06-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(629, '2023-0470', 154, '2023-06-26', '2360000', '360000', '0', '2000000', '0.0', '0', '0', '2360000', 'Tsh', NULL, 'waiting', 'User', '2023-08-18 00:00:00', '2023-08-25 00:00:00', '2023-06-26 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(630, '2023-0471', 209, '2023-06-26', '846000', '129050.85', '0', '716949.15', '0.0', '0', '0', '846000', 'Tsh', NULL, 'waiting', 'User', '2023-06-27 00:00:00', '2023-07-04 00:00:00', '2023-06-26 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(631, '2023-0472', 154, '2023-06-27', '1345200', '205200', '0', '1140000', '0.0', '0', '0', '1345200', 'Tsh', NULL, 'waiting', 'User', '2023-08-28 00:00:00', '2023-09-04 00:00:00', '2023-07-06 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(632, '2023-0473', 154, '2023-06-27', '660800', '100800', '0', '560000', '0.0', '0', '0', '660800', 'Tsh', NULL, 'waiting', 'User', '2023-08-28 00:00:00', '2023-09-04 00:00:00', '2023-07-05 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(633, '2023-0474', 227, '2023-07-03', '690000', '0', '0', '690000', NULL, NULL, '0', '690000', 'USD', '2300', 'waiting', 'User', '2023-07-24 00:00:00', '2023-07-31 00:00:00', '2023-07-03 00:00:00', NULL, NULL, '300', NULL, 'Not paid', '300', '0', '300', '0', '0.0', '0', '0'),
(634, '2023-0475', 209, '2023-07-03', '10954200', '1670979.66', '0', '9283220.34', '0.0', '0', '0', '10954200', 'Tsh', NULL, 'waiting', 'User', '2023-07-25 00:00:00', '2023-08-01 00:00:00', '2023-07-03 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(635, '2023-0476', 233, '2023-07-03', '7500000', '0', '0', '7500000', '0.0', '0', '0', '7500000', 'Tsh', NULL, 'waiting', 'User', '2023-07-03 00:00:00', '2023-07-10 00:00:00', '2023-07-03 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(636, '2023-0477', 209, '2023-07-05', '2550000', '0', '0', '2550000', '0.0', '0', '0', '2550000', 'Tsh', NULL, 'waiting', 'User', '2023-07-25 00:00:00', '2023-08-01 00:00:00', '2023-07-05 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(637, '2023-0478', 160, '2023-07-10', '250000', '0', '0', '250000', '0.0', '0', '0', '250000', 'Tsh', NULL, 'waiting', 'User', '2023-07-10 00:00:00', '2023-07-17 00:00:00', '2023-07-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(638, '2023-0479', 163, '2023-07-10', '5970800', '910800', '0', '5060000', '0.0', '0', '0', '5970800', 'Tsh', NULL, 'waiting', 'User', '2023-07-10 00:00:00', '2023-07-17 00:00:00', '2023-07-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(639, '2023-0480', 163, '2023-07-10', '4071000', '621000', '0', '3450000', '0.0', '0', '0', '4071000', 'Tsh', NULL, 'waiting', 'User', '2023-07-10 00:00:00', '2023-07-17 00:00:00', '2023-07-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(640, '2023-0481', 200, '2023-07-11', '8480000', '0', '0', '8480000', '0.0', '0', '0', '8480000', 'Tsh', NULL, 'waiting', 'User', '2023-10-10 00:00:00', '2023-10-17 00:00:00', '2023-07-13 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(641, '2023-0482', 209, '2023-07-11', '2306200', '351793.22', '0', '1954406.78', '0.0', '0', '0', '2306200', 'Tsh', NULL, 'draft', 'User', '2023-07-12 00:00:00', '2023-07-19 00:00:00', '2023-07-11 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(642, '2023-0483', 200, '2023-07-13', '980000', '0', '0', '980000', '0.0', '0', '0', '980000', 'Tsh', NULL, 'waiting', 'User', '2023-10-10 00:00:00', '2023-10-17 00:00:00', '2023-07-13 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(644, '2023-0484', 200, '2023-07-21', '980000', '0', '0', '980000', '0.0', '0', '0', '980000', 'Tsh', NULL, 'waiting', 'User', '2023-08-09 00:00:00', '2023-08-16 00:00:00', '2023-08-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(645, '2023-0485', 154, '2023-07-21', '767', '117', '0', '650', '0.0', '0', '0', '767', 'Tsh', NULL, 'waiting', 'User', '2023-08-18 00:00:00', '2023-08-25 00:00:00', '2023-07-21 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(646, '2023-0486', 234, '2023-07-24', '1100', '0', '0', '1100', '0.0', '0', '0', '1100', 'Tsh', NULL, 'draft', 'User', '2023-08-02 00:00:00', '2023-08-09 00:00:00', '2023-07-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(647, '2023-0487', 234, '2023-07-24', '1100', '0', '0', '1100', '0.0', '0', '0', '1100', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-07-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(649, '2023-0488', 200, '2023-07-25', '3300000', '0', '0', '3300000', '0.0', '0', '0', '3300000', 'Tsh', NULL, 'waiting', 'User', '2023-10-10 00:00:00', '2023-10-17 00:00:00', '2023-07-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(650, '2023-0489', 209, '2023-07-25', '2038600', '310972.88', '0', '1727627.12', '0.0', '0', '0', '2038600', 'Tsh', NULL, 'waiting', 'User', '2023-08-16 00:00:00', '2023-08-23 00:00:00', '2023-08-16 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(651, '2023-0490', 160, '2023-07-25', '50000', '0', '0', '50000', '0.0', '0', '0', '50000', 'Tsh', NULL, 'waiting', 'User', '2023-07-25 00:00:00', '2023-08-01 00:00:00', '2023-07-25 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(655, '2023-0491', 200, '2023-07-27', '150000', '0', '0', '150000', '0.0', '0', '0', '150000', 'Tsh', NULL, 'waiting', 'User', '2023-08-09 00:00:00', '2023-08-16 00:00:00', '2023-07-27 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(657, '2023-0492', 235, '2023-07-28', '2900000', '442372.88', '0', '2457627.12', '0.0', '0', '0', '2900000', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2023-07-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(658, '2023-0493', 235, '2023-07-28', '2900000', '442372.88', '0', '2457627.12', '0.0', '0', '0', '2900000', 'Tsh', NULL, 'draft', 'Administrator', '2023-07-28 00:00:00', '2023-08-04 00:00:00', '2023-07-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(659, '2023-0494', 238, '2023-07-28', '2900000', '442372.88', '0', '2457627.12', '0.0', '0', '0', '2900000', 'Tsh', NULL, 'draft', 'Administrator', '2023-08-03 00:00:00', '2023-08-10 00:00:00', '2023-07-28 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(660, '2023-0495', 154, '2023-07-31', '188800', '28800', '0', '160000', '0.0', '0', '0', '188800', 'Tsh', NULL, 'waiting', 'User', '2023-08-18 00:00:00', '2023-08-25 00:00:00', '2023-08-01 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(662, '2023-0496', 163, '2023-07-31', '6767300', '1032300', '0', '5735000', '0.0', '0', '0', '6767300', 'Tsh', NULL, 'draft', 'User', '2023-08-07 00:00:00', '2023-08-14 00:00:00', '2023-08-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(663, '2023-0497', 226, '2023-07-31', '510000', '0', '0', '510000', '0.0', '0', '0', '510000', 'USD', '2550', 'draft', 'User', '2023-08-07 13:17:24', '2023-08-07 13:17:24', '2023-08-07 13:17:24', NULL, NULL, '200', NULL, 'Not paid', '200', '0', '200', '0', '0.0', '0', '0'),
(664, '2023-0498', 226, '2023-07-31', '115000', '17542.37', '0', '97457.63', '0.0', '0', '0', '115000', 'Tsh', NULL, 'waiting', 'User', '2023-08-09 00:00:00', '2023-08-16 00:00:00', '2023-08-04 00:00:00', NULL, NULL, '50', NULL, 'Not paid', '42.37', '0', '50', '7.63', '0.0', '0', '0.152542372881355'),
(665, '2023-0499', 154, '2023-08-01', '575000', '0', '0', '575000', '0.0', '0', '0', '575000', 'USD', '2300', 'waiting', 'User', '2023-08-18 00:00:00', '2023-08-25 00:00:00', '2023-08-01 00:00:00', NULL, NULL, '250', NULL, 'Not paid', '250', '0', '250', '0', '0.0', '0', '0'),
(667, '2023-0500', 200, '2023-08-04', '3500000', '0', '0', '3500000', '0.0', '0', '0', '3500000', 'Tsh', NULL, 'waiting', 'User', '2023-10-10 00:00:00', '2023-10-17 00:00:00', '2023-08-04 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(668, '2023-0501', 163, '2023-08-04', '914500', '139500', '0', '775000', '0.0', '0', '0', '914500', 'Tsh', NULL, 'waiting', 'User', '2023-08-07 00:00:00', '2023-08-14 00:00:00', '2023-08-04 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(670, '2023-0502', 163, '2023-08-04', '10177500', '1552500', '0', '8625000', '0.0', '0', '0', '10177500', 'Tsh', NULL, 'draft', 'User', '2023-08-07 00:00:00', '2023-08-14 00:00:00', '2023-08-07 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(672, '2023-0503', 200, '2023-08-07', '2640000', '0', '0', '2640000', '0.0', '0', '0', '2640000', 'Tsh', NULL, 'waiting', 'User', '2023-10-10 00:00:00', '2023-10-17 00:00:00', '2023-10-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(673, '2023-0504', 227, '2023-08-14', '1100', '0', '0', '1100', '0.0', '0', '0', '1100', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2023-08-14 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(674, '2023-0505', 227, '2023-08-14', '2805000', '427881.36', '0', '2377118.64', '0.0', '0', '0', '2805000', 'Tsh', NULL, 'waiting', 'User', '2023-08-14 00:00:00', '2023-08-21 00:00:00', '2023-08-14 00:00:00', NULL, NULL, '1100', NULL, 'Not paid', '1100', '0', '1100', '0', '0.0', '0', '0.152542372881355'),
(675, '2023-0506', 200, '2023-08-15', '2200000', '0', '0', '2200000', '0.0', '0', '0', '2200000', 'Tsh', NULL, 'waiting', 'User', '2023-10-10 00:00:00', '2023-10-17 00:00:00', '2023-08-15 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(676, '2023-0507', 239, '2023-08-16', '0', '0', '0', '0', '0.0', '0', '0', '0', 'Tsh', NULL, 'draft', 'Administrator', 'pending', 'pending', '2023-08-16 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(677, '2023-0508', 239, '2023-08-16', '0', '0', '0', '0', '0.0', '0', '0', '0', 'Tsh', NULL, 'draft', 'Administrator', 'pending', 'pending', '2023-08-16 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(678, '2023-0509', 239, '2023-08-16', '1000000', '152542.37', '0', '847457.63', '0.0', '0', '0', '1000000', 'Tsh', NULL, 'waiting', 'User', '2023-09-06 00:00:00', '2023-09-13 00:00:00', '2023-08-29 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(679, '2023-0510', 200, '2023-08-22', '13180000', '0', '0', '13180000', '0.0', '0', '0', '13180000', 'Tsh', NULL, 'waiting', 'User', '2023-10-11 00:00:00', '2023-10-18 00:00:00', '2023-10-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(680, '2023-0511', 200, '2023-08-25', '3840000', '0', '0', '3840000', '0.0', '0', '0', '3840000', 'Tsh', NULL, 'waiting', 'User', '2023-10-02 00:00:00', '2023-10-09 00:00:00', '2023-09-14 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(681, '2023-0512', 238, '2023-08-30', '1450000', '221186.44', '0', '1228813.56', '0.0', '0', '0', '1450000', 'Tsh', NULL, 'pending', 'User', 'pending', 'pending', '2023-08-30 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(682, '2023-0512', 238, '2023-08-30', '1450000', '221186.44', '0', '1228813.56', '0.0', '0', '0', '1450000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-08-30 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(683, '2023-0513', 227, '2023-09-04', '892500', '0', '0', '892500', NULL, NULL, '0', '892500', 'USD', '2550', 'waiting', 'User', '2023-09-04 00:00:00', '2023-09-11 00:00:00', '2023-09-04 00:00:00', NULL, NULL, '350', NULL, 'Not paid', '350', '0', '350', '0', '0.0', '0', '0'),
(684, '2023-0514', 163, '2023-09-08', '5852800', '892800', '0', '4960000', '0.0', '0', '0', '5852800', 'Tsh', NULL, 'waiting', 'User', '2023-10-02 00:00:00', '2023-10-09 00:00:00', '2023-09-08 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(685, '2023-0515', 209, '2023-09-11', '1020000', '0', '0', '1020000', '0.0', '0', '0', '1020000', 'Tsh', NULL, 'waiting', 'User', '2023-10-05 00:00:00', '2023-10-12 00:00:00', '2023-09-11 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(688, '2023-0516', 200, '2023-09-14', '2920000', '0', '0', '2920000', '0.0', '0', '0', '2920000', 'Tsh', NULL, 'draft', 'User', '2023-10-09 00:00:00', '2023-10-16 00:00:00', '2023-09-14 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(689, '2023-0517', 163, '2023-09-14', '54687100', '8342100', '0', '46345000', '0.0', '0', '0', '54687100', 'Tsh', NULL, 'waiting', 'User', '2023-10-03 00:00:00', '2023-10-10 00:00:00', '2023-09-14 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(690, '2023-0518', 163, '2023-09-14', '1386500', '211500', '0', '1175000', '0.0', '0', '0', '1386500', 'Tsh', NULL, 'waiting', 'User', '2023-10-02 00:00:00', '2023-10-09 00:00:00', '2023-09-14 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(691, '2023-0519', 209, '2023-09-15', '1774000', '270610.17', '0', '1503389.83', '0.0', '0', '0', '1774000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-09-15 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(692, '2023-0520', 209, '2023-09-25', '3548000', '541220.34', '0', '3006779.66', '0.0', '0', '0', '3548000', 'Tsh', NULL, 'waiting', 'User', '2023-10-10 00:00:00', '2023-10-17 00:00:00', '2023-10-10 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(693, '2023-0521', 209, '2023-09-25', '365800', '55800', '0', '310000', '0.0', '0', '0', '365800', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-09-26 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(694, '2023-0522', 200, '2023-09-25', '7400000', '0', '0', '7400000', '0.0', '0', '0', '7400000', 'Tsh', NULL, 'draft', 'User', '2023-10-04 00:00:00', '2023-10-11 00:00:00', '2023-10-04 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(695, '2023-0523', 233, '2023-09-26', '11200000', '0', '0', '11200000', '0.0', '0', '0', '11200000', 'Tsh', NULL, 'waiting', 'User', '2023-10-09 00:00:00', '2023-10-16 00:00:00', '2023-10-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(696, '2023-0524', 200, '2023-09-27', '6000000', '0', '0', '6000000', '0.0', '0', '0', '6000000', 'Tsh', NULL, 'waiting', 'User', '2023-10-11 00:00:00', '2023-10-18 00:00:00', '2023-10-11 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(697, '2023-0525', 227, '2023-09-27', '1125000', '0', '0', '1125000', '0.0', '0', '0', '1125000', 'USD', '2500', 'draft', 'User', '2023-10-02 00:00:00', '2023-10-09 00:00:00', '2023-09-27 00:00:00', NULL, NULL, '450', NULL, 'Not paid', '450', '0', '450', '0', '0.0', '0', '0'),
(698, '2023-0526', 154, '2023-09-29', '3894000', '594000', '0', '3300000', '0.0', '0', '0', '3894000', 'Tsh', NULL, 'waiting', 'User', '2023-10-06 07:42:02', '2023-10-06 07:42:02', '2023-10-06 07:42:02', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(699, '2023-0527', 154, '2023-09-29', '708000', '108000', '0', '600000', '0.0', '0', '0', '708000', 'Tsh', NULL, 'waiting', 'User', 'pending', 'pending', '2023-11-01 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(700, '2023-0528', 163, '2023-09-29', '43695400', '6665400', '0', '37030000', '0.0', '0', '0', '43695400', 'Tsh', NULL, 'draft', 'User', '2023-10-04 00:00:00', '2023-10-11 00:00:00', '2023-10-03 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(701, '2023-0529', 163, '2023-10-02', '6649300', '1014300', '0', '5635000', '0.0', '0', '0', '6649300', 'Tsh', NULL, 'waiting', 'User', '2023-10-03 00:00:00', '2023-10-10 00:00:00', '2023-10-03 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(702, '2023-0530', 200, '2023-10-02', '500000', '0', '0', '500000', '0.0', '0', '0', '500000', 'Tsh', NULL, 'waiting', 'User', '2023-10-04 00:00:00', '2023-10-11 00:00:00', '2023-10-02 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(703, '2023-0531', 163, '2023-10-02', '22860400', '3487179.66', '0', '19373220.34', '0.0', '0', '0', '22860400', 'Tsh', NULL, 'draft', 'User', '2023-10-03 00:00:00', '2023-10-10 00:00:00', '2023-10-03 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(704, '2023-0532', 238, '2023-10-05', '1450000', '221186.44', '0', '1228813.56', '0.0', '0', '0', '1450000', 'Tsh', NULL, 'draft', 'User', '2023-10-12 07:24:13', '2023-10-12 07:24:13', '2023-10-12 07:24:13', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(705, '2023-0533', 198, '2023-10-05', '2350000', '358474.58', '0', '1991525.42', '0.0', '0', '0', '2350000', 'Tsh', NULL, 'draft', 'Administrator', 'pending', 'pending', '2023-10-05 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(706, '2023-0534', 200, '2023-10-06', '1280000', '0', '0', '1280000', '0.0', '0', '0', '1280000', 'Tsh', NULL, 'waiting', 'User', '2023-10-09 00:00:00', '2023-10-16 00:00:00', '2023-10-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(707, '2023-0535', 200, '2023-10-09', '1400000', '0', '0', '1400000', '0.0', '0', '0', '1400000', 'Tsh', NULL, 'waiting', 'User', '2023-10-09 00:00:00', '2023-10-16 00:00:00', '2023-10-09 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(709, '2023-0536', 163, '2023-10-10', '259600', '39600', '0', '220000', '0.0', '0', '0', '259600', 'Tsh', NULL, 'waiting', 'User', '2023-10-23 00:00:00', '2023-10-30 00:00:00', '2023-10-23 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(710, '2023-0537', 163, '2023-10-11', '147500', '22500', '0', '125000', '0.0', '0', '0', '147500', 'Tsh', NULL, 'waiting', 'User', '2023-10-23 00:00:00', '2023-10-30 00:00:00', '2023-10-11 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(711, '2023-0538', 163, '2023-10-11', '22119100', '3374100', '0', '18745000', '0.0', '0', '0', '22119100', 'Tsh', NULL, 'waiting', 'User', '2023-10-23 00:00:00', '2023-10-30 00:00:00', '2023-10-13 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(712, '2023-0539', 163, '2023-10-11', '4342400', '662400', '0', '3680000', '0.0', '0', '0', '4342400', 'Tsh', NULL, 'draft', 'User', '2023-10-23 00:00:00', '2023-10-30 00:00:00', '2023-10-19 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(713, '2023-0540', 227, '2023-10-19', '115000', '0', '0', '115000', NULL, NULL, '0', '115000', 'USD', '2300', 'draft', 'User', 'pending', 'pending', '2023-10-19 00:00:00', NULL, NULL, '50', NULL, 'Not paid', '50', '0', '50', '0', '0.0', '0', '0'),
(714, '2023-0541', 209, '2023-10-23', '1360000', '0', '0', '1360000', '0.0', '0', '0', '1360000', 'Tsh', NULL, 'draft', 'User', 'pending', 'pending', '2023-10-24 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(716, '2023-0542', 240, '2023-10-24', '14750000', '2250000', '0', '12500000', '0.0', '0', '0', '14750000', 'Tsh', NULL, 'waiting', 'User', '2023-10-31 08:44:35', '2023-10-31 08:44:35', '2023-10-31 08:44:35', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(718, '2023-0543', 200, '2023-11-02', '4520000', '0', '0', '4520000', '0.0', '0', '0', '4520000', 'Tsh', NULL, 'waiting', 'User', '2023-11-21 00:00:00', '2023-11-28 00:00:00', '2023-11-08 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(719, '2023-0544', 200, '2023-11-02', '1800000', '0', '0', '1800000', '0.0', '0', '0', '1800000', 'Tsh', NULL, 'draft', 'User', '2023-11-08 00:00:00', '2023-11-15 00:00:00', '2023-11-08 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(720, '2023-0545', 241, '2023-11-06', '250000', '0', '0', '250000', '0.0', '0', '0', '250000', 'Tsh', NULL, 'waiting', 'User', '2023-11-06 00:00:00', '2023-11-13 00:00:00', '2023-11-06 00:00:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(721, '2023-0546', 227, '2023-11-13', '2932500', '0', '0', '2932500', '0.0', '0', '0', '2932500', 'USD', '2550', 'waiting', 'User', '2023-11-13 00:00:00', '2023-11-20 00:00:00', '2023-11-13 00:00:00', NULL, NULL, '1150', NULL, 'Not paid', '1150', '0', '1150', '0', '0.0', '0', '0'),
(722, '2023-0547', 242, '2023-11-20', '1800000', '0', '0', '1800000', '0.0', '0', '0', '1800000', 'Tsh', NULL, 'draft', 'User', '2023-11-27 13:00:40', '2023-11-20 13:00:40', '2023-11-27 13:00:40', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(723, '2023-0548', 200, '2023-11-21', '2000000', '0', '0', '2000000', '0.0', '0', '0', '2000000', 'Tsh', NULL, 'waiting', 'User', '2023-11-28 10:32:43', '2023-11-21 10:32:43', '2023-11-28 10:32:43', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(724, '2023-0549', 163, '2023-11-27', '37046100', '5651100', '0', '31395000', '0.0', '0', '0', '37046100', 'Tsh', NULL, 'waiting', 'User', '2023-12-04 08:36:20', '2023-12-04 08:36:20', '2023-12-04 08:36:20', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(725, '2023-0550', 233, '2023-11-21', '6400000', '0', '0', '6400000', '0.0', '0', '0', '6400000', 'Tsh', NULL, 'waiting', 'User', '2023-11-28 07:58:14', '2023-11-28 07:58:14', '2023-11-28 07:58:14', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(726, '2023-0551', 227, '2023-11-30', '920000', '0', '0', '920000', '0.0', '0', '0', '920000', 'USD', '2300', 'draft', 'User', '2023-12-07 11:24:45', '2023-12-07 11:24:45', '2023-12-07 11:24:45', NULL, NULL, '400', NULL, 'Not paid', '400', '0', '400', '0', '0.0', '0', '0');
INSERT INTO `invoice_fumigation` (`id`, `invoice_number`, `company_id`, `date_in`, `sub_total`, `vat`, `discount`, `net_total`, `withhold`, `withhold_amount`, `amount_paid`, `amount_due`, `currency`, `currency_value`, `invoice_status`, `adds`, `start_date`, `due_date`, `created_at`, `close_date`, `prove_status`, `tax_inclusive`, `updated_at`, `payment_status`, `tax_exclusive`, `discount1`, `amount_due1`, `tax`, `withhold1`, `withhold_amount1`, `vat_status`) VALUES
(727, '2023-0552', 163, '2023-12-01', '973500', '148500', '0', '825000', '0.0', '0', '0', '973500', 'Tsh', NULL, 'waiting', 'User', '2023-12-08 08:50:15', '2023-12-08 08:50:15', '2023-12-08 08:50:15', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(728, '2023-0553', 238, '2023-11-30', '1450000', '221186.44', '0', '1228813.56', '0.0', '0', '0', '1450000', 'Tsh', NULL, 'draft', 'User', '2023-12-07 07:31:13', '2023-12-07 07:31:13', '2023-12-07 07:31:13', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(729, '2023-0554', 163, '2023-12-01', '2035500', '310500', '0', '1725000', '0.0', '0', '0', '2035500', 'Tsh', NULL, 'waiting', 'User', '2023-12-08 08:38:05', '2023-12-08 08:38:05', '2023-12-08 08:38:05', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(730, '2023-0555', 238, '2023-11-30', '1450000', '221186.44', '0', '1228813.56', '0.0', '0', '0', '1450000', 'Tsh', NULL, 'draft', 'User', '2023-12-07 10:45:03', '2023-12-07 10:45:03', '2023-12-07 10:45:03', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(731, '2023-0556', 163, '2023-12-04', '934560', '142560', '0', '792000', '0.0', '0', '0', '934560', 'Tsh', NULL, 'draft', 'User', '2023-12-11 09:15:57', '2023-12-11 09:15:57', '2023-12-11 09:15:57', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(732, '2023-0557', 163, '2023-12-04', '24213600', '3693600', '0', '20520000', '0.0', '0', '0', '24213600', 'Tsh', NULL, 'draft', 'User', '2023-12-11 09:52:47', '2023-12-11 09:52:47', '2023-12-11 09:52:47', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(733, '2023-0558', 163, '2023-12-04', '4531200', '691200', '0', '3840000', '0.05', '192000', '0', '4339200', 'Tsh', NULL, 'waiting', 'User', '2023-12-11 13:44:15', '2023-12-11 13:44:15', '2023-12-11 13:44:15', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(734, '2023-0559', 233, '2023-12-04', '4800000', '0', '0', '4800000', '0.0', '0', '0', '4800000', 'Tsh', NULL, 'waiting', 'User', '2023-12-11 10:18:02', '2023-12-11 10:18:02', '2023-12-11 10:18:02', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(735, '2023-0560', 238, '2023-12-29', '1600000', '244067.8', '0', '1355932.2', '0.0', '0', '0', '1600000', 'Tsh', NULL, 'waiting', 'User', '2024-01-05 14:30:14', '2024-01-05 14:30:14', '2024-01-05 14:30:14', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(736, '2023-0561', 227, '2023-12-06', '230000', '0', '0', '230000', '0.0', '0', '0', '230000', 'USD', '2300', 'draft', 'User', '2023-12-13 09:13:44', '2023-12-13 09:13:44', '2023-12-13 09:13:44', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(737, '2023-0562', 209, '2023-12-11', '1507900', '230018.64', '0', '1277881.36', '0.0', '0', '0', '1507900', 'Tsh', NULL, 'draft', 'User', '2023-12-18 14:10:58', '2023-12-18 14:10:58', '2023-12-18 14:10:58', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(738, '2023-0563', 233, '2023-12-15', '8000000', '0', '0', '8000000', '0.0', '0', '0', '8000000', 'Tsh', NULL, 'waiting', 'User', '2023-12-22 09:15:45', '2023-12-22 09:15:45', '2023-12-22 09:15:45', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(739, '2023-0564', 227, '2023-12-20', '1000000', '0', '0', '1000000', '0.0', '0', '0', '1000000', 'USD', '2500', 'draft', 'User', '2023-12-27 09:05:36', '2023-12-27 09:05:36', '2023-12-27 09:05:36', NULL, NULL, '400', NULL, 'Not paid', '400', '0', '400', '0', '0.0', '0', '0'),
(740, '2024-0565', 154, '2024-01-02', '212400', '32400', '0', '180000', '0.0', '0', '0', '212400', 'Tsh', NULL, 'draft', 'User', '2024-01-09 14:02:56', '2024-01-09 14:02:56', '2024-01-09 14:02:56', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(741, '2024-0566', 160, '2024-01-03', '1610000', '0', '0', '1610000', '0.0', '0', '0', '1610000', 'Tsh', NULL, 'draft', 'User', '2024-01-10 09:39:03', '2024-01-10 09:39:03', '2024-01-10 09:39:03', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(742, '2024-0567', 233, '2024-01-03', '3200000', '0', '0', '3200000', '0.0', '0', '0', '3200000', 'Tsh', NULL, 'waiting', 'User', '2024-01-10 09:03:00', '2024-01-10 09:03:00', '2024-01-10 09:03:00', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(743, '2024-0568', 200, '2024-01-17', '1560000', '0', '0', '1560000', '0.0', '0', '0', '1560000', 'Tsh', NULL, 'waiting', 'User', '2024-01-24 10:00:16', '2024-01-24 10:00:16', '2024-01-24 10:00:16', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(744, '2024-0569', 200, '2024-01-17', '1200000', '0', '0', '1200000', '0.0', '0', '0', '1200000', 'Tsh', NULL, 'waiting', 'User', '2024-01-24 10:07:32', '2024-01-24 10:07:32', '2024-01-24 10:07:32', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(745, '2024-0570', 233, '2024-01-18', '3200000', '0', '0', '3200000', '0.0', '0', '0', '3200000', 'Tsh', NULL, 'waiting', 'User', '2024-01-25 08:38:31', '2024-01-25 08:38:31', '2024-01-25 08:38:31', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(746, '2024-0571', 200, '2024-01-24', '100000', '0', '0', '100000', '0.0', '0', '0', '100000', 'Tsh', NULL, 'waiting', 'User', '2024-01-31 07:50:49', '2024-01-31 07:50:49', '2024-01-31 07:50:49', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(747, '2024-0572', 233, '2024-01-27', '3200000', '0', '0', '3200000', '0.0', '0', '0', '3200000', 'Tsh', NULL, 'waiting', 'User', '2024-02-03 10:00:01', '2024-02-03 10:00:01', '2024-02-03 10:00:01', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(748, '2024-0573', 163, '2024-01-29', '38444400', '5864400', '0', '32580000', '0.0', '0', '0', '38444400', 'Tsh', NULL, 'waiting', 'User', '2024-02-05 09:51:10', '2024-02-05 09:51:10', '2024-02-05 09:51:10', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(749, '2024-0574', 163, '2024-01-29', '14112800', '2152800', '0', '11960000', '0.0', '0', '0', '14112800', 'Tsh', NULL, 'waiting', 'User', '2024-02-05 09:54:57', '2024-02-05 09:54:57', '2024-02-05 09:54:57', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(750, '2024-0575', 233, '2024-01-13', '3200000', '0', '0', '3200000', '0.0', '0', '0', '3200000', 'Tsh', NULL, 'waiting', 'User', '2024-01-20 08:35:02', '2024-01-20 08:35:02', '2024-01-20 08:35:02', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(751, '2024-0576', 233, '2024-01-08', '3200000', '0', '0', '3200000', '0.0', '0', '0', '3200000', 'Tsh', NULL, 'waiting', 'User', '2024-01-15 08:45:27', '2024-01-15 08:45:27', '2024-01-15 08:45:27', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(752, '2024-0577', 233, '2024-02-03', '3200000', '0', '0', '3200000', '0.0', '0', '0', '3200000', 'Tsh', NULL, 'waiting', 'User', '2024-02-10 06:35:12', '2024-02-10 06:35:12', '2024-02-10 06:35:12', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(753, '2024-0578', 163, '2024-02-05', '501500', '76500', '0', '425000', '0.0', '0', '0', '501500', 'Tsh', NULL, 'waiting', 'User', '2024-02-12 07:17:59', '2024-02-12 07:17:59', '2024-02-12 07:17:59', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(754, '2024-0579', 233, '2024-02-07', '3200000', '0', '0', '3200000', '0.05', '0', '0', '3200000', 'Tsh', NULL, 'draft', 'User', '2024-02-14 13:11:47', '2024-02-14 13:11:47', '2024-02-14 13:11:47', NULL, NULL, '100', NULL, 'Not paid', '100', '0', '100', '0', '0.0', '0', '0'),
(755, '2024-0580', 233, '2024-02-12', '3200000', '0', '0', '3200000', '0.0', '0', '0', '3200000', 'Tsh', NULL, 'waiting', 'User', '2024-02-19 08:15:15', '2024-02-19 08:15:15', '2024-02-19 08:15:15', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(756, '2024-0581', 233, '2024-02-17', '3200000', '0', '0', '3200000', '0.0', '0', '0', '3200000', 'Tsh', NULL, 'waiting', 'User', '2024-02-24 13:37:23', '2024-02-24 13:37:23', '2024-02-24 13:37:23', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(757, '2024-0582', 160, '2024-02-22', '400000', '0', '0', '400000', '0.0', '0', '0', '400000', 'Tsh', NULL, 'waiting', 'User', '2024-02-29 07:49:31', '2024-02-29 07:49:31', '2024-02-29 07:49:31', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(758, '2024-0583', 246, '2024-02-27', '944000', '144000', '0', '800000', '0.0', '0', '0', '944000', 'Tsh', NULL, 'draft', 'User', '2024-03-05 09:22:51', '2024-03-05 09:22:51', '2024-03-05 09:22:51', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(759, '2024-0584', 247, '2024-02-27', '944000', '144000', '0', '800000', '0.0', '0', '0', '944000', 'Tsh', NULL, 'draft', 'User', '2024-03-05 10:02:46', '2024-03-05 10:02:46', '2024-03-05 10:02:46', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355'),
(760, '2024-0585', 200, '2024-03-04', '3160000', '0', '0', '3160000', '0.0', '0', '0', '3160000', 'Tsh', NULL, 'draft', 'User', '2024-03-11 13:30:57', '2024-03-11 13:30:57', '2024-03-11 13:30:57', NULL, NULL, NULL, NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `labour`
--

CREATE TABLE `labour` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice2_id` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) DEFAULT NULL,
  `amount_paid` varchar(55) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `staff_type` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labour`
--

INSERT INTO `labour` (`id`, `invoice_id`, `invoice2_id`, `account_id`, `amount_paid`, `payment_date`, `staff_type`, `created_at`, `updated_at`) VALUES
(33, NULL, 139, 70, '5750000', '2022-12-07', 'fumigation', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_18_035002_create_customers_table', 1),
(4, '2018_12_18_035015_create_sales_table', 1),
(5, '2018_12_18_035038_create_suppliers_table', 1),
(6, '2018_12_18_041830_create_categories_table', 1),
(7, '2018_12_18_042809_create_products_table', 1),
(8, '2018_12_18_043146_create_product_in_table', 1),
(9, '2018_12_18_043233_create_product_out_table', 1),
(10, '2018_12_19_044911_add_field_role_to_table_users', 1),
(11, '2021_01_18_083928_create_task_table', 1),
(12, '2021_01_18_100555_create_equipment_table', 1),
(13, '2021_01_18_131021_create_farm_table', 2),
(14, '2021_01_18_141830_create_expensive_table', 2),
(15, '2021_01_19_215334_create_labour_table', 2),
(16, '2021_01_22_071735_create_table_company_infor', 2),
(17, '2021_01_22_081724_create_table_truck', 2),
(18, '2021_01_22_104229_create_table_staffing', 2),
(19, '2021_01_23_010922_create_table_container', 2),
(20, '2021_01_23_103426_create_table_payment', 2),
(21, '2021_01_18_123805_create__comapny_table', 3),
(22, '2021_02_12_004715_create_table_for_payment_info', 4),
(23, '2021_02_12_005049_create_table_for_remark', 4),
(24, '2021_02_15_204116_create_table_for_invoice', 5),
(25, '2021_02_16_043037_create_table_for_invoice', 6),
(26, '2021_02_26_130049_create_table_for_invoice_fumigation', 7),
(27, '2014_10_12_200000_add_two_factor_columns_to_users_table', 8),
(28, '2021_03_18_105253_laratrust_setup_tables', 9),
(29, '2019_08_19_000000_create_failed_jobs_table', 10),
(30, '2021_03_18_201037_laratrust_setup_tables', 11);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tin_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `name`, `tin_number`, `email`, `phone`, `location`) VALUES
(1, 'NARET COMPANY LIMITED', '155884452', 'naret@naret.co.tz', '0753995084', 'P.O.Box 6230,Dar es Salaam and Arusha.');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('naretfumigation@gmail.com', '$2y$10$qcVKzcCED3AWly96Ul5zPOzl9Oe6VSv0GEjZGnmeZxVk/TCJh0PYi', '2021-03-15 18:15:36'),
('superadministrator@app.com', '$2y$10$eYD97vY2YJb/4V0y8QRqoeS4gAEi3R7j6RHhpwtwsUiVyboG5o2tO', '2021-03-19 18:42:11'),
('kevo93mushy@gmail.com', '$2y$10$clJyILF744BXhZ9H6e5cz.BUUZYL1zsMPZv2T0b7t.F6akqQdeDxu', '2021-03-21 11:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staffing_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice2_id` int(10) UNSIGNED DEFAULT NULL,
  `amount_paid` varchar(50) NOT NULL,
  `amount_due` varchar(50) DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `payment_method` varchar(250) NOT NULL,
  `staff_type` varchar(50) DEFAULT NULL,
  `adds` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `staffing_id`, `invoice_id`, `invoice2_id`, `amount_paid`, `amount_due`, `payment_date`, `payment_method`, `staff_type`, `adds`, `created_at`, `updated_at`) VALUES
(177, NULL, NULL, 114, '165000', NULL, '2021-04-06', 'cash in hand', 'fumigation', 'Superadministrator', NULL, NULL),
(178, NULL, NULL, 122, '1450000', NULL, '2021-04-13', 'mpesa', 'fumigation', 'Administrator', NULL, NULL),
(179, 265, NULL, NULL, '115000', NULL, '2021-04-27', 'mpesa', 'staffing', 'User', NULL, NULL),
(180, 267, NULL, NULL, '164000', NULL, '2021-04-27', 'mpesa', 'staffing', 'User', NULL, NULL),
(181, 268, NULL, NULL, '115000', NULL, '2021-05-10', 'mpesa', 'staffing', 'User', NULL, NULL),
(182, NULL, NULL, 133, '4600000', NULL, '2021-05-26', 'bank', 'fumigation', 'User', NULL, NULL),
(183, NULL, NULL, 133, '4600000', NULL, '2021-05-26', 'bank', 'fumigation', 'User', NULL, NULL),
(184, NULL, NULL, 133, '2000', NULL, '2021-05-26', 'bank', 'fumigation', 'User', NULL, NULL),
(185, NULL, NULL, 129, '1000000', NULL, '2021-05-28', 'cash in hand', 'fumigation', 'User', NULL, NULL),
(186, NULL, NULL, 133, '2000', NULL, '2021-06-05', 'bank', 'fumigation', 'User', NULL, NULL),
(187, NULL, NULL, 137, '47200', NULL, '2021-06-07', 'cash in hand', 'fumigation', 'User', NULL, NULL),
(188, 270, NULL, NULL, '115000', NULL, '2021-06-16', 'mpesa', 'staffing', 'User', NULL, NULL),
(189, 270, NULL, NULL, '115000', NULL, '2021-06-16', 'mpesa', 'staffing', 'User', NULL, NULL),
(190, 271, NULL, NULL, '230000', NULL, '2021-06-16', 'mpesa', 'staffing', 'User', NULL, NULL),
(191, 274, NULL, NULL, '230000', NULL, '2021-06-16', 'mpesa', 'staffing', 'User', NULL, NULL),
(192, 278, NULL, NULL, '1000000', NULL, '2021-06-17', 'mpesa', 'staffing', 'User', NULL, NULL),
(193, 278, NULL, NULL, '500000', NULL, '2021-06-17', 'cash in hand', 'staffing', 'User', NULL, NULL),
(194, 275, NULL, NULL, '398000', NULL, '2021-06-18', 'mpesa', 'staffing', 'User', NULL, NULL),
(195, 272, NULL, NULL, '230000', NULL, '2021-06-18', 'mpesa', 'staffing', 'User', NULL, NULL),
(196, 273, NULL, NULL, '115000', NULL, '2021-06-18', 'mpesa', 'staffing', 'User', NULL, NULL),
(197, 276, NULL, NULL, '115000', NULL, '2021-06-18', 'mpesa', 'staffing', 'User', NULL, NULL),
(198, 269, NULL, NULL, '40000', NULL, '2021-07-06', 'mpesa', 'staffing', 'User', NULL, NULL),
(199, 277, NULL, NULL, '40000', NULL, '2021-07-06', 'mpesa', 'staffing', 'User', NULL, NULL),
(200, NULL, NULL, 130, '24150000', NULL, '2021-07-22', 'bank', 'fumigation', 'User', NULL, NULL),
(201, NULL, NULL, 123, '24150000', NULL, '2021-07-22', 'bank', 'fumigation', 'User', NULL, NULL),
(202, 279, NULL, NULL, '115000', NULL, '2022-07-18', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(203, 280, NULL, NULL, '164000', NULL, '2022-07-18', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(204, 281, NULL, NULL, '115000', NULL, '2022-07-19', 'bank', 'staffing', 'Administrator', NULL, NULL),
(205, 282, NULL, NULL, '470000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(206, 290, NULL, NULL, '230000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(207, 291, NULL, NULL, '690000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(208, 292, NULL, NULL, '100000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(209, 293, NULL, NULL, '470000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(210, 294, NULL, NULL, '115000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(211, 296, NULL, NULL, '230000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(212, 297, NULL, NULL, '460000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(213, 298, NULL, NULL, '460000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(214, 299, NULL, NULL, '230000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(215, 300, NULL, NULL, '230000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(216, 301, NULL, NULL, '575000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(217, 302, NULL, NULL, '23000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(218, 302, NULL, NULL, '207000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(219, 303, NULL, NULL, '115000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(220, 304, NULL, NULL, '460000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(221, 305, NULL, NULL, '115000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(222, 306, NULL, NULL, '115000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(223, 307, NULL, NULL, '115000', NULL, '2022-07-19', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(224, 308, NULL, NULL, '345000', NULL, '2022-07-21', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(225, 309, NULL, NULL, '115000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(226, 310, NULL, NULL, '345000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(227, 311, NULL, NULL, '435000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(228, 312, NULL, NULL, '145000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(229, 313, NULL, NULL, '145000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(230, 314, NULL, NULL, '145000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(231, 315, NULL, NULL, '290000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(232, 316, NULL, NULL, '290000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(233, 317, NULL, NULL, '224000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(234, 318, NULL, NULL, '164000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(235, 319, NULL, NULL, '115000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(236, 320, NULL, NULL, '145000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(237, 322, NULL, NULL, '224000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(238, 323, NULL, NULL, '224000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(239, 324, NULL, NULL, '115000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(240, 325, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(241, 326, NULL, NULL, '295000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(242, 327, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(243, 328, NULL, NULL, '224000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(244, 329, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(245, 330, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(246, 331, NULL, NULL, '164000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(247, 332, NULL, NULL, '145000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(248, 333, NULL, NULL, '413150', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(249, 334, NULL, NULL, '580000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(250, 335, NULL, NULL, '115000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(251, 336, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(252, 337, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(253, 338, NULL, NULL, '145000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(254, 339, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(255, 340, NULL, NULL, '580000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(256, 341, NULL, NULL, '246750', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(257, 343, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(258, 344, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(259, 345, NULL, NULL, '247725', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(260, 346, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(261, 347, NULL, NULL, '164000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(262, 348, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(263, 349, NULL, NULL, '115000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(264, 351, NULL, NULL, '164000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(265, 352, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(266, 353, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(267, 354, NULL, NULL, '175000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(268, 355, NULL, NULL, '175000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(269, 356, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(270, 357, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(271, 358, NULL, NULL, '235000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(272, 359, NULL, NULL, '164000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(273, 361, NULL, NULL, '115000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(274, 362, NULL, NULL, '115000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(275, 363, NULL, NULL, '115000', NULL, '2022-07-25', 'mpesa', 'staffing', 'Administrator', NULL, NULL),
(276, NULL, NULL, 397, '8142', NULL, '2022-12-02', 'cash in hand', 'fumigation', 'User', NULL, NULL),
(277, NULL, NULL, 124, '37950000', NULL, '2022-12-07', 'bank', 'fumigation', 'User', NULL, NULL),
(278, NULL, NULL, 139, '575000', NULL, '2022-12-07', 'cash in hand', 'fumigation', 'User', NULL, NULL),
(279, NULL, NULL, 441, '2714000', NULL, '2022-12-07', 'bank', 'fumigation', 'User', NULL, NULL),
(280, NULL, NULL, 388, '1829000', NULL, '2022-12-07', 'bank', 'fumigation', 'User', NULL, NULL),
(281, NULL, NULL, 389, '7463500', NULL, '2022-12-07', 'bank', 'fumigation', 'User', NULL, NULL),
(282, NULL, NULL, 393, '1829000', NULL, '2022-12-07', 'bank', 'fumigation', 'User', NULL, NULL),
(283, NULL, NULL, 397, '10856000', NULL, '2022-12-07', 'bank', 'fumigation', 'User', NULL, NULL),
(284, NULL, NULL, 401, '1829000', NULL, '2022-12-07', 'bank', 'fumigation', 'User', NULL, NULL),
(285, NULL, NULL, 407, '3658000', NULL, '2022-12-07', 'cash in hand', 'fumigation', 'User', NULL, NULL),
(286, NULL, NULL, 241, '115000', NULL, '2022-12-07', 'bank', 'fumigation', 'User', NULL, NULL),
(287, NULL, NULL, 142, '28750000', NULL, '2022-12-07', 'bank', 'fumigation', 'User', NULL, NULL),
(288, NULL, NULL, 134, '350000', NULL, '2022-12-07', 'cash in hand', 'fumigation', 'User', NULL, NULL),
(289, NULL, NULL, 460, '5428000', NULL, '2023-01-09', 'bank', 'fumigation', 'User', NULL, NULL),
(290, NULL, NULL, 462, '6401500', NULL, '2023-01-09', 'bank', 'fumigation', 'User', NULL, NULL),
(291, NULL, NULL, 193, '70000', NULL, '2023-01-13', 'mpesa', 'fumigation', 'User', NULL, NULL),
(292, NULL, NULL, 322, '70000', NULL, '2023-01-13', 'mpesa', 'fumigation', 'User', NULL, NULL),
(293, NULL, NULL, 334, '70000', NULL, '2023-01-13', 'mpesa', 'fumigation', 'User', NULL, NULL),
(294, NULL, NULL, 335, '35000', NULL, '2023-01-13', 'mpesa', 'fumigation', 'User', NULL, NULL),
(295, NULL, NULL, 398, '39000', NULL, '2023-01-13', 'mpesa', 'fumigation', 'User', NULL, NULL),
(296, NULL, NULL, 488, '214000', NULL, '2023-01-13', 'mpesa', 'fumigation', 'User', NULL, NULL),
(297, NULL, NULL, 181, '590000', NULL, '2023-01-13', 'cash in hand', 'fumigation', 'User', NULL, NULL),
(298, NULL, NULL, 182, '23600', NULL, '2023-01-13', 'cash in hand', 'fumigation', 'User', NULL, NULL),
(299, NULL, NULL, 475, '9327900', NULL, '2023-01-18', 'bank', 'fumigation', 'User', NULL, NULL),
(300, NULL, NULL, 476, '5457500', NULL, '2023-01-18', 'bank', 'fumigation', 'User', NULL, NULL),
(301, NULL, NULL, 484, '5487000', NULL, '2023-01-18', 'bank', 'fumigation', 'User', NULL, NULL),
(302, NULL, NULL, 497, '74000', NULL, '2023-03-02', 'bank', 'fumigation', 'User', NULL, NULL),
(303, NULL, NULL, 516, '39000', NULL, '2023-03-02', 'bank', 'fumigation', 'User', NULL, NULL),
(304, NULL, NULL, 521, '214000', NULL, '2023-03-02', 'bank', 'fumigation', 'User', NULL, NULL),
(305, NULL, NULL, 156, '115000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(306, NULL, NULL, 304, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(307, NULL, NULL, 304, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(308, NULL, NULL, 304, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(309, NULL, NULL, 304, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(310, NULL, NULL, 304, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(311, NULL, NULL, 304, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(312, NULL, NULL, 304, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(313, NULL, NULL, 304, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(314, NULL, NULL, 304, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(315, NULL, NULL, 306, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(316, NULL, NULL, 306, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(317, NULL, NULL, 306, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(318, NULL, NULL, 306, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(319, NULL, NULL, 306, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(320, NULL, NULL, 306, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(321, NULL, NULL, 306, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(322, NULL, NULL, 321, '725000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(323, NULL, NULL, 330, '130000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(324, NULL, NULL, 306, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(325, NULL, NULL, 336, '180000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(326, NULL, NULL, 353, '1500000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(327, NULL, NULL, 357, '725000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(328, NULL, NULL, 358, '6000000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(329, NULL, NULL, 352, '450000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(330, NULL, NULL, 343, '300000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(331, NULL, NULL, 345, '510000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(332, NULL, NULL, 493, '750000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(333, NULL, NULL, 333, '120000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(334, NULL, NULL, 494, '750000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(335, NULL, NULL, 495, '750000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(336, NULL, NULL, 492, '750000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(337, NULL, NULL, 494, '135000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(338, NULL, NULL, 495, '135000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(339, NULL, NULL, 306, '290000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(340, NULL, NULL, 331, '120000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(341, NULL, NULL, 342, '240000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(342, NULL, NULL, 332, '160000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL),
(343, NULL, NULL, 304, '145000', NULL, '2023-03-20', 'bank', 'fumigation', 'Administrator', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(255) NOT NULL,
  `acc_name` varchar(255) NOT NULL,
  `acc_number` varchar(255) NOT NULL,
  `staff_type` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`id`, `method`, `acc_name`, `acc_number`, `staff_type`, `created_at`, `updated_at`) VALUES
(2, 'Banks Account No', 'NMB Naret Acc USD', '23610021602', '', NULL, NULL),
(4, 'Banks Account No', 'NMB Naret Acc TSH', '23610021600', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2021-03-18 23:15:31', '2021-03-18 23:15:31'),
(2, 'users-read', 'Read Users', 'Read Users', '2021-03-18 23:15:32', '2021-03-18 23:15:32'),
(3, 'users-update', 'Update Users', 'Update Users', '2021-03-18 23:15:32', '2021-03-18 23:15:32'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2021-03-18 23:15:32', '2021-03-18 23:15:32'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2021-03-18 23:15:32', '2021-03-18 23:15:32'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2021-03-18 23:15:32', '2021-03-18 23:15:32'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2021-03-18 23:15:32', '2021-03-18 23:15:32'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2021-03-18 23:15:32', '2021-03-18 23:15:32'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2021-03-18 23:15:33', '2021-03-18 23:15:33'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2021-03-18 23:15:33', '2021-03-18 23:15:33'),
(11, 'module_1_name-create', 'Create Module_1_name', 'Create Module_1_name', '2021-03-18 23:15:43', '2021-03-18 23:15:43'),
(12, 'module_1_name-read', 'Read Module_1_name', 'Read Module_1_name', '2021-03-18 23:15:43', '2021-03-18 23:15:43'),
(13, 'module_1_name-update', 'Update Module_1_name', 'Update Module_1_name', '2021-03-18 23:15:43', '2021-03-18 23:15:43'),
(14, 'module_1_name-delete', 'Delete Module_1_name', 'Delete Module_1_name', '2021-03-18 23:15:44', '2021-03-18 23:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `adds` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_in`
--

CREATE TABLE `product_in` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `tbags` varchar(50) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `tprice` int(11) NOT NULL,
  `date_in` varchar(50) NOT NULL,
  `adds` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_out`
--

CREATE TABLE `product_out` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `tbags` varchar(50) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `tprice` int(11) NOT NULL,
  `date_out` varchar(255) NOT NULL,
  `adds` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice`
--

CREATE TABLE `purchase_invoice` (
  `id` int(10) NOT NULL,
  `suppliers_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) DEFAULT NULL,
  `purchase_invoice` varchar(50) NOT NULL,
  `sub_total` varchar(50) NOT NULL,
  `vat` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `net_total` varchar(50) NOT NULL,
  `amount_paid` varchar(50) DEFAULT NULL,
  `amount_due` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) NOT NULL,
  `date_in` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `adds` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice1`
--

CREATE TABLE `purchase_invoice1` (
  `id` int(10) NOT NULL,
  `suppliers_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) DEFAULT NULL,
  `purchase_invoice1` varchar(50) NOT NULL,
  `sub_total` varchar(50) NOT NULL,
  `vat` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `net_total` varchar(50) NOT NULL,
  `amount_paid` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `amount_due` varchar(50) DEFAULT NULL,
  `date_in` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `adds` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payment`
--

CREATE TABLE `purchase_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(10) DEFAULT NULL,
  `purchase2_id` int(10) DEFAULT NULL,
  `amount_paid` varchar(50) NOT NULL,
  `amount_due` varchar(50) DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `payment_method` varchar(250) NOT NULL,
  `staff_type` varchar(50) DEFAULT NULL,
  `adds` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(10) UNSIGNED NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `sign_here` varchar(255) NOT NULL,
  `staff_type` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `remarks`, `sign_here`, `staff_type`, `created_at`, `updated_at`) VALUES
(2, 'We assure you of our best quality and affordable,miscellaneous port and fumigation services all time,we assure you our quality services and affordable transportation services.If this invoice is not disputed within 7   it is regarded as approved', '..............................', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2021-03-18 23:15:31', '2021-03-18 23:15:31'),
(2, 'administrator', 'Administrator', 'Administrator', '2021-03-18 23:15:39', '2021-03-18 23:15:39'),
(3, 'user', 'User', 'User', '2021-03-18 23:15:41', '2021-03-18 23:15:41'),
(4, 'role_name', 'Role Name', 'Role Name', '2021-03-18 23:15:43', '2021-03-18 23:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User'),
(3, 3, 'App\\Models\\User'),
(4, 4, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `adress` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staffing`
--

CREATE TABLE `staffing` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) DEFAULT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `date_in` varchar(255) NOT NULL,
  `sub_total` varchar(50) NOT NULL,
  `vat` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `net_total` varchar(50) NOT NULL,
  `withhold` varchar(50) DEFAULT NULL,
  `withhold_amount` varchar(50) DEFAULT NULL,
  `amount_paid` varchar(50) NOT NULL,
  `amount_due` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `current_value` varchar(50) DEFAULT NULL,
  `invoice_status` varchar(50) NOT NULL,
  `adds` varchar(50) DEFAULT NULL,
  `start_date` varchar(50) NOT NULL,
  `due_date` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(50) NOT NULL,
  `close_date` varchar(50) DEFAULT NULL,
  `prove_status` varchar(50) DEFAULT NULL,
  `tax_inclusive` varchar(50) DEFAULT NULL,
  `discount1` varchar(50) DEFAULT NULL,
  `tax_exclusive` varchar(50) DEFAULT NULL,
  `tax` varchar(50) DEFAULT NULL,
  `withhold1` varchar(50) DEFAULT NULL,
  `withhold_amount1` varchar(50) DEFAULT NULL,
  `vat_status` varchar(50) DEFAULT NULL,
  `amount_due1` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffing`
--

INSERT INTO `staffing` (`id`, `invoice_number`, `company_id`, `date_in`, `sub_total`, `vat`, `discount`, `net_total`, `withhold`, `withhold_amount`, `amount_paid`, `amount_due`, `currency`, `current_value`, `invoice_status`, `adds`, `start_date`, `due_date`, `created_at`, `updated_at`, `payment_status`, `close_date`, `prove_status`, `tax_inclusive`, `discount1`, `tax_exclusive`, `tax`, `withhold1`, `withhold_amount1`, `vat_status`, `amount_due1`) VALUES
(259, '2021-0002', 155, '2021-04-01', '3728800', '568800', '0', '3160000', NULL, NULL, '0', '3728800', 'Tsh', NULL, 'waiting', 'Superadministrator', '2024-01-27 00:00:00', '2024-02-03 00:00:00', '2021-04-05 21:00:00', NULL, 'Not paid', NULL, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(265, '2021-0004', 161, '2021-04-15', '115000', '0', '0', '115000', NULL, NULL, '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-04-20 00:00:00', '2021-04-27 00:00:00', '2021-04-14 21:00:00', NULL, 'paid', '2021-04-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(267, '2021-0005', 161, '2021-04-20', '164000', '0', '0', '164000', NULL, NULL, '164000', '0', 'Tsh', NULL, 'closed', 'User', '2021-04-20 00:00:00', '2021-04-27 00:00:00', '2021-04-19 21:00:00', NULL, 'paid', '2021-04-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(268, '2021-0006', 161, '2021-05-06', '115000', '0', '0', '115000', NULL, NULL, '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-05-07 00:00:00', '2021-05-14 00:00:00', '2021-05-06 21:00:00', NULL, 'paid', '2021-05-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(269, '2021-0007', 153, '2021-06-02', '150000', '0', '0', '150000', NULL, NULL, '40000', '110000', 'Tsh', NULL, 'waiting', 'User', '2023-04-20 00:00:00', '2023-04-27 00:00:00', '2021-06-01 21:00:00', NULL, 'partial paid', '2021-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(270, '2021-0007', 161, '2021-06-02', '115000', '0', '0', '115000', NULL, NULL, '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-06-07 00:00:00', '2021-06-14 00:00:00', '2021-06-01 21:00:00', NULL, 'paid', '2021-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(271, '2021-0008', 161, '2021-06-07', '230000', '0', '0', '230000', NULL, NULL, '230000', '0', 'Tsh', NULL, 'closed', 'User', '2021-06-08 00:00:00', '2021-06-15 00:00:00', '2021-06-06 21:00:00', NULL, 'paid', '2021-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(272, '2021-0009', 161, '2021-06-08', '230000', '0', '0', '230000', NULL, NULL, '230000', '0', 'Tsh', NULL, 'closed', 'User', '2021-06-10 00:00:00', '2021-06-17 00:00:00', '2021-06-07 21:00:00', NULL, 'paid', '2021-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(273, '2021-0010', 161, '2021-06-10', '115000', '0', '0', '115000', NULL, NULL, '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-06-10 00:00:00', '2021-06-17 00:00:00', '2021-06-09 21:00:00', NULL, 'paid', '2021-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(274, '2021-0011', 161, '2021-06-14', '230000', '0', '0', '230000', NULL, NULL, '230000', '0', 'Tsh', NULL, 'closed', 'User', '2021-06-14 00:00:00', '2021-06-21 00:00:00', '2021-06-13 21:00:00', NULL, 'paid', '2021-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(275, '2021-0012', 161, '2021-06-15', '398000', '0', '0', '398000', NULL, NULL, '398000', '0', 'Tsh', NULL, 'closed', 'User', '2021-06-17 00:00:00', '2021-06-24 00:00:00', '2021-06-14 21:00:00', NULL, 'paid', '2021-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(276, '2021-0013', 161, '2021-06-15', '115000', '0', '0', '115000', NULL, NULL, '115000', '0', 'Tsh', NULL, 'waiting', 'User', '2022-07-25 00:00:00', '2022-08-01 00:00:00', '2021-06-14 21:00:00', NULL, 'paid', '2021-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(277, '2021-0014', 161, '2021-06-15', '40000', '0', '0', '40000', NULL, NULL, '40000', '0', 'Tsh', NULL, 'closed', 'User', '2021-06-17 00:00:00', '2021-06-24 00:00:00', '2021-06-14 21:00:00', NULL, 'paid', '2021-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(278, '2021-0015', 167, '2021-06-17', '1500000', '228813.56', '0', '1271186.44', NULL, NULL, '1500000', '0', 'Tsh', NULL, 'closed', 'User', '2021-06-24 00:00:00', '2021-06-17', '2021-06-16 21:00:00', NULL, 'paid', '2021-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(279, '2021-0016', 161, '2021-07-06', '115000', '0', '0', '115000', NULL, NULL, '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-07-08 00:00:00', '2021-07-15 00:00:00', '2021-07-07 21:00:00', NULL, 'paid', '2022-07-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(280, '2021-0017', 161, '2021-07-08', '164000', '0', '0', '164000', NULL, NULL, '164000', '0', 'Tsh', NULL, 'closed', 'User', '2021-07-08 00:00:00', '2021-07-15 00:00:00', '2021-07-07 21:00:00', NULL, 'paid', '2022-07-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(281, '2021-0018', 161, '2021-07-20', '115000', '0', '0', '115000', NULL, NULL, '115000', '0', 'Tsh', NULL, 'closed', 'User', '2022-07-19 00:00:00', '2022-07-26 00:00:00', '2021-07-19 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(282, '2021-0019', 161, '2021-07-29', '470000', '0', '0', '470000', NULL, NULL, '470000', '0', 'Tsh', NULL, 'closed', 'User', '2021-08-02 00:00:00', '2021-08-09 00:00:00', '2021-07-29 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(283, '2021-0020', 155, '2021-08-28', '100', '15.25', '0', '84.75', '0.0', '0', '0', '100', 'Tsh', NULL, 'waiting', 'User', '2022-08-11 00:00:00', '2022-08-18 00:00:00', '2021-08-27 21:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(284, '2021-0021', 153, '2021-08-28', '10271800', '1566884.75', '0', '8704915.25', NULL, NULL, '0', '10271800', 'USD', '2300', 'waiting', 'User', '2021-11-09 00:00:00', '2021-11-16 00:00:00', '2021-08-27 21:00:00', NULL, 'Not paid', NULL, NULL, '4466', '0', '3784.75', '681.25', '0.0', '0', '0.152542372881355', '4466'),
(285, '2021-0022', 176, '2021-08-30', '1110', '0', '0', '1110', '0.05', '0', '0', '1110', 'Tsh', NULL, 'waiting', 'User', '2021-11-20 00:00:00', '2021-11-27 00:00:00', '2021-08-29 21:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(286, '2021-0023', 167, '2021-08-30', '111110', '16948.98', '0', '94161.02', '0.0', '0', '0', '111110', 'Tsh', NULL, 'waiting', 'User', '2023-04-20 00:00:00', '2023-04-27 00:00:00', '2021-08-29 21:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(287, '2021-0024', 167, '2021-08-30', '13200', '2013.56', '0', '11186.44', '0.0', '0', '0', '13200', 'Tsh', NULL, 'waiting', 'User', '2023-04-20 00:00:00', '2023-04-27 00:00:00', '2021-08-29 21:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(288, '2021-0025', 167, '2021-08-30', '165000', '25169.49', '0', '139830.51', '0.0', '0', '0', '165000', 'Tsh', NULL, 'waiting', 'User', '2023-04-20 00:00:00', '2023-04-27 00:00:00', '2021-08-29 21:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(289, '2021-0026', 153, '2021-08-30', '10000', '1525.42', '0', '8474.58', '0.0', '0', '0', '10000', 'Tsh', NULL, 'waiting', 'User', '2022-12-16 00:00:00', '2022-12-23 00:00:00', '2021-08-29 21:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(290, '2021-0027', 161, '2021-08-30', '230000', '0', '0', '230000', '0.0', '0', '230000', '0', 'Tsh', NULL, 'closed', 'User', '2021-08-30 00:00:00', '2021-09-06 00:00:00', '2021-08-29 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(291, '2021-0028', 161, '2021-08-30', '690000', '0', '0', '690000', '0.0', '0', '690000', '0', 'Tsh', NULL, 'closed', 'Administrator', '2021-08-31 00:00:00', '2021-09-07 00:00:00', '2021-08-30 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(292, '2021-0029', 161, '2021-08-30', '100000', '0', '0', '100000', '0.0', '0', '100000', '0', 'Tsh', NULL, 'closed', 'User', '2021-08-31 00:00:00', '2021-09-07 00:00:00', '2021-08-29 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(293, '2021-0030', 161, '2021-08-30', '470000', '0', '0', '470000', '0.0', '0', '470000', '0', 'Tsh', NULL, 'closed', 'User', '2021-08-31 00:00:00', '2021-09-07 00:00:00', '2021-08-29 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(294, '2021-0031', 161, '2021-08-30', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-08-31 00:00:00', '2021-09-07 00:00:00', '2021-08-29 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(296, '2021-0032', 161, '2021-08-31', '230000', '0', '0', '230000', '0.0', '0', '230000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-03 00:00:00', '2021-09-10 00:00:00', '2021-09-02 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(297, '2021-0033', 161, '2021-08-31', '460000', '0', '0', '460000', '0.0', '0', '460000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-08 00:00:00', '2021-09-15 00:00:00', '2021-08-30 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(298, '2021-0034', 161, '2021-09-01', '460000', '0', '0', '460000', '0.0', '0', '460000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-08 00:00:00', '2021-09-15 00:00:00', '2021-08-31 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(299, '2021-0035', 161, '2021-09-03', '230000', '0', '0', '230000', '0.0', '0', '230000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-03 00:00:00', '2021-09-10 00:00:00', '2021-09-02 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(300, '2021-0036', 161, '2021-09-03', '230000', '0', '0', '230000', '0.0', '0', '230000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-03 00:00:00', '2021-09-10 00:00:00', '2021-09-02 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(301, '2021-0037', 161, '2021-09-06', '575000', '0', '0', '575000', '0.0', '0', '575000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-06 00:00:00', '2021-09-13 00:00:00', '2021-09-05 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(302, '2021-0038', 161, '2021-09-06', '230000', '0', '0', '230000', '0.0', '0', '230000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-06 00:00:00', '2021-09-13 00:00:00', '2021-09-05 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(303, '2021-0039', 161, '2021-09-11', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-11 00:00:00', '2021-09-18 00:00:00', '2021-09-10 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(304, '2021-0040', 161, '2021-09-11', '460000', '0', '0', '460000', '0.0', '0', '460000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-11 00:00:00', '2021-09-18 00:00:00', '2021-09-10 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(305, '2021-0041', 161, '2021-09-17', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-17 00:00:00', '2021-09-24 00:00:00', '2021-09-16 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(306, '2021-0042', 161, '2021-09-17', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-17 00:00:00', '2021-09-24 00:00:00', '2021-09-16 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(307, '2021-0043', 161, '2021-09-17', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-10-18 00:00:00', '2021-10-25 00:00:00', '2021-09-16 21:00:00', NULL, 'paid', '2022-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(308, '2021-0044', 161, '2021-09-20', '345000', '0', '0', '345000', '0.0', '0', '345000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-20 00:00:00', '2021-09-27 00:00:00', '2021-09-19 21:00:00', NULL, 'paid', '2022-07-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(309, '2021-0045', 161, '2021-09-21', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-09-28 00:00:00', '2021-10-05 00:00:00', '2021-09-20 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(310, '2021-0046', 161, '2021-09-30', '345000', '0', '0', '345000', '0.0', '0', '345000', '0', 'Tsh', NULL, 'closed', 'User', '2021-10-23 00:00:00', '2021-10-30 00:00:00', '2021-09-29 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(311, '2021-0047', 161, '2021-10-08', '435000', '0', '0', '435000', '0.0', '0', '435000', '0', 'Tsh', NULL, 'closed', 'User', '2021-10-23 00:00:00', '2021-10-30 00:00:00', '2021-10-07 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(312, '2021-0048', 161, '2021-10-08', '145000', '0', '0', '145000', '0.0', '0', '145000', '0', 'Tsh', NULL, 'closed', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-10-07 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(313, '2021-0049', 161, '2021-10-08', '145000', '0', '0', '145000', '0.0', '0', '145000', '0', 'Tsh', NULL, 'closed', 'User', '2021-10-08 00:00:00', '2021-10-15 00:00:00', '2021-10-07 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(314, '2021-0050', 161, '2021-10-11', '145000', '0', '0', '145000', '0.0', '0', '145000', '0', 'Tsh', NULL, 'closed', 'User', '2021-10-18 00:00:00', '2021-10-11', '2021-10-10 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(315, '2021-0050', 161, '2021-10-11', '290000', '0', '0', '290000', '0.0', '0', '290000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-14 00:00:00', '2022-03-21 00:00:00', '2021-10-10 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(316, '2021-0051', 161, '2021-10-13', '290000', '0', '0', '290000', '0.0', '0', '290000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-14 00:00:00', '2022-03-21 00:00:00', '2021-10-12 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(317, '2021-0052', 161, '2021-10-13', '224000', '0', '0', '224000', '0.0', '0', '224000', '0', 'Tsh', NULL, 'closed', 'User', '2021-10-23 00:00:00', '2021-10-30 00:00:00', '2021-10-12 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(318, '2021-0053', 161, '2021-10-13', '164000', '0', '0', '164000', '0.0', '0', '164000', '0', 'Tsh', NULL, 'closed', 'User', '2021-10-13 00:00:00', '2021-10-20 00:00:00', '2021-10-12 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(319, '2021-0054', 161, '2021-10-18', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-10-21 00:00:00', '2021-10-28 00:00:00', '2021-10-17 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(320, '2021-0055', 161, '2021-10-22', '145000', '0', '0', '145000', '0.0', '0', '145000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-14 00:00:00', '2022-03-21 00:00:00', '2021-10-21 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(322, '2021-0056', 161, '2021-11-09', '224000', '0', '0', '224000', '0.0', '0', '224000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-09 00:00:00', '2021-11-16 00:00:00', '2021-11-08 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(323, '2021-0057', 161, '2021-11-09', '224000', '0', '0', '224000', '0.0', '0', '224000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-14 00:00:00', '2022-03-21 00:00:00', '2021-11-10 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(324, '2021-0058', 161, '2021-11-09', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-14 00:00:00', '2022-03-21 00:00:00', '2021-11-08 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(325, '2021-0059', 161, '2021-11-09', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-14 00:00:00', '2022-03-21 00:00:00', '2021-11-17 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(326, '2021-0060', 161, '2021-11-09', '295000', '0', '0', '295000', '0.0', '0', '295000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-14 00:00:00', '2022-03-21 00:00:00', '2021-11-08 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(327, '2021-0061', 161, '2021-11-09', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-14 00:00:00', '2022-03-21 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(328, '2021-0062', 161, '2021-11-09', '224000', '0', '0', '224000', '0.0', '0', '224000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-18 00:00:00', '2021-11-25 00:00:00', '2021-11-10 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(329, '2021-0063', 161, '2021-11-09', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-18 00:00:00', '2021-11-25 00:00:00', '2021-11-17 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(330, '2021-0064', 161, '2021-11-09', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-18 00:00:00', '2021-11-25 00:00:00', '2021-11-17 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(331, '2021-0065', 161, '2021-11-11', '164000', '0', '0', '164000', '0.0', '0', '164000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-18 00:00:00', '2021-11-25 00:00:00', '2021-11-17 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(332, '2021-0066', 161, '2021-11-11', '145000', '0', '0', '145000', '0.0', '0', '145000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-11 00:00:00', '2021-11-18 00:00:00', '2021-11-10 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(333, '2021-0067', 161, '2021-11-12', '413150', '0', '0', '413150', '0.0', '0', '413150', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-18 00:00:00', '2021-11-25 00:00:00', '2021-11-17 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(334, '2021-0068', 161, '2021-11-17', '580000', '0', '0', '580000', '0.0', '0', '580000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-17 00:00:00', '2021-11-24 00:00:00', '2021-11-16 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(335, '2021-0069', 161, '2021-11-17', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-18 00:00:00', '2021-11-25 00:00:00', '2021-11-16 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(336, '2021-0070', 161, '2021-11-17', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-14 00:00:00', '2022-03-21 00:00:00', '2021-11-16 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(337, '2021-0071', 161, '2021-11-17', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-18 00:00:00', '2021-11-25 00:00:00', '2021-11-16 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(338, '2021-0072', 161, '2021-11-18', '145000', '0', '0', '145000', '0.0', '0', '145000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-18 00:00:00', '2021-11-25 00:00:00', '2021-11-17 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(339, '2021-0073', 161, '2021-11-18', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-18 00:00:00', '2021-11-25 00:00:00', '2021-11-17 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(340, '2021-0074', 161, '2021-11-20', '580000', '0', '0', '580000', '0.0', '0', '580000', '0', 'Tsh', NULL, 'closed', 'User', '2021-11-20 00:00:00', '2021-11-27 00:00:00', '2021-11-19 21:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(341, '2021-0075', 161, '2021-11-20', '246750', '0', '0', '246750', '0.0', '0', '246750', '0', 'Tsh', NULL, 'closed', 'Administrator', '2021-11-20 00:00:00', '2021-11-27 00:00:00', '2022-07-25 00:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(342, '2021-0076', 153, '2022-01-28', '500', '76.27', '0', '423.73', '0.05', '21.19', '0', '478.81', 'Tsh', NULL, 'waiting', 'User', '2023-08-29 00:00:00', '2023-09-05 00:00:00', '2022-01-28 08:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(343, '2021-0077', 161, '2022-01-28', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(344, '2021-0078', 161, '2022-01-28', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(345, '2021-0079', 161, '2022-01-28', '247725', '0', '0', '247725', '0.0', '0', '247725', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(346, '2021-0080', 161, '2022-01-28', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(347, '2021-0081', 161, '2022-01-28', '164000', '0', '0', '164000', '0.0', '0', '164000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(348, '2021-0082', 161, '2022-01-28', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(349, '2021-0083', 161, '2022-01-28', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(351, '2021-0084', 161, '2022-01-28', '164000', '0', '0', '164000', '0.0', '0', '164000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(352, '2021-0085', 161, '2022-01-28', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(353, '2021-0086', 161, '2022-01-28', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(354, '2021-0087', 161, '2022-01-28', '175000', '0', '0', '175000', '0.0', '0', '175000', '0', 'Tsh', NULL, 'closed', 'User', '2022-02-04 00:00:00', '2022-01-28', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(355, '2021-0088', 161, '2022-01-28', '175000', '0', '0', '175000', '0.0', '0', '175000', '0', 'Tsh', NULL, 'closed', 'User', '2022-02-04 00:00:00', '2022-01-28', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(356, '2021-0089', 161, '2022-01-28', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(357, '2021-0090', 161, '2022-01-28', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(358, '2021-0091', 161, '2022-01-28', '235000', '0', '0', '235000', '0.0', '0', '235000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-28 00:00:00', '2022-02-04 00:00:00', '2022-01-28 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(359, '2021-0092', 161, '2022-01-28', '164000', '0', '0', '164000', '0.0', '0', '164000', '0', 'Tsh', NULL, 'closed', 'User', '2022-01-29 00:00:00', '2022-02-05 00:00:00', '2022-01-29 08:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(360, '2021-0093', 155, '2022-02-01', '15000', '2288.14', '0', '12711.86', '0.0', '0', '0', '15000', 'Tsh', NULL, 'waiting', 'User', '2022-02-01 00:00:00', '2022-02-08 00:00:00', '2022-02-01 08:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(361, '2022-0094', 161, '2022-02-03', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2022-02-03 00:00:00', '2022-02-10 00:00:00', '2022-03-07 00:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(362, '2022-0095', 161, '2022-02-28', '115000', '0', '0', '115000', '0.05', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-11 00:00:00', '2022-03-18 00:00:00', '2022-03-07 00:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(363, '2022-0096', 161, '2022-03-07', '115000', '0', '0', '115000', '0.0', '0', '115000', '0', 'Tsh', NULL, 'closed', 'User', '2022-03-11 00:00:00', '2022-03-18 00:00:00', '2022-03-11 00:00:00', NULL, 'paid', '2022-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(365, '2022-0098', 196, '2022-05-31', '70000', '10677.97', '0', '59322.03', '0.0', '0', '0', '70000', 'Tsh', NULL, 'pending', 'User', '2022-05-31 00:00:00', '2022-06-07 00:00:00', '2022-05-31 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(366, '2022-0099', 196, '2022-05-31', '1350000', '205932.2', '0', '1144067.8', '0.0', '0', '0', '1350000', 'Tsh', NULL, 'waiting', 'User', '2022-05-31 00:00:00', '2022-06-07 00:00:00', '2022-05-31 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(367, '2022-0100', 155, '2022-07-01', '175000', '26694.92', '0', '148305.08', '0.0', '0', '0', '175000', 'Tsh', NULL, 'waiting', 'User', '2023-04-20 00:00:00', '2023-04-27 00:00:00', '2022-07-01 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(368, '2022-0101', 203, '2022-07-08', '706380', '107752.88', '0', '598627.12', '0.05', '29931.36', '0', '676448.64', 'Tsh', NULL, 'waiting', 'User', '2022-08-22 00:00:00', '2022-08-29 00:00:00', '2022-07-08 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(369, '2022-0102', 161, '2022-11-29', '25000', '0', '0', '25000', '0.0', '0', '0', '25000', 'Tsh', NULL, 'waiting', 'User', '2022-11-29 00:00:00', '2022-12-06 00:00:00', '2022-11-29 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(370, '2022-0103', 161, '2022-12-16', '500000', '0', '0', '500000', '0.0', '0', '0', '500000', 'Tsh', NULL, 'waiting', 'User', '2022-12-22 00:00:00', '2022-12-29 00:00:00', '2022-12-22 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(371, '2022-0104', 161, '2022-12-16', '500000', '0', '0', '500000', '0.0', '0', '0', '500000', 'Tsh', NULL, 'waiting', 'User', '2022-12-22 00:00:00', '2022-12-29 00:00:00', '2022-12-22 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(372, '2022-0105', 161, '2022-12-16', '500000', '0', '0', '500000', '0.0', '0', '0', '500000', 'Tsh', NULL, 'waiting', 'User', '2022-12-16 00:00:00', '2022-12-23 00:00:00', '2022-12-16 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(373, '2022-0106', 161, '2022-12-19', '500000', '0', '0', '500000', '0.0', '0', '0', '500000', 'Tsh', NULL, 'waiting', 'User', '2022-12-19 00:00:00', '2022-12-26 00:00:00', '2022-12-19 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(374, '2022-0107', 161, '2022-12-19', '500000', '0', '0', '500000', '0.0', '0', '0', '500000', 'Tsh', NULL, 'waiting', 'User', '2022-12-19 00:00:00', '2022-12-26 00:00:00', '2022-12-19 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(375, '2022-0108', 161, '2022-12-19', '500000', '0', '0', '500000', '0.0', '0', '0', '500000', 'Tsh', NULL, 'waiting', 'User', '2022-12-19 00:00:00', '2022-12-26 00:00:00', '2022-12-19 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(376, '2022-0109', 161, '2022-12-22', '500000', '0', '0', '500000', '0.0', '0', '0', '500000', 'Tsh', NULL, 'waiting', 'User', '2022-12-22 00:00:00', '2022-12-29 00:00:00', '2022-12-22 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(377, '2023-0110', 223, '2023-03-17', '0', '0', '0', '0', '0.05', '0', '0', '0', 'Tsh', NULL, 'waiting', 'Administrator', '2023-04-19 00:00:00', '2023-04-26 00:00:00', '2023-03-17 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(378, '2023-0111', 224, '2023-03-17', '0', '0', '0', '0', '0.05', '0', '0', '0', 'Tsh', NULL, 'waiting', 'Administrator', '2023-04-20 00:00:00', '2023-04-27 00:00:00', '2023-03-17 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(379, '2023-0112', 155, '2023-03-18', '25', '0', '0', '25', '0.0', '0', '0', '25', 'Tsh', NULL, 'waiting', 'User', '2023-08-29 00:00:00', '2023-09-05 00:00:00', '2023-04-20 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL),
(380, '2023-0113', 153, '2023-04-20', '10', '1.53', '0', '8.47', '0.0', '0', '0', '10', 'Tsh', NULL, 'waiting', 'User', '2023-04-20 00:00:00', '2023-04-27 00:00:00', '2023-04-20 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.152542372881355', NULL),
(381, '2023-0114', 244, '2023-11-21', '6000000', '0', '0', '6000000', '0.0', '0', '0', '6000000', 'Tsh', NULL, 'waiting', 'User', '2023-11-27 00:00:00', '2023-12-04 00:00:00', '2023-11-27 00:00:00', NULL, 'Not paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tin_number` varchar(50) DEFAULT NULL,
  `vrn` varchar(50) DEFAULT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `staff_type` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `tin_number`, `vrn`, `address`, `email`, `phone`, `staff_type`, `status`, `created_at`, `updated_at`) VALUES
(11, 'ALISTAIR JAMES COMPANY LTD', '5555', '402586V', 'DAR ES SALAAM', 'kevo93mushy@gmail.com', '0756362153', 'staffing', 'active', NULL, NULL),
(13, 'DEGE STATIONARY', '000-000-000', '40-001622-C', 'DAR ES SALAAM', 'superadministrator@app.com', '0739377125', 'fumigation', 'active', NULL, NULL),
(14, 'TEXTILE MILLS', '101-437-493', 'N/A', 'P.O. BOX 22745 DAR ES SALAAM', 'info@nidatextiles.com', '0755418286', 'fumigation', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'kelvin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `to_where` varchar(50) DEFAULT NULL,
  `staff_type` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `truck`
--

CREATE TABLE `truck` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `truck_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Superadministrator', 'ngitoria1@gmail.com', NULL, '$2y$10$geXQX2df1YTXDaONmiIcZuJSkV/MUkVKu6yT7ughGCCvf6FgxOMC.', NULL, NULL, NULL, '2021-03-18 23:15:38', '2021-03-18 23:15:38', 'staff'),
(2, 'Administrator', 'rngitoria@gmail.com', NULL, '$2y$10$geXQX2df1YTXDaONmiIcZuJSkV/MUkVKu6yT7ughGCCvf6FgxOMC.', NULL, NULL, '4ftobXA0cOi6hLjsDpTTDeqCautU2VrTmOQEpdcOFxIOQtiKkQidvfeVsr2U', '2021-03-18 23:15:41', '2021-03-18 23:15:41', 'staff'),
(3, 'User', 'janethlubuva3@gmail.com', NULL, '$2y$10$geXQX2df1YTXDaONmiIcZuJSkV/MUkVKu6yT7ughGCCvf6FgxOMC.', NULL, NULL, 'o9hEcwB9wSme7OVkaX85EygB4etFhvWOQUM29z8rJTxHtNeffDs2bdrQbt1w', '2021-03-18 23:15:42', '2021-03-19 19:56:35', 'staff'),
(4, 'Role Name', 'role_name@app.com', NULL, '$2y$10$JAywym1QLqiWC1qBrTF4FeSp5/I2a6RilPJeOL9Npkynt22gLysFG', NULL, NULL, NULL, '2021-03-18 23:15:45', '2021-03-18 23:15:45', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_staff`
--
ALTER TABLE `account_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_staff_ibfk_3` (`product_id`),
  ADD KEY `account_staff_ibfk_1` (`invoice_id`),
  ADD KEY `account_staff_ibfk_2` (`invoice2_id`);

--
-- Indexes for table `all_purchase`
--
ALTER TABLE `all_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `all_purchase_ibfk_1` (`purchase_id`);

--
-- Indexes for table `all_purchase1`
--
ALTER TABLE `all_purchase1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `all_purchase1_ibfk_1` (`purchase_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_furm_id_foreign` (`furm_id`),
  ADD KEY `company_task_id_foreign` (`task_id`);

--
-- Indexes for table `company_infor`
--
ALTER TABLE `company_infor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`id`),
  ADD KEY `container_staffing_id_foreign` (`staffing_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposite`
--
ALTER TABLE `deposite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposite_ibfk_1` (`account_id`),
  ADD KEY `deposite_ibfk_2` (`invoice_id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expensive`
--
ALTER TABLE `expensive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expensive_task_id_foreign` (`task_id`),
  ADD KEY `expensive_furm_id_foreign` (`furm_id`);

--
-- Indexes for table `expensive_staff`
--
ALTER TABLE `expensive_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expensive_staff_ibfk_1` (`account_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `farm`
--
ALTER TABLE `farm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farm_task_id_foreign` (`task_id`);

--
-- Indexes for table `fumigation`
--
ALTER TABLE `fumigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fumigation_company_id_foreign` (`company_id`),
  ADD KEY `fumigation_truck_id_foreign` (`truck_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_staff_id_foreign` (`staff_id`),
  ADD KEY `invoice_company_id_foreign` (`company_id`),
  ADD KEY `invoice_ibfk_1` (`invoice_fumigation`);

--
-- Indexes for table `invoice_fumigation`
--
ALTER TABLE `invoice_fumigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_fumigation_ibfk_1` (`company_id`);

--
-- Indexes for table `labour`
--
ALTER TABLE `labour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `invoice2_id` (`invoice2_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_ibfk_1` (`invoice_id`),
  ADD KEY `payment_ibfk_2` (`invoice2_id`),
  ADD KEY `payment_staffing_id_foreign` (`staffing_id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_in`
--
ALTER TABLE `product_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_in_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_out`
--
ALTER TABLE `product_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_out_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_invoice_ibfk_1` (`account_id`),
  ADD KEY `suppliers_id` (`suppliers_id`);

--
-- Indexes for table `purchase_invoice1`
--
ALTER TABLE `purchase_invoice1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_invoice1_ibfk_1` (`account_id`),
  ADD KEY `purchase_invoice1_ibfk_2` (`suppliers_id`);

--
-- Indexes for table `purchase_payment`
--
ALTER TABLE `purchase_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `purchase2_id` (`purchase2_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffing`
--
ALTER TABLE `staffing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffing_company_id_foreign` (`company_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `truck`
--
ALTER TABLE `truck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truck_company_id_foreign` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_staff`
--
ALTER TABLE `account_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `all_purchase`
--
ALTER TABLE `all_purchase`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `all_purchase1`
--
ALTER TABLE `all_purchase1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_infor`
--
ALTER TABLE `company_infor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `container`
--
ALTER TABLE `container`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposite`
--
ALTER TABLE `deposite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expensive`
--
ALTER TABLE `expensive`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expensive_staff`
--
ALTER TABLE `expensive_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farm`
--
ALTER TABLE `farm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fumigation`
--
ALTER TABLE `fumigation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6853;

--
-- AUTO_INCREMENT for table `invoice_fumigation`
--
ALTER TABLE `invoice_fumigation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;

--
-- AUTO_INCREMENT for table `labour`
--
ALTER TABLE `labour`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_in`
--
ALTER TABLE `product_in`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_out`
--
ALTER TABLE `product_out`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `purchase_invoice1`
--
ALTER TABLE `purchase_invoice1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `purchase_payment`
--
ALTER TABLE `purchase_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffing`
--
ALTER TABLE `staffing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `truck`
--
ALTER TABLE `truck`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_staff`
--
ALTER TABLE `account_staff`
  ADD CONSTRAINT `account_staff_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `staffing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_staff_ibfk_2` FOREIGN KEY (`invoice2_id`) REFERENCES `invoice_fumigation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_staff_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `all_purchase`
--
ALTER TABLE `all_purchase`
  ADD CONSTRAINT `all_purchase_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchase_invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `all_purchase1`
--
ALTER TABLE `all_purchase1`
  ADD CONSTRAINT `all_purchase1_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchase_invoice1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_furm_id_foreign` FOREIGN KEY (`furm_id`) REFERENCES `farm` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `container`
--
ALTER TABLE `container`
  ADD CONSTRAINT `container_staffing_id_foreign` FOREIGN KEY (`staffing_id`) REFERENCES `staffing` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deposite`
--
ALTER TABLE `deposite`
  ADD CONSTRAINT `deposite_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_staff` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `deposite_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `staffing` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `expensive`
--
ALTER TABLE `expensive`
  ADD CONSTRAINT `expensive_furm_id_foreign` FOREIGN KEY (`furm_id`) REFERENCES `farm` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expensive_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expensive_staff`
--
ALTER TABLE `expensive_staff`
  ADD CONSTRAINT `expensive_staff_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_staff` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `farm`
--
ALTER TABLE `farm`
  ADD CONSTRAINT `farm_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fumigation`
--
ALTER TABLE `fumigation`
  ADD CONSTRAINT `fumigation_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company_infor` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fumigation_truck_id_foreign` FOREIGN KEY (`truck_id`) REFERENCES `truck` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company_infor` (`id`),
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`invoice_fumigation`) REFERENCES `invoice_fumigation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staffing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_fumigation`
--
ALTER TABLE `invoice_fumigation`
  ADD CONSTRAINT `invoice_fumigation_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_infor` (`id`);

--
-- Constraints for table `labour`
--
ALTER TABLE `labour`
  ADD CONSTRAINT `labour_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `labour_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `labour_ibfk_3` FOREIGN KEY (`invoice2_id`) REFERENCES `invoice_fumigation` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice_fumigation` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`invoice2_id`) REFERENCES `invoice_fumigation` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_staffing_id_foreign` FOREIGN KEY (`staffing_id`) REFERENCES `staffing` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_in`
--
ALTER TABLE `product_in`
  ADD CONSTRAINT `product_in_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_out`
--
ALTER TABLE `product_out`
  ADD CONSTRAINT `product_out_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  ADD CONSTRAINT `purchase_invoice_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_staff` (`id`),
  ADD CONSTRAINT `purchase_invoice_ibfk_2` FOREIGN KEY (`suppliers_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `purchase_invoice1`
--
ALTER TABLE `purchase_invoice1`
  ADD CONSTRAINT `purchase_invoice1_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_staff` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_invoice1_ibfk_2` FOREIGN KEY (`suppliers_id`) REFERENCES `suppliers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `purchase_payment`
--
ALTER TABLE `purchase_payment`
  ADD CONSTRAINT `purchase_payment_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchase_invoice` (`id`),
  ADD CONSTRAINT `purchase_payment_ibfk_2` FOREIGN KEY (`purchase2_id`) REFERENCES `purchase_invoice1` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staffing`
--
ALTER TABLE `staffing`
  ADD CONSTRAINT `staffing_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company_infor` (`id`);

--
-- Constraints for table `transfer`
--
ALTER TABLE `transfer`
  ADD CONSTRAINT `transfer_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `truck`
--
ALTER TABLE `truck`
  ADD CONSTRAINT `truck_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company_infor` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
