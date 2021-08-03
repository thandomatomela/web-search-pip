-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 29, 2020 at 11:39 AM
-- Server version: 10.1.46-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `acobryoo_contacts`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`cpses_ac36w0dbsf`@`localhost` PROCEDURE `spSearch` (IN `department` VARCHAR(150), IN `domain` VARCHAR(150))  NO SQL
SELECT * FROM websites WHERE department LIKE '%$q%' OR domain LIKE '%$q%'$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `contact_list`
--

CREATE TABLE `contact_list` (
  `id` int(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `msg` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_list`
--

INSERT INTO `contact_list` (`id`, `name`, `subject`, `email`, `msg`) VALUES
(28, 'capitec', 'yes', 'charlb@me.com', 'three blind mice'),
(27, 'thando', 'yes', 'Thandomatomela00@gmail.com', 'hjkashdaksd'),
(26, 'thando', 'Yes', 'Thandomatomela00@gmail.com', '11234564 it works'),
(25, 'thando', 'Yes', 'Thandomatomela00@gmail.com', 'hghjghjgjhghj'),
(24, 'thando', 'yes', 'Thandomatomela00@gmail.com', 'ghjasghjdgjhsd'),
(20, 'my name ', 'the subject', 'my email', 'the message');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberID` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `active` varchar(255) COLLATE utf8_bin NOT NULL,
  `resetToken` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `resetComplete` varchar(3) COLLATE utf8_bin DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberID`, `username`, `password`, `email`, `active`, `resetToken`, `resetComplete`) VALUES
(7, 'buseka', '$2y$10$vUVQDv.zGIXfpFv.dw5/eOrsnBXSim6ypoCWw93xU5Zt8nn/7S9sK', 'thandomatomela00@gmail.com', 'Yes', NULL, 'No'),
(8, 'yes', '$2y$10$TGXPVSIQKTcaObXqxp0dBeLo5LBQiD1nyQGins92OoAmMzcGaxgBi', 'test@acob-rsa.co.za', 'Yes', NULL, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` int(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `domain` varchar(150) NOT NULL,
  `pagename` varchar(150) NOT NULL,
  `servername` varchar(150) NOT NULL,
  `ip_address` varchar(150) NOT NULL,
  `teams` varchar(150) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `department`, `domain`, `pagename`, `servername`, `ip_address`, `teams`, `link`) VALUES
(1, 'DEPARTMENT OF ECONOMIC DEVELOPMENT', 'www.edd.gov.za', 'economic_development', 'SCENEDDVM002\r\n', '192.168.1.180', 'Linux', 'http://www.edd.gov.za'),
(2, 'MAMUSA LOCAL MUNICIPALITY\r\n\r\n\r\n\r\n', 'www.mamusa.gov.za', 'mamusa_local_municipality', 'SCENMLMVM005', '192.168.1.92', 'Linux', 'http://www.mamusa.gov.za'),
(3, 'SITA GOVERNMENT TECHNOLOGY', 'www.govtech.co.za', 'govtech', 'SCENSGTVM007	', '192.168.1.82\r\n', 'Linux', 'http://www.govtech.co.za'),
(5, 'DEPARTMENT OF ENVIRONMENTAL AFFAIRS', 'www.environment.gov.za\r\n', 'dea', 'SCENDEAVM001\r\n', '192.168.1.67\r\n', 'Linux', 'http://www.environment.gov.za'),
(6, 'LIMPOPO PROVINCIAL TREASURY\r\n', 'www.limtreasury.gov.za\r\n', 'limtreasury', 'SCENLPTVM003\r\n', '192.168.1.97\r\n', 'Linux', 'http://www.limtreasury.gov.za'),
(7, 'TELECOMUNICATION AND POSTAL SERVICES\r\n', 'www.ibsa-trilateral.org\r\n', 'ibsa-trilateral', 'SCENIBSAVM004\r\n', '192.168.1.80\r\n', 'Linux', 'http://www.ibsa-trilateral.org'),
(8, 'INTERGRATED FINANCIAL MANAGEMENT SYSTEM\r\n', 'www.ifms.gov.za\r\n', 'ifms', 'SCENIFMSVM006', '192.168.1.89\r\n', 'Linux', 'http://www.ifms.gov.za'),
(9, 'GOVERNMENT LEADERSHIP SUMMIT\r\n', 'www.govsummit.gov.za\r\n', 'govsummit', 'SCENGLSCVM008 ', '192.168.1.81\r\n', 'Linux', 'http://www.govsummit.gov.za'),
(54, 'INDEPENDENT POLICE INVESTIGATIVE DIRECTORATE', 'www.ipid.gov.za\r\n', 'ipid', 'svlcenwebapp007\r\n', '192.168.1.66', 'Linux', 'http://www.ipid.gov.za\r\n'),
(13, 'NATIONAL PROSECUTING AUTHORITY\r\n', 'www.npa.gov.za\r\n', 'npa', 'SCENNPAVM011', '192.168.1.40\r\n', 'Linux', 'https://www.npa.gov.za'),
(14, 'NATIONAL CONSUMERS COMMISSION\r\n', 'www.thencc.gov.za\r\n', 'thencc', 'SCENNCCVM013\r\n', '192.168.1.35\r\n', 'Linux', 'http://www.thencc.gov.za'),
(15, 'DEAPRTMENT OF NATIONAL SOCIAL DEVELOPMENT\r\n', 'www.dsd.gov.za', 'dsd', 'SCENDSDVM014\r\n', '192.168.1.19\r\n\r\n', 'Linux', 'http://www.dsd.gov.za'),
(16, 'DPSA\r\n', 'www.gitoc.gov.za\r\n', 'gitoc', 'DPSA-ECM-PROD\r\n', '192.168.1.90\r\n', 'Linux', 'http://www.gitoc.gov.za'),
(17, 'DEA-EGIS\r\n', 'egis.environment.gov.za', 'egis-environment', 'SCENEGISVM013', '192.168.1.227\r\n', 'Linux', 'http://egis.environment.gov.za'),
(18, 'DEPARTMENT OF ECONOMIC DEVELOPMENT AND TOURISM', 'www.dedtmpumalanga.gov.za', 'dedtmpumalanga', 'SCENSDEDTVM014\r\n', '192.168.1.114\r\n', 'Linux', 'http://www.dedtmpumalanga.gov.za'),
(19, 'DEPARTMENT OF PUBLIC SERVICE AND ADMINISTRATION\r\n', 'www.dpsa.gov.za\r\n', 'dpsa', 'N/A', 'N/A', 'Windows', 'http://www.dpsa.gov.za'),
(20, 'DEPARTMENT OF PUBLIC SERVICE AND ADMINISTRATION\r\n', 'www.erc.dpsa.gov.za\r\n', 'erc-dpsa', 'N/A', 'N/A', 'Windows', 'http://www.erc.dpsa.gov.za'),
(21, 'DEPARTMENT OF PUBLIC SERVICE AND ADMINISTRATION\r\n', 'www.ogp.gov.za\r\n', 'ogp', 'N/A', 'N/A', 'Windows', 'http://www.ogp.gov.za\r\n'),
(22, 'DEPARTMENT OF PUBLIC SERVICE AND ADMINISTRATION\r\n', 'www.prrc.gov.za\r\n', 'prrc', 'N/A', 'N/A', 'Windows', 'http://www.prrc.gov.za\r\n'),
(23, 'OFFICE OF PUBLIC SERVICE COMMISSION\r\n', 'www.psc.gov.za\r\n', 'psc', 'N/A', 'N/A', 'Windows', 'http://www.psc.gov.za\r\n'),
(24, 'SOUTH AFRICAN COUNCIL OF EDUCATORS \r\n', 'www.sace.org.za\r\n', 'sace', 'N/A', 'N/A', 'Windows', 'http://www.sace.org.za'),
(25, 'DEPARTMENT OF PUBLIC WORKS\r\n', 'www.publicworks.gov.za\r\n', 'publicworks', 'N/A', 'N/A', 'Windows', 'http://www.publicworks.gov.za'),
(26, 'DEPARTMENT OF PUBLIC WORKS', 'www.rekgabisatshwane.gov.za \r\n', 'rekgabisatshwane\r\n', 'N/A', 'N/A', 'Windows', 'http://www.rekgabisatshwane.gov.za '),
(27, 'DEPARTMENT OF PUBLIC WORKS\r\n', 'www.epwp.gov.za\r\n', 'epwp', 'N/A', 'N/A', 'Windows', 'http://www.epwp.gov.za'),
(28, 'DEPARTMENT OF HUMAN SETTLEMENT\r\n', 'www.hssonline.gov.za\r\n', 'hssonline', 'N/A', 'N/A', 'Windows', 'http://www.hssonline.gov.za'),
(29, 'Department of Human Settlements\r\n', 'demand.hssonline.gov.za\r\n', 'demand-hssonline', 'N/A', 'N/A', 'Windows', 'https://demand.hssonline.gov.za'),
(30, 'Department of Human Settlements\r\n', 'debtors.hssonline.gov.za\r\n', 'debtors-hssonline', 'N/A', 'N/A', 'Windows', 'https://debtors.hssonline.gov.za'),
(31, 'Department of Human Settlements\r\n', 'ndhs.hssonline.gov.za\r\n', 'ndhs-hssonline', 'N/A', 'N/A', 'Windows', 'https://ndhs.hssonline.gov.za'),
(32, 'Department of Human Settlements\r\n', 'reports.hssonine.gov.za\r\n', 'reports-hssonine', 'N/A', 'N/A', 'Windows', 'http://reports.hssonline.gov.za'),
(33, 'Department of Human Settlements\r\n', 'minister.hssonline.gov.za\r\n', 'minister-hssonline\r\n', 'N/A', 'N/A', 'Windows', 'http://minister.hssonline.gov.za'),
(34, 'Department of Human Settlements\r\n', 'webservices.hssonline.gov.za\r\n', 'webservices-hssonline', 'N/A', 'N/A', 'Windows', 'http://webservices.hssonline.gov.za'),
(35, 'Department of Human Settlements\r\n', 'www.dhs.gov.za\r\n', 'dhs', 'N/A', 'N/A', 'Windows', 'http://www.dhs.gov.za'),
(36, 'Gauteng: Department of Roads and Transport\r\n', 'www.gfleet.gov.za\r\n', 'gfleet', 'N/A', 'N/A', 'Windows', 'http://www.gfleet.gov.za'),
(37, 'Gauteng: Department of Education\r\n', 'www.gdeadmissions.gov.za\r\n', 'gdeadmissions', 'N/A', 'N/A', 'Windows', 'http://www.gdeadmissions.gov.za'),
(38, '\r\nGauteng: Department of Education\r\n', 'gdeadmin.gdeadmissions.gov.za\r\n', 'gdeadmin', 'N/A', 'N/A', 'Windows', 'http://gdeadmin.gdeadmissions.gov.za'),
(39, 'Gauteng: Department of Education\r\n\r\n', 'tswagamaths.gdeinteractive.gov.za\r\n', 'tswagamaths', 'N/A', 'N/A', 'Windows', 'http://tswagamaths.gdeinteractive.gov.za'),
(40, 'Gauteng: Department of Education\r\n', 'dhams.gde.gov.za\r\n', 'dhams', 'N/A', 'N/A', 'Windows', 'http://dhams.gde.gov.za'),
(41, 'Mpumalanga: Office of the Premier\r\n', 'www.mpumalanga.gov.za\r\n', 'mpumalanga', 'N/A', 'N/A', 'Windows', 'http://www.mpumalanga.gov.za'),
(42, 'SITA\r\n\r\n', 'www.sita.co.za\r\n', 'sita', 'N/A', 'N/A', 'Windows', 'http://www.sita.co.za'),
(43, 'SITA\r\n\r\n', 'www.eservices.gov.za\r\n', 'eservices', 'N/A', 'N/A', 'Windows', 'http://www.eservices.gov.za'),
(44, 'SITA\r\n\r\n', 'itsmwebext.smc.gov.za/arsys\r\n', 'itsm', 'N/A', 'N/A', 'Windows', 'http://itsmwebext.smc.gov.za/arsys'),
(45, 'Gauteng: Department of Education\r\n', 'www.iecs.doe.gov.za\r\n', 'iecs-doe', 'N/A', 'N/A', 'Windows', 'http://www.iecs.doe.gov.za'),
(46, 'Department of Education\r\n', 'www.neims.gov.za\r\n', 'neims', 'N/A', 'N/A', 'Windows', 'http://www.neims.gov.za'),
(47, 'Department of Education\r\n', 'www.bi.doe.gov.za\r\n', 'bi-doe', 'N/A', 'N/A', 'Windows', 'http://www.bi.doe.gov.za'),
(48, 'Department of Education\r\n', 'www.funzalushaka.doe.gov.za\r\n', 'funzalushaka-doe', 'N/A', 'N/A', 'Windows', 'http://www.funzalushaka.doe.gov.za'),
(49, 'Department of Education\r\n', 'www.thutong.doe.gov.za\r\n', 'thutong-doe', 'N/A', 'N/A', 'Windows', 'http://www.thutong.doe.gov.za\r\n'),
(50, 'Department of Education\r\n', 'www.ltsm.doe.gov.za\r\n', 'ltsm-doe', 'N/A', 'N/A', 'Windows', 'http://www.ltsm.doe.gov.za'),
(51, 'Police Secretariat\r\n\r\n', 'www.dpcijudge.gov.za\r\n', 'dcpi-judge', 'N/A', 'N/A', 'Windows', 'http://www.dpcijudge.gov.za'),
(52, 'Police Secretariat\r\n', 'www.policesecretariat.gov.za\r\n', 'police-secretariat', 'N/A', 'N/A', 'Windows', 'http://www.policesecretariat.gov.za'),
(53, 'Public Protector \r\n', 'www.pprotect.org\r\n', 'Public-Protector', 'N/A', 'N/A', 'Windows', 'http://www.pprotect.org'),
(55, 'DEPARTMENT TELECOMMUNCATIONS AND POSTAL SERVICES', 'www.cybersecurityhub.gov.za', 'dtps', 'svlcencshapp002.gov.za', '192.168.2.43', 'Linux', 'https://www.cybersecurityhub.gov.za'),
(56, 'DEPARTMENT OF RURAL DEVELOPMENT AND LAND REFORM\'S', 'www.deeds.gov.za', 'deeds', 'N/A', 'N/A', 'Mainframe (Nucleus)', 'http://www.deeds.gov.za'),
(57, 'DEPARTMENT OF ARTS AND CULTURE', 'www.national.archives.gov.za', 'national-archives', 'N/A', 'N/A', 'Mainframe (Nucleus)', 'http://www.national.archives.gov.za'),
(58, 'Department of Arts and Culture', 'www.nationalarchives.gov.za', 'nationalarchives', 'N/A', 'N/A', 'Linux', 'http://www.nationalarchives.gov.za');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_list`
--
ALTER TABLE `contact_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_list`
--
ALTER TABLE `contact_list`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
