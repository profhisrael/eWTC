-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2020 at 01:41 PM
-- Server version: 10.1.45-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expansio_ekini`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `name`, `email`, `password`, `address`, `phone`, `image`) VALUES
(1, 'admin', 'admin@admin.com', 'admin', 'awaaa', '090068601', '19401_4ff6_8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplication`
--

CREATE TABLE `tblapplication` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL,
  `number` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblapplication`
--

INSERT INTO `tblapplication` (`id`, `name`, `email`, `subject`, `message`, `date`, `number`) VALUES
(5, 'Buk', 'hshshs', 'Backend Programming with php', 'Ysusu', '2020-06-14', '8052997301'),
(6, 'Micha Olakunle', 'expansioncybertech@gmail.com', 'HEADER FOOTER MOBILE NAVIGATION', 'sssss', '2020-06-14', '+2348026759236'),
(7, 'Micha Olakunle', 'expansioncybertech@gmail.com', 'E service Complaint Form | Chageback Form (Urgent)', 'wwwwwwwwwwww', '2020-06-14', '+2348026759236'),
(8, 'Micha Olakunle', 'expansioncybertech@gmail.com', 'ss', 'sss', '2020-06-14', '+2348026759236');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrochure`
--

CREATE TABLE `tblbrochure` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbrochure`
--

INSERT INTO `tblbrochure` (`id`, `name`, `file`) VALUES
(1, 'Recruitment Proposal', 'Recrui_ProposalJan2019.docx'),
(2, 'Programs Brochure', '2020eWTCPhProgramsBrochure.docx'),
(3, 'Programs Brochure', '2020eWTCPhProgramsBrochure1.docx'),
(4, 'Consultant Proposal', 'eWTCConsultancyProposalPD.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `name` varchar(30) NOT NULL,
  `number` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `todate` date NOT NULL,
  `fromdate` date NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblcv`
--

CREATE TABLE `tblcv` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number` varchar(50) NOT NULL,
  `cv` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `id` int(11) NOT NULL,
  `aboutpage` text NOT NULL,
  `termconditioncontentpage` text NOT NULL,
  `servicepage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`id`, `aboutpage`, `termconditioncontentpage`, `servicepage`) VALUES
