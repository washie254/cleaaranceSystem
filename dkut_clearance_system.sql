-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2019 at 10:41 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dkut_clearance_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`) VALUES
(1, 'ADMIN1', 'administrator1@gmail.com', 'e00cf25ad42683b3df678c61f42c6bda');

-- --------------------------------------------------------

--
-- Table structure for table `clearance`
--

CREATE TABLE `clearance` (
  `id` int(11) NOT NULL,
  `student_reg` varchar(100) NOT NULL,
  `cod` varchar(255) NOT NULL,
  `librarian` varchar(255) NOT NULL,
  `housekeeper` varchar(255) NOT NULL,
  `dean_of_students` varchar(255) NOT NULL,
  `sports_officer` varchar(255) NOT NULL,
  `registrar` varchar(255) NOT NULL,
  `finance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clearance`
--

INSERT INTO `clearance` (`id`, `student_reg`, `cod`, `librarian`, `housekeeper`, `dean_of_students`, `sports_officer`, `registrar`, `finance`) VALUES
(1, 'C025-02-0032/2016', 'PENDING', 'CLEARED', 'CLEARED', 'CLEARED', 'CLEARED', 'CLEARED', 'PENDING'),
(2, 'C025-02-0033/2016', 'PENDING', 'PENDING', 'PENDING', 'PENDING', 'PENDING', 'PENDING', 'PENDING'),
(3, 'C026-02-0040/2016', 'PENDING', 'PENDING', 'PENDING', 'PENDING', 'PENDING', 'PENDING', 'PENDING'),
(4, 'C026-02-0041/2016', 'PENDING', 'PENDING', 'PENDING', 'PENDING', 'PENDING', 'PENDING', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `dept_name`) VALUES
(1, 'cod'),
(2, 'librarian '),
(3, 'housekeeper'),
(4, 'deanOfStudents'),
(5, 'sportsOfficer'),
(6, 'registrar'),
(7, 'finance');

-- --------------------------------------------------------

--
-- Table structure for table `depertment_officers`
--

CREATE TABLE `depertment_officers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `departmment` varchar(255) NOT NULL,
  `dateadded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depertment_officers`
--

INSERT INTO `depertment_officers` (`id`, `username`, `password`, `departmment`, `dateadded`) VALUES
(1, 'COD1', 'cd5cedd385ce4e84e8405997c37a8e3d', 'cod', '2019-08-04'),
(2, 'LIBRARY1', 'aa796f0f1579803a07c3eb91de612a27', 'librarian ', '2019-08-05'),
(3, 'HOUSE1', '14c36ef64fbce323b720886a0d7793ea', 'housekeeper', '2019-08-06'),
(4, 'DEAN1', 'f948390969e805b3819c831fe3840d70', 'deanOfStudents', '2019-08-07'),
(5, 'SPORTS1', '6d7402ff98e7872ed7e4ab52ee7f3de8', 'sportsOfficer', '2019-08-07'),
(6, 'REGISTRAR1', '60ab5ce589355054fb756811898f7055', 'registrar', '2019-08-07'),
(7, 'FINANCE1', 'b11d49f3630e78c3ab484e3c311963e7', 'finance', '2019-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `std_reg` varchar(20) NOT NULL,
  `department` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `monetary_value` double NOT NULL,
  `datecreated` date NOT NULL,
  `timecereated` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `std_reg`, `department`, `description`, `category`, `monetary_value`, `datecreated`, `timecereated`) VALUES
