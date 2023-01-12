-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 03:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'c20ad4d76fe97759aa27a0c99bff6710', 'admin@sciastra.com', 1, '2021-05-26 18:30:00', '2023-01-12 14:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(11, 'test', 's', '2023-01-12 02:02:32', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', 'SciAstra education private ltd. \r\n<br>\r\nSciAstra is the biggest community of science scholars in India for IISER Aptitude test (IAT), National Entrance Screening Test (NEST), ISI, CMI, and IACS.', '2021-06-29 18:30:00', '2023-01-12 09:59:36'),
(2, 'contactus', 'Contact Details', '<p><b>Address :&nbsp; </b>SciAstra Education Pvt Ltd, Bhubaneswar, Odisha</p>\r\n<p><b>Phone Number : </b>+91 - 00000000</p>\r\n<p><b>Email - id : </b>contact@sciastra.com</p>', '2021-06-29 18:30:00', '2023-01-12 12:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(15, 'test1', 11, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam accumsan sodales lacinia. Etiam sed nisi dapibus, commodo leo eget, condimentum diam. Nunc sed mi libero. Sed non nisl hendrerit, pretium tellus quis, bibendum mauris. Aliquam lacinia sit amet purus non euismod. Mauris in ex a dui blandit ornare eget eget dui. Suspendisse nisi urna, gravida a orci sit amet, sagittis vestibulum tellus. Pellentesque ullamcorper dolor quis malesuada pretium. Vivamus non auctor lorem, vitae aliquet metus. Quisque porta arcu arcu. Cras nec metus posuere, efficitur quam in, hendrerit urna.\r\n\r\nCras in mauris a urna placerat rutrum vel et metus. Vestibulum pulvinar euismod mi, eget lacinia mi. Nulla consectetur in purus vel commodo. Quisque ultrices diam sollicitudin quam vulputate, id vulputate lacus hendrerit. In ex tellus, commodo et hendrerit at, egestas a augue. Cras elit nisl, dignissim ac ex ac, consequat condimentum nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur lacinia eros nulla, a rhoncus ante ullamcorper nec. Ut tempor, urna in mollis porttitor, mi libero aliquet risus, non suscipit nisl velit at risus. In hac habitasse platea dictumst.\r\n\r\nMorbi pulvinar quam ut metus faucibus, iaculis dignissim felis egestas. Nam tellus arcu, laoreet pulvinar gravida sed, faucibus non turpis. Curabitur quis dui rutrum, aliquam eros vel, egestas ex. Proin a sapien ac magna tincidunt ultricies. Pellentesque tortor ante, eleifend id erat quis, placerat ultricies nibh. Phasellus condimentum molestie sapien quis laoreet. Integer maximus vel ante non vehicula. Aenean mollis commodo quam, at accumsan augue rutrum ac. Aenean et ullamcorper risus. Maecenas semper elit ut orci ornare feugiat. Duis eu laoreet sem. Duis elementum vestibulum sapien, id ornare dolor vestibulum sit amet. Proin a lacus ut ipsum imperdiet porttitor. Phasellus ullamcorper nisi a rhoncus fermentum. Aliquam erat volutpat. In varius maximus risus, a commodo justo sodales vitae.\r\n\r\nFusce aliquet, nunc a varius aliquam, tortor urna gravida sapien, id gravida tortor eros et nibh. In varius scelerisque magna quis viverra. Curabitur tincidunt volutpat sem. Mauris ut quam at mauris tincidunt convallis in a massa. Suspendisse eget urna posuere, pharetra ex non, pellentesque dolor. Etiam nec eleifend sapien, eu interdum augue. Aenean consectetur, dui sit amet pretium mattis, magna nunc elementum ipsum, eget viverra libero urna nec justo. Nullam ultrices, odio vel bibendum bibendum, elit mauris venenatis magna, quis gravida risus neque sollicitudin dolor.\r\n\r\nNullam eget lorem sit amet nisi vulputate rhoncus. In non rutrum nisl, ac dictum lectus. Fusce vulputate augue non nulla imperdiet, nec ultricies velit efficitur. Nam sed interdum sapien, et tempus ipsum. Cras molestie tellus non pharetra molestie. Curabitur facilisis vitae augue pellentesque dapibus. Curabitur scelerisque sapien eu dignissim vestibulum. Aenean vestibulum eu eros sed fringilla. Nullam vehicula, orci vitae rhoncus fermentum, mauris nisi sagittis dui, volutpat blandit mi nisl id ex. Vivamus nec diam consequat, dapibus ligula vitae, tempor erat. Quisque iaculis placerat enim, et vehicula orci commodo quis. Suspendisse potenti.\r\n\r\nNam sapien risus, fringilla eget finibus nec, accumsan ac dolor. Nulla suscipit massa vitae mauris facilisis elementum. Nam rutrum sem eu sem tincidunt dignissim. Donec eu est condimentum, mattis urna eu, tincidunt dui. Aenean nisi dolor, sollicitudin at mollis at, tincidunt eget nisi. Sed et tellus eget odio ultrices gravida. Nullam lectus est, ornare at accumsan vitae, mattis eu mauris. Morbi facilisis, mi nec pulvinar laoreet, tellus quam dictum purus, ac convallis nisi lectus vel nulla. Nunc porta leo sagittis luctus sagittis. Maecenas efficitur nulla sapien, non molestie purus imperdiet ac. Nulla elit erat, semper in mi in, tempus ultrices purus. Aenean dui mi, pharetra id cursus id, elementum ac tellus. Aliquam ut odio ac ipsum bibendum aliquam ut commodo neque. Vivamus', '2023-01-12 02:03:00', '2023-01-12 12:51:20', 1, 'test1', '287fbd44234a1163adbf8875c1b9977b.png', 61, 'admin', 'admin'),
(16, 'test2', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 12:51:16', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 6, 'admin', NULL),
(17, 'test3', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:51:40', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 5, 'admin', NULL),
(18, 'test4', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:51:44', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 5, 'admin', NULL),
(19, 'test5', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:51:48', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 5, 'admin', NULL),
(20, 'test6', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:51:51', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 6, 'admin', NULL),
(21, 'test6', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:51:53', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 5, 'admin', NULL),
(22, 'test7', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 12:17:26', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 7, 'admin', NULL),
(23, 'test8', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:52:01', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 5, 'admin', NULL),
(24, 'test9', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:52:04', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 5, 'admin', NULL),
(25, 'test10', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:52:07', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 5, 'admin', NULL),
(26, 'test11', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:52:11', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 5, 'admin', NULL),
(27, 'test12', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:52:13', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 5, 'admin', NULL),
(28, 'test13', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 12:09:34', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 6, 'admin', NULL),
(29, 'test14', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 09:52:19', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 5, 'admin', NULL),
(30, 'test15', 11, 13, 'test', '2023-01-12 02:03:00', '2023-01-12 12:23:41', 1, 'test', '287fbd44234a1163adbf8875c1b9977b.png', 12, 'admin', NULL),
(31, 'test 88', 11, 13, '<h1 class=\"s-text-red\">hehe</>', '2023-01-12 12:22:11', '2023-01-12 12:22:16', 1, 'test-88', '287fbd44234a1163adbf8875c1b9977b.png', 1, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsite`
--

CREATE TABLE `tblsite` (
  `id` int(11) NOT NULL,
  `siteTitle` varchar(255) DEFAULT NULL,
  `siteLogo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsite`
--

INSERT INTO `tblsite` (`id`, `siteTitle`, `siteLogo`) VALUES
(1, 'SciAstra Blog page', '017bc8aa73225060d91c876476b70ba31673460610.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(13, 11, 'test', 'as', '2023-01-12 02:02:43', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `fullName` varchar(120) DEFAULT NULL,
  `subscriberEmail` varchar(125) DEFAULT NULL,
  `subscriptionDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `fullName`, `subscriberEmail`, `subscriptionDate`) VALUES
(5, 'subbrat', 'm.subbrat@outlook.com', '2023-01-12 10:36:12'),
(6, 'subbrat', 'subrat@sub.sub', '2023-01-12 10:37:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsite`
--
ALTER TABLE `tblsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblsite`
--
ALTER TABLE `tblsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
