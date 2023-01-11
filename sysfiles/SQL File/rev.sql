-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 06:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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
(1, 'admin', 'c20ad4d76fe97759aa27a0c99bff6710', 'admin@sciastra.com', 1, '2021-05-26 18:30:00', '2023-01-08 14:05:44');

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
(11, 'test', 'test', '2023-01-09 03:52:32', NULL, 1),
(12, 'test', 'test', '2023-01-09 05:23:28', NULL, 1);

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
(1, 'aboutus', 'About News Portal', '<div class=\"s6-text-red s6-large\">\r\nInteger vestibulum enim at faucibus egestas. In urna quam, blandit sed neque at, ullamcorper lacinia odio. Cras vel tempor elit, sed efficitur erat. Morbi dictum placerat turpis et dignissim. Sed ultrices, odio vel euismod eleifend, dui elit ultricies arcu, at tempor est arcu egestas elit. Donec eu ligula ut dui cursus consequat. Etiam vestibulum sagittis lectus et bibendum. In imperdiet neque est. Duis erat metus, scelerisque a orci at, imperdiet tincidunt nisi. Curabitur luctus orci ut felis dictum, eget efficitur felis iaculis. Nunc auctor, sem eget pretium molestie, mi ex dictum purus, sed vestibulum purus tellus in sem. Phasellus interdum elementum rhoncus. Etiam euismod, odio ut porta tristique, nunc mauris pretium dui, id sagittis quam est ut purus. Ut dictum risus vel ipsum consectetur lacinia. Phasellus pulvinar ornare diam, id hendrerit magna fermentum eu. Ut eget vulputate lorem.\r\n</div>', '2021-06-29 18:30:00', '2023-01-08 15:21:34'),
(2, 'contactus', 'Contact Back', '<p><b>Address :&nbsp; </b>NISER • Bhubaneswar, Odisha</p>\r\n<p><b>Phone Number : </b>+91 - 0000000000</p>\r\n<p><b>Email - id : </b>test@sciastra.com</p>', '2021-06-29 18:30:00', '2023-01-08 15:00:03');

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
(1, 'test 1', 13, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas efficitur vulputate finibus. Donec turpis eros, ultrices vitae nisi id, iaculis semper urna. Aliquam sed purus luctus, consectetur lacus vitae, pellentesque neque. Phasellus sed egestas ipsum, vitae cursus ligula. Mauris gravida justo et commodo lobortis. Donec ac aliquet purus. Vivamus euismod sed ante in porta. Praesent cursus et ex ut convallis.\r\n<br>\r\nSuspendisse consectetur purus a orci imperdiet viverra. Suspendisse potenti. Suspendisse ac ultrices nisi. Integer blandit id velit in pretium. Mauris ullamcorper erat id leo lacinia tincidunt. Nullam ipsum leo, maximus at placerat ac, ultrices quis eros. Morbi hendrerit urna orci, ac pharetra libero interdum eu. Quisque ultrices nunc eu nibh eleifend ornare. Nam semper nunc et hendrerit bibendum. Cras risus ex, aliquet sed nulla a, bibendum varius justo. Cras dictum lectus id pharetra dapibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis at felis ipsum. Aenean interdum accumsan mollis. Maecenas vitae felis imperdiet, sodales orci at, pharetra felis.\r\n<br>\r\nCras sit amet metus at arcu faucibus convallis. Fusce eget ullamcorper mi. Quisque pellentesque faucibus pulvinar. Nam leo mauris, dictum vel sodales eget, feugiat in leo. Phasellus malesuada felis nec turpis tristique, sit amet congue risus ultrices. Vivamus quis fringilla nibh, a convallis ex. Aliquam eu suscipit est. Praesent imperdiet nulla vitae elit finibus varius id sit amet urna.\r\n<br>\r\nVivamus erat velit, mattis tristique aliquet in, semper ut neque. Etiam non aliquam ipsum. Nunc feugiat augue at euismod viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris metus augue, pretium non purus a, venenatis lacinia nunc. Vestibulum cursus iaculis sem vitae faucibus. Morbi varius, augue sit amet laoreet placerat, risus magna tempor ipsum, at fringilla justo augue eget felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis libero vel odio cursus congue. Etiam non facilisis nisi. Suspendisse feugiat, lacus in ultrices auctor, diam turpis euismod ante, ac pellentesque leo libero non dui.\r\n<br>\r\nMauris pulvinar vehicula ex in sodales. Donec pharetra odio ac velit accumsan, at consequat mi posuere. Proin in eros vehicula lectus lobortis iaculis. Mauris ut mi vitae est interdum rhoncus et at nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin tempus risus nec urna vehicula rhoncus nec non nibh. Nulla varius tortor ultrices sem eleifend, id posuere lorem tempor. Ut tincidunt libero velit, sed rutrum sem pharetra ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n<br>\r\nDonec non velit ac diam pellentesque pretium. Phasellus maximus, turpis et aliquet luctus, lectus est molestie quam, quis pellentesque turpis magna vitae urna. In ut quam ut neque facilisis venenatis. Vestibulum viverra libero nec orci gravida, eu molestie orci ullamcorper. Vivamus lacinia fermentum vestibulum. Maecenas laoreet quam mi, nec rutrum nisl efficitur quis. In vulputate hendrerit ipsum, blandit auctor neque suscipit et. Duis euismod iaculis enim. Aenean et arcu dictum, accumsan dui elementum, vestibulum neque.\r\n<br>\r\nInteger vestibulum enim at faucibus egestas. In urna quam, blandit sed neque at, ullamcorper lacinia odio. Cras vel tempor elit, sed efficitur erat. Morbi dictum placerat turpis et dignissim. Sed ultrices, odio vel euismod eleifend, dui elit ultricies arcu, at tempor est arcu egestas elit. Donec eu ligula ut dui cursus consequat. Etiam vestibulum sagittis lectus et bibendum. In imperdiet neque est. Duis erat metus, scelerisque a orci at, imperdiet tincidunt nisi. Curabitur luctus orci ut felis dictum, eget efficitur felis iaculis. Nunc auctor, sem eget pretium molestie, mi ex dictum purus, sed vestibulum purus tellus in sem. Phasellus interdum elementum rhoncus. Etiam euismod, odio ut porta tristique, nunc mauris pretium dui, id sagittis quam est ut purus. Ut dictum risus vel ipsum consectetur lacinia. Phasellus pulvinar ornare diam, id hendrerit magna fermentum eu. Ut eget vulputate lorem.\r\n<br>\r\nVestibulum tincidunt orci ex, at dapibus odio ullamcorper at. Fusce nec sapien et magna ullamcorper congue. Vestibulum venenatis, leo in tempus consequat, enim turpis ultricies lectus, ac facilisis nunc est sit amet risus. Aenean fringilla cursus urna, sit amet pharetra diam aliquet et. Nulla suscipit aliquet lorem, et vehicula nisi suscipit vel. Pellentesque nec eleifend sapien. Vivamus a odio ac lacus consequat convallis. Ut in enim molestie, cursus nisi id, faucibus leo. Sed maximus augue sed sapien convallis, non aliquet massa sagittis. Vivamus eu nulla eget lorem tincidunt porta sed euismod quam. Quisque rhoncus imperdiet commodo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean non mauris tellus. Mauris iaculis accumsan eros. Maecenas interdum ligula tristique mi malesuada imperdiet.\r\n<br>\r\nSed purus sem, porta vitae metus id, tincidunt feugiat ipsum. Praesent dapibus elit id sem commodo, eu laoreet purus mollis. Proin et sagittis eros, a fringilla mauris. Vivamus et lectus ut ex tincidunt convallis et vitae nisl. Etiam et urna facilisis, pulvinar felis in, fermentum lorem. Sed feugiat ipsum sit amet ex.', '2023-01-08 14:48:19', '2023-01-09 02:56:19', 1, 'test-1', '366e9e4ca1165eea90adb4eb87c4f210.jpg', 1, 'admin', NULL),
(2, 'test 2', 13, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas efficitur vulputate finibus. Donec turpis eros, ultrices vitae nisi id, iaculis semper urna. Aliquam sed purus luctus, consectetur lacus vitae, pellentesque neque. Phasellus sed egestas ipsum, vitae cursus ligula. Mauris gravida justo et commodo lobortis. Donec ac aliquet purus. Vivamus euismod sed ante in porta. Praesent cursus et ex ut convallis.\r\n<br>\r\nSuspendisse consectetur purus a orci imperdiet viverra. Suspendisse potenti. Suspendisse ac ultrices nisi. Integer blandit id velit in pretium. Mauris ullamcorper erat id leo lacinia tincidunt. Nullam ipsum leo, maximus at placerat ac, ultrices quis eros. Morbi hendrerit urna orci, ac pharetra libero interdum eu. Quisque ultrices nunc eu nibh eleifend ornare. Nam semper nunc et hendrerit bibendum. Cras risus ex, aliquet sed nulla a, bibendum varius justo. Cras dictum lectus id pharetra dapibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis at felis ipsum. Aenean interdum accumsan mollis. Maecenas vitae felis imperdiet, sodales orci at, pharetra felis.\r\n<br>\r\nCras sit amet metus at arcu faucibus convallis. Fusce eget ullamcorper mi. Quisque pellentesque faucibus pulvinar. Nam leo mauris, dictum vel sodales eget, feugiat in leo. Phasellus malesuada felis nec turpis tristique, sit amet congue risus ultrices. Vivamus quis fringilla nibh, a convallis ex. Aliquam eu suscipit est. Praesent imperdiet nulla vitae elit finibus varius id sit amet urna.\r\n<br>\r\nVivamus erat velit, mattis tristique aliquet in, semper ut neque. Etiam non aliquam ipsum. Nunc feugiat augue at euismod viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris metus augue, pretium non purus a, venenatis lacinia nunc. Vestibulum cursus iaculis sem vitae faucibus. Morbi varius, augue sit amet laoreet placerat, risus magna tempor ipsum, at fringilla justo augue eget felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis libero vel odio cursus congue. Etiam non facilisis nisi. Suspendisse feugiat, lacus in ultrices auctor, diam turpis euismod ante, ac pellentesque leo libero non dui.\r\n<br>\r\nMauris pulvinar vehicula ex in sodales. Donec pharetra odio ac velit accumsan, at consequat mi posuere. Proin in eros vehicula lectus lobortis iaculis. Mauris ut mi vitae est interdum rhoncus et at nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin tempus risus nec urna vehicula rhoncus nec non nibh. Nulla varius tortor ultrices sem eleifend, id posuere lorem tempor. Ut tincidunt libero velit, sed rutrum sem pharetra ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n<br>\r\nDonec non velit ac diam pellentesque pretium. Phasellus maximus, turpis et aliquet luctus, lectus est molestie quam, quis pellentesque turpis magna vitae urna. In ut quam ut neque facilisis venenatis. Vestibulum viverra libero nec orci gravida, eu molestie orci ullamcorper. Vivamus lacinia fermentum vestibulum. Maecenas laoreet quam mi, nec rutrum nisl efficitur quis. In vulputate hendrerit ipsum, blandit auctor neque suscipit et. Duis euismod iaculis enim. Aenean et arcu dictum, accumsan dui elementum, vestibulum neque.\r\n<br>\r\nInteger vestibulum enim at faucibus egestas. In urna quam, blandit sed neque at, ullamcorper lacinia odio. Cras vel tempor elit, sed efficitur erat. Morbi dictum placerat turpis et dignissim. Sed ultrices, odio vel euismod eleifend, dui elit ultricies arcu, at tempor est arcu egestas elit. Donec eu ligula ut dui cursus consequat. Etiam vestibulum sagittis lectus et bibendum. In imperdiet neque est. Duis erat metus, scelerisque a orci at, imperdiet tincidunt nisi. Curabitur luctus orci ut felis dictum, eget efficitur felis iaculis. Nunc auctor, sem eget pretium molestie, mi ex dictum purus, sed vestibulum purus tellus in sem. Phasellus interdum elementum rhoncus. Etiam euismod, odio ut porta tristique, nunc mauris pretium dui, id sagittis quam est ut purus. Ut dictum risus vel ipsum consectetur lacinia. Phasellus pulvinar ornare diam, id hendrerit magna fermentum eu. Ut eget vulputate lorem.\r\n<br>\r\nVestibulum tincidunt orci ex, at dapibus odio ullamcorper at. Fusce nec sapien et magna ullamcorper congue. Vestibulum venenatis, leo in tempus consequat, enim turpis ultricies lectus, ac facilisis nunc est sit amet risus. Aenean fringilla cursus urna, sit amet pharetra diam aliquet et. Nulla suscipit aliquet lorem, et vehicula nisi suscipit vel. Pellentesque nec eleifend sapien. Vivamus a odio ac lacus consequat convallis. Ut in enim molestie, cursus nisi id, faucibus leo. Sed maximus augue sed sapien convallis, non aliquet massa sagittis. Vivamus eu nulla eget lorem tincidunt porta sed euismod quam. Quisque rhoncus imperdiet commodo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean non mauris tellus. Mauris iaculis accumsan eros. Maecenas interdum ligula tristique mi malesuada imperdiet.\r\n<br>\r\nSed purus sem, porta vitae metus id, tincidunt feugiat ipsum. Praesent dapibus elit id sem commodo, eu laoreet purus mollis. Proin et sagittis eros, a fringilla mauris. Vivamus et lectus ut ex tincidunt convallis et vitae nisl. Etiam et urna facilisis, pulvinar felis in, fermentum lorem. Sed feugiat ipsum sit amet ex.', '2023-01-08 14:48:19', '2023-01-08 14:49:37', 1, 'test-1', '366e9e4ca1165eea90adb4eb87c4f210.jpg', NULL, 'admin', NULL),
(3, 'test 3', 13, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas efficitur vulputate finibus. Donec turpis eros, ultrices vitae nisi id, iaculis semper urna. Aliquam sed purus luctus, consectetur lacus vitae, pellentesque neque. Phasellus sed egestas ipsum, vitae cursus ligula. Mauris gravida justo et commodo lobortis. Donec ac aliquet purus. Vivamus euismod sed ante in porta. Praesent cursus et ex ut convallis.\r\n<br>\r\nSuspendisse consectetur purus a orci imperdiet viverra. Suspendisse potenti. Suspendisse ac ultrices nisi. Integer blandit id velit in pretium. Mauris ullamcorper erat id leo lacinia tincidunt. Nullam ipsum leo, maximus at placerat ac, ultrices quis eros. Morbi hendrerit urna orci, ac pharetra libero interdum eu. Quisque ultrices nunc eu nibh eleifend ornare. Nam semper nunc et hendrerit bibendum. Cras risus ex, aliquet sed nulla a, bibendum varius justo. Cras dictum lectus id pharetra dapibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis at felis ipsum. Aenean interdum accumsan mollis. Maecenas vitae felis imperdiet, sodales orci at, pharetra felis.\r\n<br>\r\nCras sit amet metus at arcu faucibus convallis. Fusce eget ullamcorper mi. Quisque pellentesque faucibus pulvinar. Nam leo mauris, dictum vel sodales eget, feugiat in leo. Phasellus malesuada felis nec turpis tristique, sit amet congue risus ultrices. Vivamus quis fringilla nibh, a convallis ex. Aliquam eu suscipit est. Praesent imperdiet nulla vitae elit finibus varius id sit amet urna.\r\n<br>\r\nVivamus erat velit, mattis tristique aliquet in, semper ut neque. Etiam non aliquam ipsum. Nunc feugiat augue at euismod viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris metus augue, pretium non purus a, venenatis lacinia nunc. Vestibulum cursus iaculis sem vitae faucibus. Morbi varius, augue sit amet laoreet placerat, risus magna tempor ipsum, at fringilla justo augue eget felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis libero vel odio cursus congue. Etiam non facilisis nisi. Suspendisse feugiat, lacus in ultrices auctor, diam turpis euismod ante, ac pellentesque leo libero non dui.\r\n<br>\r\nMauris pulvinar vehicula ex in sodales. Donec pharetra odio ac velit accumsan, at consequat mi posuere. Proin in eros vehicula lectus lobortis iaculis. Mauris ut mi vitae est interdum rhoncus et at nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin tempus risus nec urna vehicula rhoncus nec non nibh. Nulla varius tortor ultrices sem eleifend, id posuere lorem tempor. Ut tincidunt libero velit, sed rutrum sem pharetra ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n<br>\r\nDonec non velit ac diam pellentesque pretium. Phasellus maximus, turpis et aliquet luctus, lectus est molestie quam, quis pellentesque turpis magna vitae urna. In ut quam ut neque facilisis venenatis. Vestibulum viverra libero nec orci gravida, eu molestie orci ullamcorper. Vivamus lacinia fermentum vestibulum. Maecenas laoreet quam mi, nec rutrum nisl efficitur quis. In vulputate hendrerit ipsum, blandit auctor neque suscipit et. Duis euismod iaculis enim. Aenean et arcu dictum, accumsan dui elementum, vestibulum neque.\r\n<br>\r\nInteger vestibulum enim at faucibus egestas. In urna quam, blandit sed neque at, ullamcorper lacinia odio. Cras vel tempor elit, sed efficitur erat. Morbi dictum placerat turpis et dignissim. Sed ultrices, odio vel euismod eleifend, dui elit ultricies arcu, at tempor est arcu egestas elit. Donec eu ligula ut dui cursus consequat. Etiam vestibulum sagittis lectus et bibendum. In imperdiet neque est. Duis erat metus, scelerisque a orci at, imperdiet tincidunt nisi. Curabitur luctus orci ut felis dictum, eget efficitur felis iaculis. Nunc auctor, sem eget pretium molestie, mi ex dictum purus, sed vestibulum purus tellus in sem. Phasellus interdum elementum rhoncus. Etiam euismod, odio ut porta tristique, nunc mauris pretium dui, id sagittis quam est ut purus. Ut dictum risus vel ipsum consectetur lacinia. Phasellus pulvinar ornare diam, id hendrerit magna fermentum eu. Ut eget vulputate lorem.\r\n<br>\r\nVestibulum tincidunt orci ex, at dapibus odio ullamcorper at. Fusce nec sapien et magna ullamcorper congue. Vestibulum venenatis, leo in tempus consequat, enim turpis ultricies lectus, ac facilisis nunc est sit amet risus. Aenean fringilla cursus urna, sit amet pharetra diam aliquet et. Nulla suscipit aliquet lorem, et vehicula nisi suscipit vel. Pellentesque nec eleifend sapien. Vivamus a odio ac lacus consequat convallis. Ut in enim molestie, cursus nisi id, faucibus leo. Sed maximus augue sed sapien convallis, non aliquet massa sagittis. Vivamus eu nulla eget lorem tincidunt porta sed euismod quam. Quisque rhoncus imperdiet commodo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean non mauris tellus. Mauris iaculis accumsan eros. Maecenas interdum ligula tristique mi malesuada imperdiet.\r\n<br>\r\nSed purus sem, porta vitae metus id, tincidunt feugiat ipsum. Praesent dapibus elit id sem commodo, eu laoreet purus mollis. Proin et sagittis eros, a fringilla mauris. Vivamus et lectus ut ex tincidunt convallis et vitae nisl. Etiam et urna facilisis, pulvinar felis in, fermentum lorem. Sed feugiat ipsum sit amet ex.', '2023-01-08 14:48:19', '2023-01-09 04:00:29', 1, 'test-1', '366e9e4ca1165eea90adb4eb87c4f210.jpg', 6, 'admin', NULL),
(4, 'test 4', 13, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas efficitur vulputate finibus. Donec turpis eros, ultrices vitae nisi id, iaculis semper urna. Aliquam sed purus luctus, consectetur lacus vitae, pellentesque neque. Phasellus sed egestas ipsum, vitae cursus ligula. Mauris gravida justo et commodo lobortis. Donec ac aliquet purus. Vivamus euismod sed ante in porta. Praesent cursus et ex ut convallis.\r\n<br>\r\nSuspendisse consectetur purus a orci imperdiet viverra. Suspendisse potenti. Suspendisse ac ultrices nisi. Integer blandit id velit in pretium. Mauris ullamcorper erat id leo lacinia tincidunt. Nullam ipsum leo, maximus at placerat ac, ultrices quis eros. Morbi hendrerit urna orci, ac pharetra libero interdum eu. Quisque ultrices nunc eu nibh eleifend ornare. Nam semper nunc et hendrerit bibendum. Cras risus ex, aliquet sed nulla a, bibendum varius justo. Cras dictum lectus id pharetra dapibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis at felis ipsum. Aenean interdum accumsan mollis. Maecenas vitae felis imperdiet, sodales orci at, pharetra felis.\r\n<br>\r\nCras sit amet metus at arcu faucibus convallis. Fusce eget ullamcorper mi. Quisque pellentesque faucibus pulvinar. Nam leo mauris, dictum vel sodales eget, feugiat in leo. Phasellus malesuada felis nec turpis tristique, sit amet congue risus ultrices. Vivamus quis fringilla nibh, a convallis ex. Aliquam eu suscipit est. Praesent imperdiet nulla vitae elit finibus varius id sit amet urna.\r\nblog 4 NISER\r\n<br>\r\nVivamus erat velit, mattis tristique aliquet in, semper ut neque. Etiam non aliquam ipsum. Nunc feugiat augue at euismod viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris metus augue, pretium non purus a, venenatis lacinia nunc. Vestibulum cursus iaculis sem vitae faucibus. Morbi varius, augue sit amet laoreet placerat, risus magna tempor ipsum, at fringilla justo augue eget felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis libero vel odio cursus congue. Etiam non facilisis nisi. Suspendisse feugiat, lacus in ultrices auctor, diam turpis euismod ante, ac pellentesque leo libero non dui.\r\n<br>\r\nMauris pulvinar vehicula ex in sodales. Donec pharetra odio ac velit accumsan, at consequat mi posuere. Proin in eros vehicula lectus lobortis iaculis. Mauris ut mi vitae est interdum rhoncus et at nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin tempus risus nec urna vehicula rhoncus nec non nibh. Nulla varius tortor ultrices sem eleifend, id posuere lorem tempor. Ut tincidunt libero velit, sed rutrum sem pharetra ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n<br>\r\nDonec non velit ac diam pellentesque pretium. Phasellus maximus, turpis et aliquet luctus, lectus est molestie quam, quis pellentesque turpis magna vitae urna. In ut quam ut neque facilisis venenatis. Vestibulum viverra libero nec orci gravida, eu molestie orci ullamcorper. Vivamus lacinia fermentum vestibulum. Maecenas laoreet quam mi, nec rutrum nisl efficitur quis. In vulputate hendrerit ipsum, blandit auctor neque suscipit et. Duis euismod iaculis enim. Aenean et arcu dictum, accumsan dui elementum, vestibulum neque.\r\n<br>\r\nInteger vestibulum enim at faucibus egestas. In urna quam, blandit sed neque at, ullamcorper lacinia odio. Cras vel tempor elit, sed efficitur erat. Morbi dictum placerat turpis et dignissim. Sed ultrices, odio vel euismod eleifend, dui elit ultricies arcu, at tempor est arcu egestas elit. Donec eu ligula ut dui cursus consequat. Etiam vestibulum sagittis lectus et bibendum. In imperdiet neque est. Duis erat metus, scelerisque a orci at, imperdiet tincidunt nisi. Curabitur luctus orci ut felis dictum, eget efficitur felis iaculis. Nunc auctor, sem eget pretium molestie, mi ex dictum purus, sed vestibulum purus tellus in sem. Phasellus interdum elementum rhoncus. Etiam euismod, odio ut porta tristique, nunc mauris pretium dui, id sagittis quam est ut purus. Ut dictum risus vel ipsum consectetur lacinia. Phasellus pulvinar ornare diam, id hendrerit magna fermentum eu. Ut eget vulputate lorem.\r\n<br>\r\nVestibulum tincidunt orci ex, at dapibus odio ullamcorper at. Fusce nec sapien et magna ullamcorper congue. Vestibulum venenatis, leo in tempus consequat, enim turpis ultricies lectus, ac facilisis nunc est sit amet risus. Aenean fringilla cursus urna, sit amet pharetra diam aliquet et. Nulla suscipit aliquet lorem, et vehicula nisi suscipit vel. Pellentesque nec eleifend sapien. Vivamus a odio ac lacus consequat convallis. Ut in enim molestie, cursus nisi id, faucibus leo. Sed maximus augue sed sapien convallis, non aliquet massa sagittis. Vivamus eu nulla eget lorem tincidunt porta sed euismod quam. Quisque rhoncus imperdiet commodo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean non mauris tellus. Mauris iaculis accumsan eros. Maecenas interdum ligula tristique mi malesuada imperdiet.\r\n<br>\r\nSed purus sem, porta vitae metus id, tincidunt feugiat ipsum. Praesent dapibus elit id sem commodo, eu laoreet purus mollis. Proin et sagittis eros, a fringilla mauris. Vivamus et lectus ut ex tincidunt convallis et vitae nisl. Etiam et urna facilisis, pulvinar felis in, fermentum lorem. Sed feugiat ipsum sit amet ex.', '2023-01-08 14:48:19', '2023-01-08 17:40:23', 1, 'test-4', '366e9e4ca1165eea90adb4eb87c4f210.jpg', 7, 'admin', 'admin'),
(5, 'test 5', 13, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas efficitur vulputate finibus. Donec turpis eros, ultrices vitae nisi id, iaculis semper urna. Aliquam sed purus luctus, consectetur lacus vitae, pellentesque neque. Phasellus sed egestas ipsum, vitae cursus ligula. Mauris gravida justo et commodo lobortis. Donec ac aliquet purus. Vivamus euismod sed ante in porta. Praesent cursus et ex ut convallis.\r\n<br>\r\nSuspendisse consectetur purus a orci imperdiet viverra. Suspendisse potenti. Suspendisse ac ultrices nisi. Integer blandit id velit in pretium. Mauris ullamcorper erat id leo lacinia tincidunt. Nullam ipsum leo, maximus at placerat ac, ultrices quis eros. Morbi hendrerit urna orci, ac pharetra libero interdum eu. Quisque ultrices nunc eu nibh eleifend ornare. Nam semper nunc et hendrerit bibendum. Cras risus ex, aliquet sed nulla a, bibendum varius justo. Cras dictum lectus id pharetra dapibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis at felis ipsum. Aenean interdum accumsan mollis. Maecenas vitae felis imperdiet, sodales orci at, pharetra felis.\r\n<br>\r\nCras sit amet metus at arcu faucibus convallis. Fusce eget ullamcorper mi. Quisque pellentesque faucibus pulvinar. Nam leo mauris, dictum vel sodales eget, feugiat in leo. Phasellus malesuada felis nec turpis tristique, sit amet congue risus ultrices. Vivamus quis fringilla nibh, a convallis ex. Aliquam eu suscipit est. Praesent imperdiet nulla vitae elit finibus varius id sit amet urna.\r\n<br>\r\nVivamus erat velit, mattis tristique aliquet in, semper ut neque. Etiam non aliquam ipsum. Nunc feugiat augue at euismod viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris metus augue, pretium non purus a, venenatis lacinia nunc. Vestibulum cursus iaculis sem vitae faucibus. Morbi varius, augue sit amet laoreet placerat, risus magna tempor ipsum, at fringilla justo augue eget felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis libero vel odio cursus congue. Etiam non facilisis nisi. Suspendisse feugiat, lacus in ultrices auctor, diam turpis euismod ante, ac pellentesque leo libero non dui.\r\n<br>\r\nMauris pulvinar vehicula ex in sodales. Donec pharetra odio ac velit accumsan, at consequat mi posuere. Proin in eros vehicula lectus lobortis iaculis. Mauris ut mi vitae est interdum rhoncus et at nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin tempus risus nec urna vehicula rhoncus nec non nibh. Nulla varius tortor ultrices sem eleifend, id posuere lorem tempor. Ut tincidunt libero velit, sed rutrum sem pharetra ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n<br>\r\nDonec non velit ac diam pellentesque pretium. Phasellus maximus, turpis et aliquet luctus, lectus est molestie quam, quis pellentesque turpis magna vitae urna. In ut quam ut neque facilisis venenatis. Vestibulum viverra libero nec orci gravida, eu molestie orci ullamcorper. Vivamus lacinia fermentum vestibulum. Maecenas laoreet quam mi, nec rutrum nisl efficitur quis. In vulputate hendrerit ipsum, blandit auctor neque suscipit et. Duis euismod iaculis enim. Aenean et arcu dictum, accumsan dui elementum, vestibulum neque.\r\n<br>\r\nInteger vestibulum enim at faucibus egestas. In urna quam, blandit sed neque at, ullamcorper lacinia odio. Cras vel tempor elit, sed efficitur erat. Morbi dictum placerat turpis et dignissim. Sed ultrices, odio vel euismod eleifend, dui elit ultricies arcu, at tempor est arcu egestas elit. Donec eu ligula ut dui cursus consequat. Etiam vestibulum sagittis lectus et bibendum. In imperdiet neque est. Duis erat metus, scelerisque a orci at, imperdiet tincidunt nisi. Curabitur luctus orci ut felis dictum, eget efficitur felis iaculis. Nunc auctor, sem eget pretium molestie, mi ex dictum purus, sed vestibulum purus tellus in sem. Phasellus interdum elementum rhoncus. Etiam euismod, odio ut porta tristique, nunc mauris pretium dui, id sagittis quam est ut purus. Ut dictum risus vel ipsum consectetur lacinia. Phasellus pulvinar ornare diam, id hendrerit magna fermentum eu. Ut eget vulputate lorem.\r\n<br>\r\nVestibulum tincidunt orci ex, at dapibus odio ullamcorper at. Fusce nec sapien et magna ullamcorper congue. Vestibulum venenatis, leo in tempus consequat, enim turpis ultricies lectus, ac facilisis nunc est sit amet risus. Aenean fringilla cursus urna, sit amet pharetra diam aliquet et. Nulla suscipit aliquet lorem, et vehicula nisi suscipit vel. Pellentesque nec eleifend sapien. Vivamus a odio ac lacus consequat convallis. Ut in enim molestie, cursus nisi id, faucibus leo. Sed maximus augue sed sapien convallis, non aliquet massa sagittis. Vivamus eu nulla eget lorem tincidunt porta sed euismod quam. Quisque rhoncus imperdiet commodo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean non mauris tellus. Mauris iaculis accumsan eros. Maecenas interdum ligula tristique mi malesuada imperdiet.\r\n<br>\r\nSed purus sem, porta vitae metus id, tincidunt feugiat ipsum. Praesent dapibus elit id sem commodo, eu laoreet purus mollis. Proin et sagittis eros, a fringilla mauris. Vivamus et lectus ut ex tincidunt convallis et vitae nisl. Etiam et urna facilisis, pulvinar felis in, fermentum lorem. Sed feugiat ipsum sit amet ex.', '2023-01-08 14:48:19', '2023-01-09 03:39:12', 1, 'test-1', '366e9e4ca1165eea90adb4eb87c4f210.jpg', 3, 'admin', NULL),
(6, 'test 6', 13, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas efficitur vulputate finibus. Donec turpis eros, ultrices vitae nisi id, iaculis semper urna. Aliquam sed purus luctus, consectetur lacus vitae, pellentesque neque. Phasellus sed egestas ipsum, vitae cursus ligula. Mauris gravida justo et commodo lobortis. Donec ac aliquet purus. Vivamus euismod sed ante in porta. Praesent cursus et ex ut convallis.\r\n<br>\r\nSuspendisse consectetur purus a orci imperdiet viverra. Suspendisse potenti. Suspendisse ac ultrices nisi. Integer blandit id velit in pretium. Mauris ullamcorper erat id leo lacinia tincidunt. Nullam ipsum leo, maximus at placerat ac, ultrices quis eros. Morbi hendrerit urna orci, ac pharetra libero interdum eu. Quisque ultrices nunc eu nibh eleifend ornare. Nam semper nunc et hendrerit bibendum. Cras risus ex, aliquet sed nulla a, bibendum varius justo. Cras dictum lectus id pharetra dapibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis at felis ipsum. Aenean interdum accumsan mollis. Maecenas vitae felis imperdiet, sodales orci at, pharetra felis.\r\n<br>\r\nCras sit amet metus at arcu faucibus convallis. Fusce eget ullamcorper mi. Quisque pellentesque faucibus pulvinar. Nam leo mauris, dictum vel sodales eget, feugiat in leo. Phasellus malesuada felis nec turpis tristique, sit amet congue risus ultrices. Vivamus quis fringilla nibh, a convallis ex. Aliquam eu suscipit est. Praesent imperdiet nulla vitae elit finibus varius id sit amet urna.\r\n<br>\r\nVivamus erat velit, mattis tristique aliquet in, semper ut neque. Etiam non aliquam ipsum. Nunc feugiat augue at euismod viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris metus augue, pretium non purus a, venenatis lacinia nunc. Vestibulum cursus iaculis sem vitae faucibus. Morbi varius, augue sit amet laoreet placerat, risus magna tempor ipsum, at fringilla justo augue eget felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis libero vel odio cursus congue. Etiam non facilisis nisi. Suspendisse feugiat, lacus in ultrices auctor, diam turpis euismod ante, ac pellentesque leo libero non dui.\r\n<br>\r\nMauris pulvinar vehicula ex in sodales. Donec pharetra odio ac velit accumsan, at consequat mi posuere. Proin in eros vehicula lectus lobortis iaculis. Mauris ut mi vitae est interdum rhoncus et at nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin tempus risus nec urna vehicula rhoncus nec non nibh. Nulla varius tortor ultrices sem eleifend, id posuere lorem tempor. Ut tincidunt libero velit, sed rutrum sem pharetra ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n<br>\r\nDonec non velit ac diam pellentesque pretium. Phasellus maximus, turpis et aliquet luctus, lectus est molestie quam, quis pellentesque turpis magna vitae urna. In ut quam ut neque facilisis venenatis. Vestibulum viverra libero nec orci gravida, eu molestie orci ullamcorper. Vivamus lacinia fermentum vestibulum. Maecenas laoreet quam mi, nec rutrum nisl efficitur quis. In vulputate hendrerit ipsum, blandit auctor neque suscipit et. Duis euismod iaculis enim. Aenean et arcu dictum, accumsan dui elementum, vestibulum neque.\r\n<br>\r\nInteger vestibulum enim at faucibus egestas. In urna quam, blandit sed neque at, ullamcorper lacinia odio. Cras vel tempor elit, sed efficitur erat. Morbi dictum placerat turpis et dignissim. Sed ultrices, odio vel euismod eleifend, dui elit ultricies arcu, at tempor est arcu egestas elit. Donec eu ligula ut dui cursus consequat. Etiam vestibulum sagittis lectus et bibendum. In imperdiet neque est. Duis erat metus, scelerisque a orci at, imperdiet tincidunt nisi. Curabitur luctus orci ut felis dictum, eget efficitur felis iaculis. Nunc auctor, sem eget pretium molestie, mi ex dictum purus, sed vestibulum purus tellus in sem. Phasellus interdum elementum rhoncus. Etiam euismod, odio ut porta tristique, nunc mauris pretium dui, id sagittis quam est ut purus. Ut dictum risus vel ipsum consectetur lacinia. Phasellus pulvinar ornare diam, id hendrerit magna fermentum eu. Ut eget vulputate lorem.\r\n<br>\r\nVestibulum tincidunt orci ex, at dapibus odio ullamcorper at. Fusce nec sapien et magna ullamcorper congue. Vestibulum venenatis, leo in tempus consequat, enim turpis ultricies lectus, ac facilisis nunc est sit amet risus. Aenean fringilla cursus urna, sit amet pharetra diam aliquet et. Nulla suscipit aliquet lorem, et vehicula nisi suscipit vel. Pellentesque nec eleifend sapien. Vivamus a odio ac lacus consequat convallis. Ut in enim molestie, cursus nisi id, faucibus leo. Sed maximus augue sed sapien convallis, non aliquet massa sagittis. Vivamus eu nulla eget lorem tincidunt porta sed euismod quam. Quisque rhoncus imperdiet commodo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean non mauris tellus. Mauris iaculis accumsan eros. Maecenas interdum ligula tristique mi malesuada imperdiet.\r\n<br>\r\nSed purus sem, porta vitae metus id, tincidunt feugiat ipsum. Praesent dapibus elit id sem commodo, eu laoreet purus mollis. Proin et sagittis eros, a fringilla mauris. Vivamus et lectus ut ex tincidunt convallis et vitae nisl. Etiam et urna facilisis, pulvinar felis in, fermentum lorem. Sed feugiat ipsum sit amet ex.', '2023-01-08 14:48:19', '2023-01-09 05:24:19', 1, 'test-1', '991d8c4b5512c3bd524ab067cb2c9a1f.png', 3, 'admin', NULL);

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
(1, 'SciAstra Blog Page Test', '1bb87d41d15fe27b500a4bfcde01bb0e1673199022.png');

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
(13, 13, 't1', 't1', '2023-01-08 14:44:15', NULL, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
