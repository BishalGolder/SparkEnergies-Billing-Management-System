-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2026 at 04:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparkenergies`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `Username`, `Password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_id` int(11) NOT NULL,
  `Meter_no` int(11) DEFAULT NULL,
  `Employee_id` int(11) DEFAULT NULL,
  `Date` date NOT NULL,
  `Prev_reading` int(11) NOT NULL,
  `Current_reading` int(11) NOT NULL,
  `Consumed_unit` int(11) NOT NULL,
  `Unit_cost` decimal(10,2) NOT NULL,
  `VAT_amount` decimal(10,2) NOT NULL,
  `Demand_charge` decimal(10,2) NOT NULL,
  `Total_amount` decimal(10,2) NOT NULL,
  `Paid_status` varchar(20) DEFAULT 'Unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_id`, `Meter_no`, `Employee_id`, `Date`, `Prev_reading`, `Current_reading`, `Consumed_unit`, `Unit_cost`, `VAT_amount`, `Demand_charge`, `Total_amount`, `Paid_status`) VALUES
(1, 1001, 1, '2026-03-01', 0, 150, 150, 7.20, 54.00, 40.00, 1174.00, 'Paid'),
(2, 1004, 1, '2026-04-30', 0, 200, 200, 10.50, 315.00, 500.00, 3015.00, 'Paid'),
(3, 1003, 1, '2026-05-01', 0, 40, 40, 5.50, 11.00, 40.00, 281.00, 'Unpaid'),
(4, 1007, 1, '2026-04-01', 0, 500, 500, 7.00, 175.00, 250.00, 3975.00, 'Unpaid'),
(5, 1001, 1, '2026-05-01', 150, 294, 144, 7.20, 51.84, 40.00, 1138.64, 'Paid'),
(6, 1008, 1, '2026-05-01', 0, 60, 60, 5.50, 16.50, 40.00, 396.50, 'Unpaid'),
(7, 1001, NULL, '2025-10-01', 0, 0, 130, 0.00, 0.00, 0.00, 910.00, 'Paid'),
(8, 1001, NULL, '2025-11-01', 0, 0, 160, 0.00, 0.00, 0.00, 1120.00, 'Paid'),
(9, 1001, NULL, '2025-12-01', 0, 0, 210, 0.00, 0.00, 0.00, 1450.00, 'Paid'),
(10, 1001, NULL, '2026-01-01', 0, 0, 180, 0.00, 0.00, 0.00, 1260.00, 'Paid'),
(11, 1001, NULL, '2026-02-01', 0, 0, 140, 0.00, 0.00, 0.00, 980.00, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Installation_date` date DEFAULT NULL,
  `Customer_type` varchar(50) NOT NULL,
  `Balance` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `Name`, `Phone`, `Email`, `Password`, `Address`, `Installation_date`, `Customer_type`, `Balance`) VALUES
(1, 'Arafat Ahmed', '01911000003', 'araf@email.com', 'pass123', 'House 12, Road 5, Dhaka', '2025-01-15', 'Residential', 19687.36),
(2, 'TechSoft IT', '01311000004', 'info@techsoft.com', 'pass123', 'Level 4, Banani, Dhaka', '2024-05-20', 'Corporate', 15000.00),
(3, 'Green Farms', '01511000005', 'farm@email.com', 'pass123', 'Village X, Gazipur', '2023-11-10', 'Agriculture', 500.00),
(5, 'Donald J trump', '01223456', 'donald@email.com', 'donald', 'Gulshan-2,Dhaka', NULL, 'Factory', 91985.00),
(6, 'Shafik Alam', '32456865434', 'shafik@email.com', 'shafik', 'Mohammadpur,Dhaka', NULL, 'Residential', 19500.00),
(18, 'Rina Sultana', '01734567890', 'rina@email.com', 'rina123', '12/2, Banasree, Dhaka', NULL, 'Residential', 750.00),
(19, 'Figo Technologies', '01323456789', 'info@figotech.com', 'figopass', '23, Baridhara, Dhaka', NULL, 'Corporate', 28000.00),
(20, 'Kazi Rafiq', '01823456789', 'kazi@email.com', 'rafikpass', 'House 8, Road 12, Dhaka', NULL, 'Residential', 9500.00),
(21, 'GreenTech Solutions', '01645321876', 'greentech@email.com', 'greenpass', '56, Uttara, Dhaka', NULL, 'Corporate', 45000.00),
(22, 'Ayesha Rahman', '01563497856', 'ayesha@email.com', 'ayesha123', '34, Shyamoli, Dhaka', NULL, 'Residential', 6750.00),
(23, 'Jamal Hossain', '01798765432', 'jamal@email.com', 'jamalpass', '45, Dhanmondi, Dhaka', NULL, 'Corporate', 120000.00),
(24, 'Shilpi Islam', '01876543210', 'shilpi@email.com', 'shilpipass', '23, Rajshahi, Dhaka', NULL, 'Residential', 6700.00),
(25, 'TransLink Group', '01398765432', 'translink@email.com', 'transpass', '78, Mirpur, Dhaka', NULL, 'Corporate', 22500.00),
(26, 'Ruby Khondker', '01987654321', 'ruby@email.com', 'ruby123', '112, Farmgate, Dhaka', NULL, 'Residential', 18500.00),
(27, 'Techify Innovations', '01512345678', 'contact@techify.com', 'techify123', '15, Motijheel, Dhaka', NULL, 'Corporate', 75000.00),
(28, 'Shuvro Roy', '01721234567', 'shuvro@email.com', 'shuvro123', '98, Sylhet, Dhaka', NULL, 'Agriculture', 2200.00),
(29, 'MegaBuild Construction', '01612345678', 'megabuild@email.com', 'buildpass', '10, Sadarghat, Dhaka', NULL, 'Construction', 32000.00),
(30, 'LifeCare Hospital', '01776543210', 'lifecare@email.com', 'hospital123', '15, Mohammadpur, Dhaka', NULL, 'Hospital', 38000.00),
(31, 'Knowledge Academy', '01321547689', 'academy@email.com', 'knowledge123', '23, Mirpur, Dhaka', NULL, 'Educational_institute', 5500.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_id`, `Name`, `Phone`, `Password`) VALUES
(1, 'Rahim Uddin', '01711000001', 'emp123'),
(2, 'Karim Mia', '01811000002', 'emp123');