(1, '<h2 style=\"margin-bottom: 10px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div>', '<p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">Welcome to Ekini White Tulip Consulting Limited!</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">These terms and conditions outline the rules and regulations for the use of Ekini White Tulip Consulting Limited\'s Website, located at http://www.ekiniwhitetulipconsulting.com/.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">By accessing this website we assume you accept these terms and conditions. Do not continue to use Ekini White Tulip Consulting Limited if you do not agree to take all of the terms and conditions stated on this page. Our Terms and Conditions were created with the help of the&nbsp;<a href=\"https://www.termsandconditionsgenerator.com/\" style=\"color: rgb(102, 102, 102);\">Terms And Conditions Generator</a>&nbsp;and the&nbsp;<a href=\"https://www.privacypolicyonline.com/terms-conditions-generator/\" style=\"color: rgb(102, 102, 102);\">Free Terms &amp; Conditions Generator</a>.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company’s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><h3 style=\"text-align: justify; \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(102,=\"\" 102,=\"\" 102);=\"\" margin-bottom:=\"\" 18px;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-weight: 700;\">Cookies</span></h3><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">We employ the use of cookies. By accessing Ekini White Tulip Consulting Limited, you agreed to use cookies in agreement with the Ekini White Tulip Consulting Limited\'s Privacy Policy.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p><h3 style=\"text-align: justify; \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(102,=\"\" 102,=\"\" 102);=\"\" margin-bottom:=\"\" 18px;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-weight: 700;\">License</span></h3><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">Unless otherwise stated, Ekini White Tulip Consulting Limited and/or its licensors own the intellectual property rights for all material on Ekini White Tulip Consulting Limited. All intellectual property rights are reserved. You may access this from Ekini White Tulip Consulting Limited for your own personal use subjected to restrictions set in these terms and conditions.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">You must not:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><li style=\"text-align: justify;\">Republish material from Ekini White Tulip Consulting Limited</li><li style=\"text-align: justify;\">Sell, rent or sub-license material from Ekini White Tulip Consulting Limited</li><li style=\"text-align: justify;\">Reproduce, duplicate or copy material from Ekini White Tulip Consulting Limited</li><li style=\"text-align: justify;\">Redistribute content from Ekini White Tulip Consulting Limited</li></ul><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">This Agreement shall begin on the date hereof.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Ekini White Tulip Consulting Limited does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Ekini White Tulip Consulting Limited,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Ekini White Tulip Consulting Limited shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">Ekini White Tulip Consulting Limited reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">You warrant and represent that:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><li style=\"text-align: justify;\">You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li style=\"text-align: justify;\">The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li><li style=\"text-align: justify;\">The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li><li style=\"text-align: justify;\">The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">You hereby grant Ekini White Tulip Consulting Limited a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p><h3 style=\"text-align: justify; \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(102,=\"\" 102,=\"\" 102);=\"\" margin-bottom:=\"\" 18px;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-weight: 700;\">Hyperlinking to our Content</span></h3><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">The following organizations may link to our Website without prior written approval:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><li style=\"text-align: justify;\">Government agencies;</li><li style=\"text-align: justify;\">Search engines;</li><li style=\"text-align: justify;\">News organizations;</li><li style=\"text-align: justify;\">Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li style=\"text-align: justify;\">System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">We may consider and approve other link requests from the following types of organizations:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><li style=\"text-align: justify;\">commonly-known consumer and/or business information sources;</li><li style=\"text-align: justify;\">dot.com community sites;</li><li style=\"text-align: justify;\">associations or other groups representing charities;</li><li style=\"text-align: justify;\">online directory distributors;</li><li style=\"text-align: justify;\">internet portals;</li><li style=\"text-align: justify;\">accounting, law and consulting firms; and</li><li style=\"text-align: justify;\">educational institutions and trade associations.</li></ul><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Ekini White Tulip Consulting Limited; and (d) the link is in the context of general resource information.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Ekini White Tulip Consulting Limited. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">Approved organizations may hyperlink to our Website as follows:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><li style=\"text-align: justify;\">By use of our corporate name; or</li><li style=\"text-align: justify;\">By use of the uniform resource locator being linked to; or</li><li style=\"text-align: justify;\">By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.</li></ul><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">No use of Ekini White Tulip Consulting Limited\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p><h3 style=\"text-align: justify; \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(102,=\"\" 102,=\"\" 102);=\"\" margin-bottom:=\"\" 18px;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-weight: 700;\">iFrames</span></h3><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p><h3 style=\"text-align: justify; \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(102,=\"\" 102,=\"\" 102);=\"\" margin-bottom:=\"\" 18px;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-weight: 700;\">Content Liability</span></h3><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p><h3 style=\"text-align: justify; \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(102,=\"\" 102,=\"\" 102);=\"\" margin-bottom:=\"\" 18px;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-weight: 700;\">Your Privacy</span></h3><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">Please read Privacy Policy</p><h3 style=\"text-align: justify; \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(102,=\"\" 102,=\"\" 102);=\"\" margin-bottom:=\"\" 18px;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-weight: 700;\">Reservation of Rights</span></h3><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it’s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p><h3 style=\"text-align: justify; \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(102,=\"\" 102,=\"\" 102);=\"\" margin-bottom:=\"\" 18px;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-weight: 700;\">Removal of links from our website</span></h3><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p><h3 style=\"text-align: justify; \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(102,=\"\" 102,=\"\" 102);=\"\" margin-bottom:=\"\" 18px;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-weight: 700;\">Disclaimer</span></h3><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><li style=\"text-align: justify;\">limit or exclude our or your liability for death or personal injury;</li><li style=\"text-align: justify;\">limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li style=\"text-align: justify;\">limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li style=\"text-align: justify;\">exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p style=\"text-align: justify; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(102, 102, 102);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblvacancy`
--

CREATE TABLE `tblvacancy` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvacancy`
--

INSERT INTO `tblvacancy` (`id`, `title`, `content`, `date`, `image`) VALUES
(1, 'Testing', '<p>Jsjshshshshsjdhshshshshdhdhdhdhdhdhdhdhdhd</p>', '2020-06-14', 'infinix-note7-3.jpg'),
(2, 'Testing', '<p>Jsjshshshshsjdhshshshshdhdhdhdhdhdhdhdhdhd</p>', '2020-06-14', 'infinix-note7-31.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblapplication`
--
ALTER TABLE `tblapplication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrochure`
--
ALTER TABLE `tblbrochure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcv`
--
ALTER TABLE `tblcv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvacancy`
--
ALTER TABLE `tblvacancy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplication`
--
ALTER TABLE `tblapplication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblbrochure`
--
ALTER TABLE `tblbrochure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcv`
--
ALTER TABLE `tblcv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblvacancy`
--
ALTER TABLE `tblvacancy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
