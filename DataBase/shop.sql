-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2024 at 01:18 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `parent` int(11) NOT NULL,
  `Ordering` int(11) DEFAULT NULL,
  `Visibility` tinyint(4) NOT NULL DEFAULT 0,
  `Allow_Comment` tinyint(4) NOT NULL DEFAULT 0,
  `Allow_Ads` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `Name`, `Description`, `parent`, `Ordering`, `Visibility`, `Allow_Comment`, `Allow_Ads`) VALUES
(1, 'Flyer', 'All Kinds Of Flyers', 0, 1, 0, 0, 0),
(2, 'Business Card', 'All Kinds Of Business Cards', 0, 1, 0, 0, 0),
(3, 'Banner', 'All Kinds Of Banners', 0, 1, 0, 0, 0),
(4, 'Others', 'Other Graphic Designs', 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `c_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `comment_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Add_Date` date NOT NULL,
  `Country_Made` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Rating` smallint(6) NOT NULL,
  `Approve` tinyint(4) NOT NULL DEFAULT 0,
  `Cat_ID` int(11) NOT NULL,
  `Member_ID` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item_ID`, `Name`, `Description`, `Price`, `Add_Date`, `Country_Made`, `Status`, `Rating`, `Approve`, `Cat_ID`, `Member_ID`, `picture`, `contact`) VALUES
(17, 'CHURCH FLYER', 'Amazing church flyer', '5000', '2024-10-03', 'Nigeria', '', 0, 1, 1, 4, '857767111_image_search_1726138455672.jpg', '09050103012'),
(18, 'DIGITAL MARKETING FLYER', 'Amazing digital marketing flyer', '4000', '2024-10-03', 'Nigeria', '', 0, 1, 1, 4, '8441982367_image_search_1726138478025.jpg', '09050103012'),
(19, 'BUSINESS FLYER', 'Amazing business flyer', '3500', '2024-10-03', 'Nigeria', '', 0, 1, 1, 4, '4468858108_image_search_1726138503042.jpg', '09050103012'),
(20, 'NICE BUSINESS CARD', 'Very nice business card', '12000', '2024-10-03', 'Nigeria', '', 0, 1, 2, 4, '3089061680_image_search_1726139531522.jpg', '09050103012'),
(21, 'SHARP BUSINESS CARD', 'Very sharp business card', '17000', '2024-10-03', 'Nigeria', '', 0, 1, 2, 4, '9771815048_image_search_1726139544960.jpg', '09050103012'),
(22, 'WEB DESIGN BANNER', 'Catchy web design banner', '7000', '2024-10-03', 'Nigeria', '', 0, 1, 3, 4, '4744058098_image_search_1726139129090.jpg', '09050103012'),
(23, 'DREAM HOME FLYER', 'Cool dream home flyer', '6000', '2024-10-03', 'Nigeria', '', 0, 1, 1, 5, '4586077122_image_search_1726138525299.jpg', '09048116042'),
(24, 'MUSIC FESTIVAL FLYER', 'Cool music festival flyer', '4500', '2024-10-03', 'Nigeria', '', 0, 1, 1, 5, '8472887661_image_search_1726138801594.jpg', '09048116042'),
(25, 'ADAM SMITH BUSINESS CARD', 'Well designed adam smith business card', '8000', '2024-10-03', 'Nigeria', '', 0, 1, 2, 5, '6316544886_image_search_1726139627618.jpg', '09048116042'),
(26, 'QR CODE BUSINESS CARD', 'Advanced QR code business card', '18000', '2024-10-03', 'Nigeria', '', 0, 1, 2, 5, '486092122_image_search_1726139656827.jpg', '09048116042'),
(27, 'ROLL UP BANNER', 'Roll up banner for events', '12000', '2024-10-04', 'Nigeria', '1', 0, 1, 3, 5, '3000496182_image_search_1726139315435.jpg', '09048116042');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL COMMENT 'To Identify User',
  `Username` varchar(255) NOT NULL COMMENT 'Username To Login',
  `Password` varchar(255) NOT NULL COMMENT 'Password To Login',
  `Email` varchar(255) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT 0 COMMENT 'Identify User Group',
  `TrustStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'Seller Rank',
  `RegStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'User Approval',
  `Date` date NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`, `FullName`, `GroupID`, `TrustStatus`, `RegStatus`, `Date`, `avatar`) VALUES
(1, 'Admin', '5b2e7e307a75e06d6220376a7f161b4fe9094728', 'Admin@gmail.com', 'Admin Admin', 1, 1, 1, '2020-08-27', 'default.png'),
(4, 'Daniel', '71c2b43d9974feabd817abb1fe7a1c0fe1152f27', 'daniel@gmail.com', 'Daniel Daniel', 0, 0, 1, '2024-09-11', '8155366157_02.jpg'),
(5, 'Emmanuel', '02ded12c2f4c2362a837cf0acab1ecf53addae04', 'emmanuel@gmail.com', 'Emmanuel Emmanuel', 0, 0, 1, '2024-10-03', '6071289062_80b029b8f0aa08c783f1d072670b8d17.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `items_comment` (`item_id`),
  ADD KEY `comment_user` (`user_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_ID`),
  ADD KEY `member_1` (`Member_ID`),
  ADD KEY `cat_1` (`Cat_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'To Identify User', AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comment_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_comment` FOREIGN KEY (`item_id`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `cat_1` FOREIGN KEY (`Cat_ID`) REFERENCES `categories` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_1` FOREIGN KEY (`Member_ID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