-- --------------------------------------------------------

--
-- Table structure for table `meter`
--

CREATE TABLE `meter` (
  `Meter_no` int(11) NOT NULL,
  `Model_name` varchar(50) DEFAULT NULL,
  `Meter_status` varchar(20) DEFAULT 'Available',
  `Customer_id` int(11) DEFAULT NULL,
  `Employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meter`
--

INSERT INTO `meter` (`Meter_no`, `Model_name`, `Meter_status`, `Customer_id`, `Employee_id`) VALUES
(1001, 'Res-Single-A1', 'Assigned', 1, 1),
(1002, 'Corp-Three-C1', 'Assigned', 2, 2),
(1003, 'Res-Single-A1', 'Assigned', 6, 1),
(1004, 'Fac-Three-F1', 'Assigned', 5, 2),
(1005, 'Const-Three-X1', 'Assigned', 29, 1),
(1006, 'Edu-Three-E1', 'Available', NULL, NULL),
(1007, 'Hosp-Three-H1', 'Assigned', 30, 1),
(1008, 'Res-Single-A1', 'Assigned', 18, 1),
(1009, 'Corp-Three-C1', 'Assigned', 19, 2),
(1010, 'Agri-Single-G1', 'Available', NULL, NULL),
(1011, 'Const-Three-X1', 'Available', NULL, NULL),
(1012, 'Fac-Three-F1', 'Available', NULL, NULL),
(1013, 'Edu-Three-E1', 'Available', NULL, NULL),
(1014, 'Hosp-Three-H1', 'Available', NULL, NULL),
(1015, 'Res-Single-A1', 'Assigned', 24, 1),
(1016, 'Fac-Three-F1', 'Available', NULL, NULL),
(1017, 'Agri-Single-G1', 'Available', NULL, NULL),
(1018, 'Corp-Three-C1', 'Available', NULL, NULL),
(1019, 'Edu-Three-E1', 'Available', NULL, NULL),
(1110, 'Const-Three-X1', 'Available', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meter_model`
--

CREATE TABLE `meter_model` (
  `Model_name` varchar(50) NOT NULL,
  `Load_value` int(11) NOT NULL,
  `Subscription_charge` decimal(10,2) NOT NULL,
  `Phasetype` varchar(20) NOT NULL,
  `Required_Customertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meter_model`
--

INSERT INTO `meter_model` (`Model_name`, `Load_value`, `Subscription_charge`, `Phasetype`, `Required_Customertype`) VALUES
('Agri-Single-G1', 5, 800.00, 'Single', 'Agriculture'),
('Const-Three-X1', 30, 3000.00, 'Three', 'Construction'),
('Corp-Three-C1', 20, 2000.00, 'Three', 'Corporate'),
('Edu-Three-E1', 25, 2500.00, 'Three', 'Educational_institute'),
('Fac-Three-F1', 50, 5000.00, 'Three', 'Factory'),
('Hosp-Three-H1', 100, 10000.00, 'Three', 'Hospital'),
('Res-Single-A1', 2, 500.00, 'Single', 'Residential');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `Notification_id` int(11) NOT NULL,
  `Customer_id` int(11) DEFAULT NULL,
  `Bill_id` int(11) DEFAULT NULL,
  `Payment_id` int(11) DEFAULT NULL,
  `Notification_type` varchar(50) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`Notification_id`, `Customer_id`, `Bill_id`, `Payment_id`, `Notification_type`, `Message`) VALUES
(1, 1, 1, NULL, 'Payment Success', 'Bill #1 paid successfully.'),
(2, 1, 1, NULL, 'Payment Success', 'Bill #1 paid successfully.'),
(3, 1, 1, NULL, 'Payment Success', 'Bill #1 paid successfully.'),
(6, 5, NULL, NULL, 'Meter Assigned', 'Meter No: 1004 has been assigned to your account.'),
(7, 5, 2, NULL, 'Payment Success', 'Bill #2 paid successfully.'),
(8, 6, NULL, NULL, 'Meter Assigned', 'Meter No: 1003 has been assigned to your account.'),
(9, 1, NULL, NULL, 'Balance Recharge', 'Your account has been recharged with BDT 10,000.00 by Admin.'),
(10, 1, NULL, NULL, 'Balance Recharge', 'Your account has been recharged with BDT 10,000.00 by Admin.'),
(11, 18, NULL, NULL, 'Meter Assigned', 'Meter No: 1008 has been assigned to your account.'),
(12, 19, NULL, NULL, 'Meter Assigned', 'Meter No: 1009 has been assigned to your account.'),
(13, 30, NULL, NULL, 'Meter Assigned', 'Meter No: 1007 has been assigned to your account.'),
(14, 6, 3, NULL, 'New Bill Generated', 'A new bill of BDT 281.00 has been generated for your meter.'),
(15, 30, 4, NULL, 'New Bill Generated', 'A new bill of BDT 3,975.00 has been generated for your meter.'),
(16, 1, 5, NULL, 'New Bill Generated', 'A new bill of BDT 1,138.64 has been generated for your meter.'),
(17, 18, 6, NULL, 'New Bill Generated', 'A new bill of BDT 396.50 has been generated for your meter.'),
(18, 24, NULL, NULL, 'Meter Assigned', 'Meter No: 1015 has been assigned to your account.'),
(19, 1, 5, NULL, 'Payment Success', 'Bill #5 paid successfully.'),
(20, 29, NULL, NULL, 'Meter Assigned', 'Meter No: 1005 has been assigned to your account.');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_id` int(11) NOT NULL,
  `Bill_id` int(11) DEFAULT NULL,
  `Date` date NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_id`, `Bill_id`, `Date`, `Status`, `Amount`) VALUES
(1, 1, '2026-04-30', 'Success', 1174.00),
(2, 1, '2026-04-30', 'Success', 1174.00),
(3, 1, '2026-04-30', 'Success', 1174.00),
(4, 2, '2026-04-30', 'Success', 3015.00),
(5, 5, '2026-05-04', 'Success', 1138.64);

-- --------------------------------------------------------

--
-- Table structure for table `tariff`
--

CREATE TABLE `tariff` (
  `Tariff_id` int(11) NOT NULL,
  `Customer_type` varchar(50) NOT NULL,
  `Max_consumption` int(11) NOT NULL,
  `VAT` decimal(5,2) NOT NULL,
  `Demand_Charge` decimal(10,2) NOT NULL,
  `Unit_cost` decimal(10,2) NOT NULL,
  `Meter_rent` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tariff`
--

INSERT INTO `tariff` (`Tariff_id`, `Customer_type`, `Max_consumption`, `VAT`, `Demand_Charge`, `Unit_cost`, `Meter_rent`) VALUES
(1, 'Residential', 100, 5.00, 40.00, 5.50, 10.00),
(2, 'Residential', 9999, 5.00, 40.00, 7.20, 10.00),
(3, 'Corporate', 300, 10.00, 200.00, 8.50, 50.00),
(4, 'Corporate', 9999, 10.00, 200.00, 10.00, 50.00),
(5, 'Factory', 1000, 15.00, 500.00, 10.50, 100.00),
(6, 'Factory', 9999, 15.00, 500.00, 12.00, 100.00),
(7, 'Construction', 9999, 15.00, 300.00, 15.00, 80.00),
(8, 'Agriculture', 9999, 2.00, 20.00, 4.00, 10.00),
(9, 'Educational_institute', 9999, 5.00, 100.00, 6.00, 30.00),
(10, 'Hospital', 9999, 5.00, 250.00, 7.00, 50.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_id`),
  ADD KEY `Meter_no` (`Meter_no`),
  ADD KEY `Employee_id` (`Employee_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_id`),
  ADD UNIQUE KEY `Phone` (`Phone`);

--
-- Indexes for table `meter`
--
ALTER TABLE `meter`
  ADD PRIMARY KEY (`Meter_no`),
  ADD UNIQUE KEY `Customer_id` (`Customer_id`),
  ADD KEY `Model_name` (`Model_name`),
  ADD KEY `Employee_id` (`Employee_id`);

--
-- Indexes for table `meter_model`
--
ALTER TABLE `meter_model`
  ADD PRIMARY KEY (`Model_name`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`Notification_id`),
  ADD KEY `Customer_id` (`Customer_id`),
  ADD KEY `Bill_id` (`Bill_id`),
  ADD KEY `Payment_id` (`Payment_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_id`),
  ADD KEY `Bill_id` (`Bill_id`);

--
-- Indexes for table `tariff`
--
ALTER TABLE `tariff`
  ADD PRIMARY KEY (`Tariff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `Bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `Notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tariff`
--
ALTER TABLE `tariff`
  MODIFY `Tariff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`Meter_no`) REFERENCES `meter` (`Meter_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `meter`
--
ALTER TABLE `meter`
  ADD CONSTRAINT `meter_ibfk_1` FOREIGN KEY (`Model_name`) REFERENCES `meter_model` (`Model_name`) ON UPDATE CASCADE,
  ADD CONSTRAINT `meter_ibfk_2` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `meter_ibfk_3` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`Bill_id`) REFERENCES `bill` (`Bill_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `notification_ibfk_3` FOREIGN KEY (`Payment_id`) REFERENCES `payment` (`Payment_id`) ON DELETE SET NULL;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Bill_id`) REFERENCES `bill` (`Bill_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