(1, 'C026-02-0040/2016', 'cod', 'has remaining payments to make on project processing ', 'ARREARS', 2000, '2019-08-24', '00:00:05'),
(2, 'C025-02-0033/2016', 'librarian', 'aliharibu vitabu', 'DAMAGES', 2000, '2019-09-02', '10:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `issue_cod`
--

CREATE TABLE `issue_cod` (
  `id` int(11) NOT NULL,
  `std_reg` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_cod`
--

INSERT INTO `issue_cod` (`id`, `std_reg`, `category`, `description`, `status`) VALUES
(1, 'C025-02-0032/2016', 'Exams', 'The student is yet to complete the IOT exam as required by the Department. student should visit my office soonest possible\r\n', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `issue_deanofstudents`
--

CREATE TABLE `issue_deanofstudents` (
  `id` int(11) NOT NULL,
  `std_reg` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_deanofstudents`
--

INSERT INTO `issue_deanofstudents` (`id`, `std_reg`, `category`, `description`, `status`) VALUES
(1, 'C026-02-0041/2016', 'Co Carricular', 'some papers need to be signed by student.kindly meet dean in the office for clearance', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `issue_finance`
--

CREATE TABLE `issue_finance` (
  `id` int(11) NOT NULL,
  `std_reg` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_finance`
--

INSERT INTO `issue_finance` (`id`, `std_reg`, `category`, `description`, `status`) VALUES
(1, 'C026-02-0041/2016', 'Ariase', 'not completed fees ', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `issue_housekeeper`
--

CREATE TABLE `issue_housekeeper` (
  `id` int(11) NOT NULL,
  `std_reg` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_housekeeper`
--

INSERT INTO `issue_housekeeper` (`id`, `std_reg`, `category`, `description`, `status`) VALUES
(1, 'C025-02-0033/2016', 'Vundalism', 'Broke Pane at Batian Hostels', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `issue_librarian`
--

CREATE TABLE `issue_librarian` (
  `id` int(11) NOT NULL,
  `std_reg` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_librarian`
--

INSERT INTO `issue_librarian` (`id`, `std_reg`, `category`, `description`, `status`) VALUES
(1, 'C026-02-0040/2016', 'Lost Book', 'Book Tile: The infinity war', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `issue_registrar`
--

CREATE TABLE `issue_registrar` (
  `id` int(11) NOT NULL,
  `std_reg` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue_sportsofficer`
--

CREATE TABLE `issue_sportsofficer` (
  `id` int(11) NOT NULL,
  `std_reg` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_sportsofficer`
--

INSERT INTO `issue_sportsofficer` (`id`, `std_reg`, `category`, `description`, `status`) VALUES
(1, 'C025-02-0033/2016', 'Lost Item', 'Misplaced the hocky stick size 32xwd, need to avail with a replacement to sports office to be cleared', 'PENDING'),
(2, 'C026-02-0041/2016', 'Damages', 'need to repair the DKUT football tem banner after it was damaeged under your possesioin. see sports officer for clearance ', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(4, 'C025-02-0032/2016', 'user4@gmail.com', '3f02ebe3d7929b091e3d8ccfde2f3bc6'),
(5, 'C025-02-0033/2016', 'user5@gmail.com', '0a791842f52a0acfbb3a783378c066b8'),
(6, 'C026-02-0040/2016', 'itguy@gmail.com', 'b200d9b6e538b8c6f50c1cae6c7c7094'),
(7, 'C026-02-0041/2016', 'co26@gmail.com', '9cdca52def14f774d6ed3b385b516f45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clearance`
--
ALTER TABLE `clearance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depertment_officers`
--
ALTER TABLE `depertment_officers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_cod`
--
ALTER TABLE `issue_cod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_deanofstudents`
--
ALTER TABLE `issue_deanofstudents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_finance`
--
ALTER TABLE `issue_finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_housekeeper`
--
ALTER TABLE `issue_housekeeper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_librarian`
--
ALTER TABLE `issue_librarian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_registrar`
--
ALTER TABLE `issue_registrar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_sportsofficer`
--
ALTER TABLE `issue_sportsofficer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clearance`
--
ALTER TABLE `clearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `depertment_officers`
--
ALTER TABLE `depertment_officers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `issue_cod`
--
ALTER TABLE `issue_cod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `issue_deanofstudents`
--
ALTER TABLE `issue_deanofstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `issue_finance`
--
ALTER TABLE `issue_finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `issue_housekeeper`
--
ALTER TABLE `issue_housekeeper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `issue_librarian`
--
ALTER TABLE `issue_librarian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `issue_registrar`
--
ALTER TABLE `issue_registrar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_sportsofficer`
--
ALTER TABLE `issue_sportsofficer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
