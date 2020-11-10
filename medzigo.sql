-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2020 at 02:24 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medzigo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_log`
--

CREATE TABLE `tbl_activity_log` (
  `id` bigint(11) NOT NULL,
  `activity_type` enum('Appointment','Order','Account','Other') NOT NULL DEFAULT 'Appointment',
  `activity_id` varchar(50) NOT NULL COMMENT 'appointment id, order id etc',
  `activity_by` bigint(20) NOT NULL,
  `activity_for` bigint(20) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `activity_url` varchar(150) NOT NULL,
  `activity_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api`
--

CREATE TABLE `tbl_api` (
  `api_id` int(11) NOT NULL,
  `api_name` varchar(255) NOT NULL,
  `end_point` varchar(255) NOT NULL,
  `method_name` enum('GET','POST','PUT','DELETE','PATCH') NOT NULL,
  `description` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_api`
--

INSERT INTO `tbl_api` (`api_id`, `api_name`, `end_point`, `method_name`, `description`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(32, 'Sign Up', 'account/register', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Registered successfully\",\r\n    \"data\": \"U1115\",\r\n    \"params\": {\r\n        \"first_name\": \"vineet\",\r\n        \"last_name\": \"shirdhonkar\",\r\n        \"email\": \"vineet@mailinator.com\",\r\n        \"password\": \"Info9179@\",\r\n        \"confirm_password\": \"Info9179@\",\r\n        \"user_type\": \"Patient\",\r\n        \"dob\": \"1986-09-12\",\r\n        \"mobile_number\": \"8982578475\",\r\n        \"gender\": \"Male\"\r\n    },\r\n    \"task\": \"register_post\",\r\n    \"error_code\": 201\r\n}', 'Active', 0, '2020-08-21 18:33:25', 0, '2020-08-24 11:02:52'),
(33, 'Login', 'account/login', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Successfully logged in.\",\r\n    \"data\": {\r\n        \"first_name\": \"vineet\",\r\n        \"middle_name\": \"\",\r\n        \"last_name\": \"shirdhonkar\",\r\n        \"full_name\": \"\",\r\n        \"profile_image_url\": \"http://localhost/medzigo/media/user-profile-images/0b7c56e169adab2ed7cd279e9c4d475f-U1036.jpg\",\r\n        \"cover_image\": \"http://localhost/medzigo/api/assets/images/placeholder100.jpg\",\r\n        \"group_name\": \"Doctor\",\r\n        \"age\": null,\r\n        \"gender\": \"Male\",\r\n        \"mobile_number\": \"1\",\r\n        \"timezone\": \"\",\r\n        \"language\": \"\",\r\n        \"currency\": \"\",\r\n        \"device_id\": \"fgR60y_ns6kfSAsgHksQlR:APA91bFC90UBQU5WUF5Vk6sbF9gt3MtgJw9Q2SjOjtjzTrDpWakK9oMKXhcLNDH94dd9zdctJabV1eUYsQ9Xr9M7uFGxiF2FOKskZm5pR9P5S99eyLEsbH42GpiGDNWryTBtQLfaiS51\",\r\n        \"settings\": [],\r\n        \"token\": \"5665534c6d312e762f324f436f35784434552468564162302f5724244c4251524d7637452e5331317968412e544249477a54323879392e3253707976\"\r\n    },\r\n    \"task\": \"home\",\r\n    \"params\": {\r\n        \"email\": \"vineet@mailinator.com\",\r\n        \"password\": \"Info9179@\",\r\n        \"user_type\": \"User\"\r\n    },\r\n    \"error_code\": 201\r\n}', 'Active', 0, '2020-08-21 19:00:14', 0, '2020-08-22 14:49:02'),
(34, 'Social Login', 'account/social_login', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Successfully logged in.\",\r\n    \"data\": {\r\n        \"first_name\": \"vineet\",\r\n        \"middle_name\": \"\",\r\n        \"last_name\": \"shirdhonkar\",\r\n        \"full_name\": \"\",\r\n        \"profile_image_url\": \"http://localhost/medzigo/api/assets/images/avatar50.jpg\",\r\n        \"cover_image\": \"http://localhost/medzigo/api/assets/images/placeholder100.jpg\",\r\n        \"group_name\": \"Doctor\",\r\n        \"age\": null,\r\n        \"gender\": \"Male\",\r\n        \"mobile_number\": \"1\",\r\n        \"timezone\": \"\",\r\n        \"language\": \"\",\r\n        \"currency\": \"\",\r\n        \"device_id\": \"fgR60y_ns6kfSAsgHksQlR:APA91bFC90UBQU5WUF5Vk6sbF9gt3MtgJw9Q2SjOjtjzTrDpWakK9oMKXhcLNDH94dd9zdctJabV1eUYsQ9Xr9M7uFGxiF2FOKskZm5pR9P5S99eyLEsbH42GpiGDNWryTBtQLfaiS51\",\r\n        \"settings\": [],\r\n        \"token\": \"244e6c6f325662782e524139753953555568752f5775365174616e794554557532364f6e32304d302f454c52372467527972382e505757314c2f2444\"\r\n    },\r\n    \"task\": \"home\",\r\n    \"params\": {\r\n        \"email\": \"vineet@mailinator.com\",\r\n        \"social_id\": \"1\",\r\n        \"social_type\": \"facebook\",\r\n        \"user_type\": \"Patient\",\r\n        \"first_name\": \"vineet\",\r\n        \"last_name\": \"shirdhonkar\",\r\n        \"name\": \"vineet shirdhonkar\"\r\n    },\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-22 11:06:32', 0, '2020-08-22 11:15:54'),
(35, 'Forget Password', 'account/forget_password', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Instruction has been sent to your email address to reset account password.\",\r\n    \"data\": \"OVZzZVlEVlhQV1N0ajB6aXlHcHZadz09\",\r\n    \"params\": {\r\n        \"email\": \"vineet@mailinator.com\"\r\n    },\r\n    \"task\": \"forget_password_post\",\r\n    \"error_code\": 201\r\n}', 'Active', 0, '2020-08-22 11:21:39', 0, '2020-08-22 12:10:47'),
(37, 'Change Password', 'account/change_password', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Password updated\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"old_password\": \"Info9179@\",\r\n        \"password\": \"Demo@123\",\r\n        \"confirm_password\": \"Demo@123\",\r\n        \"token\": \"242e4e34696d61562e6e65686831327167364f2f39466839786c6a4f75304a362f4224504e797034787a4b4f727924454138374f58313678576b702f\"\r\n    },\r\n    \"task\": \"change_password_put\",\r\n    \"error_code\": 200\r\n}', 'Active', 0, '2020-08-22 11:40:23', 0, '2020-08-22 12:04:17'),
(38, 'Update Profile Picture', 'account/update_profile_image', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Record updated.\",\r\n    \"data\": \"http://localhost/medzigo/media/user-profile-images/68ea7d5692826ec8d636c51b40879e2b-U1102.jpg\",\r\n    \"params\": {\r\n        \"token\": \"4c49794f68316a56676151242e7143372473365576327373646e344b73684964444f514c575131795365346d6564737024453479684f304b684f4f36\"\r\n    },\r\n    \"task\": \"update_profile_image_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-22 12:19:03', 0, '2020-08-24 10:48:52'),
(39, 'Logout', 'account/logout', 'GET', 'true', 'Active', 0, '2020-08-22 12:25:46', 0, '2020-08-22 12:28:23'),
(40, 'Get Profile Details', 'admin/profile_data', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": {\r\n        \"first_name\": \"vineet\",\r\n        \"middle_name\": \"\",\r\n        \"last_name\": \"shirdhonkar\",\r\n        \"full_name\": \"\",\r\n        \"profile_image_url\": \"http://localhost/medzigo/media/user-profile-images/0b7c56e169adab2ed7cd279e9c4d475f-U1036.jpg\",\r\n        \"gender\": \"Male\",\r\n        \"mobile_number\": \"1\",\r\n        \"introduction\": \"\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"params\": {\r\n        \"token\": \"242e4e34696d61562e6e65686831327167364f2f39466839786c6a4f75304a362f4224504e797034787a4b4f727924454138374f58313678576b702f\"\r\n    },\r\n    \"task\": \"profile_data_get\"\r\n}', 'Active', 0, '2020-08-22 14:17:11', 0, '2020-08-22 14:58:52'),
(41, 'Update Profile Details', 'admin/profile_data', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Record updated.\",\r\n    \"data\": \"\",\r\n    \"error_code\": 200,\r\n    \"params\": {\r\n        \"first_name\": \"super\",\r\n        \"last_name\": \"admin\",\r\n        \"gender\": \"Male\",\r\n        \"mobile_number\": \"8982574568\",\r\n        \"introduction\": \"sss\",\r\n        \"token\": \"326e773851666530566478747955546f4d3145784a46784a3151505844334c6e78566669647a635763685643244472774b4b6f65344c647224767924\"\r\n    },\r\n    \"task\": \"profile_data_put\"\r\n}', 'Active', 0, '2020-08-22 14:43:25', 0, '2020-08-22 14:58:36'),
(42, 'Schedule Appointment', 'appointments', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Appointment scheduled successfully\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"72585535424b4e245032557a42756e314479596149324555676c69673142796a306132747734634832344a306d65716e77354f6e5556542453246873\",\r\n        \"appointment_for\": \"Self\",\r\n        \"task\": \"Validate\",\r\n        \"appointment_date\": \"2021-10-30\",\r\n        \"appointment_from_time\": \"10:00 am\",\r\n        \"appointment_to_time\": \"10:30 am\",\r\n        \"doctor_id\": \"U1036\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"appointment_post\"\r\n}', 'Active', 0, '2020-08-22 15:23:05', 1, '2020-09-09 18:14:35'),
(43, 'Get Appointments', 'appointments', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data found.\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"32307837627953737568594474433224675a2f757157675a333339622e347449746e7974436f24507961664f565348674431737224544a646e594b42\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"appointment_get\"\r\n}', 'Active', 0, '2020-08-22 16:34:58', 0, '2020-08-22 16:54:15'),
(44, 'Get Total Appointments', 'appointments/total_appointments', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Total appointments.\",\r\n    \"data\": 12,\r\n    \"params\": {\r\n        \"token\": \"50702e4b676250374c36496d77486d5332316e5965632e6670396851527a7566636a6c6f697931533447372450307332445658383224524b4b244e47\"\r\n    },\r\n    \"error_code\": \"\",\r\n    \"task\": \"total_appointments_get\"\r\n}', 'Active', 0, '2020-08-22 16:57:44', 0, '2020-08-22 17:16:45'),
(45, 'Reschedule Appointment', 'appointments', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Appointment successfully rescheduled\",\r\n    \"data\": \"1\",\r\n   \"params\": {\r\n        \"appointment_id\": \"1\",\r\n        \"appointment_date\": \"2019-10-05\",\r\n        \"appointment_time\": \"10:00 AM\",\r\n        \"token\": \"4f4924783072466c7a3156663462466f30795178363546396f324934556967653238737751316c36783931772e244a70582434424d5476472e457233\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"appointment_put\"\r\n}', 'Active', 0, '2020-08-22 17:24:38', 0, '2020-08-22 17:37:13'),
(46, 'Cancel Appointment', 'appointments/appointment_cancelled', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Appointment has been cancelled.\",\r\n    \"data\": \"1\",\r\n   \"params\": {\r\n        \"appointment_id\": \"1\",\r\n        \"token\": \"4f4924783072466c7a3156663462466f30795178363546396f324934556967653238737751316c36783931772e244a70582434424d5476472e457233\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"appointment_put\"\r\n}', 'Active', 0, '2020-08-22 17:56:32', 0, '2020-08-22 17:57:48'),
(47, 'Confirm Appointment', 'appointments/appointment_confirm', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Appointment Confirmed\",\r\n    \"data\": \"1\",\r\n   \"params\": {\r\n        \"appointment_id\": \"1\",\r\n        \"token\": \"4f4924783072466c7a3156663462466f30795178363546396f324934556967653238737751316c36783931772e244a70582434424d5476472e457233\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"appointment_confirm_put\"\r\n}', 'Active', 0, '2020-08-22 17:56:32', 0, '2020-08-22 18:12:45'),
(48, 'Decline Appointment', 'appointments/appointment_declined', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Appointment has been declined..\",\r\n    \"data\": \"1\",\r\n   \"params\": {\r\n        \"appointment_id\": \"1\",\r\n        \"token\": \"4f4924783072466c7a3156663462466f30795178363546396f324934556967653238737751316c36783931772e244a70582434424d5476472e457233\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"appointment_declined_put\"\r\n}', 'Active', 0, '2020-08-22 17:56:32', 0, '2020-08-22 18:14:54'),
(49, 'Mark Complete Appointment', 'appointments/mark_completed', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Appointment has been mark completed.\",\r\n    \"data\": \"1\",\r\n   \"params\": {\r\n        \"appointment_id\": \"1\",\r\n        \"token\": \"4f4924783072466c7a3156663462466f30795178363546396f324934556967653238737751316c36783931772e244a70582434424d5476472e457233\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"mark_completed_put\"\r\n}', 'Active', 0, '2020-08-22 17:56:32', 0, '2020-08-22 18:23:02'),
(50, 'Get Calendar Data', 'appointments/calendar_data', 'GET', 'sss', 'Active', 0, '2020-08-22 18:29:47', 0, '2020-08-22 18:32:56'),
(51, 'Create Follow Up', 'appointments/followup', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Follow up added successfully\",\r\n    \"data\": \"1\",\r\n    \"params\": {\r\n\"token\":\"62444437677536556b7351556a7424515a6362717224796734707a6b72753038526b4c7044793243\"58574e4a6524326a794134586e4d542e705a3141\r\n\"appointment_id\":\"1\",\r\n\"appointment_date\":\"2020-10-10\",\r\n\"appointment_from_time\":\"10:00 AM\",\r\n\"appointment_to_time\":\"10:30 AM\",\r\n\"note\":\"SSSSSSSSSSSSSSSSSSS\"\r\n    },\r\n    \"task\": \"followup_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-22 18:46:55', 0, '2020-08-22 19:13:41'),
(52, 'Get Follow Up', 'appointments/followup', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": \"1\",\r\n    \"params\": {\r\n\"token\":\"62444437677536556b7351556a7424515a6362717224796734707a6b72753038526b4c7044793243\"58574e4a6524326a794134586e4d542e705a3141,\r\n\"appointment_id\":\"1\",\r\n\"id\":\"2\"\r\n\r\n    },\r\n    \"task\": \"followup_get\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-22 18:46:55', 0, '2020-08-22 18:58:31'),
(53, 'Update Follow Up', 'appointments/followup', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Follow up updated\",\r\n    \"data\": \"1\",\r\n    \"params\": {\r\n\"token\":\"62444437677536556b7351556a7424515a6362717224796734707a6b72753038526b4c7044793243\"58574e4a6524326a794134586e4d542e705a3141,\r\n\"id\":2\r\n\"appointment_id\":\"1\",\r\n\"appointment_date\":\"2020-10-10\",\r\n\"appointment_from_time\":\"10:00 AM\",\r\n\"appointment_to_time\":\"10:30 AM\",\r\n\"note\":\"SSSSSSSSSSSSSSSSSSS\"\r\n    },\r\n    \"task\": \"followup_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-22 18:46:55', 0, '2020-08-22 18:58:31'),
(54, 'Delete Follow Up', 'appointments/followup', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Follow up deleted\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n\"token\":\"62444437677536556b7351556a7424515a6362717224796734707a6b72753038526b4c7044793243\"58574e4a6524326a794134586e4d542e705a3141,\r\n\"id\":2\r\n    },\r\n    \"task\": \"followup_delete\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-22 18:46:55', 0, '2020-08-24 10:19:51'),
(55, 'Get Total Doctor Appointments', 'appointments/doctor_appointment_count_get', 'GET', 'ss', 'Active', 0, '2020-08-24 10:28:14', 0, '0000-00-00 00:00:00'),
(56, 'Create Article', 'article', 'POST', 'dd', 'Active', 0, '2020-08-24 17:38:21', 0, '2020-08-24 17:39:42'),
(57, 'Get Articles', 'articles', 'GET', 'ddd', 'Active', 0, '2020-08-24 17:56:58', 0, '0000-00-00 00:00:00'),
(58, 'Get Total Articles', 'article', 'GET', 'ss', 'Active', 0, '2020-08-24 18:15:50', 0, '0000-00-00 00:00:00'),
(59, 'Update Article', 'article', 'PUT', 'dd', 'Active', 0, '2020-08-24 17:38:21', 0, '2020-08-24 18:10:58'),
(60, 'Create Clinic', 'clinics', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Clinic details added.\",\r\n    \"data\": 25,\r\n    \"params\": {\r\n        \"token\": \"786e36585642734e6a703173425665492448736f76624b6245524a6524696b4a5a6f7943375045245a37324747697965573447535936686c4c424b30\",\r\n        \"name\": \"sharma clinic\",\r\n        \"address\": \"chatri bazar,gwalior\",\r\n        \"latitude\": \"36.5555\",\r\n        \"longitude\": \"34.5555\",\r\n        \"postal_code\": \"474001\",\r\n        \"phone_number\": \"5668767\",\r\n        \"city\": \"gwalior\",\r\n        \"state\": \"MP\"\r\n    },\r\n    \"task\": \"Clinic post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-24 18:43:46', 0, '2020-08-25 10:34:37'),
(61, 'Get Clinics', 'clinics', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": [\r\n        {\r\n            \"clinic_id\": \"7\",\r\n            \"clinic_name\": \"Raffles Heart Center\",\r\n            \"clinic_address\": \"127th Appartment,\\r\\n1st street, Palasia, Indore\",\r\n            \"clinic_latitude\": \"22.7244\",\r\n            \"clinic_longitude\": \"75.8839\",\r\n            \"clinic_postal_code\": \"452001\",\r\n            \"clinic_phone_number\": \"08878872281\",\r\n            \"clinic_city\": \"River Valley\",\r\n            \"clinic_state\": \"CR\",\r\n            \"clinic_country\": \"SG\",\r\n            \"introduction\": \"sdsadasdas\",\r\n            \"status\": \"Active\",\r\n            \"attatchments\": [\r\n                {\r\n                    \"image_id\": \"11\",\r\n                    \"file_type\": \"Image\",\r\n                    \"file_name\": \"http://localhost/medzigo/media/clinics-images/1b56c1a393be3a484fa109f663e0adb6-U1007.jpg\"\r\n                },\r\n                {\r\n                    \"image_id\": \"14\",\r\n                    \"file_type\": \"Image\",\r\n                    \"file_name\": \"http://localhost/medzigo/media/clinics-images/6e486d2b407cf158e8eba93f6808808f-U1007.jpg\"\r\n                },\r\n                {\r\n                    \"image_id\": \"15\",\r\n                    \"file_type\": \"Image\",\r\n                    \"file_name\": \"http://localhost/medzigo/media/clinics-images/6dc5d4b2bc995f030ab2923ce87771b5-U1007.jpg\"\r\n                }\r\n            ]\r\n        },\r\n        {\r\n            \"clinic_id\": \"11\",\r\n            \"clinic_name\": \"sample\",\r\n            \"clinic_address\": \"gwalior\",\r\n            \"clinic_latitude\": \"14.55555\",\r\n            \"clinic_longitude\": \"85.55555\",\r\n            \"clinic_postal_code\": \"474002\",\r\n            \"clinic_phone_number\": \"54789586\",\r\n            \"clinic_city\": \"gwalior\",\r\n            \"clinic_state\": \"Madhya Pradesh\",\r\n            \"clinic_country\": \"India\",\r\n            \"introduction\": \"\",\r\n            \"status\": \"Active\",\r\n            \"attatchments\": []\r\n        },\r\n        {\r\n            \"clinic_id\": \"17\",\r\n            \"clinic_name\": \"sample\",\r\n            \"clinic_address\": \"gwalior\",\r\n            \"clinic_latitude\": \"14.55555\",\r\n            \"clinic_longitude\": \"85.55555\",\r\n            \"clinic_postal_code\": \"474002\",\r\n            \"clinic_phone_number\": \"547895861\",\r\n            \"clinic_city\": \"gwalior\",\r\n            \"clinic_state\": \"Madhya Pradesh\",\r\n            \"clinic_country\": \"India\",\r\n            \"introduction\": \"\",\r\n            \"status\": \"Active\",\r\n            \"attatchments\": []\r\n        },\r\n        {\r\n            \"clinic_id\": \"18\",\r\n            \"clinic_name\": \"sample clinic center\",\r\n            \"clinic_address\": \"chatri bazar\",\r\n            \"clinic_latitude\": \"78.5555\",\r\n            \"clinic_longitude\": \"80.5555\",\r\n            \"clinic_postal_code\": \"474001\",\r\n            \"clinic_phone_number\": \"8982578473\",\r\n            \"clinic_city\": \"gwalior\",\r\n            \"clinic_state\": \"MP\",\r\n            \"clinic_country\": \"India\",\r\n            \"introduction\": \"\",\r\n            \"status\": \"Active\",\r\n            \"attatchments\": []\r\n        },\r\n        {\r\n            \"clinic_id\": \"19\",\r\n            \"clinic_name\": \"Vineet Shirdhonkar\",\r\n            \"clinic_address\": \"\",\r\n            \"clinic_latitude\": \"\",\r\n            \"clinic_longitude\": \"\",\r\n            \"clinic_postal_code\": \"\",\r\n            \"clinic_phone_number\": \"8952578473\",\r\n            \"clinic_city\": \"\",\r\n            \"clinic_state\": \"\",\r\n            \"clinic_country\": \"SG\",\r\n            \"introduction\": \"\",\r\n            \"status\": \"Inactive\",\r\n            \"attatchments\": []\r\n        },\r\n        {\r\n            \"clinic_id\": \"20\",\r\n            \"clinic_name\": \"Vineet Shirdhonkar\",\r\n            \"clinic_address\": \"\",\r\n            \"clinic_latitude\": \"\",\r\n            \"clinic_longitude\": \"\",\r\n            \"clinic_postal_code\": \"\",\r\n            \"clinic_phone_number\": \"8052578473\",\r\n            \"clinic_city\": \"\",\r\n            \"clinic_state\": \"\",\r\n            \"clinic_country\": \"SG\",\r\n            \"introduction\": \"\",\r\n            \"status\": \"Inactive\",\r\n            \"attatchments\": []\r\n        },\r\n        {\r\n            \"clinic_id\": \"21\",\r\n            \"clinic_name\": \"sharma clinic\",\r\n            \"clinic_address\": \"chatri bazar,gwalior\",\r\n            \"clinic_latitude\": \"36.5555\",\r\n            \"clinic_longitude\": \"34.5555\",\r\n            \"clinic_postal_code\": \"474001\",\r\n            \"clinic_phone_number\": \"5668755\",\r\n            \"clinic_city\": \"gwalior\",\r\n            \"clinic_state\": \"MP\",\r\n            \"clinic_country\": \"SG\",\r\n            \"introduction\": \"\",\r\n            \"status\": \"Active\",\r\n            \"attatchments\": []\r\n        },\r\n        {\r\n            \"clinic_id\": \"22\",\r\n            \"clinic_name\": \"sharma clinic\",\r\n            \"clinic_address\": \"chatri bazar,gwalior\",\r\n            \"clinic_latitude\": \"36.5555\",\r\n            \"clinic_longitude\": \"34.5555\",\r\n            \"clinic_postal_code\": \"474001\",\r\n            \"clinic_phone_number\": \"5668759\",\r\n            \"clinic_city\": \"gwalior\",\r\n            \"clinic_state\": \"MP\",\r\n            \"clinic_country\": \"SG\",\r\n            \"introduction\": \"\",\r\n            \"status\": \"Active\",\r\n            \"attatchments\": []\r\n        },\r\n        {\r\n            \"clinic_id\": \"23\",\r\n            \"clinic_name\": \"sharma clinic\",\r\n            \"clinic_address\": \"chatri bazar,gwalior\",\r\n            \"clinic_latitude\": \"36.5555\",\r\n            \"clinic_longitude\": \"34.5555\",\r\n            \"clinic_postal_code\": \"474001\",\r\n            \"clinic_phone_number\": \"5668789\",\r\n            \"clinic_city\": \"gwalior\",\r\n            \"clinic_state\": \"MP\",\r\n            \"clinic_country\": \"SG\",\r\n            \"introduction\": \"\",\r\n            \"status\": \"Active\",\r\n            \"attatchments\": []\r\n        },\r\n        {\r\n            \"clinic_id\": \"24\",\r\n            \"clinic_name\": \"sharma clinic\",\r\n            \"clinic_address\": \"chatri bazar,gwalior\",\r\n            \"clinic_latitude\": \"36.5555\",\r\n            \"clinic_longitude\": \"34.5555\",\r\n            \"clinic_postal_code\": \"474001\",\r\n            \"clinic_phone_number\": \"5668769\",\r\n            \"clinic_city\": \"gwalior\",\r\n            \"clinic_state\": \"MP\",\r\n            \"clinic_country\": \"SG\",\r\n            \"introduction\": \"\",\r\n            \"status\": \"Active\",\r\n            \"attatchments\": [\r\n                {\r\n                    \"image_id\": \"18\",\r\n                    \"file_type\": \"Image\",\r\n                    \"file_name\": \"http://localhost/medzigo/media/clinics-images/87cb926a42f7cbd8fa3597666e227df0-U1002.jpg\"\r\n                }\r\n            ]\r\n        },\r\n        {\r\n            \"clinic_id\": \"25\",\r\n            \"clinic_name\": \"sharma clinic\",\r\n            \"clinic_address\": \"chatri bazar,gwalior\",\r\n            \"clinic_latitude\": \"36.5555\",\r\n            \"clinic_longitude\": \"34.5555\",\r\n            \"clinic_postal_code\": \"474001\",\r\n            \"clinic_phone_number\": \"5668767\",\r\n            \"clinic_city\": \"gwalior\",\r\n            \"clinic_state\": \"MP\",\r\n            \"clinic_country\": \"SG\",\r\n            \"introduction\": \"\",\r\n            \"status\": \"Active\",\r\n            \"attatchments\": [\r\n                {\r\n                    \"image_id\": \"19\",\r\n                    \"file_type\": \"Image\",\r\n                    \"file_name\": \"http://localhost/medzigo/media/clinics-images/d3b5ba74010c2ca13ca2e1996762a8fd-U1002.jpg\"\r\n                }\r\n            ]\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"786e36585642734e6a703173425665492448736f76624b6245524a6524696b4a5a6f7943375045245a37324747697965573447535936686c4c424b30\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"index_get\"\r\n}', 'Active', 0, '2020-08-24 18:43:46', 0, '2020-08-25 11:02:29'),
(62, 'Get Total Clinics', 'clinics', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": 11,\r\n    \"params\": {\r\n        \"token\": \"786e36585642734e6a703173425665492448736f76624b6245524a6524696b4a5a6f7943375045245a37324747697965573447535936686c4c424b30\",\r\n        \"clinic_id\": \"7\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"clinic_total\"\r\n}', 'Active', 0, '2020-08-24 18:43:46', 0, '2020-08-25 11:39:28'),
(63, 'Update Clinic', 'clinics', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Clinic details updated.\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"name\": \"sharma clinic\",\r\n        \"clinic_id\": \"7\",\r\n        \"address\": \"chatri bazar,gwalior\",\r\n        \"latitude\": \"36.5555\",\r\n        \"longitude\": \"34.5555\",\r\n        \"postal_code\": \"474001\",\r\n        \"phone_number\": \"5668787\",\r\n        \"city\": \"gwalior\",\r\n        \"state\": \"MP\",\r\n        \"token\": \"522455413258754339636e5676726a366b49733131475065464b755a797779664224585541453932783052546f2f6a4c522e414b35696c68614a2464\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"task\": \"clinicput\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-24 18:43:46', 0, '2020-08-25 12:04:36'),
(64, 'Update Clinic Image', 'clinics/update_clinic_image', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Image uploaded successfully\",\r\n    \"params\": {\r\n        \"token\": \"786e36585642734e6a703173425665492448736f76624b6245524a6524696b4a5a6f7943375045245a37324747697965573447535936686c4c424b30\",\r\n        \"clinic_id\": \"24\"\r\n    },\r\n    \"task\": \"update_clinic_image_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-25 13:02:32', 0, '2020-08-25 13:03:46'),
(65, 'Delete Clinic', 'clinics', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Record Deleted\"\r\n}', 'Active', 0, '2020-08-24 18:43:46', 0, '2020-08-25 12:13:42'),
(66, 'Delete Clinic Attachment', 'clinics/delete_attachment', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Image Deleted Successfully\"\r\n}', 'Active', 0, '2020-08-24 18:43:46', 0, '2020-08-25 12:41:36'),
(67, 'Create User Settings', 'user_settings', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"User Setting Successfully Updated.\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"56426a32593864246d32324b79467a76654f657553243164436235316b54494549527368306d76716f424c44623563706d244c384448423364667133\",\r\n        \"action\": \"Create\",\r\n        \"meta_key\": \"key\",\r\n        \"meta_value\": \"3000\",\r\n        \"user_id\": \"U1009\"\r\n    },\r\n    \"task\": \"user_setting_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-21 15:41:29'),
(68, 'Get User Settings', 'user_settings', 'GET', '{\r\n	\"status\": true,\r\n	\"message\": \"Data Found\",\r\n	\"data\": [\r\n		{\r\n			\"id\": \"7\",\r\n			\"user_id\": \"U1096\",\r\n			\"meta_key\": \"ddd\",\r\n			\"meta_value\": \"dd\"\r\n		},\r\n		{\r\n			\"id\": \"8\",\r\n			\"user_id\": \"U1096\",\r\n			\"meta_key\": \"ddd1\",\r\n			\"meta_value\": \"dd\"\r\n		}\r\n	],\r\n	\"params\": {\r\n		\"token\": \"50702e4b676250374c36496d77486d5332316e5965632e6670396851527a7566636a6c6f697931533447372450307332445658383224524b4b244e47\",\r\n		\"setting_id\": \"\",\r\n		\"_\": \"1598256895957\"\r\n	},\r\n	\"error_code\": 200,\r\n	\"task\": \"user_setting_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-21 16:43:15'),
(69, 'Update User Settings', 'user_settings', 'PUT', '{\r\n \"status\": true,\r\n \"message\": \"User Setting Successfully Updated.\",\r\n \"data\": \"\",\r\n \"params\": {\r\n  \"token\": \"7830792e6a5639516a63313624375a4e5a4a4f72546a7424756135742e24527751795132367153323864436b65314b3863304a434f34794b79594745\",\r\n  \"setting_id\": \"7\",\r\n  \"meta_key\": \"ddd\",\r\n  \"meta_value\": \"dd\",\r\n  \"user_type\": \"Doctor\"\r\n },\r\n \"task\": \"user_setting_put\",\r\n \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-25 14:31:56'),
(70, 'Delete User Settings', 'user_settings', 'DELETE', '{\r\n \"status\": true,\r\n \"message\": \"Record deleted\",\r\n \"data\": \"\",\r\n \"params\": {\r\n  \"token\": \"7830792e6a5639516a63313624375a4e5a4a4f72546a7424756135742e24527751795132367153323864436b65314b3863304a434f34794b79594745\",\r\n  \"setting_id\": \"7\",\r\n  \"user_id\": \"U1036\"\r\n },\r\n \"task\": \"user_setting_delete\",\r\n \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:45:35', 0, '2020-08-25 14:32:54'),
(75, 'Create User Bank', 'user_bank', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Bank Detail Added Successfully.\",\r\n    \"data\": 7,\r\n    \"params\": {\r\n        \"token\": \"646161566c3450757479326e245664436b59332e675766575a30764a497148312445424e51725737305973336c24333274625279574d5430712f5a56\",\r\n        \"bank_name\": \"SBI\",\r\n        \"account_holder_name\": \"vineet\",\r\n        \"account_number\": \"45875698569\",\r\n        \"bank_code\": \"SBIN30987\",\r\n        \"is_default\": \"Yes\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"bank_detail_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-25 14:46:31'),
(76, 'Get User Bank', 'user_bank', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": [\r\n        {\r\n            \"bank_id\": \"7\",\r\n            \"user_id\": \"U1036\",\r\n            \"bank_name\": \"SBI\",\r\n            \"account_holder_name\": \"vineet\",\r\n            \"account_number\": \"XXXXXXXX569\",\r\n            \"bank_code\": \"XXXXXX987\",\r\n            \"is_default\": \"Yes\",\r\n            \"created_date\": \"2020-08-25 14:46:07\",\r\n            \"updated_date\": \"0000-00-00 00:00:00\"\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"7374324e534330683032487047496f73495a3178667049414d24514b6e6d6d2451784939484f6b37246e643961753273666c6f774d4353792e5a5472\",\r\n        \"bank_id\": \"\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"bank_detail_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-25 14:53:54'),
(77, 'Get Default Account', 'user_bank/account_default', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Bank Set as default successfully.\",\r\n    \"params\": {\r\n        \"token\": \"6d745324324e583262474441777348757a6f5030697937755824446c4c706f4b31346568645747654b3970456a246277316f49794e50753346543832\",\r\n        \"bank_id\": \"7\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"account_default_get\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-25 15:01:03'),
(78, 'Update User Bank', 'user_bank', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Bank Detail Update Successfully.\",\r\n    \"params\": {\r\n        \"token\": \"596f56246d534770305030692e244375696b494a316969797171683671794744674476576234244b4a6e745571375553577a642e2e30544e32684b30\",\r\n        \"bank_name\": \"SBI\",\r\n        \"account_holder_name\": \"vineet\",\r\n        \"account_number\": \"45975698569\",\r\n        \"bank_code\": \"SBININSS7\",\r\n        \"is_default\": \"Yes\",\r\n        \"bank_id\": \"67\",\r\n        \"user_type\": \"Doctor\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"bank_detail_put\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-25 15:14:31'),
(79, 'Delete User Bank', 'user_bank', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Record deleted\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"596f56246d534770305030692e244375696b494a316969797171683671794744674476576234244b4a6e745571375553577a642e2e30544e32684b30\",\r\n        \"bank_id\": \"7\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"bank_detail_delete\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:45:35', 0, '2020-08-25 15:22:56'),
(80, 'Create User Card', 'user_card', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Card Added Successfully.\",\r\n    \"data\": 35,\r\n    \"params\": {\r\n        \"token\": \"646161566c3450757479326e245664436b59332e675766575a30764a497148312445424e51725737305973336c24333274625279574d5430712f5a56\",\r\n        \"card_number\": \"4242424242424242\",\r\n        \"exp_month\": \"02\",\r\n        \"exp_year\": \"2024\",\r\n        \"cvv\": \"745\",\r\n        \"is_default\": \"Yes\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"card_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-25 15:35:36'),
(81, 'Get User Card', 'user_card', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": [\r\n        {\r\n            \"card_id\": \"35\",\r\n            \"card_number\": \"XXXXXXXXXXXXX242\",\r\n            \"card_holder_name\": \"\",\r\n            \"card_type\": \"\",\r\n            \"exp_month\": \"2\",\r\n            \"exp_year\": \"2024\",\r\n            \"cvv\": \"745\",\r\n            \"is_default\": \"Yes\",\r\n            \"user_id\": \"U1036\"\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"464c243546714c676f494f315873684b6d33483931636d6379756c6e307162692e356a4b2e54476b34316e6d4173366e68744e244c24394941324a48\",\r\n        \"card_id\": \"\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"card_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-25 15:43:59'),
(82, 'Get Default Card', 'user_card/card_default', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Card is Set as default.\",\r\n    \"params\": {\r\n        \"token\": \"6d745324324e583262474441777348757a6f5030697937755824446c4c706f4b31346568645747654b3970456a246277316f49794e50753346543832\",\r\n        \"card_id\": \"35\"\r\n    },\r\n    \"task\": \"card_default_get\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-25 15:51:16'),
(83, 'Update User Card', 'user_card', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Card Updated Successfully.\",\r\n    \"params\": {\r\n        \"token\": \"646161566c3450757479326e245664436b59332e675766575a30764a497148312445424e51725737305973336c24333274625279574d5430712f5a56\",\r\n        \"card_number\": \"4242424242424242\",\r\n        \"exp_month\": \"02\",\r\n        \"exp_year\": \"2024\",\r\n        \"cvv\": \"745\",\r\n        \"is_default\": \"Yes\",\r\n        \"card_id\": \"35\",\r\n        \"user_type\": \"Doctor\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"card_put\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-25 16:00:00'),
(84, 'Delete User Card', 'user_card', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Record deleted\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"596f56246d534770305030692e244375696b494a316969797171683671794744674476576234244b4a6e745571375553577a642e2e30544e32684b30\",\r\n        \"card_id\": \"35\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"card_delete\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:45:35', 0, '2020-08-25 16:06:19'),
(85, 'Create User Document', 'user_document', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"File Added Successfully.\",\r\n    \"data\": 61,\r\n    \"params\": {\r\n        \"token\": \"646161566c3450757479326e245664436b59332e675766575a30764a497148312445424e51725737305973336c24333274625279574d5430712f5a56\",\r\n        \"title\": \"passport_front\",\r\n        \"document_number\": \"MP04FFF\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"document_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-25 16:44:20'),
(86, 'Get User Document', 'user_document', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": [\r\n        {\r\n            \"document_id\": \"61\",\r\n            \"user_id\": \"U1036\",\r\n            \"patient_id\": \"\",\r\n            \"title\": \"Passport Front End\",\r\n            \"document_number\": \"MP04FFF\",\r\n            \"file_name\": \"8b83322bcd76e68c47f9f5ef8764f3a7-U1036.jpg\",\r\n            \"file_type\": \"image/jpeg\",\r\n            \"created_date\": \"2020-08-25 16:43:51\",\r\n            \"updated_date\": \"0000-00-00 00:00:00\",\r\n            \"created_by\": \"\",\r\n            \"document_url\": \"http://localhost/medzigo/media/user-documents/8b83322bcd76e68c47f9f5ef8764f3a7-U1036.jpg\"\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"464c243546714c676f494f315873684b6d33483931636d6379756c6e307162692e356a4b2e54476b34316e6d4173366e68744e244c24394941324a48\",\r\n        \"document_id\": \"\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"document_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-25 16:49:14'),
(87, 'Update User Document', 'user_document/document_update', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"File successfully Updated.\",\r\n    \"params\": {\r\n        \"token\": \"646161566c3450757479326e245664436b59332e675766575a30764a497148312445424e51725737305973336c24333274625279574d5430712f5a56\",\r\n        \"title\": \"passport_front\",\r\n        \"document_number\": \"MP04FFFF\",\r\n        \"document_id\": \"61\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"document_update\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-25 17:00:03'),
(88, 'Delete User Document', 'user_document', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Record deleted\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"596f56246d534770305030692e244375696b494a316969797171683671794744674476576234244b4a6e745571375553577a642e2e30544e32684b30\",\r\n        \"card_id\": \"35\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"card_delete\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:45:35', 0, '2020-08-25 16:06:19'),
(89, 'Create User Education', 'user_education', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Education Added Successfully.\",\r\n    \"data\": 8,\r\n    \"params\": {\r\n        \"token\": \"722f7432374369474d45244f4c4f305159755359455069506f7a724879374b434b656f6324597957762e5a4f792e5043734a75574a244171346f5531\",\r\n        \"degree\": \"MBBS\",\r\n        \"university\": \"DAVV\",\r\n        \"year\": \"2012\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"task\": \"education_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-25 17:46:12'),
(90, 'Get User Education', 'user_education', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": [\r\n        {\r\n            \"id\": \"8\",\r\n            \"user_id\": \"U1002\",\r\n            \"degree\": \"MBBS\",\r\n            \"university\": \"DAVV\",\r\n            \"year\": \"2012\",\r\n            \"created_date\": \"2020-08-25 17:45:38\",\r\n            \"updated_date\": \"0000-00-00 00:00:00\"\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"722f7432374369474d45244f4c4f305159755359455069506f7a724879374b434b656f6324597957762e5a4f792e5043734a75574a244171346f5531\",\r\n        \"education_id\": \"\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"education_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-25 18:04:04'),
(91, 'Update User Education', 'user_education', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Education Successfully Updated.\",\r\n    \"params\": {\r\n        \"token\": \"646161566c3450757479326e245664436b59332e675766575a30764a497148312445424e51725737305973336c24333274625279574d5430712f5a56\",\r\n        \"degree\": \"MBBS\",\r\n        \"university\": \"DAVV\",\r\n        \"year\": \"2012\",\r\n        \"user_id\": \"U1036\",\r\n        \"education_id\": \"3\",\r\n        \"user_type\": \"Doctor\"\r\n    },\r\n    \"task\": \"education_put\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-25 18:31:33'),
(92, 'Delete User Education', 'user_education', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Record deleted\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"646161566c3450757479326e245664436b59332e675766575a30764a497148312445424e51725737305973336c24333274625279574d5430712f5a56\",\r\n        \"education_id\": \"8\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"education_delete\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:45:35', 0, '2020-08-25 18:41:34'),
(93, 'Create User Experience', 'user_experience', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Experience Added Successfully.\",\r\n    \"data\": 8,\r\n    \"params\": {\r\n        \"token\": \"722f7432374369474d45244f4c4f305159755359455069506f7a724879374b434b656f6324597957762e5a4f792e5043734a75574a244171346f5531\",\r\n        \"clinic\": \"sharma clinic\",\r\n        \"start_year\": \"2008\",\r\n        \"end_year\": \"2012\",\r\n        \"start_month\": \"02\",\r\n        \"end_month\": \"04\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"task\": \"experience_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-26 10:48:58'),
(94, 'Get User Experience', 'user_experience', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": [\r\n        {\r\n            \"id\": \"8\",\r\n            \"user_id\": \"U1002\",\r\n            \"clinic\": \"sharma clinic\",\r\n            \"start_year\": \"2008\",\r\n            \"end_year\": \"2012\",\r\n            \"start_month\": \"2\",\r\n            \"end_month\": \"4\",\r\n            \"description\": \"\",\r\n            \"created_date\": \"2020-08-26 10:48:38\",\r\n            \"updated_date\": \"0000-00-00 00:00:00\"\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"722f7432374369474d45244f4c4f305159755359455069506f7a724879374b434b656f6324597957762e5a4f792e5043734a75574a244171346f5531\",\r\n        \"experience_id\": \"\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"education_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-26 10:53:27'),
(95, 'Update User Experience', 'user_experience', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Experience Successfully Updated.\",\r\n    \"params\": {\r\n        \"token\": \"646161566c3450757479326e245664436b59332e675766575a30764a497148312445424e51725737305973336c24333274625279574d5430712f5a56\",\r\n        \"clinic\": \"sharma clinic\",\r\n        \"start_year\": \"2004\",\r\n        \"end_year\": \"2012\",\r\n        \"start_month\": \"04\",\r\n        \"end_month\": \"05\",\r\n        \"user_id\": \"U1036\",\r\n        \"experience_id\": \"3\",\r\n        \"user_type\": \"Doctor\"\r\n    },\r\n    \"task\": \"experience_put\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-26 10:59:16'),
(96, 'Delete User Experience', 'user_experience', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Record deleted\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"646161566c3450757479326e245664436b59332e675766575a30764a497148312445424e51725737305973336c24333274625279574d5430712f5a56\",\r\n        \"experience_id\": \"8\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"experience_delete\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:45:35', 0, '2020-08-26 11:05:13'),
(97, 'Create User Patient', 'user_patient', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"User Successfully registerd\",\r\n    \"data\": 8,\r\n    \"params\": {\r\n        \"token\": \"4f612e77676a242439367966665731324c434a2f5272504266306e4e3562493524694e3454314c62352e3249676e6e514d4f3269585a4c794f615753\",\r\n        \"patient_name\": \"vineet\",\r\n        \"patient_gender\": \"Male\",\r\n        \"patient_dob\": \"2012-10-10\",\r\n        \"height\": \"13\",\r\n        \"weight\": \"15\",\r\n        \"user_id\": \"U1117\"\r\n    },\r\n    \"task\": \"user_patients_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-26 11:40:25'),
(98, 'Get User Patient', 'user_patient', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": [\r\n        {\r\n            \"patient_id\": \"8\",\r\n            \"user_id\": \"U1117\",\r\n            \"user_type\": \"Family\",\r\n            \"patient_name\": \"vineet\",\r\n            \"patient_image\": \"http://localhost/medzigo/api/assets/images/placeholder100.jpg\",\r\n            \"patient_dob\": \"2012-10-10\",\r\n            \"patient_gender\": \"Male\",\r\n            \"allergy\": \"\",\r\n            \"medical_history\": \"\",\r\n            \"height\": \"13\",\r\n            \"weight\": \"15\",\r\n            \"created_date\": \"2020-08-26 11:39:57\",\r\n            \"patient_image_name\": \"\",\r\n            \"patient_age\": \"7\",\r\n            \"patient_dob_formatted\": \"10 Oct, 2012\"\r\n        },\r\n        {\r\n            \"patient_id\": \"7\",\r\n            \"user_id\": \"U1117\",\r\n            \"user_type\": \"Family\",\r\n            \"patient_name\": \"sharma clinic\",\r\n            \"patient_image\": \"http://localhost/medzigo/api/assets/images/placeholder100.jpg\",\r\n            \"patient_dob\": \"2020-08-26\",\r\n            \"patient_gender\": \"Male\",\r\n            \"allergy\": \"\",\r\n            \"medical_history\": \"\",\r\n            \"height\": \"02\",\r\n            \"weight\": \"04\",\r\n            \"created_date\": \"2020-08-26 11:39:06\",\r\n            \"patient_image_name\": \"\",\r\n            \"patient_age\": \"0\",\r\n            \"patient_dob_formatted\": \"26 Aug, 2020\"\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"4f612e77676a242439367966665731324c434a2f5272504266306e4e3562493524694e3454314c62352e3249676e6e514d4f3269585a4c794f615753\",\r\n        \"patient_id\": \"\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"user_patients_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-26 11:51:49'),
(99, 'Update User Patient', 'user_patient/update_user_patient', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"User Data successfully Updated.\",\r\n    \"params\": {\r\n        \"token\": \"4f612e77676a242439367966665731324c434a2f5272504266306e4e3562493524694e3454314c62352e3249676e6e514d4f3269585a4c794f615753\",\r\n        \"patient_name\": \"vineet\",\r\n        \"patient_gender\": \"Male\",\r\n        \"patient_dob\": \"2012-10-10\",\r\n        \"height\": \"13\",\r\n        \"weight\": \"15\",\r\n        \"patient_id\": \"9\",\r\n        \"user_type\": \"Family\",\r\n        \"user_id\": \"U1117\"\r\n    },\r\n    \"task\": \"patient_update\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-26 12:13:45'),
(100, 'Delete User Patient', 'user_patient', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Record deleted\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"646161566c3450757479326e245664436b59332e675766575a30764a497148312445424e51725737305973336c24333274625279574d5430712f5a56\",\r\n        \"patient_id\": \"8\",\r\n        \"user_id\": \"U1036\"\r\n    },\r\n    \"task\": \"patient_delete\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:45:35', 0, '2020-08-26 12:58:15'),
(101, 'Create User Services', 'user_services', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"User Services Added Successfully.\",\r\n    \"data\": 12,\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"title\": \"sample service\",\r\n        \"instructions\": \"dddd\",\r\n        \"service_fee\": \"200\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"task\": \"service_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-26 13:15:55'),
(102, 'Get User Services', 'user_services', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": [\r\n        {\r\n            \"service_id\": \"12\",\r\n            \"user_id\": \"U1002\",\r\n            \"title\": \"sample service\",\r\n            \"instructions\": \"dddd\",\r\n            \"service_fee\": \"200\",\r\n            \"status\": \"Active\",\r\n            \"created_by\": \"U1002\",\r\n            \"created_date\": \"2020-08-26 13:09:27\",\r\n            \"formated_fee\": \"₹200.00\"\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"service_id\": \"\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"service_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-26 13:22:29'),
(103, 'Update User Services', 'user_services', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"User Services Successfully Updated.\",\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"title\": \"sample service\",\r\n        \"instructions\": \"dddd\",\r\n        \"service_fee\": \"200.33\",\r\n        \"user_id\": \"U1002\",\r\n        \"service_id\": \"12\",\r\n        \"user_type\": \"Super Admin\"\r\n    },\r\n    \"task\": \"service_update\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-26 13:27:03');
INSERT INTO `tbl_api` (`api_id`, `api_name`, `end_point`, `method_name`, `description`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(104, 'Delete User Services', 'user_services', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Record deleted\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"service_id\": \"12\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"task\": \"service_delete\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:45:35', 0, '2020-08-26 13:35:12'),
(105, 'Create User Award', 'user_award', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"User Successfully registerd\",\r\n    \"data\": 8,\r\n    \"params\": {\r\n        \"token\": \"4f612e77676a242439367966665731324c434a2f5272504266306e4e3562493524694e3454314c62352e3249676e6e514d4f3269585a4c794f615753\",\r\n        \"patient_name\": \"vineet\",\r\n        \"patient_gender\": \"Male\",\r\n        \"patient_dob\": \"2012-10-10\",\r\n        \"height\": \"13\",\r\n        \"weight\": \"15\",\r\n        \"user_id\": \"U1117\"\r\n    },\r\n    \"task\": \"user_patients_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-26 11:40:25'),
(106, 'Get User Award', 'user_award', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": [\r\n        {\r\n            \"patient_id\": \"8\",\r\n            \"user_id\": \"U1117\",\r\n            \"user_type\": \"Family\",\r\n            \"patient_name\": \"vineet\",\r\n            \"patient_image\": \"http://localhost/medzigo/api/assets/images/placeholder100.jpg\",\r\n            \"patient_dob\": \"2012-10-10\",\r\n            \"patient_gender\": \"Male\",\r\n            \"allergy\": \"\",\r\n            \"medical_history\": \"\",\r\n            \"height\": \"13\",\r\n            \"weight\": \"15\",\r\n            \"created_date\": \"2020-08-26 11:39:57\",\r\n            \"patient_image_name\": \"\",\r\n            \"patient_age\": \"7\",\r\n            \"patient_dob_formatted\": \"10 Oct, 2012\"\r\n        },\r\n        {\r\n            \"patient_id\": \"7\",\r\n            \"user_id\": \"U1117\",\r\n            \"user_type\": \"Family\",\r\n            \"patient_name\": \"sharma clinic\",\r\n            \"patient_image\": \"http://localhost/medzigo/api/assets/images/placeholder100.jpg\",\r\n            \"patient_dob\": \"2020-08-26\",\r\n            \"patient_gender\": \"Male\",\r\n            \"allergy\": \"\",\r\n            \"medical_history\": \"\",\r\n            \"height\": \"02\",\r\n            \"weight\": \"04\",\r\n            \"created_date\": \"2020-08-26 11:39:06\",\r\n            \"patient_image_name\": \"\",\r\n            \"patient_age\": \"0\",\r\n            \"patient_dob_formatted\": \"26 Aug, 2020\"\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"4f612e77676a242439367966665731324c434a2f5272504266306e4e3562493524694e3454314c62352e3249676e6e514d4f3269585a4c794f615753\",\r\n        \"patient_id\": \"\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"user_patients_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-26 11:51:49'),
(107, 'Update User Award', 'user_award/award_update', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"User Data successfully Updated.\",\r\n    \"params\": {\r\n        \"token\": \"4f612e77676a242439367966665731324c434a2f5272504266306e4e3562493524694e3454314c62352e3249676e6e514d4f3269585a4c794f615753\",\r\n        \"patient_name\": \"vineet\",\r\n        \"patient_gender\": \"Male\",\r\n        \"patient_dob\": \"2012-10-10\",\r\n        \"height\": \"13\",\r\n        \"weight\": \"15\",\r\n        \"patient_id\": \"9\",\r\n        \"user_type\": \"Family\",\r\n        \"user_id\": \"U1117\"\r\n    },\r\n    \"task\": \"patient_update\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-26 12:13:45'),
(108, 'Delete User Award', 'user_award', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Record deleted\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"service_id\": \"12\",\r\n        \"user_id\": \"U1002\"\r\n    },\r\n    \"task\": \"service_delete\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 16:45:35', 0, '2020-08-26 13:35:12'),
(109, 'Total Appointments', 'dashboard/appointments', 'GET', '{\r\n    \"Total\": 12,\r\n    \"Pending\": \"12\",\r\n    \"Confirmed\": 0,\r\n    \"Declined\": 0,\r\n    \"Cancelled\": 0,\r\n    \"Rescheduled\": 0,\r\n    \"Completed\": 0\r\n}', 'Active', 0, '2020-08-26 15:33:07', 0, '0000-00-00 00:00:00'),
(110, 'Total Registered Users', 'dashboard/registered_users', 'GET', '{\r\n    \"label\": [\r\n        \"Jan\",\r\n        \"Feb\",\r\n        \"Mar\",\r\n        \"Apr\",\r\n        \"May\",\r\n        \"Jun\",\r\n        \"Jul\",\r\n        \"Aug\",\r\n        \"Sep\",\r\n        \"Oct\",\r\n        \"Nov\",\r\n        \"Dec\"\r\n    ],\r\n    \"data\": [\r\n        \"0\",\r\n        \"25\",\r\n        \"16\",\r\n        \"2\",\r\n        \"16\",\r\n        \"0\",\r\n        \"17\",\r\n        \"7\",\r\n        \"0\",\r\n        \"0\",\r\n        \"0\",\r\n        \"0\"\r\n    ]\r\n}', 'Active', 0, '2020-08-26 15:33:07', 0, '2020-08-26 15:36:43'),
(111, 'Create Disease', 'diseases', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Diseases Added Successfully.\",\r\n    \"data\": 2,\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"disease\": \"Chikengunia\"\r\n    },\r\n    \"error_code\": \"\",\r\n    \"task\": \"diseases_post\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-26 16:02:03'),
(112, 'Get Diseases', 'diseases', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Data Found\",\r\n    \"data\": [\r\n        {\r\n            \"disease_id\": \"2\",\r\n            \"disease\": \"Chikengunia\",\r\n            \"symptom\": \"\",\r\n            \"created_by\": \"U1002\",\r\n            \"created_date\": \"2020-08-26 16:01:44\",\r\n            \"updated_by\": \"\",\r\n            \"updated_date\": \"0000-00-00 00:00:00\",\r\n            \"content_type\": \"mz_diseases\"\r\n        },\r\n        {\r\n            \"disease_id\": \"1\",\r\n            \"disease\": \"Malaria\",\r\n            \"symptom\": \"\",\r\n            \"created_by\": \"U1002\",\r\n            \"created_date\": \"2020-08-26 15:54:39\",\r\n            \"updated_by\": \"\",\r\n            \"updated_date\": \"0000-00-00 00:00:00\",\r\n            \"content_type\": \"mz_diseases\"\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"disease_id\": \"\",\r\n        \"user_id\": \"\",\r\n        \"ob_key\": \"\",\r\n        \"ob_value\": \"\",\r\n        \"limit\": \"\",\r\n        \"page\": \"\"\r\n    },\r\n    \"error_code\": 200,\r\n    \"task\": \"diseases_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-26 16:13:08'),
(113, 'Get Total Diseases', 'diseases/total', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Total data\",\r\n    \"data\": 2,\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"user_id\": \"\"\r\n    },\r\n    \"error_code\": \"\",\r\n    \"task\": \"diseases_get\"\r\n}', 'Active', 0, '2020-08-21 16:42:58', 0, '2020-08-26 17:12:19'),
(114, 'Get All Diseases', 'diseases/disease_select', 'GET', '{\r\n    \"status\": true,\r\n    \"message\": \"Total data\",\r\n    \"data\": [\r\n        {\r\n            \"disease_id\": \"1\",\r\n            \"disease\": \"Malaria\",\r\n            \"symptom\": \"\",\r\n            \"created_by\": \"U1002\",\r\n            \"created_date\": \"2020-08-26 15:54:39\",\r\n            \"updated_by\": \"\",\r\n            \"updated_date\": \"0000-00-00 00:00:00\"\r\n        },\r\n        {\r\n            \"disease_id\": \"2\",\r\n            \"disease\": \"Chikengunia\",\r\n            \"symptom\": \"\",\r\n            \"created_by\": \"U1002\",\r\n            \"created_date\": \"2020-08-26 16:01:44\",\r\n            \"updated_by\": \"\",\r\n            \"updated_date\": \"0000-00-00 00:00:00\"\r\n        }\r\n    ],\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\"\r\n    },\r\n    \"error_code\": \"\",\r\n    \"task\": \"diseases_select_get\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-26 17:21:04'),
(115, 'Update Diseases', 'diseases', 'PUT', '{\r\n    \"status\": true,\r\n    \"message\": \"Diseases Updated Successfully.\",\r\n    \"data\": \"1\",\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"disease\": \"malaria\",\r\n        \"disease_id\": \"1\"\r\n    },\r\n    \"error_code\": \"\",\r\n    \"task\": \"diseases_put\"\r\n}', 'Active', 0, '2020-08-21 13:05:39', 0, '2020-08-26 18:05:37'),
(116, 'Delete Diseases', 'diseases', 'DELETE', '{\r\n    \"status\": true,\r\n    \"message\": \"Diseases Deleted Successfully.\",\r\n    \"data\": \"\",\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"disease_id\": \"1\"\r\n    },\r\n    \"error_code\": \"\",\r\n    \"task\": \"diseases_delete\"\r\n}', 'Active', 0, '2020-08-21 16:45:35', 0, '2020-08-26 18:11:39'),
(117, 'Create Doctor', 'doctors', 'POST', '{\r\n    \"status\": true,\r\n    \"message\": \"Record added\",\r\n    \"data\": \"U1120\",\r\n    \"params\": {\r\n        \"token\": \"247932305a7954724571514c44316c4168247a4f4b4b523243346d35535848715973323534414132512f4d244f65374e6b323442672f6259374d6a65\",\r\n        \"first_name\": \"vineet\",\r\n        \"last_name\": \"Doctor\",\r\n        \"email\": \"vineetd@mailinator.com\",\r\n        \"gender\": \"Male\",\r\n        \"mobile_number\": \"8982578473\",\r\n        \"consultation_fee\": \"30\",\r\n        \"specialization_id\": \"2\"\r\n    },\r\n    \"task\": \"doctors_post\",\r\n    \"error_code\": \"\"\r\n}', 'Active', 0, '2020-08-21 12:56:45', 0, '2020-08-26 18:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_access`
--

CREATE TABLE `tbl_api_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT 0,
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `action_microtime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_keys`
--

CREATE TABLE `tbl_api_keys` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_name` varchar(250) NOT NULL,
  `disk_serial_number` varchar(100) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `key_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added_by` bigint(20) NOT NULL,
  `added_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `action_microtime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_api_keys`
--

INSERT INTO `tbl_api_keys` (`id`, `user_id`, `client_name`, `disk_serial_number`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`, `key_status`, `added_by`, `added_date`, `updated_by`, `updated_date`, `action_microtime`) VALUES
(1, NULL, 'Desktop', '', '48gowo0o88kk8gwoc4kww88wckwgk4gk00s0o8oo', 0, 0, 0, NULL, '2020-09-01 00:00:00', 'Active', 1, '2019-02-28 00:00:00', NULL, '2019-02-28 00:00:00', ''),
(2, NULL, 'Mobile', '', '37gowo0o88io8gwoc4kww88w69wgk4gk00s0o8xc', 0, 0, 0, NULL, '2020-09-01 00:00:00', 'Active', 1, '2019-02-28 00:00:00', NULL, '2019-02-28 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_limits`
--

CREATE TABLE `tbl_api_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL,
  `action_microtime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_logs`
--

CREATE TABLE `tbl_api_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0,
  `action_microtime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_menu`
--

CREATE TABLE `tbl_api_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(255) NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_api_menu`
--

INSERT INTO `tbl_api_menu` (`id`, `name`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(3, 'Account', 'Active', 'U1001', '2020-08-21 18:05:40', 'U1001', '2020-08-21 18:15:23'),
(4, 'Admin', 'Active', 'U1001', '2020-08-22 14:15:18', '', '0000-00-00 00:00:00'),
(5, 'Appointments', 'Active', 'U1001', '2020-08-22 14:50:41', '', '0000-00-00 00:00:00'),
(6, 'Article', 'Inactive', 'U1001', '2020-08-24 17:29:43', '', '0000-00-00 00:00:00'),
(7, 'Clinic', 'Active', 'U1001', '2020-08-24 18:34:42', '', '0000-00-00 00:00:00'),
(8, 'User Settings', 'Active', 'U1001', '2020-08-21 11:51:46', 'U1001', '2020-08-21 16:10:37'),
(9, 'User Bank', 'Active', 'U1001', '2020-08-25 14:28:23', '', '0000-00-00 00:00:00'),
(10, 'User Card', 'Active', 'U1001', '2020-08-25 15:27:12', '', '0000-00-00 00:00:00'),
(11, 'User Document', 'Active', 'U1001', '2020-08-25 16:34:19', '', '0000-00-00 00:00:00'),
(12, 'User Education', 'Active', 'U1001', '2020-08-25 17:33:30', '', '0000-00-00 00:00:00'),
(13, 'User Experience', 'Active', 'U1001', '2020-08-26 10:44:24', '', '0000-00-00 00:00:00'),
(14, 'User Patient', 'Active', 'U1001', '2020-08-26 11:23:21', 'U1001', '2020-08-26 11:24:34'),
(15, 'User Services', 'Active', 'U1001', '2020-08-26 13:11:07', '', '0000-00-00 00:00:00'),
(16, 'User Award', 'Active', 'U1001', '2020-08-26 13:43:06', '', '0000-00-00 00:00:00'),
(17, 'Dashboard', 'Active', 'U1001', '2020-08-26 15:30:05', '', '0000-00-00 00:00:00'),
(18, 'Diseases', 'Active', 'U1001', '2020-08-26 15:47:29', '', '0000-00-00 00:00:00'),
(19, 'Doctors', 'Active', 'U1001', '2020-08-26 18:22:45', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_params`
--

CREATE TABLE `tbl_api_params` (
  `id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `data_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_api_params`
--

INSERT INTO `tbl_api_params` (`id`, `api_id`, `name`, `value`, `description`, `data_type`) VALUES
(1, 67, 'token', 'sdfs', 'Required', 'string'),
(2, 68, 'token', 'dsfdsfd', 'Required', 'string'),
(3, 67, 'action', 'Create', 'Create update delete', 'string'),
(4, 67, 'meta_key', 'key', 'Required', 'string'),
(5, 67, 'meta_value', '3000', 'Required', 'integer'),
(6, 68, 'setting_id', '1', 'Optional', 'integer'),
(9, 69, 'token', 'asdsadsa', 'Required', 'string'),
(10, 69, 'setting_id', '1', 'Required', 'integer'),
(11, 70, 'token', 'asdasda', 'Required', 'string'),
(12, 70, 'setting_id', '1', 'Required', 'integer'),
(13, 32, 'first_name', 'vineet', 'Required', 'string'),
(14, 32, 'last_name', 'shirdhonkar', 'Required', 'string'),
(15, 32, 'email', 'vineet@mailinator.com', 'Required', 'string'),
(16, 32, 'mobile_number', '1234567890', 'Required', 'integer'),
(17, 32, 'password', 'Info9179@', 'Required', 'string'),
(18, 32, 'confirm_password', 'Info9179@', 'Required', 'string'),
(19, 32, 'gender', 'Male', 'Required', 'string'),
(20, 32, 'dob', '1990-10-30', 'Required', 'string'),
(21, 32, 'user_type', 'Patient', 'Required(Patient/Doctor)', 'string'),
(23, 33, 'email', 'vineet@mailinator.com', 'Required', 'string'),
(24, 33, 'password', 'Info9179@', 'Required ', 'string'),
(25, 33, 'user_type', 'Panel', 'Required (Admin/User/Panel)', 'string'),
(251, 34, 'email', 'vineet@mailinator.com', 'Required', 'string'),
(252, 34, 'social_id', '1', 'Required', 'integer'),
(253, 34, 'social_type', 'facebook', 'Required', 'string'),
(254, 34, 'user_type', 'Patient', 'Required', 'string'),
(255, 34, 'first_name', 'Vineet', 'Required', 'string'),
(256, 34, 'last_name', 'Shirdhonkar', 'Required', 'string'),
(257, 34, 'name', 'Vineet Shirdhonkar', 'Required', 'string'),
(258, 34, 'picture', 'file.jpg', 'Optional', 'string'),
(259, 35, 'email', 'vineet@mailinator.com', 'Required', 'string'),
(260, 36, 'code', 'dddddd', 'Required', 'string'),
(261, 36, 'password', 'Info9179@', 'Required', 'string'),
(262, 36, 'conf_password', 'Info9179@', 'Required', 'string'),
(263, 36, 'user_id', 'U1036', 'Optional', 'string'),
(264, 37, 'token', 'sadasdsadasd', 'Required', 'string'),
(265, 37, 'old_password', 'Info9179@', 'Required', 'string'),
(266, 37, 'password', 'Info9179@', 'Required', 'string'),
(267, 37, 'confirm_password', 'Info9179@', 'Required', 'string'),
(268, 38, 'token', 'ddd', 'Required', 'string'),
(269, 38, 'profile_image', 'demo.jpg', 'Required', 'file'),
(270, 39, 'token', 'ddd', 'Required', 'string'),
(271, 40, 'token', 'ddddd', 'Required', 'string'),
(272, 41, 'token', '326e773851666530566478747955546f4d3145784a46784a3151505844334c6e78566669647a635763685643244472774b4b6f65344c647224767924', 'Required', 'string'),
(273, 41, 'first_name', 'Super', 'Required', 'string'),
(274, 41, 'last_name', 'admin', 'Required', 'string'),
(275, 41, 'gender', 'Male', 'Required', 'string'),
(276, 41, 'mobile_number', '8982574568', 'Required', 'integer'),
(277, 41, 'introduction', 'sss', 'Required', 'string'),
(278, 42, 'token', 'saaaaaaaaaaaa', 'Required', 'string'),
(279, 42, 'appointment_for', 'Self', 'Required(Self|Family)', 'string'),
(280, 42, 'patient_name', 'suresh', 'Partially Required', 'string'),
(281, 42, 'patient_gender', 'Male', 'Partially Required', 'string'),
(282, 42, 'dob', '1995-10-30', 'Partially Required', 'string'),
(283, 42, 'task', 'Validate', 'Required', 'string'),
(284, 42, 'card_number', '4242424242424242', 'Partially Required', 'string'),
(285, 42, 'card_exp_month', '02', 'Partially Required', 'integer'),
(286, 42, 'card_exp_year', '2024', 'Partially Required', 'integer'),
(287, 42, 'card_cvv', '235', 'Partially Required', 'integer'),
(288, 42, 'appointment_date', '2021-10-05', 'Required', 'string'),
(289, 42, 'appointment_from_time', '10:00:00', 'Required', 'string'),
(290, 42, 'appointment_to_time', '10:30:00', 'Required', 'string'),
(291, 42, 'doctor_id', 'U1005', 'Required', 'string'),
(292, 42, 'card_id', '1', 'Required', 'integer'),
(293, 43, 'token', 'sssssssssssssssss', 'Required', 'string'),
(294, 43, 'appointment_type', 'upcoming', 'Optional', 'string'),
(295, 43, 'status', 'Pending', 'Optional', 'string'),
(296, 44, 'token', 'ddddddddddddd', 'Required', 'string'),
(297, 44, 'status', 'Pending', 'Optional', 'string'),
(298, 44, 'appointment_type', 'Pending', 'Optional', 'string'),
(299, 44, 'doctor_id', '', 'Optional', 'string'),
(300, 44, 'patient_id', '', 'Optional', 'string'),
(301, 44, 'search', '', 'Optional', 'string'),
(302, 44, 'from_date', '', 'Optional', 'string'),
(303, 44, 'to_date', '', 'Optional', 'string'),
(304, 45, 'token', 'saaaaaaaaaaaaaa', 'Required', 'string'),
(305, 45, 'appointment_id', '1', 'Required', 'integer'),
(306, 45, 'appointment_date', '2020-10-20', 'Required', 'string'),
(307, 45, 'appointment_from_time', '10:00 AM', 'Partially Required', 'string'),
(308, 45, 'appointment_to_time', '12:00 PM', 'Partially Required', 'string'),
(309, 45, 'appointment_time', '10:00', 'Partially Required', 'string'),
(310, 45, 'appointment_note', 'sfdsfdsf', 'Optional', 'string'),
(311, 46, 'token', 'sdsadas', 'Required', 'string'),
(312, 46, 'appointment_id', '1', 'Required', 'integer'),
(313, 47, 'token', 'dddddddddddddddd', 'Required', 'string'),
(314, 47, 'appointment_id', '1', 'Required', 'integer'),
(315, 47, 'appointment_time', '10:00 AM', 'Partially Required', 'string'),
(316, 48, 'token', 'ssssssssssssss', 'Required', 'string'),
(317, 48, 'appointment_id', '1', 'Required', 'integer'),
(318, 49, 'token', 'ssssssssss', 'Required', 'string'),
(319, 49, 'appointment_id', '1', 'Required', 'integer'),
(320, 49, 'complete_note', 'dddddddddddddd', 'Required', 'string'),
(321, 50, 'token', 'ssssssssss', 'Required', 'string'),
(322, 50, 'end_date', '2020-10-20', 'Required', 'string'),
(323, 50, 'start_date', '2020-10-10', 'Required', 'string'),
(324, 51, 'token', 'ddd', 'Required', 'string'),
(325, 51, 'appointment_id', '1', 'Required', 'integer'),
(326, 51, 'appointment_date', '2020-10-05', 'Required', 'string'),
(327, 51, 'appointment_from_time', '10:00 AM', 'Required', 'string'),
(328, 51, 'appointment_to_time', '12:00 PM', 'Required', 'string'),
(329, 51, 'note', 'ssssssssss', 'Required', 'string'),
(330, 53, 'note', 'ssssssssss', 'Required', 'string'),
(331, 53, 'appointment_to_time', '12:00 PM', 'Required', 'string'),
(332, 53, 'appointment_from_time', '10:00 AM', 'Required', 'string'),
(333, 53, 'appointment_date', '2020-10-05', 'Required', 'string'),
(334, 53, 'appointment_id', '1', 'Required', 'integer'),
(335, 53, 'token', 'ddd', 'Required', 'string'),
(336, 54, 'token', 'sssssssssssssssss', 'Required', 'string'),
(337, 54, 'id', 'ssssssss', 'Required', 'integer'),
(338, 55, 'token', 'ssssssss', 'Required', 'string'),
(339, 55, 'user_id', 'U1002', 'Partially Required', 'string'),
(340, 69, 'meta_key', 'dddd', 'Required', 'string'),
(341, 69, 'meta_value', 'dd', 'Required', 'string'),
(342, 56, 'token', 'dddddddddd', 'Required', 'string'),
(343, 56, 'title', 'sample', 'Required', 'string'),
(344, 56, 'category_id', '1', 'Required', 'integer'),
(345, 56, 'content', 'sssssssss', 'Required', 'string'),
(346, 56, 'publish_date', '2020-10-10', 'Required', 'string'),
(347, 56, 'image', 'demo.jpg', 'Optional', 'file'),
(348, 57, 'token', 'ddddddddd', 'Required', 'string'),
(349, 57, 'article_id', '1', 'Optional', 'integer'),
(350, 57, 'search', 'demo', 'Optional', 'string'),
(351, 57, 'status', 'sss', 'Optional', 'string'),
(352, 57, 'ob_key', 'title', 'Optional', 'string'),
(353, 57, 'ob_value', 'sample', 'Optional', 'string'),
(354, 57, 'limit', '5', 'Optional', 'integer'),
(355, 57, 'page', '3', 'Optional', 'integer'),
(356, 58, 'token', 'dddddddddd', 'Required', 'string'),
(357, 58, 'title', 'sample', 'Required', 'string'),
(358, 58, 'category_id', '1', 'Required', 'integer'),
(359, 58, 'content', 'sssssssss', 'Required', 'string'),
(360, 58, 'publish_date', '2020-10-10', 'Required', 'string'),
(361, 58, 'article_id', '1', 'Required', 'integer'),
(362, 59, 'token', 'ssss', 'Required', 'string'),
(363, 59, 'search', 'sss', 'Optional', 'string'),
(364, 59, 'status', 'ddd', 'Optional', 'string'),
(3606, 60, 'token', 'sss', 'Required', 'string'),
(3607, 60, 'name', 'sharma clinic center', 'Required', 'string'),
(3608, 60, 'address', 'gwalior', 'Required', 'string'),
(3609, 60, 'latitude', '56.66666', 'Required', 'float'),
(3610, 60, 'longitude', '58.66666', 'Required', 'float'),
(3611, 60, 'postal_code', '474001', 'Required', 'integer'),
(3612, 60, 'phone_number', '24785985', 'Required', 'integer'),
(3613, 60, 'city', 'gwalior', 'Required', 'string'),
(3614, 60, 'state', 'MP', 'Required', 'string'),
(3615, 60, 'introduction', 'ssss', 'Optional', 'string'),
(3616, 60, 'status', 'Active', 'Optional', 'status'),
(3617, 60, 'image', 'demo.jpg', 'Required', 'file'),
(3618, 61, 'token', 'sssssssssss', 'Required', 'string'),
(3619, 61, 'clinic_id', '7', 'Optional', 'integer'),
(3620, 61, 'status', 'Active', 'Optional', 'string'),
(3621, 61, 'ob_key', 'name', 'Optional', 'string'),
(3622, 61, 'ob_value', 'sample', 'Optional', 'string'),
(3623, 61, 'limit', '7', 'Optional', 'integer'),
(3624, 61, 'page', '5', 'Optional', 'integer'),
(3625, 62, 'token', 'dddddd', 'Required', 'string'),
(3626, 62, 'search', 'demo', 'Optional', 'string'),
(3627, 63, 'token', 'dddd', 'Required', 'string'),
(3628, 63, 'clinic_id', '2', 'Required', 'intger'),
(3629, 63, 'name', 'eee', 'Required', 'string'),
(3630, 63, 'address', 'chatri bazar,gwalior', 'Required', 'string'),
(3631, 63, 'latitude', '56.5555', 'Required', 'float'),
(3632, 63, 'longitude', '58.6666', 'Required', 'string'),
(3633, 63, 'postal_code', '474001', 'Required', 'string'),
(3634, 63, 'phone_number', '57898555', 'Required', 'integer'),
(3635, 63, 'city', 'gwalior', 'Required', 'string'),
(3636, 63, 'state', 'MP', 'Required', 'string'),
(3637, 63, 'introduction', 'ssss', 'Optional', 'string'),
(3638, 64, 'token', 'ssssssssssss', 'Required', 'sting'),
(3639, 64, 'clinic_id', '7', 'Required', 'integer'),
(3640, 66, 'token', 'dddddddddd', 'Required', 'string'),
(3641, 66, 'image_id', '1', 'Required', 'Required'),
(3642, 65, 'token', 'ssss', 'Required', 'string'),
(3643, 65, 'clinic_id', '2', 'Required', 'integer'),
(3644, 75, 'bank_name', 'SBI', 'Required', 'string'),
(3645, 75, 'account_holder_name', 'vineet', 'Required', 'string'),
(3646, 75, 'account_number', '7875856985', 'Required', 'integer'),
(3647, 75, 'bank_code', 'SBIN34976', 'Required', 'string'),
(3648, 75, 'is_default', 'Yes', 'Required', 'string'),
(3649, 75, 'token', '33333333', 'Required', 'string'),
(3650, 76, 'token', 'dddd', 'Required', 'string'),
(3651, 76, 'user_id', 'U1002', 'Partially Required', 'string'),
(3652, 76, 'bank_id', '7', 'Optional', 'integer'),
(3653, 77, 'token', 'sssss', 'Required', 'string'),
(3654, 77, 'user_id', 'U1036', 'Partially Required', 'string'),
(3655, 77, 'bank_id', '7', 'Required', 'integer'),
(3656, 78, 'token', '33333333', 'Required', 'string'),
(3657, 78, 'bank_name', 'SBI', 'Required', 'string'),
(3658, 78, 'account_holder_name', 'vineet', 'Required', 'string'),
(3659, 78, 'account_number', '7875856985', 'Required', 'integer'),
(3660, 78, 'bank_code', 'SBIN34976', 'Required', 'string'),
(3661, 78, 'is_default', 'Yes', 'Required', 'string'),
(3662, 78, 'bank_id', '7', 'Required', 'integer'),
(3663, 79, 'token', 'dddd', 'Required', 'string'),
(3664, 79, 'bank_id', '7', 'Required', 'integer'),
(3665, 80, 'token', 'sssss', 'Required', 'string'),
(3666, 80, 'card_number', '4242424242424242', 'Required', 'integer'),
(3667, 80, 'exp_month', '02', 'Required', 'integer'),
(3668, 80, 'exp_year', '2024', 'Required', 'integer'),
(3669, 80, 'cvv', '785', 'Required', 'integer'),
(3670, 80, 'is_default', 'Yes', 'Required', 'string'),
(3671, 81, 'token', 'ssssssss', 'Required', 'string'),
(3672, 81, 'user_id', 'U1009', 'Partially Required', 'string'),
(3673, 81, 'card_id', '2', 'Optional', 'integer'),
(3674, 82, 'token', 'ssss', 'Required', 'string'),
(3675, 82, 'card_id', '3', 'Required', 'integer'),
(3676, 83, 'token', 'sssss', 'Required', 'string'),
(3677, 83, 'card_number', '4242424242424242', 'Required', 'integer'),
(3678, 83, 'exp_month', '02', 'Required', 'integer'),
(3679, 83, 'exp_year', '2024', 'Required', 'integer'),
(3680, 83, 'cvv', '785', 'Required', 'integer'),
(3681, 83, 'is_default', 'Yes', 'Required', 'string'),
(3682, 83, 'card_id', '3', 'Required', 'integer'),
(3683, 84, 'token', 'ssss', 'Required', 'string'),
(3684, 84, 'card_id', '3', 'Required', 'integer'),
(3685, 85, 'token', 'ssssssss', 'Required', 'string'),
(3686, 85, 'title', 'passport_front', 'Required', 'string'),
(3687, 85, 'document_number', 'MP0322222', 'Partially Required', 'string'),
(3688, 85, 'document_file', 'demo.jpg', 'Required', 'file'),
(3689, 85, 'user_id', 'U1002', 'Partially Required', 'string'),
(3690, 86, 'token', 'ssssssssssss', 'Required', 'string'),
(3691, 86, 'document_id', '2', 'Optional', 'integer'),
(3692, 86, 'user_id', 'U1002', 'Partially Required', 'string'),
(3693, 87, 'token', 'ssssssssss', 'Required', 'string'),
(3694, 87, 'title', 'passport_front', 'Required', 'string'),
(3695, 87, 'document_number', 'MP034444', 'Partially Required', 'string'),
(3696, 87, 'user_id', 'U1002', 'Partially Required', 'Required'),
(3697, 87, 'document_file', 'demo.jpg', 'Required', 'file'),
(3698, 87, 'document_id', '2', 'Required', 'integer'),
(3699, 89, 'token', 'ddddddd', 'Required', 'string'),
(3700, 89, 'degree', 'MBBS', 'Required', 'string'),
(3701, 89, 'university', 'DAVV', 'Required', 'string'),
(3702, 89, 'year', '2020', 'Required', 'integer'),
(3703, 89, 'user_id', 'U1002', 'Partially Required', 'string'),
(3704, 90, 'token', 'dddd', 'Required', 'string'),
(3705, 90, 'education_id', '2', 'Optional', 'integer'),
(3706, 90, 'user_id', 'U1002', 'Partially Required', 'string'),
(3707, 91, 'token', 'ssssssssss', 'Required', 'string'),
(3708, 91, 'degree', 'MBBS', 'Required', 'string'),
(3709, 91, 'university', 'DAVV', 'Required', 'string'),
(3710, 91, 'year', '2012', 'Required', 'integer'),
(3711, 91, 'user_id', 'U1002', 'Partially Required', 'string'),
(3712, 91, 'education_id', '2', 'Required', 'integer'),
(3713, 92, 'token', 'dddddddddd', 'Required', 'string'),
(3714, 92, 'user_id', 'U1002', 'Partially Required', 'string'),
(3715, 92, 'education_id', '2', 'Required', 'integer'),
(3716, 93, 'token', 'dddddddddd', 'Required', 'string'),
(3717, 93, 'clinic', 'sharma cilinc', 'Required', 'string'),
(3718, 93, 'start_year', '2012', 'Required', 'integer'),
(3719, 93, 'end_year', '2016', 'Required', 'integer'),
(3720, 93, 'start_month', '02', 'Required', 'integer'),
(3721, 93, 'end_month', '02', 'Required', 'integer'),
(3722, 93, 'user_id', 'U1002', 'Partially Required', 'string'),
(3723, 94, 'token', 'ssssssssssssss', 'Required', 'string'),
(3724, 94, 'user_id', 'U1002', 'Partially Required', 'string'),
(3725, 94, 'experience_id', '8', 'Optional', 'integer'),
(3726, 95, 'token', 'ffffffffffff', 'Required', 'string'),
(3727, 95, 'clinic', 'sharma cilinc', 'Required', 'string'),
(3728, 95, 'start_year', '2012', 'Required', 'integer'),
(3729, 95, 'end_year', '2016', 'Required', 'integer'),
(3730, 95, 'start_month', '02', 'Required', 'integer'),
(3731, 95, 'end_month', '02', 'Required', 'integer'),
(3732, 95, 'user_id', 'U1002', 'Partially Required', 'string'),
(3733, 95, 'experience_id', '8', 'Optional', 'integer'),
(3734, 96, 'token', 'ssssssssssssss', 'Required', 'string'),
(3735, 96, 'user_id', 'U1002', 'Partially Required', 'string'),
(3736, 96, 'experience_id', '8', 'Required', 'integer'),
(3737, 97, 'token', 'ssssssssssss', 'Required', 'sting'),
(3738, 97, 'patient_name', 'vineet', 'Required', 'string'),
(3739, 97, 'patient_gender', 'Male', 'Required', 'string'),
(3740, 97, 'patient_dob', '2010-10-30', 'Required', 'string'),
(3741, 97, 'height', '12', 'Required', 'integer'),
(3742, 97, 'weight', '5', 'Required', 'integer'),
(3743, 97, 'allergy', 'sadsads', 'Optional', 'string'),
(3744, 97, 'medical_history', 'ssssssssss', 'Optional', 'string'),
(3745, 97, 'patient_image', 'demo.jpg', 'Optional', 'file'),
(3746, 98, 'token', 'ddddddddd', 'Required', 'string'),
(3747, 98, 'user_id', 'U1002', 'Partially Required', 'string'),
(3748, 98, 'patient_id', 'U1117', 'Optional', 'string'),
(3749, 98, 'search', 'vineet', 'Optional', 'string'),
(3750, 98, 'limit', '2', 'Optional', 'integer'),
(3751, 98, 'page', '2', 'Optional', 'integer'),
(3752, 99, 'token', 'ssssssssssss', 'Required', 'sting'),
(3753, 99, 'patient_name', 'vineet', 'Required', 'string'),
(3754, 99, 'patient_gender', 'Male', 'Required', 'string'),
(3755, 99, 'patient_dob', '2010-10-30', 'Required', 'string'),
(3756, 99, 'height', '12', 'Required', 'integer'),
(3757, 99, 'weight', '5', 'Required', 'integer'),
(3758, 99, 'allergy', 'sadsads', 'Optional', 'string'),
(3759, 99, 'medical_history', 'ssssssssss', 'Optional', 'string'),
(3760, 99, 'patient_image', 'demo.jpg', 'Optional', 'file'),
(3761, 99, 'patient_id', 'U1117', 'Required', 'string'),
(3762, 99, 'user_id', 'U1002', 'Partially Required', 'string'),
(3763, 99, 'user_type', 'Family', 'Required', 'string'),
(3764, 100, 'token', 'ssssssssssss', 'Required', 'sting'),
(3765, 100, 'patient_id', 'U1117', 'Required', 'string'),
(3766, 100, 'user_id', 'U1002', 'Partially Required', 'string'),
(3767, 101, 'token', 'sssssssssss', 'Required', 'string'),
(3768, 101, 'title', 'ssss', 'Required', 'string'),
(3769, 101, 'instructions', 'ssssssssss', 'Required', 'string'),
(3770, 101, 'service_fee', '200.00', 'Required', 'decimal'),
(3771, 101, 'user_id', 'U1002', 'Partially Required', 'string'),
(3772, 102, 'token', 'ssssssssssss', 'Required', 'sting'),
(3773, 102, 'user_id', 'U1002', 'Partially Required', 'string'),
(3774, 102, 'service_id', '2', 'Optional', 'integer'),
(3775, 103, 'token', 'sssssssssss', 'Required', 'string'),
(3776, 103, 'title', 'ssss', 'Required', 'string'),
(3777, 103, 'instructions', 'ssssssssss', 'Required', 'string'),
(3778, 103, 'service_fee', '200.00', 'Required', 'decimal'),
(3779, 103, 'user_id', 'U1002', 'Partially Required', 'string'),
(3780, 103, 'service_id', '2', 'Required', 'integer'),
(3781, 104, 'token', 'sssssssssss', 'Required', 'string'),
(3782, 104, 'user_id', 'U1002', 'Partially Required', 'string'),
(3783, 104, 'service_id', '2', 'Required', 'integer'),
(3784, 105, 'token', 'sssssssssss', 'Required', 'string'),
(3785, 105, 'name\r\n', 'sssssssssss', 'Required', 'string'),
(3786, 105, 'description', 'sssssssssss', 'Required', 'string'),
(3787, 105, 'user_id', 'U1002', 'Partially Required', 'string'),
(3788, 105, 'award_image', 'demo.jpg', 'Optional', 'string'),
(3789, 106, 'token', 'sssssssssss', 'Required', 'string'),
(3790, 106, 'user_id', 'U1002', 'Partially Required', 'string'),
(3791, 106, 'award_id', '2', 'Optional', 'integer'),
(3792, 107, 'token', 'sssssssssss', 'Required', 'string'),
(3793, 107, 'name\r\n', 'sssssssssss', 'Required', 'string'),
(3794, 107, 'description', 'sssssssssss', 'Required', 'string'),
(3795, 107, 'user_id', 'U1002', 'Partially Required', 'string'),
(3796, 107, 'award_image', 'demo.jpg', 'Optional', 'string'),
(3797, 107, 'award_id', '2', 'Required', 'integer'),
(3798, 108, 'token', 'sssssssssss', 'Required', 'string'),
(3799, 108, 'user_id', 'U1002', 'Partially Required', 'string'),
(3800, 108, 'award_id', '2', 'Required', 'integer'),
(3801, 109, 'token', 'ddddddddddd', 'Required', 'string'),
(3802, 110, 'token', 'ddddddddddd', 'Required', 'string'),
(3803, 111, 'token', 'sssssss', 'Required', 'string'),
(3804, 111, 'disease', 'Malaria', 'Required', 'string'),
(3805, 112, 'token', 'sssssssssssss', 'Required', 'string'),
(3806, 112, 'disease_id', '2', 'Optional', 'integer'),
(3807, 112, 'user_id', 'U1002', 'Partially Required', 'string'),
(3808, 112, 'ob_key', 'disease', 'Optional', 'string'),
(3809, 112, 'ob_value', 'DESC', 'Optional', 'string'),
(3810, 112, 'limit', '2', 'Optional', 'integer'),
(3811, 112, 'page', '2', 'Optional', 'integer'),
(3812, 113, 'token', 'sssssssssssss', 'Required', 'string'),
(3813, 113, 'user_id', 'U1002', 'Partially Required', 'string'),
(3814, 114, 'token', 'ddddddd', 'Required', 'string'),
(3815, 115, 'token', 'sssssss', 'Required', 'string'),
(3816, 115, 'disease_id', '2', 'Required', 'integer'),
(3817, 115, 'disease', 'Malaria', 'Required', 'string'),
(3818, 116, 'token', 'sssssss', 'Required', 'string'),
(3819, 116, 'disease_id', '2', 'Required', 'integer'),
(3820, 117, 'token', 'dddd', 'Required', 'string'),
(3821, 117, 'first_name', 'vineet', 'Required', 'string'),
(3822, 117, 'last_name', 'shirdhonkar', 'Required', 'string'),
(3823, 117, 'mobile_number', '8982578473', 'Required', 'string'),
(3824, 117, 'gender', 'Male', 'Required', 'string'),
(3825, 117, 'dob', '2000-10-10', 'Optional', 'string'),
(3826, 117, 'email', 'vineetd@mailinator.com', 'Required', 'string'),
(3827, 117, 'language', 'en', 'Optional', 'string'),
(3828, 117, 'consultation_fee', '200', 'Required', 'integer'),
(3829, 117, 'introduction', 'ddd', 'Optional', 'string'),
(3830, 117, 'specialty_type', 'ddd', 'Optional', 'string'),
(3831, 117, 'profile_image', 'demo.jpg', 'Optional', 'file'),
(3832, 117, 'specialization_id', '2', 'Required', 'integer'),
(3833, 117, 'sub_specialization_id', '4', 'Optional', 'integer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_settings`
--

CREATE TABLE `tbl_api_settings` (
  `id` int(11) NOT NULL,
  `base_url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `x_api_key` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(255) NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_api_settings`
--

INSERT INTO `tbl_api_settings` (`id`, `base_url`, `description`, `x_api_key`, `created_by`, `created_date`, `updated_by`, `updated_date`, `status`) VALUES
(2, 'http://simranfeeds.com/medzigo/api/', 'This is medical project', '48gowo0o88kk8gwoc4kww88wckwgk4gk00s0o8oo', '1', '2020-09-28 10:31:32', '1', '2020-09-28 10:35:34', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_submenu`
--

CREATE TABLE `tbl_api_submenu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(255) NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_api_submenu`
--

INSERT INTO `tbl_api_submenu` (`id`, `menu_id`, `api_id`, `name`, `created_by`, `created_date`, `updated_by`, `updated_date`, `status`) VALUES
(1, 8, 67, 'Create User Settings', 'U1001', '2020-08-21 13:11:55', 'U1001', '2020-08-25 14:17:53', 'Active'),
(2, 8, 68, 'Get User Settings', 'U1001', '2020-08-21 16:43:43', 'U1001', '2020-08-25 14:17:36', 'Active'),
(3, 8, 69, 'Update User Settings', 'U1001', '2020-08-21 16:33:52', 'U1001', '2020-08-25 14:17:22', 'Active'),
(4, 8, 70, 'Delete User Settings', 'U1001', '2020-08-21 16:46:04', 'U1001', '2020-08-25 14:16:59', 'Active'),
(22, 3, 32, 'Registration', 'U1001', '2020-08-21 18:34:35', 'U1001', '2020-08-21 18:34:58', 'Active'),
(23, 3, 33, 'Login', 'U1001', '2020-08-21 19:00:41', '', '0000-00-00 00:00:00', 'Active'),
(24, 3, 34, 'Social Login', 'U1001', '2020-08-22 11:07:00', '', '0000-00-00 00:00:00', 'Active'),
(25, 3, 35, 'Forget Password', 'U1001', '2020-08-22 11:22:11', '', '0000-00-00 00:00:00', 'Active'),
(27, 3, 37, 'Change Password', 'U1001', '2020-08-22 11:40:48', '', '0000-00-00 00:00:00', 'Active'),
(28, 3, 38, 'Update Profile Picture', 'U1001', '2020-08-22 12:20:00', '', '0000-00-00 00:00:00', 'Active'),
(29, 3, 39, 'Logout', 'U1001', '2020-08-22 12:29:02', '', '0000-00-00 00:00:00', 'Active'),
(30, 4, 40, 'Get Profile Details', 'U1001', '2020-08-22 14:17:53', '', '0000-00-00 00:00:00', 'Active'),
(31, 4, 41, 'Update Profile Details', 'U1001', '2020-08-22 14:44:13', 'U1001', '2020-08-22 14:47:12', 'Active'),
(32, 5, 42, 'Schedule Appointment', 'U1001', '2020-08-22 15:23:45', '1', '2020-09-09 18:14:08', 'Active'),
(33, 5, 43, 'Get Appointments', 'U1001', '2020-08-22 16:38:48', '', '0000-00-00 00:00:00', 'Active'),
(34, 5, 44, 'Get Total Appointments', 'U1001', '2020-08-22 16:59:52', '', '0000-00-00 00:00:00', 'Active'),
(35, 5, 45, 'Reschedule Appointment', 'U1001', '2020-08-22 17:25:15', '', '0000-00-00 00:00:00', 'Active'),
(36, 5, 47, 'Confirm Appointment', 'U1001', '2020-08-22 18:04:21', '', '0000-00-00 00:00:00', 'Active'),
(37, 5, 48, 'Decline Appointment', 'U1001', '2020-08-22 18:12:08', '', '0000-00-00 00:00:00', 'Active'),
(38, 5, 49, 'Mark Complete Appointment', 'U1001', '2020-08-22 18:21:30', '', '0000-00-00 00:00:00', 'Active'),
(39, 5, 50, 'Get Calendar Data', 'U1001', '2020-08-22 18:33:38', '', '0000-00-00 00:00:00', 'Active'),
(40, 5, 51, 'Create Follow Up', 'U1001', '2020-08-22 18:47:24', '', '0000-00-00 00:00:00', 'Active'),
(41, 5, 52, 'Get Follow Up', 'U1001', '2020-08-22 19:08:57', '', '0000-00-00 00:00:00', 'Active'),
(42, 5, 53, 'Update Follow Up', 'U1001', '2020-08-22 19:10:41', '', '0000-00-00 00:00:00', 'Active'),
(43, 5, 54, 'Delete Follow Up', 'U1001', '2020-08-24 10:18:36', '', '0000-00-00 00:00:00', 'Active'),
(44, 5, 55, 'Get  Total Doctor Appointments', 'U1001', '2020-08-24 10:30:11', '', '0000-00-00 00:00:00', 'Active'),
(45, 6, 56, 'Create Article', 'U1001', '2020-08-24 17:40:11', '', '0000-00-00 00:00:00', 'Active'),
(46, 6, 57, 'Get Articles', 'U1001', '2020-08-24 18:02:57', '', '0000-00-00 00:00:00', 'Active'),
(47, 6, 58, 'Update Article', 'U1001', '2020-08-24 18:03:18', '', '0000-00-00 00:00:00', 'Active'),
(48, 7, 60, 'Create Clinic', 'U1001', '2020-08-24 18:44:28', 'U1001', '2020-08-25 11:35:26', 'Active'),
(49, 7, 61, 'Get Clinics', 'U1001', '2020-08-25 11:36:17', '', '0000-00-00 00:00:00', 'Active'),
(50, 7, 62, 'Get Total Clinics', 'U1001', '2020-08-25 11:37:24', '', '0000-00-00 00:00:00', 'Active'),
(51, 7, 63, 'Update Clinic', 'U1001', '2020-08-25 11:42:37', '', '0000-00-00 00:00:00', 'Active'),
(52, 7, 64, 'Update Clinic Image', 'U1001', '2020-08-25 12:08:25', 'U1001', '2020-08-25 13:08:33', 'Active'),
(53, 7, 65, 'Delete Clinic', 'U1001', '2020-08-25 13:09:55', '', '0000-00-00 00:00:00', 'Active'),
(54, 7, 66, 'Delete Clinic Attachment', 'U1001', '2020-08-25 12:18:59', 'U1001', '2020-08-25 13:07:42', 'Active'),
(532, 9, 75, 'Create User Bank', 'U1001', '2020-08-25 14:33:41', '', '0000-00-00 00:00:00', 'Active'),
(533, 9, 76, 'Get User Bank', 'U1001', '2020-08-25 14:47:39', '', '0000-00-00 00:00:00', 'Active'),
(534, 9, 77, 'Get Default Account', 'U1001', '2020-08-25 14:55:06', '', '0000-00-00 00:00:00', 'Active'),
(535, 9, 78, 'Update User Bank', 'U1001', '2020-08-25 15:13:40', '', '0000-00-00 00:00:00', 'Active'),
(536, 9, 79, 'Delete User Bank', 'U1001', '2020-08-25 15:18:01', '', '0000-00-00 00:00:00', 'Active'),
(537, 10, 80, 'Create User Card', 'U1001', '2020-08-25 15:29:59', '', '0000-00-00 00:00:00', 'Active'),
(538, 10, 81, 'Get User Card', 'U1001', '2020-08-25 15:37:13', '', '0000-00-00 00:00:00', 'Active'),
(539, 10, 82, 'Get Default Card', 'U1001', '2020-08-25 15:49:58', '', '0000-00-00 00:00:00', 'Active'),
(540, 10, 83, 'Update User Card', 'U1001', '2020-08-25 16:01:08', '', '0000-00-00 00:00:00', 'Active'),
(541, 10, 84, 'Delete User Card', 'U1001', '2020-08-25 16:02:48', '', '0000-00-00 00:00:00', 'Active'),
(542, 11, 85, 'Create User Document', 'U1001', '2020-08-25 16:34:46', '', '0000-00-00 00:00:00', 'Active'),
(543, 11, 86, 'Get User Document', 'U1001', '2020-08-25 16:47:40', '', '0000-00-00 00:00:00', 'Active'),
(544, 11, 87, 'Update User Document', 'U1001', '2020-08-25 16:52:59', '', '0000-00-00 00:00:00', 'Active'),
(545, 11, 88, 'Delete User Document', 'U1001', '2020-08-25 17:00:58', '', '0000-00-00 00:00:00', 'Active'),
(546, 12, 89, 'Create User Education', 'U1001', '2020-08-25 17:35:31', '', '0000-00-00 00:00:00', 'Active'),
(547, 12, 90, 'Get User Education', 'U1001', '2020-08-25 18:06:30', '', '0000-00-00 00:00:00', 'Active'),
(548, 12, 91, 'Update User Education', 'U1001', '2020-08-25 18:08:37', '', '0000-00-00 00:00:00', 'Active'),
(549, 12, 92, 'Delete User Education', 'U1001', '2020-08-25 18:33:32', '', '0000-00-00 00:00:00', 'Active'),
(550, 13, 93, 'Create User Experience', 'U1001', '2020-08-26 10:45:01', '', '0000-00-00 00:00:00', 'Active'),
(551, 13, 94, 'Get User Experience', 'U1001', '2020-08-26 10:49:58', '', '0000-00-00 00:00:00', 'Active'),
(552, 13, 95, 'Update User Experiencce', 'U1001', '2020-08-26 10:55:29', '', '0000-00-00 00:00:00', 'Active'),
(553, 13, 96, 'Delete User Experience', 'U1001', '2020-08-26 11:03:17', '', '0000-00-00 00:00:00', 'Active'),
(554, 14, 97, 'Create User Patient', 'U1001', '2020-08-26 11:26:41', '', '0000-00-00 00:00:00', 'Active'),
(555, 14, 98, 'Get User Patient', 'U1001', '2020-08-26 11:41:49', '', '0000-00-00 00:00:00', 'Active'),
(556, 14, 99, 'Update User Patient', 'U1001', '2020-08-26 11:55:01', '', '0000-00-00 00:00:00', 'Active'),
(557, 14, 100, 'Delete User Patient', 'U1001', '2020-08-26 13:00:46', '', '0000-00-00 00:00:00', 'Active'),
(558, 15, 101, 'Create User Services', 'U1001', '2020-08-26 13:11:38', '', '0000-00-00 00:00:00', 'Active'),
(559, 15, 102, 'Get User Services', 'U1001', '2020-08-26 13:17:31', '', '0000-00-00 00:00:00', 'Active'),
(560, 15, 103, 'Update User Services', 'U1001', '2020-08-26 13:23:48', '', '0000-00-00 00:00:00', 'Active'),
(561, 15, 104, 'Delete User Services', 'U1001', '2020-08-26 13:31:34', '', '0000-00-00 00:00:00', 'Active'),
(562, 16, 105, 'Create User Award', 'U1001', '2020-08-26 13:43:34', '', '0000-00-00 00:00:00', 'Active'),
(563, 16, 106, 'Get User Award', 'U1001', '2020-08-26 13:43:57', '', '0000-00-00 00:00:00', 'Active'),
(564, 16, 107, 'Update User Award', 'U1001', '2020-08-26 13:44:16', '', '0000-00-00 00:00:00', 'Active'),
(565, 16, 108, 'Delete User Award', 'U1001', '2020-08-26 13:44:39', '', '0000-00-00 00:00:00', 'Active'),
(566, 17, 109, 'Total Appointments', 'U1001', '2020-08-26 15:30:44', 'U1001', '2020-08-26 15:33:29', 'Active'),
(567, 17, 110, 'Total Registered Users', 'U1001', '2020-08-26 15:37:15', '', '0000-00-00 00:00:00', 'Active'),
(568, 18, 111, 'Create Disease', 'U1001', '2020-08-26 15:48:10', '', '0000-00-00 00:00:00', 'Active'),
(569, 18, 112, 'Get Diseases', 'U1001', '2020-08-26 16:03:28', '', '0000-00-00 00:00:00', 'Active'),
(570, 18, 113, 'Get Total DIseases', 'U1001', '2020-08-26 16:32:50', '', '0000-00-00 00:00:00', 'Active'),
(571, 18, 114, 'Get All Diseases', 'U1001', '2020-08-26 18:14:51', '', '0000-00-00 00:00:00', 'Active'),
(572, 18, 115, 'Update Diseases', 'U1001', '2020-08-26 17:16:39', 'U1001', '2020-08-26 18:12:54', 'Active'),
(573, 18, 116, 'Delete Diseases', 'U1001', '2020-08-26 18:13:19', '', '0000-00-00 00:00:00', 'Active'),
(575, 19, 117, 'Create Doctor', 'U1001', '2020-08-26 18:40:31', '', '0000-00-00 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `appointment_id` int(11) NOT NULL,
  `token` varchar(250) NOT NULL COMMENT 'agora conference token',
  `channelName` varchar(100) NOT NULL COMMENT 'agora channel name',
  `uid` int(10) UNSIGNED DEFAULT NULL COMMENT 'agora uid',
  `order_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `appointment_for` enum('Self','Other') NOT NULL DEFAULT 'Self',
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_mobile` varchar(15) NOT NULL,
  `patient_email` varchar(100) NOT NULL,
  `patient_gender` enum('Male','Female') DEFAULT NULL,
  `patient_age` varchar(100) NOT NULL,
  `patient_meta_info` text NOT NULL,
  `clinic_id` int(11) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `consultation_fee` float(10,2) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time DEFAULT NULL,
  `appointment_from_time` time DEFAULT NULL,
  `appointment_to_time` time DEFAULT NULL,
  `appointment_note` text NOT NULL,
  `appointment_status` enum('Pending','Confirmed','Declined','Cancelled','Rescheduled','Completed') NOT NULL,
  `confirmed` enum('Yes','No') NOT NULL DEFAULT 'No',
  `confirmed_by` bigint(20) DEFAULT NULL,
  `confirmed_date` datetime DEFAULT NULL,
  `completed_by` bigint(20) DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `reschedule_by` bigint(20) DEFAULT NULL,
  `reschedule_reason` text NOT NULL,
  `cancel_by` bigint(20) DEFAULT NULL,
  `cancel_reason` text NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `temp_appointment` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_appointment`
--

INSERT INTO `tbl_appointment` (`appointment_id`, `token`, `channelName`, `uid`, `order_id`, `user_id`, `appointment_for`, `patient_id`, `patient_name`, `patient_mobile`, `patient_email`, `patient_gender`, `patient_age`, `patient_meta_info`, `clinic_id`, `doctor_id`, `consultation_fee`, `appointment_date`, `appointment_time`, `appointment_from_time`, `appointment_to_time`, `appointment_note`, `appointment_status`, `confirmed`, `confirmed_by`, `confirmed_date`, `completed_by`, `completed_date`, `reschedule_by`, `reschedule_reason`, `cancel_by`, `cancel_reason`, `created_by`, `created_date`, `updated_by`, `updated_date`, `temp_appointment`) VALUES
(1, '', '', NULL, 1, 5, 'Self', 2, '', '', '', 'Male', '', '', 9, 4, 0.00, '2020-11-02', '13:40:00', NULL, NULL, '', 'Confirmed', 'No', NULL, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-02 19:19:50', NULL, NULL, 0),
(2, '', '', NULL, 2, 5, 'Self', 2, '', '', '', 'Male', '', '', 9, 4, 0.00, '2020-11-02', '13:40:00', NULL, NULL, '', 'Confirmed', 'No', NULL, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-02 19:24:32', NULL, NULL, 0),
(3, '', '', NULL, 3, 5, 'Self', 2, 'Doctor', '5555554444', 'patient1@mailinator.com', NULL, '', '', 9, 4, 200.00, '2020-11-09', '13:40:00', NULL, NULL, '', 'Confirmed', 'Yes', 4, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-04 16:42:46', NULL, NULL, 1),
(4, '', '', NULL, 4, 5, 'Self', 2, 'Doctor', '5555554444', 'patient1@mailinator.com', NULL, '', '', 9, 4, 200.00, '2020-11-09', '14:20:00', NULL, NULL, '', 'Confirmed', 'Yes', 4, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-04 16:44:36', NULL, NULL, 0),
(5, '', '', NULL, 5, 5, 'Other', 3, 'Manish Yadav', '6898569856', 'demo@gmail.com', NULL, '', '', 9, 4, 200.00, '2020-11-09', '10:40:00', NULL, NULL, '', 'Confirmed', 'Yes', 4, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-04 17:18:36', NULL, NULL, 1),
(7, '', '', NULL, 7, 5, 'Other', 16, 'Sonu Kumar', '5555554444', 'patient1@mailinator.com', NULL, '', '', 9, 4, 500.00, '2020-11-09', '10:20:00', NULL, NULL, '', 'Confirmed', 'Yes', 4, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-06 16:55:43', NULL, NULL, 0),
(8, '', '', NULL, 8, 5, 'Other', 17, 'Arpit sahu', '5555554444', 'patient1@mailinator.com', NULL, '', '', 9, 4, 500.00, '2020-11-10', '12:28:00', NULL, NULL, '', 'Confirmed', 'Yes', 4, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-06 17:30:04', NULL, NULL, 0),
(9, '', '', NULL, 9, 5, 'Other', 4, 'Sonu Kumar', '5555554444', 'patient1@mailinator.com', NULL, '', '', 9, 4, 500.00, '2020-11-10', '13:08:00', NULL, NULL, '', 'Confirmed', 'Yes', 4, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-06 17:44:45', NULL, NULL, 1),
(10, '', '', NULL, 10, 5, 'Self', 2, 'Patient One', '5555554444', 'patient1@mailinator.com', NULL, '', '', 9, 4, 500.00, '2020-11-09', '10:00:00', NULL, NULL, '', 'Confirmed', 'Yes', 4, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-06 18:08:06', NULL, NULL, 0),
(11, '', '', NULL, 11, 5, 'Self', 2, 'Patient One', '5555554444', 'patient1@mailinator.com', NULL, '', '', 9, 4, 500.00, '2020-11-09', '15:20:00', NULL, NULL, '', 'Confirmed', 'Yes', 4, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-06 18:16:51', NULL, NULL, 0),
(12, '', '', NULL, 12, 5, 'Self', 2, 'Patient One', '5555554444', 'patient1@mailinator.com', NULL, '', '', 9, 4, 500.00, '2020-11-09', '11:20:00', NULL, NULL, '', 'Confirmed', 'Yes', 4, NULL, NULL, NULL, NULL, '', NULL, '', 5, '2020-11-06 18:32:18', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_attachments`
--

CREATE TABLE `tbl_appointment_attachments` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `file_name` varchar(250) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_feedback`
--

CREATE TABLE `tbl_appointment_feedback` (
  `feedback_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `feedback_rating` tinyint(3) UNSIGNED NOT NULL COMMENT 'minimum 1, maximum 5',
  `feedback_comment` text NOT NULL,
  `feedback_profile` enum('Anonymous','Public') NOT NULL DEFAULT 'Public',
  `approved_status` enum('Pending','Approved','Declined') NOT NULL DEFAULT 'Pending',
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_followup`
--

CREATE TABLE `tbl_appointment_followup` (
  `followup_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `followup_date` date NOT NULL,
  `followup_from_time` time NOT NULL,
  `followup_to_time` time NOT NULL,
  `followup_note` varchar(250) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_prescriptions`
--

CREATE TABLE `tbl_appointment_prescriptions` (
  `prescription_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_type` enum('Medicine','Lab','Imaging','Recommend') NOT NULL DEFAULT 'Medicine',
  `duration` varchar(20) NOT NULL,
  `dosage` varchar(20) NOT NULL,
  `prescribe_note` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_reports`
--

CREATE TABLE `tbl_appointment_reports` (
  `report_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `report` text NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_services`
--

CREATE TABLE `tbl_appointment_services` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `service_fee` float(10,2) NOT NULL,
  `instructions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_appointment_services`
--

INSERT INTO `tbl_appointment_services` (`id`, `appointment_id`, `service_name`, `service_fee`, `instructions`) VALUES
(1, 1, 'Virtual Consultation', 200.00, 'Virtual Consultation'),
(2, 2, 'Virtual Consultation', 200.00, 'Virtual Consultation'),
(3, 3, 'Virtual Consultation', 200.00, 'Virtual Consultation'),
(4, 4, 'Virtual Consultation', 200.00, 'Virtual Consultation'),
(5, 5, 'Virtual Consultation', 200.00, 'Virtual Consultation'),
(7, 7, 'Virtual Consultation', 500.00, 'Virtual Consultation'),
(8, 8, 'Virtual Consultation', 500.00, 'Virtual Consultation'),
(9, 9, 'Virtual Consultation', 500.00, 'Virtual Consultation'),
(10, 10, 'Virtual Consultation', 500.00, 'Virtual Consultation'),
(11, 11, 'Virtual Consultation', 500.00, 'Virtual Consultation'),
(12, 12, 'Virtual Consultation', 500.00, 'Virtual Consultation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_status_history`
--

CREATE TABLE `tbl_appointment_status_history` (
  `id` bigint(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `appointment_status` enum('Pending','Confirmed','Declined','Cancelled','Rescheduled','Completed') NOT NULL DEFAULT 'Pending',
  `status_note` varchar(250) NOT NULL,
  `reason` text NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_appointment_status_history`
--

INSERT INTO `tbl_appointment_status_history` (`id`, `appointment_id`, `appointment_status`, `status_note`, `reason`, `created_by`, `created_date`) VALUES
(1, 1, 'Confirmed', '', '', 5, '2020-11-02 13:49:50'),
(2, 2, 'Confirmed', '', '', 5, '2020-11-02 13:54:32'),
(3, 3, 'Confirmed', '', '', 5, '2020-11-04 11:12:46'),
(4, 4, 'Confirmed', '', '', 5, '2020-11-04 11:14:36'),
(5, 5, 'Confirmed', '', '', 5, '2020-11-04 11:48:36'),
(7, 7, 'Confirmed', '', '', 5, '2020-11-06 16:55:44'),
(8, 8, 'Confirmed', '', '', 5, '2020-11-06 17:30:04'),
(9, 9, 'Confirmed', '', '', 5, '2020-11-06 17:44:48'),
(10, 10, 'Confirmed', '', '', 5, '2020-11-06 18:08:06'),
(11, 11, 'Confirmed', '', '', 5, '2020-11-06 18:16:58'),
(12, 12, 'Confirmed', '', '', 5, '2020-11-06 18:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article`
--

CREATE TABLE `tbl_article` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(250) NOT NULL,
  `tags` text NOT NULL,
  `meta_tag` varchar(250) NOT NULL DEFAULT '',
  `meta_description` text NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `unpublish_date` datetime DEFAULT NULL,
  `status` enum('Published','Unpublished') NOT NULL DEFAULT 'Unpublished',
  `is_approved` enum('Pending','Approved','Declined') NOT NULL DEFAULT 'Pending',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_article`
--

INSERT INTO `tbl_article` (`article_id`, `category_id`, `sub_category_id`, `title`, `content`, `image`, `alias`, `tags`, `meta_tag`, `meta_description`, `publish_date`, `unpublish_date`, `status`, `is_approved`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 8, 1, 'Eating right to build Immunity against cold', '<p>Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;Indian-American Dr Madhvi Aya, who contracted the&nbsp;</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'eating-right-to-build-immunity-against-cold', '', 'Eating right to build', 'Eating right to build', '2020-08-12 13:10:10', '2020-12-31 13:10:10', 'Published', 'Pending', 2, '2020-10-09 13:10:22', 2, '2020-10-15 16:45:06'),
(2, 8, 3, 'Eating right to build Immunity against', '<p>Eating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against coldEating right to build Immunity against cold</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'eating-right-to-build-immunity-against', 'Insomnia,Sleep disorders,Lungs Problem', 'meta_description', 'Eating right to build Immunity against cold', '2020-10-09 16:39:39', '2021-01-16 16:39:39', 'Published', 'Pending', 4, '2020-10-09 16:39:29', 4, '2020-10-19 18:57:44'),
(5, 11, 51, 'Eating right to build Immunity against Fever', '<p>Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'eating-right-to-build-immunity-against-fever', 'Insomnia,Sleep disorders,Lungs Problem', 'dasdsad', 'Eating right to build Immunity against Fever ', '2020-09-09 19:49:49', '2020-09-09 19:49:49', 'Published', 'Pending', 4, '2020-10-09 16:44:38', 4, '2020-10-19 18:57:19'),
(6, 8, 1, 'Chest pain treatment', '<p>Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;Eating right to build Immunity against Fever&nbsp;</p>', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'chest-pain-treatment', 'Insomnia,Sleep disorders,Lungs Problem', 'dsad', 'Eating right to build Immunity against Fever ', '2020-10-09 16:44:44', '2021-04-23 16:45:45', 'Published', 'Pending', 4, '2020-10-09 16:45:09', NULL, '2020-10-09 16:45:09'),
(7, 8, 1, 'AI can help doctors, governments fight ovid-19 pandemic', 'Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-help-doctors-governments-fight-ovid-19-pandemic', 'Insomnia,Sleep disorders,Lungs Problem', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', '', 'Pending', 2, '2020-10-14 12:55:11', NULL, '2020-10-14 12:55:11'),
(8, 8, 1, 'AI can help doctors, governments fight covid-19 pandemic', '<p>Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-help-doctors-governments-fight-covid-19-pandemic', 'Fatigue,Insomnia,Lungs Problem,Sexual Well-being,Sleep disorders', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', 'Published', 'Pending', 2, '2020-10-14 12:55:29', 2, '2020-10-15 16:48:45'),
(9, 8, 1, 'AI can help doctors, governments fight covid-19', 'Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-help-doctors-governments-fight-covid-19', 'Insomnia,Sleep disorders,Lungs Problem', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', 'Published', 'Pending', 4, '2020-10-14 12:55:33', NULL, '2020-10-14 12:55:33'),
(10, 8, 2, 'AI can help doctors, governments fight', '<p>Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-help-doctors-governments-fight', 'Insomnia,Sleep disorders,Lungs Problem', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', 'Published', 'Pending', 4, '2020-10-14 12:55:37', 4, '2020-10-19 18:51:45'),
(11, 8, 1, 'governments fight ovid-19 pandemic', '<p>Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'governments-fight-ovid-19-pandemic', '', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', 'Published', 'Pending', 2, '2020-10-14 12:55:55', 2, '2020-10-15 16:44:28'),
(12, 15, 52, 'governments fight Covid-19', '<p>Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'governments-fight-covid-19', 'Insomnia,Sleep disorders,Lungs Problem', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', 'Published', 'Pending', 4, '2020-10-14 12:56:03', 4, '2020-10-19 18:56:58'),
(14, 8, 3, 'AI can help doctors, governments fight ovid-19 pandemi', '<p>Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19</p>\n', '7a70376994a7c922d93e57ab11df8953-article-18.jpg', 'ai-can-help-doctors-governments-fight-ovid-19-pandemi', 'Insomnia,Sleep disorders,Lungs Problem', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', 'Published', 'Pending', 4, '2020-10-14 13:07:07', 4, '2020-10-19 18:56:11'),
(15, 8, 1, 'AI can help doctors, governments fight ovid-19', '<p>Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-help-doctors-governments-fight-ovid-19', 'Insomnia,Sleep disorders,Lungs Problem', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', 'Published', 'Pending', 2, '2020-10-14 13:07:24', 2, '2020-10-15 13:36:15'),
(17, 8, 2, 'AI can help doctors, governments', '<p>Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19</p>\n', '7a70376994a7c922d93e57ab11df8953-article-18.jpg', 'ai-can-help-doctors-governments', 'Insomnia,Sleep disorders,Lungs Problem', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', 'Published', 'Pending', 4, '2020-10-14 13:07:33', 4, '2020-10-19 18:55:42'),
(18, 8, 1, 'AI can help doctors, governments fight Covid-19 pandemics', '<p>Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19&nbsp;Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19&nbsp;Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19&nbsp;Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country&#39;s COVID-19</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-help-doctors-governments-fight-covid-19-pandemics', 'Insomnia,Sleep disorders,Lungs Problem', 'meta_description', 'sada', '2020-10-15 11:48:48', '2020-10-15 11:48:48', 'Published', 'Pending', 2, '2020-10-15 12:15:28', NULL, '2020-10-15 12:15:28'),
(19, 8, 1, 'Lungs pain treatment', '<p>&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;&nbsp;Lungs pain treatment&nbsp;</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'lungs-pain-treatment', '', 'dasdsad', 'ea d', '2020-10-15 12:41:41', '2020-10-15 12:41:41', 'Published', 'Pending', 2, '2020-10-15 12:42:07', 2, '2020-10-15 16:41:57'),
(20, 8, 1, 'Article 2s', '<p>Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;Article 2s&nbsp;</p>\n', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'article-2s', 'Fatigue,Insomnia,Lungs Problem,Sexual Well-being,Arpit', 'meta_description', 'Article 2s Article 2s Article 2s Article 2s ', '2020-10-02 12:44:44', '2020-10-15 12:44:44', 'Published', 'Pending', 2, '2020-10-15 12:47:24', 2, '2020-10-15 16:52:54'),
(22, 8, 1, 'AI can help doctors, governmentsas', 'Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 ', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-help-doctors-governmentsas', '', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', '', 'Pending', 2, '2020-10-15 16:57:18', NULL, '2020-10-15 16:57:18'),
(24, 8, 1, 'AI can help doctors, governmentsas sa', 'Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 ', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-help-doctors-governmentsas-sa', 'Indo,samu,arpit,Fatigue', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', '', 'Pending', 2, '2020-10-15 17:01:20', NULL, '2020-10-15 17:01:20'),
(26, 8, 1, 'AI can help doctors, governmentsas sa qw', 'Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 ', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-help-doctors-governmentsas-sa-qw', 'Fatigue,Insomnia,Sleep disorders,Sleep,Sexual Well-being', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', '', 'Pending', 2, '2020-10-15 17:03:29', NULL, '2020-10-15 17:03:29'),
(29, 8, 1, 'AI can help doctors, governmentsas sa qwq', 'Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 ', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-help-doctors-governmentsas-sa-qwq', 'Fatigue,Insomnia,Sleep disorders,Sleep,Sexual Well-being', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', '', 'Pending', 2, '2020-10-15 17:06:19', NULL, '2020-10-15 17:06:19'),
(30, 8, 1, 'AI can sdoctors, governmentsas sa qwq', 'Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 ', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-sdoctors-governmentsas-sa-qwq', 'Fatigue,Insomnia,Sleep disorders,Sleep,Sexual Well-being', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', '', 'Pending', 2, '2020-10-15 17:11:20', NULL, '2020-10-15 17:11:20'),
(31, 8, 1, 'AI can sdoctors, governmentsas sa qwqq', 'Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 ', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-sdoctors-governmentsas-sa-qwqq', 'Fatigue,Insomnia,Sleep disorders,Sleep,Sexual Well-being', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', '', 'Pending', 2, '2020-10-15 17:11:37', NULL, '2020-10-15 17:11:37'),
(32, 8, 1, 'AI can sdoctors, governmentsas sa qwqqq', 'Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19 ', '56e2e2842b0a01d1a6e69b7944365be6ba-article6.jpg', 'ai-can-sdoctors-governmentsas-sa-qwqqq', 'Fatigue,Insomnia,Sleep disorders,Sleep,Sexual Well-being,Arpp', 'meta_description', 'meta_description', '2020-02-26 00:00:00', '2021-02-27 00:00:00', '', 'Pending', 2, '2020-10-15 17:42:18', NULL, '2020-10-15 17:42:18'),
(33, 8, 1, 'Chest pain treatmentas', '<p>Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;Articles&nbsp;</p>\n', '7b08a49be45e09221be0bacff53c6339-article-33.jpg', 'chest-pain-treatmentas', 'Arpp,Insomnia,Sexual Well-being,Sleep', 'dasdsad', 'Articles Articles Articles Articles Articles Articles ', '2020-10-16 11:45:45', '2020-10-16 11:45:45', 'Published', 'Pending', 2, '2020-10-16 11:47:54', 2, '2020-10-16 12:11:18'),
(34, 8, 1, 'Monsoon Skin care With Ayurveda: DIY 101', '<p>Monsoons pose a terrible time for our skin. The harsh, humid climate of monsoon leads to clogged pores, excessive sebum secretion, oily skin, blackheads, etc. Skin can lose its natural glow and lustre and become dull and lifeless during monsoons. The change in humidity and temperatures calls for a change in a skincare routine. &nbsp;&nbsp;</p>\n\n<p>1. Humidity causes our skin to sweat more profusely and makes it more vulnerable to dirt and pollutants. This can lead to breakouts. Make sure you are continuously cleaning your face with wet wipes. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\n\n<p>2. Fungal infections also become a major issue during monsoons. Most common areas that can be affected are armpits, groin, the skin under the breasts and the area between our toes. A simple solution to keep these infections at bay is to use antifungal dusting powder after bathing. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\n\n<p>3. It is very important to keep your skin oil-free to prevent breakouts. You can make a face mask out of Multani mitti or fuller&rsquo;s earth and rose water and apply this regularly to fight skin problems.&nbsp;</p>\n\n<p>4. Do not skip the toner in your skincare routine. Toning of the skin after cleansing ensures that the pores are closed and prevents dirt and oil to enter the skin layers. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n\n<p>5. Keep yourself hydrated by drinking at least 8-10 glasses of water throughout the day. This will ensure flushing out of toxins and your skin will thank you! &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\n\n<p>6. Go light on the makeup to ensure that your skin gets to breathe more easily. Also, make sure you&#39;re washing your face and cleaning every last speck of your makeup before hitting the hay. &nbsp;&nbsp;</p>\n', '8f4f626eaf4a5c09d367ce118b57bdee-article-34.jpg', 'monsoon-skin-care-with-ayurveda-diy-101', 'Acne', 'meta_description', 'dasdad', '2020-10-16 18:46:46', '2020-09-13 18:18:18', 'Published', 'Pending', 2, '2020-10-16 18:46:52', NULL, '2020-10-16 18:46:52'),
(35, 13, 48, 'AI can help doctors, governments fights agains ', '<p>AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;AI can help doctors, governments fights agains&nbsp;</p>\n', '1d67753752cb473ee87d5448734d950b-article-35.jpg', 'ai-can-help-doctors-governments-fights-agains', 'Acne,Fatigue,Insomnia,Lungs Problem,Sexual Well-being,Sleep,Sleep disorders', 'AI can help doctors, governments fights agains ', 'AI can help doctors, governments fights agains AI can help doctors, governments fights agains AI can help doctors, governments fights agains AI can help doctors, governments fights agains AI can help doctors, governments fights agains AI can help doctors, governments fights agains AI can help doctors, governments fights agains ', NULL, NULL, 'Published', 'Pending', 2, '2020-10-20 17:58:24', 2, '2020-10-20 18:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article_category`
--

CREATE TABLE `tbl_article_category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(100) NOT NULL DEFAULT '',
  `category_alias` varchar(200) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_article_category`
--

INSERT INTO `tbl_article_category` (`category_id`, `parent_id`, `category_name`, `category_image`, `category_alias`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 11, 'Heath Feed', '6c1cac470329da776cb73da6373233d9-article-category-1.jpg', 'heath-feed', 'Active', 2, '2020-10-09 13:06:21', NULL, '2020-10-09 13:06:21'),
(2, 8, 'Healthy Hair', '97dc7d08f23d510a29268b3a94cef5a8-article-category-2.jpg', 'healthy-hair', 'Active', 2, '2020-10-14 12:50:09', NULL, '2020-10-14 12:50:09'),
(3, 8, 'Healthy Skin', '3353c428fd38ad8451b55dcbb700c6eb-article-category-3.jpg', 'healthy-skin', 'Active', 2, '2020-10-14 12:50:25', 2, '2020-10-16 17:17:03'),
(4, 0, 'Healthy Teeth', '', 'healthy-teeth', 'Active', 2, '2020-10-14 12:50:35', 2, '2020-10-16 17:08:38'),
(5, 0, 'Pain Management', '', 'pain-management', 'Active', 2, '2020-10-15 13:53:15', 2, '2020-10-16 17:08:23'),
(6, 0, 'Chronic Conditions', '02aca190b1db393b859b6df1b58e8cb4-article-category-6.jpg', 'chronic-conditions', 'Active', 2, '2020-10-15 13:55:03', 2, '2020-10-16 17:08:10'),
(7, 0, 'Mental Well-Being', '32f2b66868633569b1247de4e7da9877-article-category-7.jpg', 'mental-well-being', 'Active', 2, '2020-10-15 13:55:32', 2, '2020-10-16 17:07:57'),
(8, 0, 'Skin & Hair Care', 'd5d71bcb572554e2e44210fc2059514c-article-category-8.jpg', 'skin-hair-care', 'Active', 2, '2020-10-16 12:26:53', 2, '2020-10-16 17:05:38'),
(9, 0, 'Pregnancy, Kids & Parenting', '', 'pregnancy-kids-parenting', 'Active', 2, '2020-10-16 17:08:59', NULL, '2020-10-16 17:08:59'),
(10, 0, 'Cancer', '', 'cancer', 'Active', 2, '2020-10-16 17:09:14', NULL, '2020-10-16 17:09:14'),
(11, 0, 'General Health', '', 'general-health', 'Active', 2, '2020-10-16 17:09:21', NULL, '2020-10-16 17:09:21'),
(12, 0, 'Nutrition & Diet', '', 'nutrition-diet', 'Active', 2, '2020-10-16 17:09:29', NULL, '2020-10-16 17:09:29'),
(13, 0, 'Fitness & Exercise', '', 'fitness-exercise', 'Active', 2, '2020-10-16 17:09:37', NULL, '2020-10-16 17:09:37'),
(14, 0, 'Sexual Health', '', 'sexual-health', 'Active', 2, '2020-10-16 17:09:46', NULL, '2020-10-16 17:09:46'),
(15, 0, 'Weight Management', '', 'weight-management', 'Active', 2, '2020-10-16 17:09:54', NULL, '2020-10-16 17:09:54'),
(16, 8, 'Acne', 'f9889ce45e8a9bdbcf839b5e330f6b1e-article-category-16.jpg', 'acne', 'Active', 2, '2020-10-16 17:13:35', NULL, '2020-10-16 17:13:35'),
(17, 8, 'Hair Care', 'b92fec9f62a49bf480f9250bf6f95b31-article-category-17.jpg', 'hair-care', 'Active', 2, '2020-10-16 17:14:22', NULL, '2020-10-16 17:14:22'),
(18, 8, 'Hair Fall', '490966e2205907d0dde3ca4b4dc4b776-article-category-18.jpg', 'hair-fall', 'Active', 2, '2020-10-16 17:14:42', 2, '2020-10-19 19:01:52'),
(19, 8, 'Hair Loss', '13a22cbacb1f26ee9b48a7be2e18dd93-article-category-19.jpg', 'hair-loss', 'Active', 2, '2020-10-16 17:15:16', NULL, '2020-10-16 17:15:16'),
(22, 8, 'Psoriasis', 'f7b1293a4f44a94d62c7ec85722dd168-article-category-22.jpg', 'psoriasis', 'Active', 2, '2020-10-16 17:16:31', NULL, '2020-10-16 17:16:31'),
(25, 7, 'Addiction', '5600b4108ad64da6798c30d28516f110-article-category-25.jpg', 'addiction', 'Active', 2, '2020-10-16 17:58:39', NULL, '2020-10-16 17:58:39'),
(26, 7, 'Anger Management', '553546fcc2832b512722793b6f6c8e93-article-category-26.jpg', 'anger-management', 'Active', 2, '2020-10-16 17:59:22', NULL, '2020-10-16 17:59:22'),
(27, 7, 'Anxiety', '1ac68dc136f3f48c95e28633ce0ed211-article-category-27.jpg', 'anxiety', 'Active', 2, '2020-10-16 17:59:52', NULL, '2020-10-16 17:59:52'),
(28, 7, 'Depression', '43362de80d19f0a44e4453f898a5798b-article-category-28.jpg', 'depression', 'Active', 2, '2020-10-16 18:00:48', NULL, '2020-10-16 18:00:48'),
(29, 6, 'Asthma', '1c4c4c69e984a3d0504c15c6a53625ce-article-category-29.jpg', 'asthma', 'Active', 2, '2020-10-16 18:01:29', NULL, '2020-10-16 18:01:29'),
(30, 6, 'Cholesterol Management', 'a70c5b1b67fda8d6a12f6ab7e212663c-article-category-30.jpg', 'cholesterol-management', 'Active', 2, '2020-10-16 18:02:07', NULL, '2020-10-16 18:02:07'),
(31, 6, 'Diabetes - Type 2', '2e4380c56fbb9057de10866570fd099d-article-category-31.jpg', 'diabetes-type-2', 'Active', 2, '2020-10-16 18:03:06', NULL, '2020-10-16 18:03:06'),
(32, 5, 'Back Pain', 'dda923bc246f6495c3edd3efbe9f9b42-article-category-32.jpg', 'back-pain', 'Active', 2, '2020-10-16 18:03:44', NULL, '2020-10-16 18:03:44'),
(33, 5, 'Headache', 'f13f11bec52a6a300440550c1c31f89c-article-category-33.jpg', 'headache', 'Active', 2, '2020-10-16 18:04:22', NULL, '2020-10-16 18:04:22'),
(34, 4, 'Bad Breath', '8cfcdaf0eee0cb0f7a71c74baf62255a-article-category-34.jpg', 'bad-breath', 'Active', 2, '2020-10-16 18:04:59', NULL, '2020-10-16 18:04:59'),
(35, 4, 'Dental Braces', 'bda9c34db5cde93288489b325543a104-article-category-35.jpg', 'dental-braces', 'Active', 2, '2020-10-16 18:05:25', NULL, '2020-10-16 18:05:25'),
(36, 9, 'Before Pregnancy', 'a5bf0afcd54f785c47ba102cb84a1b1c-article-category-36.jpg', 'before-pregnancy', 'Active', 2, '2020-10-16 18:08:20', NULL, '2020-10-16 18:08:20'),
(37, 9, 'Child Mental Development', '105c4579f980d87a540983e1f302f3a3-article-category-37.jpg', 'child-mental-development', 'Active', 2, '2020-10-16 18:08:41', NULL, '2020-10-16 18:08:41'),
(38, 9, 'During Pregnancy', '8283b3d0d7d75cd46f948fe3ac718d25-article-category-38.jpg', 'during-pregnancy', 'Active', 2, '2020-10-16 18:09:02', NULL, '2020-10-16 18:09:02'),
(39, 9, 'Pregnancy', '907c5d5f02a4c9863afcc59575b02dc0-article-category-39.jpg', 'pregnancy', 'Active', 2, '2020-10-16 18:09:26', NULL, '2020-10-16 18:09:26'),
(42, 10, 'Cancer1', 'c738bb48684033de9747c3765455f3b3-article-category-42.jpg', 'cancer1', 'Active', 2, '2020-10-16 18:11:16', 2, '2020-10-16 18:11:39'),
(43, 10, 'Oral Cancer', '3cdefb4c2dfee5cb847c3198daf87404-article-category-43.jpg', 'oral-cancer', 'Active', 2, '2020-10-16 18:12:19', NULL, '2020-10-16 18:12:19'),
(44, 11, 'Constipation', '7b75c21325ec6e76a1bf150e4ee5f301-article-category-44.jpg', 'constipation', 'Active', 2, '2020-10-16 18:12:59', NULL, '2020-10-16 18:12:59'),
(45, 11, 'Healthy Digestion', 'c6c33d7332c3ebd3cfe969f3461a7e26-article-category-45.jpg', 'healthy-digestion', 'Active', 2, '2020-10-16 18:13:36', NULL, '2020-10-16 18:13:36'),
(46, 12, 'Diet', '525873bd085c270c241cf02970adc034-article-category-46.jpg', 'diet', 'Active', 2, '2020-10-16 18:14:18', NULL, '2020-10-16 18:14:18'),
(47, 13, 'Everyday Fitness', '5d85f7874341620eed22acbb1139af6d-article-category-47.jpg', 'everyday-fitness', 'Active', 2, '2020-10-16 18:15:22', NULL, '2020-10-16 18:15:22'),
(48, 13, 'Yoga', '082fc8f325b1a2b204ad5585093b89aa-article-category-48.jpg', 'yoga', 'Active', 2, '2020-10-16 18:15:51', 2, '2020-10-20 18:31:08'),
(49, 14, 'Fertility', 'eddd768debd0467d6d7293beb8d6105a-article-category-49.jpg', 'fertility', 'Active', 2, '2020-10-16 18:17:18', NULL, '2020-10-16 18:17:18'),
(50, 15, 'Obesity', '565e8ef4f0203a63e09eef2754eae2e1-article-category-50.jpg', 'obesity', 'Active', 2, '2020-10-16 18:17:48', NULL, '2020-10-16 18:17:48'),
(51, 11, 'Healthy Eating', '7b1c1ec57f7b502481d5cd6bd46be98f-article-category-51.jpg', 'healthy-eating', 'Active', 2, '2020-10-14 12:50:09', NULL, '2020-10-14 12:50:09'),
(52, 15, 'Weight Loss', '1e090a7f1f147951212c13495d478f09-article-category-52.jpg', 'weight-loss', 'Active', 2, '2020-10-16 17:09:54', NULL, '2020-10-16 17:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article_category_follow`
--

CREATE TABLE `tbl_article_category_follow` (
  `follow_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_article_category_follow`
--

INSERT INTO `tbl_article_category_follow` (`follow_id`, `category_id`, `sub_category_id`, `user_id`, `created_date`) VALUES
(3, 8, 16, 5, '2020-10-17 18:01:37'),
(8, 14, 49, 5, '2020-10-17 18:46:21'),
(9, 8, 2, 5, '2020-10-17 19:44:31'),
(28, 13, 48, 5, '2020-10-21 12:46:14'),
(29, 15, 50, 5, '2020-10-21 12:46:35'),
(32, 15, 52, 5, '2020-10-21 16:28:17'),
(34, 6, 31, 5, '2020-10-27 11:39:26'),
(35, 5, 33, 5, '2020-10-30 17:16:14'),
(36, 11, 1, 5, '2020-10-30 17:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article_likes`
--

CREATE TABLE `tbl_article_likes` (
  `like_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_article_likes`
--

INSERT INTO `tbl_article_likes` (`like_id`, `article_id`, `user_id`, `created_date`) VALUES
(41, 2, 5, '2020-10-21'),
(43, 5, 5, '2020-10-21'),
(45, 1, 5, '2020-10-21'),
(46, 6, 5, '2020-10-21'),
(47, 8, 5, '2020-10-27'),
(48, 10, 5, '2020-10-30'),
(49, 12, 5, '2020-10-30'),
(51, 7, 5, '2020-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article_tags`
--

CREATE TABLE `tbl_article_tags` (
  `tag_id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_article_tags`
--

INSERT INTO `tbl_article_tags` (`tag_id`, `tag`, `created_date`, `created_by`) VALUES
(1, 'Fatigue', '2020-10-15 17:11:20', 2),
(6, 'Insomnia', '2020-10-15 17:11:36', 2),
(7, 'Sleep disorders', '2020-10-15 17:11:36', 2),
(12, 'Sleep', '2020-10-15 17:11:36', 2),
(21, 'Sexual Well-being', '2020-10-15 17:11:36', 2),
(26, 'Arpp', '2020-10-15 17:42:17', 2),
(27, 'Acne', '2020-10-16 18:43:34', 2),
(28, 'Lungs Problem', '2020-10-19 18:22:08', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_amenities`
--

CREATE TABLE `tbl_clinic_amenities` (
  `id` int(11) NOT NULL,
  `amenity` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms_content`
--

CREATE TABLE `tbl_cms_content` (
  `id` int(11) NOT NULL,
  `section_name` varchar(250) NOT NULL,
  `section_type` varchar(100) NOT NULL,
  `content_type` enum('content','text','image','') NOT NULL,
  `content` text NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cms_content`
--

INSERT INTO `tbl_cms_content` (`id`, `section_name`, `section_type`, `content_type`, `content`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(2, 'Banner Content', 'banner_content', 'content', '<div class=\"content\">\r\n          <h1 class=\"font-bd\">Connect. <br> Consult. <br> Be Healthy.</h1>\r\n          <p>The telemedicine app portal you need to reach out to your doctors, to consult from the\r\n            comforts of wherever you are, and your connected self-at home, on the go and everywhere\r\n            in between.</p>\r\n          <a href=\"#\" class=\"btn btn-lg btn-info ripple-effect\">Create account</a>\r\n        </div>', 2, '2020-08-31 17:19:44', 2, '2020-09-10 16:48:42'),
(3, 'Banner Image', 'banner_image', 'image', 'bdcf52342f6a6ab9b40a8abssdc05f5f1b-2.jpg', 2, '2020-09-01 13:27:39', 2, '2020-09-01 13:27:39'),
(4, 'Doctor Page Search Image', 'doctor_page_search_image', '', '45400f7b501ecb88f2ab862a723d3948-about_us_image.jpg', 2, '2020-09-01 16:13:25', 2, '2020-09-01 19:06:56'),
(5, 'How It Works', 'how_it_works', 'content', '<blockquote>\n<h1 style=\"font-style: italic;\"><strong>New Design Will be added Soon</strong></h1>\n</blockquote>\n', 2, '2020-09-01 16:13:25', 2, '2020-09-09 16:33:24'),
(6, 'About Us', 'about_us_content', 'content', '<header>\r\n    <h2 class=\"font-dm text-white\">About us</h2>\r\n</header>\r\n<div class=\"content\">\r\n    <p>As the founders of this early stage initiative, and proud animal lovers, we wanted to\r\n        provide an access to all pets to the healthcare they need without putting them in\r\n        danger\r\n        of diseases. We are at the start of our journey, and we need your help and support.\r\n        Our\r\n        vision is to connect pet owners to veterinarians digitally and get them the\r\n        healthcare\r\n        that they need. Your support is always welcome. Thank you for being with us through\r\n        these difficult times.</p>\r\n    <a href=\"javascript:void(0)\" class=\"btn btn-secondary ripple-effect-dark btn-md\">Know\r\n        More</a>\r\n</div>', 2, '2020-09-01 16:13:25', 2, '2020-09-02 16:38:05'),
(7, 'Our Partner', 'our_partner', 'text', 'Our partners', 2, '2020-09-01 16:13:25', 2, '2020-09-02 16:38:44'),
(8, 'Testimonials', 'testimonials', 'text', 'Testimonials', 2, '2020-09-01 16:13:25', 2, '2020-09-02 16:34:52'),
(9, 'FAQ', 'faq', 'content', '<h2 class=\"font-dm\">Faqs</h2>\r\n            <img src=\"assets/images/divider.svg\" class=\"img-fluid d-block mx-auto mb-2\" alt=\"\">\r\n            <p>Want to know more about our service?</p>', 2, '2020-09-01 16:13:25', 2, '2020-09-02 16:24:41'),
(10, 'Contact Us', 'contact_us', 'content', '<header class=\"text-center\">\r\n    <h2 class=\"font-dm\">Contact us</h2>\r\n    <img src=\"images/divider.svg\" class=\"img-fluid d-block mx-auto mb-2\" alt=\"\">\r\n    <p>Our team is happy to answer your questions.<br>\r\n        Fill out the form and we’ll be in touch as soon as possible.</p>\r\n</header>', 2, '2020-09-02 15:42:32', 2, '2020-09-02 16:25:53'),
(11, 'Contact Us Name', 'contact_us_name', 'text', 'Full name', 2, '2020-09-02 15:43:05', 2, '2020-09-02 15:43:05'),
(12, 'Contact Us Email', 'contact_us_email', 'text', 'Email', 2, '2020-09-02 15:43:24', 2, '2020-09-02 15:43:24'),
(13, 'Contact Us Subject', 'contact_us_subject', 'text', 'Subject', 2, '2020-09-02 15:43:35', 2, '2020-09-02 15:43:35'),
(14, 'Contact Us Message', 'contact_us_message', 'text', 'Your message', 2, '2020-09-02 15:43:49', 2, '2020-09-02 15:43:49'),
(15, 'Contact Us Button', 'contact_us_btn', 'text', 'Send', 2, '2020-09-02 15:44:00', 2, '2020-09-02 15:44:00'),
(16, 'Copyright', 'copyright', 'text', 'Copyright ©2020 Medzigo. All Rights Reserved', 2, '2020-09-02 15:57:53', 2, '2020-09-09 16:32:21'),
(17, 'Specialty ', 'specialty', 'content', '<section _ngcontent-kgl-c5=\"\" class=\"homePage_specialities commonSection\"><div _ngcontent-kgl-c5=\"\" class=\"container\"><header _ngcontent-kgl-c5=\"\" class=\"position-relative\"><h2 _ngcontent-kgl-c5=\"\" class=\"font-bd\">Specialities</h2><p _ngcontent-kgl-c5=\"\">Our top specialties to care u and your family </p><a _ngcontent-kgl-c5=\"\" class=\"btn btn-info ripple-effect viewall\" href=\"#\">View all</a></header><div _ngcontent-kgl-c5=\"\" class=\"homePage_specialities_inner\"><div _ngcontent-kgl-c5=\"\" class=\"row\"><div _ngcontent-kgl-c5=\"\" class=\"col-lg-2\"><figure _ngcontent-kgl-c5=\"\" class=\"text-center bg-white\"><div _ngcontent-kgl-c5=\"\" class=\"icon\"><img _ngcontent-kgl-c5=\"\" alt=\"icon\" src=\"assets/images/speciality-icon01.png\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">Cold, cough<br _ngcontent-kgl-c5=\"\"> fever?</h2><a _ngcontent-kgl-c5=\"\" href=\"#\">Consult now <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a></figcaption></figure></div><div _ngcontent-kgl-c5=\"\" class=\"col-lg-2\"><figure _ngcontent-kgl-c5=\"\" class=\"text-center bg-white\"><div _ngcontent-kgl-c5=\"\" class=\"icon\"><img _ngcontent-kgl-c5=\"\" alt=\"icon\" src=\"assets/images/speciality-icon02.png\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">Depression or<br _ngcontent-kgl-c5=\"\"> anxiety?</h2><a _ngcontent-kgl-c5=\"\" href=\"#\">Consult now <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a></figcaption></figure></div><div _ngcontent-kgl-c5=\"\" class=\"col-lg-2\"><figure _ngcontent-kgl-c5=\"\" class=\"text-center bg-white\"><div _ngcontent-kgl-c5=\"\" class=\"icon\"><img _ngcontent-kgl-c5=\"\" alt=\"icon\" src=\"assets/images/speciality-icon03.png\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">Child not feeling<br _ngcontent-kgl-c5=\"\"> well?</h2><a _ngcontent-kgl-c5=\"\" href=\"#\">Consult now <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a></figcaption></figure></div><div _ngcontent-kgl-c5=\"\" class=\"col-lg-2\"><figure _ngcontent-kgl-c5=\"\" class=\"text-center bg-white\"><div _ngcontent-kgl-c5=\"\" class=\"icon\"><img _ngcontent-kgl-c5=\"\" alt=\"icon\" src=\"assets/images/speciality-icon04.png\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">Acne, pimple or skin<br _ngcontent-kgl-c5=\"\"> issues</h2><a _ngcontent-kgl-c5=\"\" href=\"#\">Consult now <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a></figcaption></figure></div><div _ngcontent-kgl-c5=\"\" class=\"col-lg-2\"><figure _ngcontent-kgl-c5=\"\" class=\"text-center bg-white\"><div _ngcontent-kgl-c5=\"\" class=\"icon\"><img _ngcontent-kgl-c5=\"\" alt=\"icon\" src=\"assets/images/speciality-icon05.png\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">Period doubts or<br _ngcontent-kgl-c5=\"\"> Pregnancy </h2><a _ngcontent-kgl-c5=\"\" href=\"#\">Consult now <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a></figcaption></figure></div><div _ngcontent-kgl-c5=\"\" class=\"col-lg-2\"><figure _ngcontent-kgl-c5=\"\" class=\"text-center bg-white\"><div _ngcontent-kgl-c5=\"\" class=\"icon\"><img _ngcontent-kgl-c5=\"\" alt=\"icon\" src=\"assets/images/speciality-icon06.png\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">Stomach digestive issues</h2><a _ngcontent-kgl-c5=\"\" href=\"#\">Consult now <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a></figcaption></figure></div></div></div></div></section>', 2, '2020-09-02 15:42:32', 2, '2020-09-02 16:25:53'),
(18, 'Find Doctor', 'find_doctor', 'image', 'fa3cfss57bb8a803f22cb280ac3a248ccd-2.png', 2, '2020-09-01 13:27:39', 2, '2020-09-01 13:27:39'),
(19, 'Online Doctor', 'online_doctor', 'image', 'fa3cfss57sssaabb8a803f22cb280ac3a248ccd-2.png', 2, '2020-09-01 13:27:39', 2, '2020-09-01 13:27:39'),
(20, 'App Features', 'app_features', 'content', '<header _ngcontent-kgl-c5=\"\" class=\"text-center\"><h2 _ngcontent-kgl-c5=\"\" class=\"font-bd\">App Featurs</h2><p _ngcontent-kgl-c5=\"\">The features that we are providing</p></header>', 2, '2020-09-02 15:42:32', 2, '2020-09-02 16:25:53'),
(21, 'App Features', 'app_features_tab', 'content', '<div _ngcontent-kgl-c5=\"\" class=\"homePage_appfeature_inner\"><ul _ngcontent-kgl-c5=\"\" class=\"nav nav-tabs justify-content-center border-0\" id=\"myTab\" role=\"tablist\"><li _ngcontent-kgl-c5=\"\" class=\"nav-item\" role=\"presentation\"><a _ngcontent-kgl-c5=\"\" aria-controls=\"patient\" aria-selected=\"false\" class=\"nav-link ripple-effect\" data-toggle=\"tab\" href=\"#patient\" id=\"patient-tab\" role=\"tab\">Patient View</a></li><li _ngcontent-kgl-c5=\"\" class=\"nav-item\" role=\"presentation\"><a _ngcontent-kgl-c5=\"\" aria-controls=\"doctor\" aria-selected=\"true\" class=\"nav-link ripple-effect active\" data-toggle=\"tab\" href=\"#doctor\" id=\"doctor-tab\" role=\"tab\">Doctor View</a></li></ul><div _ngcontent-kgl-c5=\"\" class=\"tab-content\" id=\"myTabContent\"><div _ngcontent-kgl-c5=\"\" aria-labelledby=\"patient-tab\" class=\"tab-pane fade sliders\" id=\"patient\" role=\"tabpanel\"><div _ngcontent-kgl-c5=\"\" class=\"swiper-container swiper-container-coverflow swiper-container-3d swiper-container-initialized swiper-container-horizontal\" id=\"appfeatureSlider01\" style=\"cursor: grab;\"><div _ngcontent-kgl-c5=\"\" class=\"screen-mobile-image\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-wrapper\" style=\"transition-duration: 0ms; transform: translate3d(-959.5px, 0px, 0px); perspective-origin: 1444.5px 50%;\"><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next\" style=\"background-image: url(&quot;assets/images/appscreen01.png&quot;); transition-duration: 0ms; transform: translate3d(-561px, 0px, -180px) rotateX(0deg) rotateY(-3deg); z-index: -2;\" data-swiper-slide-index=\"0\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate\" style=\"background-image: url(&quot;assets/images/appscreen02.png&quot;); transition-duration: 0ms; transform: translate3d(-1122px, 0px, -360px) rotateX(0deg) rotateY(-6deg); z-index: -5;\" data-swiper-slide-index=\"1\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate\" style=\"background-image: url(&quot;assets/images/appscreen03.png&quot;); transition-duration: 0ms; transform: translate3d(-1683px, 0px, -540px) rotateX(0deg) rotateY(-9deg); z-index: -8;\" data-swiper-slide-index=\"2\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate swiper-slide-prev\" style=\"background-image: url(&quot;assets/images/appscreen04.png&quot;); transition-duration: 0ms; transform: translate3d(-2244px, 0px, -720px) rotateX(0deg) rotateY(-12deg); z-index: -11;\" data-swiper-slide-index=\"3\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate swiper-slide-active\" style=\"background-image: url(&quot;assets/images/appscreen05.png&quot;); transition-duration: 0ms; transform: translate3d(-2805px, 0px, -900px) rotateX(0deg) rotateY(-15deg); z-index: -14;\" data-swiper-slide-index=\"4\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-next\" style=\"background-image: url(&quot;assets/images/appscreen01.png&quot;); transition-duration: 0ms; transform: translate3d(-561px, 0px, -180px) rotateX(0deg) rotateY(-3deg); z-index: -2;\" data-swiper-slide-index=\"0\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide\" style=\"background-image: url(&quot;assets/images/appscreen02.png&quot;); transition-duration: 0ms; transform: translate3d(-1122px, 0px, -360px) rotateX(0deg) rotateY(-6deg); z-index: -5;\" data-swiper-slide-index=\"1\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide\" style=\"background-image: url(&quot;assets/images/appscreen03.png&quot;); transition-duration: 0ms; transform: translate3d(-1683px, 0px, -540px) rotateX(0deg) rotateY(-9deg); z-index: -8;\" data-swiper-slide-index=\"2\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate-prev\" style=\"background-image: url(&quot;assets/images/appscreen04.png&quot;); transition-duration: 0ms; transform: translate3d(-2244px, 0px, -720px) rotateX(0deg) rotateY(-12deg); z-index: -11;\" data-swiper-slide-index=\"3\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate-active\" style=\"background-image: url(&quot;assets/images/appscreen05.png&quot;); transition-duration: 0ms; transform: translate3d(-2805px, 0px, -900px) rotateX(0deg) rotateY(-15deg); z-index: -14;\" data-swiper-slide-index=\"4\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next\" style=\"background-image: url(&quot;assets/images/appscreen01.png&quot;); transition-duration: 0ms; transform: translate3d(-561px, 0px, -180px) rotateX(0deg) rotateY(-3deg); z-index: -2;\" data-swiper-slide-index=\"0\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate\" style=\"background-image: url(&quot;assets/images/appscreen02.png&quot;); transition-duration: 0ms; transform: translate3d(-1122px, 0px, -360px) rotateX(0deg) rotateY(-6deg); z-index: -5;\" data-swiper-slide-index=\"1\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate\" style=\"background-image: url(&quot;assets/images/appscreen03.png&quot;); transition-duration: 0ms; transform: translate3d(-1683px, 0px, -540px) rotateX(0deg) rotateY(-9deg); z-index: -8;\" data-swiper-slide-index=\"2\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate\" style=\"background-image: url(&quot;assets/images/appscreen04.png&quot;); transition-duration: 0ms; transform: translate3d(-2244px, 0px, -720px) rotateX(0deg) rotateY(-12deg); z-index: -11;\" data-swiper-slide-index=\"3\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate\" style=\"background-image: url(&quot;assets/images/appscreen05.png&quot;); transition-duration: 0ms; transform: translate3d(-2805px, 0px, -900px) rotateX(0deg) rotateY(-15deg); z-index: -14;\" data-swiper-slide-index=\"4\"></div></div><span class=\"swiper-notification\" aria-live=\"assertive\" aria-atomic=\"true\"></span></div><div _ngcontent-kgl-c5=\"\" class=\"slider-arrow\"><div _ngcontent-kgl-c5=\"\" class=\"sliders_arrow sliders_arrow-prev swiper-button-prev\" tabindex=\"0\" role=\"button\" aria-label=\"Previous slide\"></div><div _ngcontent-kgl-c5=\"\" class=\"sliders_arrow sliders_arrow-next swiper-button-next\" tabindex=\"0\" role=\"button\" aria-label=\"Next slide\"></div></div></div><div _ngcontent-kgl-c5=\"\" aria-labelledby=\"doctor-tab\" class=\"tab-pane fade sliders active show\" id=\"doctor\" role=\"tabpanel\"><div _ngcontent-kgl-c5=\"\" class=\"swiper-container swiper-container-coverflow swiper-container-3d swiper-container-initialized swiper-container-horizontal\" id=\"appfeatureSlider02\" style=\"cursor: grab;\"><div _ngcontent-kgl-c5=\"\" class=\"screen-mobile-image\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-wrapper\" style=\"transition-duration: 0ms; transform: translate3d(-1922.5px, 0px, 0px); perspective-origin: 2407.5px 50%;\"><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate\" style=\"background-image: url(&quot;assets/images/appscreen01.png&quot;); transition-duration: 0ms; transform: translate3d(1122px, 0px, -360px) rotateX(0deg) rotateY(6deg); z-index: -5;\" data-swiper-slide-index=\"0\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev\" style=\"background-image: url(&quot;assets/images/appscreen02.png&quot;); transition-duration: 0ms; transform: translate3d(561px, 0px, -180px) rotateX(0deg) rotateY(3deg); z-index: -2;\" data-swiper-slide-index=\"1\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active\" style=\"background-image: url(&quot;assets/images/appscreen03.png&quot;); transition-duration: 0ms; transform: translate3d(0px, 0px, 0px) rotateX(0deg) rotateY(0deg); z-index: 1;\" data-swiper-slide-index=\"2\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next\" style=\"background-image: url(&quot;assets/images/appscreen04.png&quot;); transition-duration: 0ms; transform: translate3d(-561px, 0px, -180px) rotateX(0deg) rotateY(-3deg); z-index: -2;\" data-swiper-slide-index=\"3\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate\" style=\"background-image: url(&quot;assets/images/appscreen05.png&quot;); transition-duration: 0ms; transform: translate3d(-1122px, 0px, -360px) rotateX(0deg) rotateY(-6deg); z-index: -5;\" data-swiper-slide-index=\"4\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide\" style=\"background-image: url(&quot;assets/images/appscreen01.png&quot;); transition-duration: 0ms; transform: translate3d(1122px, 0px, -360px) rotateX(0deg) rotateY(6deg); z-index: -5;\" data-swiper-slide-index=\"0\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-prev\" style=\"background-image: url(&quot;assets/images/appscreen02.png&quot;); transition-duration: 0ms; transform: translate3d(561px, 0px, -180px) rotateX(0deg) rotateY(3deg); z-index: -2;\" data-swiper-slide-index=\"1\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-active\" style=\"background-image: url(&quot;assets/images/appscreen03.png&quot;); transition-duration: 0ms; transform: translate3d(0px, 0px, 0px) rotateX(0deg) rotateY(0deg); z-index: 1;\" data-swiper-slide-index=\"2\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-next\" style=\"background-image: url(&quot;assets/images/appscreen04.png&quot;); transition-duration: 0ms; transform: translate3d(-561px, 0px, -180px) rotateX(0deg) rotateY(-3deg); z-index: -2;\" data-swiper-slide-index=\"3\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide\" style=\"background-image: url(&quot;assets/images/appscreen05.png&quot;); transition-duration: 0ms; transform: translate3d(-1122px, 0px, -360px) rotateX(0deg) rotateY(-6deg); z-index: -5;\" data-swiper-slide-index=\"4\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate\" style=\"background-image: url(&quot;assets/images/appscreen01.png&quot;); transition-duration: 0ms; transform: translate3d(1122px, 0px, -360px) rotateX(0deg) rotateY(6deg); z-index: -5;\" data-swiper-slide-index=\"0\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev\" style=\"background-image: url(&quot;assets/images/appscreen02.png&quot;); transition-duration: 0ms; transform: translate3d(561px, 0px, -180px) rotateX(0deg) rotateY(3deg); z-index: -2;\" data-swiper-slide-index=\"1\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active\" style=\"background-image: url(&quot;assets/images/appscreen03.png&quot;); transition-duration: 0ms; transform: translate3d(0px, 0px, 0px) rotateX(0deg) rotateY(0deg); z-index: 1;\" data-swiper-slide-index=\"2\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next\" style=\"background-image: url(&quot;assets/images/appscreen04.png&quot;); transition-duration: 0ms; transform: translate3d(-561px, 0px, -180px) rotateX(0deg) rotateY(-3deg); z-index: -2;\" data-swiper-slide-index=\"3\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-duplicate\" style=\"background-image: url(&quot;assets/images/appscreen05.png&quot;); transition-duration: 0ms; transform: translate3d(-1122px, 0px, -360px) rotateX(0deg) rotateY(-6deg); z-index: -5;\" data-swiper-slide-index=\"4\"></div></div><span class=\"swiper-notification\" aria-live=\"assertive\" aria-atomic=\"true\"></span></div><div _ngcontent-kgl-c5=\"\" class=\"slider-arrow\"><div _ngcontent-kgl-c5=\"\" class=\"sliders_arrow sliders_arrow-prev swiper-button-prev swiper-button-prev-slider02\" tabindex=\"0\" role=\"button\" aria-label=\"Previous slide\"></div><div _ngcontent-kgl-c5=\"\" class=\"sliders_arrow sliders_arrow-next swiper-button-next swiper-button-next-slider02\" tabindex=\"0\" role=\"button\" aria-label=\"Next slide\"></div></div></div></div></div>', 2, '2020-09-02 15:42:32', 2, '2020-09-02 16:25:53'),
(22, 'News For Health', 'news_for_health', 'content', '<section _ngcontent-kgl-c5=\"\" class=\"homePage_news commonSection bg-100\"><div _ngcontent-kgl-c5=\"\" class=\"container\"><header _ngcontent-kgl-c5=\"\" class=\"position-relative\"><h2 _ngcontent-kgl-c5=\"\" class=\"font-bd\">Read top news for the health benifits</h2><p _ngcontent-kgl-c5=\"\">Health news that keep ypu informed about good health practices and benifits of your health. </p><a _ngcontent-kgl-c5=\"\" class=\"btn btn-info ripple-effect\" href=\"javascript:void(0)\">Read all news</a><div _ngcontent-kgl-c5=\"\" class=\"arrowdiv d-flex align-items-center\"><div _ngcontent-kgl-c5=\"\" class=\"homePage_news_arrow homePage_news_arrow-prev swiper-button-prev position-static\" tabindex=\"0\" role=\"button\" aria-label=\"Previous slide\" aria-disabled=\"false\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-pagination position-static swiper-pagination-clickable swiper-pagination-bullets\"><span class=\"swiper-pagination-bullet\" tabindex=\"0\" role=\"button\" aria-label=\"Go to slide 1\"></span><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\" tabindex=\"0\" role=\"button\" aria-label=\"Go to slide 2\"></span><span class=\"swiper-pagination-bullet\" tabindex=\"0\" role=\"button\" aria-label=\"Go to slide 3\"></span><span class=\"swiper-pagination-bullet\" tabindex=\"0\" role=\"button\" aria-label=\"Go to slide 4\"></span><span class=\"swiper-pagination-bullet\" tabindex=\"0\" role=\"button\" aria-label=\"Go to slide 5\"></span></div><div _ngcontent-kgl-c5=\"\" class=\"homePage_news_arrow homePage_news_arrow-next swiper-button-next position-static\" tabindex=\"0\" role=\"button\" aria-label=\"Next slide\" aria-disabled=\"false\"></div></div></header><div _ngcontent-kgl-c5=\"\" class=\"content\"><div _ngcontent-kgl-c5=\"\" class=\"swiper-container swiper-container-initialized swiper-container-horizontal\" id=\"newsSlider\"><div _ngcontent-kgl-c5=\"\" class=\"swiper-wrapper\" style=\"transform: translate3d(-455px, 0px, 0px); transition-duration: 0ms;\"><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-prev\" style=\"width: 435px; margin-right: 20px;\"><figure _ngcontent-kgl-c5=\"\" class=\"bg-white rounded\"><div _ngcontent-kgl-c5=\"\" class=\"images\"><img _ngcontent-kgl-c5=\"\" alt=\"news-image\" class=\"img-fluid\" src=\"assets/images/new-img01.jpg\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">COVID-19: Many Indian-American doctors in frontline</h2><p _ngcontent-kgl-c5=\"\">Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19</p><a _ngcontent-kgl-c5=\"\" class=\"readmore\" routerlink=\"/news/detail\" ng-reflect-router-link=\"/news/detail\" href=\"/news/detail\">Read more <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a><div _ngcontent-kgl-c5=\"\" class=\"d-flex justify-content-between\"><span _ngcontent-kgl-c5=\"\">20 July 2020</span><a _ngcontent-kgl-c5=\"\" href=\"#\"><i _ngcontent-kgl-c5=\"\" class=\"icon-share\"></i> Share</a></div></figcaption></figure></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-active\" style=\"width: 435px; margin-right: 20px;\"><figure _ngcontent-kgl-c5=\"\" class=\"bg-white rounded\"><div _ngcontent-kgl-c5=\"\" class=\"images\"><img _ngcontent-kgl-c5=\"\" alt=\"news-image\" class=\"img-fluid\" src=\"assets/images/new-img02.jpg\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">AI can help doctors, governments fight ovid-19 pandemic</h2><p _ngcontent-kgl-c5=\"\">Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19</p><a _ngcontent-kgl-c5=\"\" class=\"readmore\" routerlink=\"/news/detail\" ng-reflect-router-link=\"/news/detail\" href=\"/news/detail\">Read more <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a><div _ngcontent-kgl-c5=\"\" class=\"d-flex justify-content-between\"><span _ngcontent-kgl-c5=\"\">20 July 2020</span><a _ngcontent-kgl-c5=\"\" href=\"#\"><i _ngcontent-kgl-c5=\"\" class=\"icon-share\"></i> Share</a></div></figcaption></figure></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide swiper-slide-next\" style=\"width: 435px; margin-right: 20px;\"><figure _ngcontent-kgl-c5=\"\" class=\"bg-white rounded\"><div _ngcontent-kgl-c5=\"\" class=\"images\"><img _ngcontent-kgl-c5=\"\" alt=\"news-image\" class=\"img-fluid\" src=\"assets/images/new-img03.jpg\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">Eating right to build Immunity against cold and viral infections</h2><p _ngcontent-kgl-c5=\"\">Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19</p><a _ngcontent-kgl-c5=\"\" class=\"readmore\" routerlink=\"/news/detail\" ng-reflect-router-link=\"/news/detail\" href=\"/news/detail\">Read more <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a><div _ngcontent-kgl-c5=\"\" class=\"d-flex justify-content-between\"><span _ngcontent-kgl-c5=\"\">20 July 2020</span><a _ngcontent-kgl-c5=\"\" href=\"#\"><i _ngcontent-kgl-c5=\"\" class=\"icon-share\"></i> Share</a></div></figcaption></figure></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide\" style=\"width: 435px; margin-right: 20px;\"><figure _ngcontent-kgl-c5=\"\" class=\"bg-white rounded\"><div _ngcontent-kgl-c5=\"\" class=\"images\"><img _ngcontent-kgl-c5=\"\" alt=\"news-image\" class=\"img-fluid\" src=\"assets/images/new-img01.jpg\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">COVID-19: Many Indian-American doctors in frontline</h2><p _ngcontent-kgl-c5=\"\">Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19</p><a _ngcontent-kgl-c5=\"\" class=\"readmore\" routerlink=\"/news/detail\" ng-reflect-router-link=\"/news/detail\" href=\"/news/detail\">Read more <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a><div _ngcontent-kgl-c5=\"\" class=\"d-flex justify-content-between\"><span _ngcontent-kgl-c5=\"\">20 July 2020</span><a _ngcontent-kgl-c5=\"\" href=\"#\"><i _ngcontent-kgl-c5=\"\" class=\"icon-share\"></i> Share</a></div></figcaption></figure></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide\" style=\"width: 435px; margin-right: 20px;\"><figure _ngcontent-kgl-c5=\"\" class=\"bg-white rounded\"><div _ngcontent-kgl-c5=\"\" class=\"images\"><img _ngcontent-kgl-c5=\"\" alt=\"news-image\" class=\"img-fluid\" src=\"assets/images/new-img02.jpg\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">AI can help doctors, governments fight ovid-19 pandemic</h2><p _ngcontent-kgl-c5=\"\">Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19</p><a _ngcontent-kgl-c5=\"\" class=\"readmore\" routerlink=\"/news/detail\" ng-reflect-router-link=\"/news/detail\" href=\"/news/detail\">Read more <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a><div _ngcontent-kgl-c5=\"\" class=\"d-flex justify-content-between\"><span _ngcontent-kgl-c5=\"\">20 July 2020</span><a _ngcontent-kgl-c5=\"\" href=\"#\"><i _ngcontent-kgl-c5=\"\" class=\"icon-share\"></i> Share</a></div></figcaption></figure></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-slide\" style=\"width: 435px; margin-right: 20px;\"><figure _ngcontent-kgl-c5=\"\" class=\"bg-white rounded\"><div _ngcontent-kgl-c5=\"\" class=\"images\"><img _ngcontent-kgl-c5=\"\" alt=\"news-image\" class=\"img-fluid\" src=\"assets/images/new-img03.jpg\"></div><figcaption _ngcontent-kgl-c5=\"\"><h2 _ngcontent-kgl-c5=\"\">Eating right to build Immunity against cold and viral infections</h2><p _ngcontent-kgl-c5=\"\">Indian-American Dr Madhvi Aya, who contracted the coronavirus in the line of duty in New York, the country\'s COVID-19</p><a _ngcontent-kgl-c5=\"\" class=\"readmore\" routerlink=\"/news/detail\" ng-reflect-router-link=\"/news/detail\" href=\"/news/detail\">Read more <i _ngcontent-kgl-c5=\"\" class=\"icon-arrow\"></i></a><div _ngcontent-kgl-c5=\"\" class=\"d-flex justify-content-between\"><span _ngcontent-kgl-c5=\"\">20 July 2020</span><a _ngcontent-kgl-c5=\"\" href=\"#\"><i _ngcontent-kgl-c5=\"\" class=\"icon-share\"></i> Share</a></div></figcaption></figure></div></div><span class=\"swiper-notification\" aria-live=\"assertive\" aria-atomic=\"true\"></span></div><div _ngcontent-kgl-c5=\"\" class=\"arrowdiv d-flex align-items-center\"><div _ngcontent-kgl-c5=\"\" class=\"homePage_news_arrow homePage_news_arrow-prev swiper-button-prev position-static\" tabindex=\"0\" role=\"button\" aria-label=\"Previous slide\" aria-disabled=\"false\"></div><div _ngcontent-kgl-c5=\"\" class=\"swiper-pagination position-static swiper-pagination-clickable swiper-pagination-bullets\"><span class=\"swiper-pagination-bullet\" tabindex=\"0\" role=\"button\" aria-label=\"Go to slide 1\"></span><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\" tabindex=\"0\" role=\"button\" aria-label=\"Go to slide 2\"></span><span class=\"swiper-pagination-bullet\" tabindex=\"0\" role=\"button\" aria-label=\"Go to slide 3\"></span><span class=\"swiper-pagination-bullet\" tabindex=\"0\" role=\"button\" aria-label=\"Go to slide 4\"></span><span class=\"swiper-pagination-bullet\" tabindex=\"0\" role=\"button\" aria-label=\"Go to slide 5\"></span></div><div _ngcontent-kgl-c5=\"\" class=\"homePage_news_arrow homePage_news_arrow-next swiper-button-next position-static\" tabindex=\"0\" role=\"button\" aria-label=\"Next slide\" aria-disabled=\"false\"></div></div></div></div></section>', 2, '2020-09-02 15:42:32', 2, '2020-09-02 16:25:53'),
(23, 'Download Content', 'download_content_text', 'content', '  <div class=\"content\">\r\n              <h4 class=\"font-bd text-500\">Keep yours<br>\r\n                and your loved ones\'<br>\r\n                Health safe and organized\r\n              </h4>\r\n              <p>Stay on top of your most important health<br>appointments and consultations.</p>\r\n              <p class=\"download-text\">Download the app from here…!</p>\r\n              <div class=\"appButtons\">\r\n                <a href=\"javascript:void(0);\" class=\"btn-store d-inline-block\">\r\n                  <img src=\"assets/images/app-store.svg\" alt=\"App Store Icon\" class=\"img-fluid\">\r\n                </a>\r\n                <a href=\"javascript:void(0);\" class=\"btn-store d-inline-block\">\r\n                  <img src=\"assets/images/google-play.svg\" alt=\"Google Play Icon\" class=\"img-fluid\">\r\n                </a>\r\n              </div>\r\n            </div>', 2, '2020-09-02 15:42:32', 2, '2020-09-02 16:25:53'),
(24, 'Download Content', 'download_content_image', 'image', 'a541df2f9025ed2f6fdc612665duyhu45afd-2.jpg', 2, '2020-09-01 13:27:39', 2, '2020-09-01 13:27:39'),
(25, 'Join Medzigo', 'join_medzigo', 'content', '<div class=\"container\">\r\n          <div class=\"homePage_join_inner d-lg-flex align-items-center justify-content-between text-white\">\r\n            <div class=\"left\">\r\n              <header class=\"mb-0 text-white\">\r\n                <h2 class=\"font-bd\">Join Medzigo</h2>\r\n                <p class=\"mb-0\">Become a part of world class company where u can nourished your skills\r\n                  &<br> meet patients who are searching for you. </p>\r\n\r\n              </header>\r\n\r\n            </div>\r\n            <div class=\"right\">\r\n              <a href=\"#\" class=\"btn btn-info btn-lg ripple-effect\">Become a doctor</a>\r\n            </div>\r\n          </div>\r\n        </div>', 2, '2020-09-02 15:42:32', 2, '2020-09-02 16:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms_menus`
--

CREATE TABLE `tbl_cms_menus` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `menu_type` enum('Header','Footer') NOT NULL DEFAULT 'Header',
  `url` varchar(250) NOT NULL,
  `sort_order` tinyint(3) UNSIGNED NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cms_menus`
--

INSERT INTO `tbl_cms_menus` (`id`, `title`, `menu_type`, `url`, `sort_order`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Home', 'Header', '#home', 1, 'Active', 2, '2020-08-24 11:07:59', 2, '2020-09-09 16:44:23'),
(2, 'How it Works', 'Header', '#howitwork', 2, 'Active', 2, '2020-08-24 14:00:12', 2, '0000-00-00 00:00:00'),
(3, 'About', 'Header', '#about', 3, 'Active', 2, '2020-08-24 14:00:12', 2, '0000-00-00 00:00:00'),
(4, 'Our partners', 'Header', '#partner', 4, 'Active', 2, '2020-08-24 14:00:12', 2, '0000-00-00 00:00:00'),
(5, 'Testimonials', 'Header', '#testimonial', 5, 'Active', 2, '2020-08-24 14:00:12', 2, '0000-00-00 00:00:00'),
(6, 'Faqs', 'Header', '#faq', 6, 'Active', 2, '2020-08-24 14:00:12', 2, '0000-00-00 00:00:00'),
(7, 'Contact us', 'Header', '#contact', 6, 'Active', 2, '2020-08-24 14:00:12', 2, '0000-00-00 00:00:00'),
(8, 'Terms and Conditions', 'Footer', '#', 1, 'Active', 2, '2020-08-24 11:07:59', 2, '2020-08-24 11:08:46'),
(9, 'Privacy Policy', 'Footer', '#', 2, 'Active', 2, '2020-08-24 14:00:12', 2, '0000-00-00 00:00:00'),
(10, 'Contact', 'Footer', '#contact', 3, 'Active', 2, '2020-08-24 14:00:12', 2, '0000-00-00 00:00:00'),
(11, 'About', 'Footer', '#about', 4, 'Active', 2, '2020-08-24 14:00:12', 2, '0000-00-00 00:00:00'),
(12, 'FAQs', 'Footer', '#faq', 5, 'Active', 2, '2020-08-24 14:00:12', 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms_sliders`
--

CREATE TABLE `tbl_cms_sliders` (
  `slider_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `file_type` varchar(20) NOT NULL,
  `slider_for` enum('Home','Doctor','Patient','Other') NOT NULL DEFAULT 'Other',
  `created_by` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cms_sliders`
--

INSERT INTO `tbl_cms_sliders` (`slider_id`, `file_name`, `sort_order`, `file_type`, `slider_for`, `created_by`, `created_date`, `updated_date`, `updated_by`) VALUES
(38, '4b12395f95c0d99c54922eb83034ed74-2.png', 1, 'Video', 'Doctor', '2', '2020-09-18 18:53:10', '0000-00-00 00:00:00', ''),
(39, 'd639edf22c1c5ae4d35347d1d8c74d06-2.png', 2, 'Video', 'Doctor', '2', '2020-09-18 18:53:10', '0000-00-00 00:00:00', ''),
(40, '0fee1366f35301106286ccd31946e126-2.png', 3, 'Video', 'Doctor', '2', '2020-09-18 18:53:10', '0000-00-00 00:00:00', ''),
(41, '989676b6828b4ac5b791dc310505bfa4-2.png', 4, 'Video', 'Doctor', '2', '2020-09-18 18:53:10', '0000-00-00 00:00:00', ''),
(42, '1ecbdd675fb6f4b7044438f39860ee3d-2.png', 5, 'Video', 'Doctor', '2', '2020-09-18 18:53:10', '0000-00-00 00:00:00', ''),
(43, 'a48d295fbb96fb52762dc782fec47e31-2.png', 1, 'Video', 'Patient', '2', '2020-09-18 18:54:24', '0000-00-00 00:00:00', ''),
(44, 'e6c2dbbf928b6a4156cb9bd21301e8eb-2.png', 2, 'Video', 'Patient', '2', '2020-09-18 18:54:24', '0000-00-00 00:00:00', ''),
(45, '42973f67050d0462b61f691e520ea667-2.png', 3, 'Video', 'Patient', '2', '2020-09-18 18:54:24', '0000-00-00 00:00:00', ''),
(46, '1911ed2923a372f48d0476efe387161e-2.png', 4, 'Video', 'Patient', '2', '2020-09-18 18:54:24', '0000-00-00 00:00:00', ''),
(47, 'afd1a600efc9701909d27c861efac601-2.png', 5, 'Video', 'Patient', '2', '2020-09-18 18:54:24', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms_speciality`
--

CREATE TABLE `tbl_cms_speciality` (
  `speciality_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` varchar(10) NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cms_speciality`
--

INSERT INTO `tbl_cms_speciality` (`speciality_id`, `name`, `image`, `created_date`, `created_by`, `updated_by`, `updated_date`) VALUES
(1, 'Cold, cough\r\nfever?', '0877a120c00ccd4891c10a73f36b74d6-2.png', '2020-09-17 17:12:28', '2', '2', '2020-09-17 17:28:26'),
(3, 'Depression or\nanxiety?', '9144f1e0828e7258e683b14c4sb32fabb-2.png', '2020-09-17 17:21:23', '2', '', '0000-00-00 00:00:00'),
(4, 'Child not feeling well ?', '3c0b4efb646ffbd44c34d4b0d6860eb0-2.png', '2020-09-17 17:21:59', '2', '', '0000-00-00 00:00:00'),
(5, 'Acne, pimple or skin issues', '597106234b4c6cba0f3b4bd6aab5a883-2.png', '2020-09-17 17:22:39', '2', '', '0000-00-00 00:00:00'),
(6, 'Period doubts or Pregnancy', 'fa3cf57bb8a803f22cb280ac3a248ccd-2.png', '2020-09-17 17:23:09', '2', '2', '2020-09-17 19:11:29'),
(7, 'Stomach digestive issues', '9725152319fc4c508d5bca8c8430a8e9-2.png', '2020-09-17 17:23:38', '2', '2', '2020-09-17 19:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `country_code` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`, `country_code`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(2, 'India', 'IN', 'Active', 1, '2020-07-07 08:49:37', 1, '2020-07-07 08:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country_regions`
--

CREATE TABLE `tbl_country_regions` (
  `region_id` int(11) NOT NULL,
  `country_code` varchar(20) NOT NULL,
  `region_name` varchar(255) NOT NULL,
  `region_code` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country_regions`
--

INSERT INTO `tbl_country_regions` (`region_id`, `country_code`, `region_name`, `region_code`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'IN', 'Gujrat', 'GJ', 'Active', 1, '2020-09-05 15:37:49', 1, '2020-09-05 15:37:49'),
(2, 'IN', 'Maharashtra', 'MH', 'Active', 1, '2020-09-05 15:37:49', 1, '2020-09-05 15:37:49'),
(3, 'IN', 'Madhya Pradesh', 'MP', 'Active', 1, '2020-09-05 15:37:49', 1, '2020-09-05 15:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country_region_cities`
--

CREATE TABLE `tbl_country_region_cities` (
  `city_id` int(11) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `region_code` varchar(20) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country_region_cities`
--

INSERT INTO `tbl_country_region_cities` (`city_id`, `country_code`, `region_code`, `city_name`, `postal_code`, `latitude`, `longitude`, `timezone`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'IN', 'MP', 'indore', '', '', '', '', 'Active', 2, '2020-10-01 15:22:34', NULL, '2020-10-01 09:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `decimal_separator` char(1) NOT NULL,
  `thousand_separator` char(1) NOT NULL,
  `is_default` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `decimal_separator`, `thousand_separator`, `is_default`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Rupees', 'INR', '₹', '', '2', 1.00000000, '', '', 'Yes', 'Active', 2, '2019-06-03 00:00:00', 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_db_tables`
--

CREATE TABLE `tbl_db_tables` (
  `table_id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `constant_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_db_tables`
--

INSERT INTO `tbl_db_tables` (`table_id`, `table_name`, `constant_name`) VALUES
(32, 'db_tables', 'DB_TABLES'),
(43, 'email_templates', 'EMAIL_TEMPLATES'),
(44, 'country', 'COUNTRY'),
(73, 'currency', 'CURRENCY'),
(135, 'enquiry', 'ENQUIRY'),
(136, 'api_access', 'API_ACCESS'),
(137, 'api_keys', 'API_KEYS'),
(138, 'api_limits', 'API_LIMITS'),
(139, 'api_logs', 'API_LOGS'),
(140, 'appointment', 'APPOINTMENT'),
(141, 'activity_log', 'ACTIVITY_LOG'),
(142, 'appointment_feedback', 'APPOINTMENT_FEEDBACK'),
(144, 'user_clinics_attachments', 'USER_CLINICS_ATTACHMENTS'),
(145, 'country_regions', 'COUNTRY_REGIONS'),
(146, 'country_region_cities', 'COUNTRY_REGION_CITIES'),
(147, 'insurance_providers', 'INSURANCE_PROVIDERS'),
(148, 'settings', 'SETTINGS'),
(149, 'specialization', 'SPECIALIZATION'),
(150, 'user', 'USER'),
(151, 'user_assigned', 'USER_ASSIGNED'),
(152, 'user_authentication', 'USER_AUTHENTICATION'),
(154, 'user_clinics', 'USER_CLINICS'),
(155, 'user_devices', 'USER_DEVICES'),
(156, 'user_group', 'USER_GROUP'),
(157, 'user_insurance', 'USER_INSURANCE'),
(158, 'user_specialization', 'USER_SPECIALIZATION'),
(160, 'user_work_schedule', 'USER_WORK_SCHEDULE'),
(165, 'order_address', 'ORDER_ADDRESS'),
(166, 'order_items', 'ORDER_ITEMS'),
(167, 'order_status', 'ORDER_STATUS'),
(168, 'order_status_history', 'ORDER_STATUS_HISTORY'),
(169, 'order_total', 'ORDER_TOTAL'),
(173, 'user_patient', 'USER_PATIENT'),
(180, 'user_wallet', 'USER_WALLET'),
(181, 'order', 'ORDER'),
(182, 'order_payment_history', 'ORDER_PAYMENT_HISTORY'),
(183, 'user_banks', 'USER_BANKS'),
(184, 'user_settings', 'USER_SETTINGS'),
(185, 'user_education', 'USER_EDUCATION'),
(186, 'clinic_amenities', 'CLINIC_AMENITIES'),
(188, 'languages', 'LANGUAGES'),
(189, 'diseases', 'DISEASES'),
(190, 'user_experience', 'USER_EXPERIENCE'),
(193, 'appointment_attachments', 'APPOINTMENT_ATTACHMENTS'),
(194, 'university', 'UNIVERSITY'),
(197, 'language_contents', 'LANGUAGE_CONTENTS'),
(199, 'appointment_prescriptions', 'APPOINTMENT_PRESCRIPTIONS'),
(200, 'user_services', 'USER_SERVICES'),
(201, 'appointment_status_history', 'APPOINTMENT_STATUS_HISTORY'),
(202, 'user_clinics_amenities', 'USER_CLINICS_AMENITIES'),
(203, 'appointment_services', 'APPOINTMENT_SERVICES'),
(204, 'user_awards', 'USER_AWARDS'),
(208, 'user_documents', 'USER_DOCUMENTS'),
(211, 'user_cards', 'USER_CARDS'),
(212, 'appointment_followup', 'APPOINTMENT_FOLLOWUP'),
(213, 'timeslots', 'TIMESLOTS'),
(221, 'appointment_reports', 'APPOINTMENT_REPORTS'),
(222, 'sent_notifications', 'SENT_NOTIFICATIONS'),
(223, 'appointment_notes', 'APPOINTMENT_NOTES'),
(224, 'user_address', 'USER_ADDRESS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diseases`
--

CREATE TABLE `tbl_diseases` (
  `disease_id` int(11) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `symptom` text NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_templates`
--

CREATE TABLE `tbl_email_templates` (
  `template_id` int(11) NOT NULL,
  `template_code` varchar(50) NOT NULL,
  `help` text NOT NULL,
  `subject` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_email_templates`
--

INSERT INTO `tbl_email_templates` (`template_id`, `template_code`, `help`, `subject`, `body`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'emailVerificationEmail', 'sent when user sign up, email verification link is included in email body, when user click on link its email is verified', 'Verify Your Email', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n<div style=\"width:80%\">\r\n<div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div><br />\r\n<div>Hi {USERNAME},</div>\r\n<div>\r\n<p>Your account is created successfully. Click <a href=\"{EMAIL_VERIFICATION_URL}\" target=\"_blank\">here</a> to verify your account.<br />\r\nIf the above link dosn&#39;t work copy and visit the below URL:<br />\r\nURL:&nbsp;{EMAIL_VERIFICATION_URL}<br />\r\nOTP:&nbsp;{VERIFICATION_CODE}<br />\r\n<p><br />\r\nThanks,<br />\r\n{SITE_NAME}</p>\r\n</div>\r\n</div>\r\n</div>', 'Active', 2, '2020-02-19 00:00:00', 2, '0000-00-00 00:00:00'),
(2, 'emailVerifiedEmail', 'send after user verified its email, user login detail is sent inside email body like email and password, login url', 'Email Verified', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n<div style=\"width:80%\">\r\n<div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n<div>Hi {USERNAME},</div>\r\n<div>\r\n<p>Your account is successfully verified. You can now login to your account. Below is your account detail<br /><br />\r\nURL:&nbsp;{LOGIN_URL}<br />\r\nEmail:&nbsp;{EMAIL}<br />\r\nPassword:&nbsp;{PASSWORD}<br />\r\n\r\n<p><br />\r\nThanks,<br />\r\n{SITE_NAME}</p>\r\n</div>\r\n</div>\r\n</div>', 'Active', 2, '2020-02-19 00:00:00', 2, '0000-00-00 00:00:00'),
(4, 'forgetPasswordEmail', '', 'Reset your account password', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n<div style=\"width:80%\">\r\n<div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n\r\n<div>Hi {USERNAME},</div>\r\n<br>\r\n<p>We received a request to reset the password for your {SITE_NAME} account. Click on the button below to set a new password. This link is valid for only 24 hours.</p>\r\n<a href=\"{RESET_URL}\">Set New Password</a>\r\n<br>\r\n<div>\r\n<p>In case you are unable to view the button, please copy and paste the following link in the browser:</p>\r\n<a href=\"{RESET_URL}\">{RESET_URL}</a>\r\n<br>\r\n<p>If you didn’t ask for this change you can safely ignore this email. Your password won’t change and your account & data is safe.</p>\r\n<p><br />\r\nThanks,<br />\r\n{SITE_NAME}</p>\r\n</div>\r\n</div>\r\n</div>', 'Active', 2, '2020-02-19 00:00:00', 2, '0000-00-00 00:00:00'),
(5, 'passwordResetEmail', 'send email after user successfully reset the password', 'Your password is reset', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n<div style=\"width:80%\">\r\n<div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n<br>\r\n<div>Hi {USERNAME},</div>\r\n\r\n<p>You have successfully reset your account\'s password.</p>\r\n\r\nThanks,<br />\r\n{SITE_NAME}\r\n</div>\r\n</div>\r\n</div>', 'Active', 2, '2020-02-19 00:00:00', 2, '0000-00-00 00:00:00'),
(6, 'changePasswordEmail', '', 'New Password', '<p>Hi {USERNAME},</p>\r\n\r\n<p>Your password has been changed. Your new password is {PASSWORD}.&nbsp;Please use this password as a login credential.</p>\r\n\r\n<p><br />\r\nThanks,<br />\r\n{SITE_NAME}</p>', 'Active', 2, '2020-03-05 00:00:00', 2, '0000-00-00 00:00:00'),
(7, 'appointmentCreatedEmailToPatient', '', 'New Appointment', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   We have received your appointment request with Dr. {DOCTOR_NAME}, your appointment id is {APPOINTMENT_ID}. We are processing your appointment order, you will receive another confirmation email when your order is processed successfully.<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:46:13', 2, '0000-00-00 00:00:00'),
(9, 'appointmentCreatedEmailToAdmin', '', 'New Appointment', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>\r\n   {USERNAME} requests for appointment with Dr. {DOCTOR_NAME}. Appointment id is {APPOINTMENT_ID}.<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 12:01:45', 2, '0000-00-00 00:00:00'),
(11, 'appointmentRescheduledByPatientEmailToPatient', '', 'Appointment Rescheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   You have successfully rescheduled an appointment with Dr. {DOCTOR_NAME}.<br><br>\r\n   <b>Rescheduled Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Reason : {REASON}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(12, 'appointmentRescheduledByPatientEmailToDoctor', '', 'Appointment Rescheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Dr. {DOCTOR_NAME},</div><br>\r\n  <div>\r\n   {USERNAME} has rescheduled an appointment with you. If appointment is already confirmed, then you need to confirm the appointment again.<br><br>\r\n   <b>Rescheduled Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Reason : {REASON}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(13, 'appointmentRescheduledByPatientEmailToAdmin', '', 'Appointment Rescheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>\r\n   {USERNAME} has rescheduled an appointment with Dr. {DOCTOR_NAME}.<br><br>\r\n   <b>Rescheduled Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Reason : {REASON}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 12:01:45', 2, '0000-00-00 00:00:00'),
(14, 'appointmentCancelledEmailToPatient', '', 'Appointment Cancelled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Your appointment has been successfully cancelled with Dr. {DOCTOR_NAME}.<br><br>\r\n   <b>Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(15, 'appointmentCancelledEmailToDoctor', '', 'Appointment Cancelled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Dr. {DOCTOR_NAME},</div><br>\r\n  <div>\r\n   {USERNAME} has cancelled an appointment with you.<br><br>\r\n   <b>Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(16, 'appointmentCancelledEmailToAdmin', '', 'Appointment Cancelled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>\r\n   {USERNAME} has cancelled an appointment with Dr. {DOCTOR_NAME}.<br><br>\r\n   <b>Appointment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(17, 'appointmentDeclinedEmailToPatient', '', 'Appointment Declined', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Dr. {DOCTOR_NAME} declined your appointment.<br><br>\r\n   If any amount is paid it will be refunded to you within 5-7 business days.\r\n   <b>Declined Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 12:01:45', 2, '0000-00-00 00:00:00'),
(18, 'appointmentDeclinedEmailToDoctor', '', 'Appointment Declined', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Dr. {DOCTOR_NAME},</div><br>\r\n  <div>\r\n   Appointment with {USERNAME} has been declined.<br><br>\r\n   <b>Declined Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(19, 'appointmentDeclinedEmailToAdmin', '', 'Appointment Declined', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>\r\n   Dr. {DOCTOR_NAME} has declined an appointment with {USERNAME}.<br><br>\r\n   <b>Declined Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(20, 'appointmentConfirmedEmailToPatient', 'send email to patient when appointment confirmed', 'Appointment Confirmed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Your appointment with {DOCTOR_NAME} has been confirmed.<br><br>\r\n   <b>Your Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Email : {PATIENT_EMAIL}<br>\r\n   &nbsp;&nbsp;Patient Mobile : {PATIENT_MOBILE}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br>\r\n   &nbsp;&nbsp;Order ID : {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date : {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Payment Status : {PAYMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 12:01:45', 2, '0000-00-00 00:00:00'),
(21, 'appointmentConfirmedEmailToDoctor', 'send appointment confirmed email to doctor', 'Appointment Confirmed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {DOCTOR_NAME},</div><br>\r\n  <div>\r\n   Your appointment with {USERNAME} has been confirmed.<br><br>\r\n   <b>Your Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Email : {PATIENT_EMAIL}<br>\r\n   &nbsp;&nbsp;Patient Mobile : {PATIENT_MOBILE}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br>\r\n   &nbsp;&nbsp;Order ID : {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date : {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Payment Status : {PAYMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(22, 'appointmentConfirmedEmailToAdmin', '', 'Appointment Confirmed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>\r\n   Dr. {DOCTOR_NAME} has confirmed an appointment with {USERNAME}.<br><br>\r\n   <b>Confirmed Appoinment Details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br>\r\n   &nbsp;&nbsp;Order ID : {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date : {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Payment Status : {PAYMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(23, 'orderStatusEmail', '', 'Order Status for order id {ORDERID}', '<div style=\"background:#ffffff; height:auto; width:100%\">\n<div style=\"width:80%\">\n<div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\n\n<p>Hello {USERNAME},</p>\n\n<p>{MESSAGE}</p>\n<br />\n<p><br />\nThanks,<br />\n{SITE_NAME}</p>\n</div>\n</div>\n', 'Active', 2, '2020-03-11 13:44:39', 2, '0000-00-00 00:00:00'),
(24, 'orderEmail', '', 'Order Confirmation', '<div style=\"background:#ffffff; height:auto; width:100%\">\n<div style=\"width:80%\">\n<div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\n\n<p>Hello {USERNAME},</p>\n\n<p>{MESSAGE}</p>\n<br />\n&nbsp;{ORDERDATA}\n<p><br />\nThanks,<br />\n{SITE_NAME}</p>\n</div>\n</div>\n', 'Active', 2, '2020-03-11 13:45:33', 2, '0000-00-00 00:00:00'),
(27, 'appointmentCompletedEmailToPatient', '', 'Appointment Completed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Dr. {DOCTOR_NAME} has marked appointment completed with you. You can give your feedback for this appointment.<br><br>\r\n   <b>Completed Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status: {APPOINTMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:46:13', 2, '0000-00-00 00:00:00'),
(28, 'appointmentCompletedEmailToDoctor', '', 'Appointment Completed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Dr. {DOCTOR_NAME},</div><br>\r\n  <div>\r\n   Your appointment with {USERNAME} is completed.<br><br>\r\n   <b>Completed Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status: {APPOINTMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(29, 'appointmentCompletedEmailToAdmin', '', 'Appointment Completed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>\r\n   Dr. {DOCTOR_NAME} marked appointment completed with {USERNAME}.<br><br>\r\n   <b>Completed Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status: {APPOINTMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 12:01:45', 2, '0000-00-00 00:00:00'),
(30, 'sendAssignRequestToDoctor', '', 'New Assistant Assign Request ', '<p>Hi {USERNAME},</p>\r\n\r\n<p>{MESSAGE} </p>\r\n\r\n<p>\r\nThanks,<br/>\r\n{SITE_NAME}</p>', 'Active', 2, '2020-04-06 00:00:00', 2, '0000-00-00 00:00:00'),
(31, 'sendDeclineAssisgnRequestToAssistant', '', 'Decline Assign Request', '<p>Hi {USERNAME},</p>\r\n\r\n<p>{DOCTOR} Has Decline Your Assign Request </p>\r\n\r\n<p>\r\nThanks,<br />\r\n{SITE_NAME}</p>', 'Active', 2, '2020-04-06 00:00:00', 2, '0000-00-00 00:00:00'),
(32, 'userUnassignFromDoctor', '', 'Unassigned User', '<p>Hi {USERNAME},</p><p>{MESSAGE}</p><p>Thanks,<br>{SITE_NAME}</p>', 'Active', 2, '2020-04-06 18:35:01', 2, '0000-00-00 00:00:00'),
(33, 'appointmentFollowUpEmailToPatient', '', 'Follow Up Appointment', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Dr. {DOCTOR_NAME} has added follow up appointment for you.<br><br>\r\n   <b>Follow Up Appointment details:</b><br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Note : {NOTE}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-06 19:19:51', 2, '0000-00-00 00:00:00'),
(34, 'orderCreatedEmailToPatient', '', 'Order placed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Your order is successfully placed. We are processing your order, You will receive another email when your order is processed.<br><br>\r\n   <b>Below is your order details:</b><br>\r\n   &nbsp;&nbsp;Order ID: {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date: {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Address: {ADDRESS}<br>\r\n   &nbsp;&nbsp;Item: {ITEM_NAME}<br>\r\n   &nbsp;&nbsp;Item Quantity: {ITEM_QTY}<br>\r\n   &nbsp;&nbsp;Item Total: {ITEM_AMOUNT}<br>\r\n   &nbsp;&nbsp;Sub Total: {ITEM_SUBTOTAL}<br>\r\n   &nbsp;&nbsp;Coupon Applied ({COUPON}): {COUPON_AMOUNT}<br>\r\n   &nbsp;&nbsp;Total: {TOTAL}<br>\r\n   &nbsp;&nbsp;Payment Status: {PAYMENT_STATUS}<br>\r\n   <br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(35, 'orderCreatedEmailToAdmin', '', 'Order placed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Admin,</div><br>\r\n  <div>\r\n   An order is successfully placed by {USERNAME}. We are processing order, You will receive another email when order is processed.<br><br>\r\n   <b>Below is order details:</b><br>\r\n   &nbsp;&nbsp;Order ID: {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date: {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Address: {ADDRESS}<br>\r\n   &nbsp;&nbsp;Item: {ITEM_NAME}<br>\r\n   &nbsp;&nbsp;Item Quantity: {ITEM_QTY}<br>\r\n   &nbsp;&nbsp;Item Total: {ITEM_AMOUNT}<br>\r\n   &nbsp;&nbsp;Sub Total: {ITEM_SUBTOTAL}<br>\r\n   &nbsp;&nbsp;Coupon Applied ({COUPON}): {COUPON_AMOUNT}<br>\r\n   &nbsp;&nbsp;Total: {TOTAL}<br>\r\n   &nbsp;&nbsp;Payment Status: {PAYMENT_STATUS}<br>\r\n   <br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-02-19 00:00:00', 2, '0000-00-00 00:00:00'),
(36, 'orderCompletedEmailToPatient', '', 'Order completed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Your order is completed and payment is successfully received.<br><br>\r\n   <b>Below is your order details:</b><br>\r\n   &nbsp;&nbsp;Order ID: {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date: {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Item: {ITEM_NAME}<br>\r\n   &nbsp;&nbsp;Total: {TOTAL}<br>\r\n   &nbsp;&nbsp;Payment Status: {PAYMENT_STATUS}<br>\r\n   <br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(37, 'orderCompletedEmailToAdmin', '', 'Order completed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Admin,</div><br>\r\n  <div>\r\n   Order of {USERNAME} completed and payment is successfully received.<br><br>\r\n   <b>Below is your order details:</b><br>\r\n   &nbsp;&nbsp;Order ID: {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date: {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Item: {ITEM_NAME}<br>\r\n   &nbsp;&nbsp;Total: {TOTAL}<br>\r\n   &nbsp;&nbsp;Payment Status: {PAYMENT_STATUS}<br>\r\n   <br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-02-19 00:00:00', 2, '0000-00-00 00:00:00'),
(38, 'orderProcessedEmailToPatient', '', 'Order processed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Your order is processed and payment is successfully received. You will receive email notification when your product is ready for dispatch.<br><br>\r\n   <b>Below is your order details:</b><br>\r\n   &nbsp;&nbsp;Order ID: {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date: {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Item: {ITEM_NAME}<br>\r\n   &nbsp;&nbsp;Total: {TOTAL}<br>\r\n   &nbsp;&nbsp;Payment Status: {PAYMENT_STATUS}<br>\r\n   <br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(39, 'orderProcessedEmailToAdmin', '', 'Order processed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Admin,</div><br>\r\n  <div>\r\n   Order of {USERNAME} is processed and payment is successfully received.<br><br>\r\n   <b>Below is your order details:</b><br>\r\n   &nbsp;&nbsp;Order ID: {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date: {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Item: {ITEM_NAME}<br>\r\n   &nbsp;&nbsp;Total: {TOTAL}<br>\r\n   &nbsp;&nbsp;Payment Status: {PAYMENT_STATUS}<br>\r\n   <br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-02-19 00:00:00', 2, '0000-00-00 00:00:00'),
(40, 'orderUpdatedEmailToPatient', '', 'Order updated', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Your order is updated.<br><br>\r\n   <b>Below is your order details:</b><br>\r\n   &nbsp;&nbsp;Order ID: {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date: {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Item: {ITEM_NAME}<br>\r\n   &nbsp;&nbsp;Order Status: {ORDER_STATUS}<br>\r\n   &nbsp;&nbsp;Status Message: {ORDER_STATUS_MESSAGE}<br>\r\n   <br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(41, 'orderUpdatedEmailToAdmin', '', 'Order updated', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Admin,</div><br>\r\n  <div>\r\n   Order of {USERNAME} is updated.<br><br>\r\n   <b>Below is your order details:</b><br>\r\n   &nbsp;&nbsp;Order ID: {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date: {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Item: {ITEM_NAME}<br>\r\n   &nbsp;&nbsp;Order Status: {ORDER_STATUS}<br>\r\n   &nbsp;&nbsp;Status Message: {ORDER_STATUS_MESSAGE}<br>\r\n   <br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-02-19 00:00:00', 2, '0000-00-00 00:00:00'),
(42, 'appointmentOrderRefundedMailToPatient', '', 'Refund initiated', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   This email is to confirm you that refund has been initiated for declined appointment. Amount will be deposited to your bank account within 5-7 working days.<br><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Order ID : {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date: {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Order Amount : {ORDER_AMOUNT}<br>\r\n   &nbsp;&nbsp;Payment Status : {PAYMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:46:13', 2, '0000-00-00 00:00:00'),
(43, 'appointmentOrderRefundedMailToAdmin', '', 'Refund Initiated', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>\r\n   Refund is initiated for declined appointment.<br><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Order ID : {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date: {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Order Amount : {ORDER_AMOUNT}<br>\r\n   &nbsp;&nbsp;Payment Status : {PAYMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:46:13', 2, '0000-00-00 00:00:00'),
(44, 'appointmentScheduledEmailToPatient', '', 'Appointment Scheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   This is confirmation email for you that your appointment request for Dr. {DOCTOR_NAME} is successfully processed and your payment is on hold until the doctor confirm the appointment.<br><br>\r\n   <b>Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br><br>\r\n   &nbsp;&nbsp;Order ID : {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date : {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Payment Status : {PAYMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:46:13', 2, '0000-00-00 00:00:00'),
(45, 'appointmentScheduledEmailToDoctor', '', 'Appointment Scheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Dr. {DOCTOR_NAME},</div><br>\r\n  <div>\r\n   {USERNAME} has scheduled an appointment with you.<br><br>\r\n   <b>Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 12:01:45', 2, '0000-00-00 00:00:00'),
(46, 'appointmentScheduledEmailToAdmin', '', 'Appointment Scheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Admin,</div><br>\r\n  <div>\r\n   Payment for appointment by {USERNAME} is successfully processed.<br><br>\r\n   <b>Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br><br>\r\n   &nbsp;&nbsp;Order ID : {ORDER_ID}<br>\r\n   &nbsp;&nbsp;Order Date : {ORDER_DATE}<br>\r\n   &nbsp;&nbsp;Payment Status : {PAYMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(47, 'appointmentRescheduledByDoctorEmailToAdmin', '', 'Appointment Rescheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>\r\n   Dr. {DOCTOR_NAME}\'s appointment with {USERNAME} has been rescheduled.<br><br>\r\n   <b>Rescheduled Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Reason : {REASON}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 12:01:45', 2, '0000-00-00 00:00:00'),
(48, 'appointmentRescheduledByDoctorEmailToDoctor', '', 'Appointment Rescheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Dr. {DOCTOR_NAME},</div><br>\r\n  <div>\r\n   Your appointment with {USERNAME} has been rescheduled.<br><br>\r\n   <b>Rescheduled Appoitnment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Reason : {REASON}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(49, 'appointmentRescheduledByDoctorEmailToPatient', '', 'Appointment Rescheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Dr. {DOCTOR_NAME} has rescheduled an appointment with you.<br><br>\r\n   <b>Rescheduled Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Reason : {REASON}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 11:51:40', 2, '0000-00-00 00:00:00'),
(50, 'appointmentCreatedEmailToAssistant', '', 'New Appointment', '<div>&#10; <div>&#10;  <div><div><img alt=\"\" src=\"http://localhost:4200/%7BSITE_LOGO%7D\"></div><div>{USERNAME} Requests For Appointment With Dr. {DOCTOR_NAME}.<br><br>Thanks,<br>{SITE_NAME}</div></div>&#10; </div>&#10;</div>', 'Active', 2, '2020-04-21 19:28:21', 2, '0000-00-00 00:00:00'),
(51, 'appointmentNoteEmailToPatient', '', 'Appointment Note', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Appointment note is added by Dr. {DOCTOR_NAME} for your completed appointment.<br><br>\r\n   <b>Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Appointment Note : {APPOINTMENT_NOTE}<br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-22 12:49:51', 2, '0000-00-00 00:00:00'),
(52, 'appointmentNoteEmailToDoctor', '', 'Appointment Note', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Dr. {DOCTOR_NAME},</div><br>\r\n  <div>\r\n   An appointment note is added for {USERNAME}.<br><br>\r\n   <b>Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Appointment Note : {APPOINTMENT_NOTE}<br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-22 13:47:52', 2, '0000-00-00 00:00:00'),
(53, 'appointmentCancelledEmailToAssistant', '', 'Appointment Cancelled', '<div><img alt=\"\" src=\"http://localhost:4200/%7BSITE_LOGO%7D\"></div><div>Hi&#160; {ASSISTANT_NAME},</div><br><div>{USERNAME} Has Cancelled An Appointment With {DOCTOR_NAME}.<br><br><span>Appoinment Details:</span><br>&#160;&#160;Appointment ID : {APPOINTMENT_ID}<br>&#160;&#160;Patient Name : {PATIENT_NAME}<br>&#160;&#160;Patient Age : {PATIENT_AGE}<br>&#160;&#160;Patient Gender : {PATIENT_GENDER}<br>&#160;&#160;Appointment Date : {APPOINTMENT_DATE}<br>&#160;&#160;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>&#160;&#160;Consultation Fee : {CONSULTATION_FEE}<br><br>Thanks,<br>{SITE_NAME}</div>', 'Active', 2, '2020-04-22 17:37:41', 2, '0000-00-00 00:00:00'),
(54, 'appointmentRescheduledByDoctorEmailToAssistant', '', 'Appointment Rescheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {ASSISTANT_NAME},</div><br>\r\n  <div>\r\n   Dr. {DOCTOR_NAME}\'s appointment with {USERNAME} has been rescheduled.<br><br>\r\n   <b>Rescheduled Appoitnment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Reason : {REASON}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-22 17:46:50', 2, '0000-00-00 00:00:00'),
(55, 'appointmentRescheduledByPatientEmailToAssistant', '', 'Appointment Rescheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {ASSISTANT_NAME},</div><br>\r\n  <div>\r\n   {USERNAME} has rescheduled an appointment with Dr. {DOCTOR_NAME}. If appointment is already confirmed, then you need to confirm the appointment again.<br><br>\r\n   <b>Rescheduled Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Reason : {REASON}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-22 17:51:14', 2, '0000-00-00 00:00:00'),
(56, 'appointmentConfirmedEmailToAssistant', '', 'Appointment Confirmed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {ASSISTANT_NAME},</div><br>\r\n  <div>\r\n   Dr. {DOCTOR_NAME}\'s appointment is confirmed with {USERNAME}.<br><br>\r\n   <b>Confirmed Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-22 18:33:51', 2, '0000-00-00 00:00:00'),
(57, 'appointmentDeclinedEmailToAssistant', '', 'Appointment Declined', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {ASSISTANT_NAME},</div><br>\r\n  <div>\r\n   Dr. {DOCTOR_NAME}\'s appointment with {USERNAME} has been declined.<br><br>\r\n   <b>Declined Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-22 18:48:39', 2, '0000-00-00 00:00:00'),
(58, 'appointmentCompletedEmailToAssistant', '', 'Appointment Completed', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {ASSISTANT_NAME},</div><br>\r\n  <div>\r\n   Dr. {DOCTOR_NAME}\'s appointment with {USERNAME} is completed.<br><br>\r\n   <b>Completed Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status: {APPOINTMENT_STATUS}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-22 18:58:03', 2, '0000-00-00 00:00:00'),
(59, 'appointment_overdue_doctor', '', 'Appointment Overdue', '<div>&#10; <div>&#10;  <div><img alt=\"\" src=\"{SITE_LOGO}\"></div>&#10;  <div>Hi Dr. {DOCTOR_NAME},</div><br>&#10;  <div>&#10;   Appointment is pending, take any action before it expires.<br><br>&#10;   <b>Appoinment details:</b><br>&#10;   &#160;&#160;Appointment ID : {APPOINTMENT_ID}<br>&#10;   &#160;&#160;Patient Name : {PATIENT_NAME}<br>&#10;   &#160;&#160;Patient Age : {PATIENT_AGE}<br>&#10;   &#160;&#160;Patient Gender : {PATIENT_GENDER}<br>&#10;   &#160;&#160;Appointment Date : {APPOINTMENT_DATE}<br>&#10;   &#160;&#160;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>&#10;   &#160;&#160;Consultation Fee : {CONSULTATION_FEE}<br>&#10;   &#160;&#160;Appointment Status : {APPOINTMENT_STATUS}<br><br></div><div>&#10;   Thanks,<br>&#10;   {SITE_NAME}&#10;  </div>&#10; </div>&#10;</div>', 'Active', 2, '2020-04-22 21:15:23', 2, '2020-04-23 12:27:45'),
(60, 'appointment_overdue_assistant', '', 'Appointment Overdue', '<div>&#10; <div>&#10;  <div><img alt=\"\" src=\"{SITE_LOGO}\"></div>&#10;  <div>Hi {ASSISTANT_NAME},</div><br>&#10;  <div>&#10;   Dr. {DOCTOR_NAME}\'s appointment is pending, please take any active before it expries.<br><br>&#10;   <b>Appoinment details:</b><br>&#10;   &#160;&#160;Appointment ID : {APPOINTMENT_ID}<br>&#10;   &#160;&#160;Patient Name : {PATIENT_NAME}<br>&#10;   &#160;&#160;Patient Age : {PATIENT_AGE}<br>&#10;   &#160;&#160;Patient Gender : {PATIENT_GENDER}<br>&#10;   &#160;&#160;Appointment Date : {APPOINTMENT_DATE}<br>&#10;   &#160;&#160;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>&#10;   &#160;&#160;Consultation Fee : {CONSULTATION_FEE}<br>&#10;   &#160;&#160;Appointment Status : {APPOINTMENT_STATUS}<br><br></div><div>&#10;   Thanks,<br>&#10;   {SITE_NAME}&#10;  </div>&#10; </div>&#10;</div>', 'Active', 2, '2020-04-22 21:16:16', 2, '2020-04-23 12:27:56'),
(61, 'appointmentScheduledEmailToAssistant', '', 'Appointment Scheduled', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {ASSISTANT_NAME},</div><br>\r\n  <div>\r\n   {USERNAME} has scheduled an appointment with Dr. {DOCTOR_NAME}.<br><br>\r\n   <b>Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Patient Name : {PATIENT_NAME}<br>\r\n   &nbsp;&nbsp;Patient Age : {PATIENT_AGE}<br>\r\n   &nbsp;&nbsp;Patient Gender : {PATIENT_GENDER}<br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_FROM_TIME} - {APPOINTMENT_TO_TIME}<br>\r\n   &nbsp;&nbsp;Consultation Fee : {CONSULTATION_FEE}<br>\r\n   &nbsp;&nbsp;Appointment Status : {APPOINTMENT_STATUS}<br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-03-05 12:01:45', 2, '0000-00-00 00:00:00'),
(62, 'appointmentNoteEmailToAssistant', '', 'Appointment Note', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {ASSISTANT_NAME},</div><br>\r\n  <div>\r\n   An appointment note is added for appointment of Dr. {DOCTOR_NAME} with {USERNAME}.<br><br>\r\n   <b>Appoinment details:</b><br>\r\n   &nbsp;&nbsp;Appointment ID : {APPOINTMENT_ID}<br>\r\n   &nbsp;&nbsp;Appointment Note : {APPOINTMENT_NOTE}<br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-22 13:47:52', 2, '0000-00-00 00:00:00'),
(63, 'appointmentFollowUpEmailToDoctor', '', 'Follow Up Appointment', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Dr. {DOCTOR_NAME},</div><br>\r\n  <div>\r\n   Follow up appointment has been added for patient {USERNAME}.<br><br>\r\n   <b>Follow Up Appointment details:</b><br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Note : {NOTE}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-06 19:19:51', 2, '0000-00-00 00:00:00');
INSERT INTO `tbl_email_templates` (`template_id`, `template_code`, `help`, `subject`, `body`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(64, 'appointmentFollowUpEmailToAssistant', '', 'Follow Up Appointment', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {ASSISTANT_NAME},</div><br>\r\n  <div>\r\n   Follow up appointment has been added for Dr. {DOCTOR_NAME} with {USERNAME}.<br><br>\r\n   <b>Follow Up Appointment details:</b><br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Note : {NOTE}<br><br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-06 19:19:51', 2, '0000-00-00 00:00:00'),
(65, 'updatedAppointmentFollowUpEmailToPatient', '', 'Updated Follow Up Appointment', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {USERNAME},</div><br>\r\n  <div>\r\n   Dr. {DOCTOR_NAME} has updated follow up appointment for you.<br><br>\r\n   <b>Updated Follow Up Appointment details:</b><br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Note : {NOTE}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-06 19:19:51', 2, '0000-00-00 00:00:00'),
(66, 'updatedAppointmentFollowUpEmailToDoctor', '', 'Updated Follow Up Appointment', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi Dr. {DOCTOR_NAME},</div><br>\r\n  <div>\r\n   Follow up appointment has been updated for patient {USERNAME}.<br><br>\r\n   <b>Updated Follow Up Appointment details:</b><br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Note : {NOTE}<br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-06 19:19:51', 2, '0000-00-00 00:00:00'),
(67, 'updatedAppointmentFollowUpEmailToAssistant', '', 'Updated Follow Up Appointment', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n  <div>Hi {ASSISTANT_NAME},</div><br>\r\n  <div>\r\n   Follow up appointment has been updated for Dr. {DOCTOR_NAME} with {USERNAME}.<br><br>\r\n   <b>Updated Follow Up Appointment details:</b><br>\r\n   &nbsp;&nbsp;Appointment Date : {APPOINTMENT_DATE}<br>\r\n   &nbsp;&nbsp;Appointment Time : {APPOINTMENT_TIME}<br>\r\n   &nbsp;&nbsp;Note : {NOTE}<br><br><br>\r\n   Thanks,<br>\r\n   {SITE_NAME}\r\n  </div>\r\n </div>\r\n</div>', 'Active', 2, '2020-04-06 19:19:51', 2, '0000-00-00 00:00:00'),
(68, 'prescriptionEmail', '', 'Prescription', '<div style=\"background:#ffffff; height:auto; width:100%\">\r\n <div style=\"width:80%\">\r\n  <div><img alt=\"\" src=\"{SITE_LOGO}\" style=\"height:auto; width:100px\" /></div>\r\n <table border=\"1\">\r\n  <tr>\r\n	  <td>Item Name</td>\r\n	  <td>{ITEM_NAME}</td>\r\n  </tr>\r\n  <tr>\r\n	  <td>Item Type</td>\r\n	  <td>{ITEM_TYPE}</td>\r\n  </tr>\r\n  <tr>\r\n	  <td>Duration</td>\r\n	  <td>{DURATION}</td>\r\n  </tr>\r\n  <tr>\r\n	  <td>Dosage</td>\r\n	  <td>{DOSAGE}</td>\r\n  </tr>\r\n  <tr>\r\n	  <td>Note</td>\r\n	  <td>{NOTE}</td>\r\n  </tr>\r\n</table>\r\n<br><br>\r\n {SITE_NAME}\r\n </div>\r\n</div>\r\n</div>', 'Active', 2, '2020-03-05 11:46:13', 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `ticket_number` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'not required for guest user',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `status` enum('Open','Closed') NOT NULL DEFAULT 'Open',
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry_reply`
--

CREATE TABLE `tbl_enquiry_reply` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `faq` varchar(250) NOT NULL,
  `faq_answer` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(100) NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insurance_providers`
--

CREATE TABLE `tbl_insurance_providers` (
  `provider_id` int(11) NOT NULL,
  `category` enum('Integrated','Travel') NOT NULL DEFAULT 'Integrated',
  `provider_name` varchar(250) NOT NULL,
  `provider_image` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_insurance_providers`
--

INSERT INTO `tbl_insurance_providers` (`provider_id`, `category`, `provider_name`, `provider_image`, `phone`, `email`, `website`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Integrated', 'Allianz Se', 'cab2da1b6e36ab754bd98854b0bd6d5e.jpg', '85412569', 'insurance1@mailinator.com', 'insurance1@mailinator.co', 'Active', 2, '2020-02-04 00:00:00', 2, '0000-00-00 00:00:00'),
(2, 'Integrated', 'Apollo', 'cab2da1b6e36ab754bd98854b0bd6d5e.jpg', '85412569', 'insurance1@mailinator.com', 'insurance1@mailinator.co', 'Active', 2, '2020-02-04 00:00:00', 2, '0000-00-00 00:00:00'),
(3, 'Integrated', 'AIG', 'cab2da1b6e36ab754bd98854b0bd6d5e.jpg', '85412569', 'insurance1@mailinator.com', 'insurance1@mailinator.co', 'Active', 2, '2020-02-04 00:00:00', 2, '0000-00-00 00:00:00'),
(4, 'Integrated', 'UnitedHealth', 'cab2da1b6e36ab754bd98854b0bd6d5e.jpg', '85412569', 'insurance1@mailinator.com', 'insurance1@mailinator.co', 'Active', 2, '2020-02-04 00:00:00', 2, '0000-00-00 00:00:00'),
(5, 'Integrated', 'Cigna Health', 'cab2da1b6e36ab754bd98854b0bd6d5e.jpg', '85412569', 'insurance1@mailinator.com', 'insurance1@mailinator.co', 'Active', 2, '2020-02-04 00:00:00', 2, '0000-00-00 00:00:00'),
(6, 'Integrated', 'Caresource', 'cab2da1b6e36ab754bd98854b0bd6d5e.jpg', '85412569', 'insurance1@mailinator.com', 'insurance1@mailinator.co', 'Active', 2, '2020-02-04 00:00:00', 2, '0000-00-00 00:00:00'),
(7, 'Integrated', 'Independence Health Group Inc.', 'cab2da1b6e36ab754bd98854b0bd6d5e.jpg', '85412569', 'insurance1@mailinator.com', 'insurance1@mailinator.co', 'Active', 2, '2020-02-04 00:00:00', 2, '0000-00-00 00:00:00'),
(8, 'Integrated', 'Munich', 'cab2da1b6e36ab754bd98854b0bd6d5e.jpg', '85412569', 'insurance1@mailinator.com', 'insurance1@mailinator.co', 'Active', 2, '2020-03-04 22:19:34', 2, '2020-03-04 22:19:48'),
(9, 'Travel', 'LIC', 'cab2da1b6e36ab754bd98854b0bd6d5e.jpg', '85412569', 'insurance1@mailinator.com', 'insurance1@mailinator.co', 'Active', 2, '2020-04-03 11:26:27', 2, '2020-04-03 11:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE `tbl_languages` (
  `language_id` int(11) NOT NULL,
  `language` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `language_code` varchar(5) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`language_id`, `language`, `status`, `language_code`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'English', 'Active', 'en', 2, '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language_contents`
--

CREATE TABLE `tbl_language_contents` (
  `id` int(11) NOT NULL,
  `content_type` varchar(111) NOT NULL,
  `row_id` varchar(200) NOT NULL,
  `lang_code` varchar(50) NOT NULL,
  `content_title` text NOT NULL,
  `content_detail` text NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_for` enum('Appointment','Transfer') NOT NULL DEFAULT 'Appointment',
  `transaction_id` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_amount` float(10,2) NOT NULL,
  `transaction_fee` float(10,2) NOT NULL,
  `status_code` varchar(50) NOT NULL DEFAULT 'PND',
  `payment_status` enum('Pending','Paid','Failed') NOT NULL DEFAULT 'Pending',
  `transfer_status` enum('Pending','Transferred','Failed','Not Applicable') NOT NULL DEFAULT 'Pending',
  `currency_code` varchar(10) NOT NULL,
  `currency_value` varchar(50) NOT NULL,
  `payment_method` enum('Card','COD','Wallet','Other') NOT NULL DEFAULT 'Other',
  `order_note` varchar(250) NOT NULL,
  `order_meta` text NOT NULL,
  `temp_order` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_for`, `transaction_id`, `user_id`, `order_date`, `order_amount`, `transaction_fee`, `status_code`, `payment_status`, `transfer_status`, `currency_code`, `currency_value`, `payment_method`, `order_note`, `order_meta`, `temp_order`) VALUES
(1, 'Appointment', '', 5, '2020-11-02 19:19:50', 200.00, 0.00, 'CMP', 'Pending', 'Pending', 'INR', '1.00000000', 'Other', '', '', 0),
(2, 'Appointment', '', 5, '2020-11-02 19:24:32', 200.00, 0.00, 'CMP', 'Pending', 'Pending', 'INR', '1.00000000', 'Other', '', '', 0),
(3, 'Appointment', '', 5, '2020-11-04 16:42:46', 200.00, 0.00, 'CMP', 'Pending', 'Pending', 'INR', '1.00000000', 'Other', '', '', 1),
(4, 'Appointment', 'pay_Fx4TN7IOrslK7j', 5, '2020-11-04 16:44:36', 200.00, 0.00, 'CMP', 'Paid', 'Pending', 'INR', '1.00000000', 'Other', '', '', 0),
(5, 'Appointment', '', 5, '2020-11-04 17:18:36', 200.00, 0.00, 'CMP', 'Pending', 'Pending', 'INR', '1.00000000', 'Other', '', '', 1),
(7, 'Appointment', 'pay_FxrivyUaUh1k4c', 5, '2020-11-06 16:55:44', 500.00, 0.00, 'CMP', 'Paid', 'Pending', 'INR', '1.00000000', 'Other', '', '', 0),
(8, 'Appointment', 'pay_FxsJDHwUsZiuLC', 5, '2020-11-06 17:30:04', 500.00, 0.00, 'CMP', 'Paid', 'Pending', 'INR', '1.00000000', 'Other', '', '', 0),
(9, 'Appointment', '', 5, '2020-11-06 17:44:48', 500.00, 0.00, 'CMP', 'Pending', 'Pending', 'INR', '1.00000000', 'Other', '', '', 1),
(10, 'Appointment', 'pay_FxsxG332lU3SI0', 5, '2020-11-06 18:08:06', 500.00, 0.00, 'CMP', 'Paid', 'Pending', 'INR', '1.00000000', 'Other', '', '', 0),
(11, 'Appointment', 'pay_Fxt6rJBaB0tyc3', 5, '2020-11-06 18:16:58', 500.00, 0.00, 'CMP', 'Paid', 'Pending', 'INR', '1.00000000', 'Other', '', '', 0),
(12, 'Appointment', 'pay_FxtMng3UjoPBV0', 5, '2020-11-06 18:32:18', 500.00, 0.00, 'CMP', 'Paid', 'Pending', 'INR', '1.00000000', 'Other', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_address`
--

CREATE TABLE `tbl_order_address` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `address_name` varchar(100) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `address_line1` varchar(250) NOT NULL,
  `address_line2` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_address`
--

INSERT INTO `tbl_order_address` (`id`, `order_id`, `address_name`, `mobile_number`, `address_line1`, `address_line2`, `city`, `postal_code`, `region`, `country`, `latitude`, `longitude`) VALUES
(1, 1, 'Patient One', '3254745669', '', '', '', '', '', 'IN', '', ''),
(2, 2, 'Patient One', '3254745669', '', '', '', '', '', 'IN', '', ''),
(3, 3, 'Doctor', '5555554444', 'indore', '', '', '', '', 'IN', '', ''),
(4, 4, 'Doctor', '5555554444', 'indore', '', '', '', '', 'IN', '', ''),
(5, 5, 'Patient One', '5555554444', 'indore', '', '', '', '', 'IN', '', ''),
(7, 7, 'Patient One', '5555554444', 'indore', '', '', '', '', 'IN', '', ''),
(8, 8, 'Patient One', '5555554444', 'indore', '', '', '', '', 'IN', '', ''),
(9, 9, 'Patient One', '5555554444', 'indore', '', '', '', '', 'IN', '', ''),
(10, 10, 'Patient One', '5555554444', 'indore', '', '', '', '', 'IN', '', ''),
(11, 11, 'Patient One', '5555554444', 'indore', '', '', '', '', 'IN', '', ''),
(12, 12, 'Patient One', '5555554444', 'indore', '', '', '', '', 'IN', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_items`
--

CREATE TABLE `tbl_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `item_qty` tinyint(4) NOT NULL DEFAULT 1,
  `item_amount` float(10,2) NOT NULL COMMENT 'amount of single item',
  `item_subtotal` float(10,2) NOT NULL COMMENT 'item_qty*item_amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_items`
--

INSERT INTO `tbl_order_items` (`id`, `order_id`, `item_id`, `item_name`, `item_qty`, `item_amount`, `item_subtotal`) VALUES
(1, 1, '1', 'Appointment Confirmed', 1, 200.00, 200.00),
(2, 2, '2', 'Appointment Confirmed', 1, 200.00, 200.00),
(3, 3, '3', 'Appointment Confirmed', 1, 200.00, 200.00),
(4, 4, '4', 'Appointment Confirmed', 1, 200.00, 200.00),
(5, 5, '5', 'Appointment Confirmed', 1, 200.00, 200.00),
(7, 7, '7', 'Appointment Confirmed', 1, 500.00, 500.00),
(8, 8, '8', 'Appointment Confirmed', 1, 500.00, 500.00),
(9, 9, '9', 'Appointment Confirmed', 1, 500.00, 500.00),
(10, 10, '10', 'Appointment Confirmed', 1, 500.00, 500.00),
(11, 11, '11', 'Appointment Confirmed', 1, 500.00, 500.00),
(12, 12, '12', 'Appointment Confirmed', 1, 500.00, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_payment_history`
--

CREATE TABLE `tbl_order_payment_history` (
  `history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `event_id` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `webhook_response` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_payment_history`
--

INSERT INTO `tbl_order_payment_history` (`history_id`, `order_id`, `event_id`, `transaction_id`, `payment_status`, `webhook_response`, `created_date`) VALUES
(1, 1, '', '', 'Pending', '', '2020-11-02 19:19:50'),
(2, 2, '', '', 'Pending', '', '2020-11-02 19:24:32'),
(13, 3, '', '', 'Pending', '', '2020-11-04 16:42:46'),
(14, 4, '', '', 'Pending', '', '2020-11-04 16:44:36'),
(15, 4, '', 'pay_Fx4TN7IOrslK7j', 'Paid', '', '2020-11-04 16:46:39'),
(16, 5, '', '', 'Pending', '', '2020-11-04 17:18:36'),
(18, 7, '', '', 'Pending', '', '2020-11-06 16:55:44'),
(19, 7, '', 'pay_FxrivyUaUh1k4c', 'Paid', '', '2020-11-06 16:56:07'),
(20, 8, '', '', 'Pending', '', '2020-11-06 17:30:05'),
(21, 8, '', 'pay_FxsJDHwUsZiuLC', 'Paid', '', '2020-11-06 17:30:26'),
(22, 9, '', '', 'Pending', '', '2020-11-06 17:44:49'),
(23, 10, '', '', 'Pending', '', '2020-11-06 18:08:07'),
(24, 10, '', 'pay_FxsxG332lU3SI0', 'Paid', '', '2020-11-06 18:08:19'),
(25, 11, '', '', 'Pending', '', '2020-11-06 18:16:59'),
(26, 11, '', 'pay_Fxt6rJBaB0tyc3', 'Paid', '', '2020-11-06 18:17:25'),
(27, 12, '', '', 'Pending', '', '2020-11-06 18:32:18'),
(28, 12, '', 'pay_FxtMng3UjoPBV0', 'Paid', '', '2020-11-06 18:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_status`
--

CREATE TABLE `tbl_order_status` (
  `order_status_id` int(11) NOT NULL,
  `status_for` enum('Product','Service','Appointment','Transfer') NOT NULL DEFAULT 'Product',
  `status_code` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `long_status` varchar(100) NOT NULL,
  `completed_level` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_status`
--

INSERT INTO `tbl_order_status` (`order_status_id`, `status_for`, `status_code`, `status`, `long_status`, `completed_level`) VALUES
(1, 'Product', 'PND', 'Pending', 'Order Placed', 0),
(2, 'Product', 'PRS', 'Processing', 'Processing Order', 25),
(3, 'Product', 'PCD', 'Processed', 'Order Processed', 50),
(4, 'Product', 'SPD', 'Shipped', 'Order Dispatched', 75),
(5, 'Product', 'CMP', 'Complete', 'Order Completed', 100),
(6, 'Product', 'CNL', 'Cancelled', 'Order Cancelled', 100),
(7, 'Product', 'FLD', 'Failed', 'Order Failed', 100),
(8, 'Product', 'RFD', 'Refunded', 'Amount Refunded', 100),
(9, 'Appointment', 'PND', 'Pending', 'Appointment is Pending', 0),
(10, 'Appointment', 'CNL', 'Cancelled', 'Appointment is Cancelled', 100),
(11, 'Appointment', 'CNF', 'Confirmed', 'Appointment is Confirmed', 50),
(12, 'Appointment', 'DLN', 'Declined', 'Appointment is Declined', 100),
(13, 'Appointment', 'RSL', 'Rescheduled', 'Appointment is Rescheduled', 0),
(14, 'Appointment', 'CMP', 'Completed', 'Appointment is Completed', 100),
(15, 'Transfer', 'PND', 'Pending', 'Transfer Pending', 0),
(16, 'Transfer', 'PRS', 'Processing', 'Transfer Processing', 25),
(17, 'Transfer', 'FLD', 'Failed', 'Transfer Failed', 100),
(18, 'Transfer', 'CMP', 'Completed', 'Transfer Completed', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_status_history`
--

CREATE TABLE `tbl_order_status_history` (
  `status_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status_code` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `notified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_status_history`
--

INSERT INTO `tbl_order_status_history` (`status_id`, `order_id`, `status_code`, `message`, `notified`, `created_by`, `created_date`) VALUES
(1, 1, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-02 19:19:50'),
(2, 2, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-02 19:24:32'),
(3, 3, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-04 16:42:46'),
(4, 4, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-04 16:44:36'),
(5, 5, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-04 17:18:36'),
(7, 7, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-06 16:55:44'),
(8, 8, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-06 17:30:05'),
(9, 9, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-06 17:44:49'),
(10, 10, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-06 18:08:07'),
(11, 11, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-06 18:16:59'),
(12, 12, 'CMP', 'Appointment Confirmed', 'Yes', '5', '2020-11-06 18:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_total`
--

CREATE TABLE `tbl_order_total` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` float(10,2) NOT NULL DEFAULT 0.00,
  `sort_order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_total`
--

INSERT INTO `tbl_order_total` (`id`, `order_id`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'Sub Total', 200.00, 1),
(2, 1, 'Total', 200.00, 2),
(3, 2, 'Sub Total', 200.00, 1),
(4, 2, 'Total', 200.00, 2),
(5, 3, 'Sub Total', 200.00, 1),
(6, 3, 'Total', 200.00, 2),
(7, 4, 'Sub Total', 200.00, 1),
(8, 4, 'Total', 200.00, 2),
(9, 5, 'Sub Total', 200.00, 1),
(10, 5, 'Total', 200.00, 2),
(13, 7, 'Sub Total', 500.00, 1),
(14, 7, 'Total', 500.00, 2),
(15, 8, 'Sub Total', 500.00, 1),
(16, 8, 'Total', 500.00, 2),
(17, 9, 'Sub Total', 500.00, 1),
(18, 9, 'Total', 500.00, 2),
(19, 10, 'Sub Total', 500.00, 1),
(20, 10, 'Total', 500.00, 2),
(21, 11, 'Sub Total', 500.00, 1),
(22, 11, 'Total', 500.00, 2),
(23, 12, 'Sub Total', 500.00, 1),
(24, 12, 'Total', 500.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sent_notifications`
--

CREATE TABLE `tbl_sent_notifications` (
  `id` int(11) NOT NULL,
  `notification` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sent_notifications`
--

INSERT INTO `tbl_sent_notifications` (`id`, `notification`, `created_date`) VALUES
(1, '{\"to\":{\"email\":\"manish.yadav@techlect.com\",\"name\":\"Manish Yaav\"},\"subject\":\"Webhook data\",\"message\":\"Test\"}', '2020-09-14 14:13:46'),
(2, '{\"to\":{\"email\":\"manish.yadav@techlect.com\",\"name\":\"Manish Yaav\"},\"subject\":\"Webhook data\",\"message\":\"Test\"}', '2020-09-14 14:14:45'),
(3, '{\"to\":{\"email\":\"manish.yadav@techlect.com\",\"name\":\"Manish Yaav\"},\"subject\":\"Webhook data\",\"message\":\"Test\"}', '2020-09-14 14:15:24'),
(4, '{\"to\":{\"email\":\"manish.yadav@techlect.com\",\"name\":\"Manish Yaav\"},\"subject\":\"Webhook data\",\"message\":\"Test\"}', '2020-09-14 14:17:20'),
(5, '{\"to\":{\"email\":\"ashok.kumar@mailinator.com\",\"name\":\"Ashok Kumar\"},\"subject\":\"Verify Your Account\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n<div>Hi Ashok Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/akhyV3A0eGhlNmZCdVdUb295UEtwZz09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/akhyV3A0eGhlNmZCdVdUb295UEtwZz09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-14 14:20:04'),
(6, '{\"to\":{\"email\":\"ashok.kumar@mailinator.com\",\"name\":\"Ashok Kumar\"},\"subject\":\"Verify Your Account\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n<div>Hi Ashok Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/MDRaUUU3QVNWcHlZWE9HdnAydlVDUT09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/MDRaUUU3QVNWcHlZWE9HdnAydlVDUT09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-14 14:21:14'),
(7, '{\"to\":{\"email\":\"ashok.kumar@mailinator.com\",\"name\":\"Ashok Kumar\"},\"subject\":\"Account Verified\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n<div>Hi Ashok Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is successfully verified. You can now login to your account. Below is your account detail<br \\/><br \\/>\\r\\nEmail:&nbsp;ashok.kumar@mailinator.com<br \\/>\\r\\nPassword:&nbsp;Info9179@<br \\/>\\r\\n\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-14 14:32:15'),
(8, '{\"to\":{\"email\":\"rajeev.kumar@mailinator.com\",\"name\":\"Rajeev Kumar\"},\"subject\":\"Verify Your Account\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n<div>Hi Rajeev Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"{VERIFICATION_URL}\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/MEk1MXYvd0pZV0l5d09Jb3dzaE9PQT09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-15 08:28:34'),
(9, '{\"to\":{\"email\":\"rajeev.kumar@mailinator.com\",\"name\":\"Rajeev Kumar\"},\"subject\":\"Verify Your Account\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Rajeev Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"{VERIFICATION_URL}\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/MEk1MXYvd0pZV0l5d09Jb3dzaE9PQT09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-15 08:30:25'),
(10, '{\"to\":{\"email\":\"rajeev.kumar@mailinator.com\",\"name\":\"Rajeev Kumar\"},\"subject\":\"Verify Your Account\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Rajeev Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/MEk1MXYvd0pZV0l5d09Jb3dzaE9PQT09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/MEk1MXYvd0pZV0l5d09Jb3dzaE9PQT09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-15 08:33:11'),
(11, '{\"to\":{\"email\":\"rajeev.kumar@mailinator.com\",\"name\":\"Rajeev Kumar\"},\"subject\":\"Account Verified\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n<div>Hi Rajeev Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is successfully verified. You can now login to your account. Below is your account detail<br \\/><br \\/>\\r\\nEmail:&nbsp;rajeev.kumar@mailinator.com<br \\/>\\r\\nPassword:&nbsp;Info9179@<br \\/>\\r\\n\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-15 08:33:45'),
(12, '{\"to\":{\"email\":\"rajeev.kumar@mailinator.com\",\"name\":\"Rajeev Kumar\"},\"subject\":\"Account Verified\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n<div>Hi Rajeev Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is successfully verified. You can now login to your account. Below is your account detail<br \\/><br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/front\\/login<br \\/>\\r\\nEmail:&nbsp;rajeev.kumar@mailinator.com<br \\/>\\r\\nPassword:&nbsp;Info9179@<br \\/>\\r\\n\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-15 08:57:38'),
(13, '{\"to\":{\"email\":\"rajeev.kumar@mailinator.com\",\"name\":\"Rajeev Kumar\"},\"subject\":\"Account Verified\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"https:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n<div>Hi Rajeev Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is successfully verified. You can now login to your account. Below is your account detail<br \\/><br \\/>\\r\\nURL:&nbsp;https:\\/\\/simranfeeds.com\\/medzigo\\/front\\/login<br \\/>\\r\\nEmail:&nbsp;rajeev.kumar@mailinator.com<br \\/>\\r\\nPassword:&nbsp;Info9179@<br \\/>\\r\\n\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-15 09:01:05'),
(14, '{\"to\":{\"email\":\"sohan.kumar@mailinator.com\",\"name\":\"Sohan Kumar\"},\"subject\":\"Verify Your Account\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"https:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Sohan Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"https:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/eTZWcFBTcElBUXB6Z0plOWZadDJpdz09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;https:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/eTZWcFBTcElBUXB6Z0plOWZadDJpdz09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-15 15:20:41'),
(15, '{\"to\":{\"email\":\"sohan.kumar@mailinator.com\",\"name\":\"Sohan Kumar\"},\"subject\":\"Account Verified\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"https:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n<div>Hi Sohan Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is successfully verified. You can now login to your account. Below is your account detail<br \\/><br \\/>\\r\\nURL:&nbsp;https:\\/\\/simranfeeds.com\\/medzigo\\/front\\/login<br \\/>\\r\\nEmail:&nbsp;sohan.kumar@mailinator.com<br \\/>\\r\\nPassword:&nbsp;3Mu5632Q<br \\/>\\r\\n\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-09-15 15:25:25'),
(16, '{\"to\":{\"email\":\"sohan.kumar@mailinator.com\",\"name\":\"Sohan Kumar\"},\"subject\":\"\",\"message\":\"Template data not found\"}', '2020-10-01 10:29:38'),
(17, '{\"to\":{\"email\":\"demo.user12345@mailinator.com\",\"name\":\"demo user\"},\"subject\":\"Verify Your Account\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"https:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi demo user,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"https:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/d3d2V3hvNndvdUNUYS96SUo2M1JyZz09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;https:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/d3d2V3hvNndvdUNUYS96SUo2M1JyZz09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-10-20 05:19:51'),
(18, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwFtVEGTvsF816\",\"entity\":\"payment\",\"amount\":10000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Load Wallet\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":[],\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"1281574\"},\"created_at\":1604310401}}},\"created_at\":1604310404}', '2020-11-02 09:46:45'),
(19, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwIjobPjlG5RcL\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":[],\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"3737527\"},\"created_at\":1604320415}}},\"created_at\":1604320420}', '2020-11-02 12:33:42'),
(20, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.failed\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwIuEuJXdpDHYl\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"failed\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":[],\"fee\":null,\"tax\":null,\"error_code\":\"BAD_REQUEST_ERROR\",\"error_description\":\"Payment failed\",\"error_source\":\"bank\",\"error_step\":\"payment_authorization\",\"error_reason\":\"payment_failed\",\"acquirer_data\":{\"bank_transaction_id\":null},\"created_at\":1604321007}}},\"created_at\":1604321011}', '2020-11-02 12:43:32'),
(21, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwIutBmFKnxlvz\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":[],\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"3117760\"},\"created_at\":1604321044}}},\"created_at\":1604321047}', '2020-11-02 12:44:07'),
(22, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.failed\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwIxhnQzTtwYzM\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"failed\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":[],\"fee\":null,\"tax\":null,\"error_code\":\"BAD_REQUEST_ERROR\",\"error_description\":\"Payment failed\",\"error_source\":\"bank\",\"error_step\":\"payment_authorization\",\"error_reason\":\"payment_failed\",\"acquirer_data\":{\"bank_transaction_id\":null},\"created_at\":1604321204}}},\"created_at\":1604321207}', '2020-11-02 12:46:48'),
(23, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwJoI9U81Q1fDk\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":[],\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7440746\"},\"created_at\":1604324191}}},\"created_at\":1604324194}', '2020-11-02 13:36:35'),
(24, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwJtoMRYj3KUDH\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":[],\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"6788789\"},\"created_at\":1604324505}}},\"created_at\":1604324507}', '2020-11-02 13:41:48'),
(25, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwK7nFvabf826J\",\"entity\":\"payment\",\"amount\":20000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":[],\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"1656588\"},\"created_at\":1604325299}}},\"created_at\":1604325301}', '2020-11-02 13:55:02'),
(26, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwdKYvftdtWpbE\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"28\",\"appointment_id\":\"30\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"5442932\"},\"created_at\":1604392935}}},\"created_at\":1604392939}', '2020-11-03 08:42:20'),
(27, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwgkOl2JKzUv3G\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"29\",\"appointment_id\":\"31\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7558118\"},\"created_at\":1604404967}}},\"created_at\":1604404970}', '2020-11-03 12:02:51'),
(28, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwgpaWduQCsLwp\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"HDFC\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"30\",\"appointment_id\":\"32\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"2609839\"},\"created_at\":1604405262}}},\"created_at\":1604405269}', '2020-11-03 12:07:50'),
(29, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.failed\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fwh5xzvMFPd7gD\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"failed\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"31\",\"appointment_id\":\"33\"},\"fee\":null,\"tax\":null,\"error_code\":\"BAD_REQUEST_ERROR\",\"error_description\":\"Payment failed\",\"error_source\":\"bank\",\"error_step\":\"payment_authorization\",\"error_reason\":\"payment_failed\",\"acquirer_data\":{\"bank_transaction_id\":null},\"created_at\":1604406192}}},\"created_at\":1604406196}', '2020-11-03 12:23:17'),
(30, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.failed\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fwh96rUrM5DHNC\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"failed\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"32\",\"appointment_id\":\"34\"},\"fee\":null,\"tax\":null,\"error_code\":\"BAD_REQUEST_ERROR\",\"error_description\":\"Payment failed\",\"error_source\":\"bank\",\"error_step\":\"payment_authorization\",\"error_reason\":\"payment_failed\",\"acquirer_data\":{\"bank_transaction_id\":null},\"created_at\":1604406371}}},\"created_at\":1604406374}', '2020-11-03 12:26:15'),
(31, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.failed\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwhDJUKa80obEQ\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"failed\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"33\",\"appointment_id\":\"35\"},\"fee\":null,\"tax\":null,\"error_code\":\"BAD_REQUEST_ERROR\",\"error_description\":\"Payment failed\",\"error_source\":\"bank\",\"error_step\":\"payment_authorization\",\"error_reason\":\"payment_failed\",\"acquirer_data\":{\"bank_transaction_id\":null},\"created_at\":1604406610}}},\"created_at\":1604406613}', '2020-11-03 12:30:14'),
(32, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.failed\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwhEtPA0uQmZEA\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"failed\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"HDFC\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"34\",\"appointment_id\":\"36\"},\"fee\":null,\"tax\":null,\"error_code\":\"BAD_REQUEST_ERROR\",\"error_description\":\"Payment failed\",\"error_source\":\"bank\",\"error_step\":\"payment_authorization\",\"error_reason\":\"payment_failed\",\"acquirer_data\":{\"bank_transaction_id\":null},\"created_at\":1604406699}}},\"created_at\":1604406702}', '2020-11-03 12:31:43'),
(33, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwhFrN1UlwtkBU\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"35\",\"appointment_id\":\"37\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"5497752\"},\"created_at\":1604406754}}},\"created_at\":1604406757}', '2020-11-03 12:32:38'),
(34, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwhM9Pbouh2VYc\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"37\",\"appointment_id\":\"39\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"4362170\"},\"created_at\":1604407112}}},\"created_at\":1604407114}', '2020-11-03 12:38:35'),
(35, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwhYaVB5ZkXYZw\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"38\",\"appointment_id\":\"40\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"4916741\"},\"created_at\":1604407818}}},\"created_at\":1604407821}', '2020-11-03 12:50:22'),
(36, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwhccmI7XT9DF0\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"39\",\"appointment_id\":\"41\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"1453995\"},\"created_at\":1604408047}}},\"created_at\":1604408050}', '2020-11-03 12:54:11'),
(37, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwhnAPDkkGaWn3\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"40\",\"appointment_id\":\"42\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"1455892\"},\"created_at\":1604408646}}},\"created_at\":1604408649}', '2020-11-03 13:04:10'),
(38, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fwi5I5iCP31SYA\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"41\",\"appointment_id\":\"43\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"9759581\"},\"created_at\":1604409676}}},\"created_at\":1604409679}', '2020-11-03 13:21:20'),
(39, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_FwiMPJez6asYDU\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"42\",\"appointment_id\":\"44\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"4551766\"},\"created_at\":1604410648}}},\"created_at\":1604410657}', '2020-11-03 13:37:38'),
(40, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 09:31:28'),
(41, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 09:33:28'),
(42, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 09:33:42'),
(43, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 09:36:28'),
(44, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 09:39:19'),
(45, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 09:42:14'),
(46, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 09:45:15'),
(47, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 09:51:16'),
(48, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 10:03:19'),
(49, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 10:24:42'),
(50, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx2hbXYIIXvoEq\",\"entity\":\"payment\",\"amount\":50000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"43\",\"appointment_id\":\"45\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"7508863\"},\"created_at\":1604482284}}},\"created_at\":1604482287}', '2020-11-04 11:09:15'),
(51, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx4TN7IOrslK7j\",\"entity\":\"payment\",\"amount\":20000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"4\",\"appointment_id\":\"4\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"4464482\"},\"created_at\":1604488519}}},\"created_at\":1604488589}', '2020-11-04 11:16:39'),
(52, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Doctor\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"https:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Doctor,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Dr. Doctor One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 4<br>\\r\\n   &nbsp;&nbsp;Patient Name : Patient One<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Monday, 09 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 02:20 PM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9200.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 4<br>\\r\\n   &nbsp;&nbsp;Order Date : Wednesday, 04 November, 2020, 04:44 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-04 11:16:46'),
(53, '{\"to\":{\"email\":\"doctor1@mailinator.com\",\"name\":\"Dr. Doctor One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"https:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Dr. Doctor One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Doctor has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 4<br>\\r\\n   &nbsp;&nbsp;Patient Name : Patient One<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Monday, 09 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 02:20 PM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9200.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 4<br>\\r\\n   &nbsp;&nbsp;Order Date : Wednesday, 04 November, 2020, 04:44 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-04 11:16:47'),
(54, 'Step 1: Webhook Data: {\"entity\":\"event\",\"account_id\":\"acc_Ft4MzWgkrCnZFG\",\"event\":\"payment.authorized\",\"contains\":[\"payment\"],\"payload\":{\"payment\":{\"entity\":{\"id\":\"pay_Fx4TN7IOrslK7j\",\"entity\":\"payment\",\"amount\":20000,\"currency\":\"INR\",\"status\":\"authorized\",\"order_id\":null,\"invoice_id\":null,\"international\":false,\"method\":\"netbanking\",\"amount_refunded\":0,\"refund_status\":null,\"captured\":false,\"description\":\"Appointment Booking\",\"card_id\":null,\"bank\":\"SBIN\",\"wallet\":null,\"vpa\":null,\"email\":\"manish.yadav@techlect.com\",\"contact\":\"+919893483987\",\"notes\":{\"order_id\":\"4\",\"appointment_id\":\"4\"},\"fee\":null,\"tax\":null,\"error_code\":null,\"error_description\":null,\"error_source\":null,\"error_step\":null,\"error_reason\":null,\"acquirer_data\":{\"bank_transaction_id\":\"4464482\"},\"created_at\":1604488519}}},\"created_at\":1604488589}', '2020-11-04 11:18:31'),
(55, '{\"to\":{\"email\":\"naveen.kumar@mailinator.com\",\"name\":\"Naveen Kumar\"},\"subject\":\"Verify Your Email\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Naveen Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/OFVORjBmdEczTVhKN1hXNFdFb1d1Zz09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/OFVORjBmdEczTVhKN1hXNFdFb1d1Zz09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-11-06 09:38:01'),
(56, '{\"to\":{\"email\":\"testdoctor7@mailinator.com\",\"name\":\"DoctorTest\"},\"subject\":\"Verify Your Email\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi DoctorTest,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/ZzZDUHFHa2hpUlNxdmk4bkNuK2xkdz09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/ZzZDUHFHa2hpUlNxdmk4bkNuK2xkdz09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-11-06 09:46:05');
INSERT INTO `tbl_sent_notifications` (`id`, `notification`, `created_date`) VALUES
(57, '{\"to\":{\"email\":\"naveen.kumars@mailinator.com\",\"name\":\"Naveen Kumar\"},\"subject\":\"Verify Your Email\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Naveen Kumar,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/MzZxR1NMNi96RGY2dnJTOS9XSThyUT09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/MzZxR1NMNi96RGY2dnJTOS9XSThyUT09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-11-06 09:54:55'),
(58, '{\"to\":{\"email\":\"testdoctor8@mailinator.com\",\"name\":\"Abc\"},\"subject\":\"Verify Your Email\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Abc,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/ZTJ2RnVCbStqYW5iUkVXOVJvNGN6UT09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/ZTJ2RnVCbStqYW5iUkVXOVJvNGN6UT09<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-11-06 10:02:58'),
(59, '{\"to\":{\"email\":\"testdoctor8@mailinator.com\",\"name\":\"Abc\"},\"subject\":\"\",\"message\":\"Template data not found\"}', '2020-11-06 10:16:44'),
(60, '{\"to\":{\"email\":\"testdoctor8@mailinator.com\",\"name\":\"Abc\"},\"subject\":\"\",\"message\":\"Template data not found\"}', '2020-11-06 10:18:28'),
(61, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"\",\"message\":\"Template data not found\"}', '2020-11-06 10:24:39'),
(62, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"Verify Your Email\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Patient One,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"{EMAIL_VERIFICATION_URL}\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf above link dosn&#39;t work copy and visit the below url:<br \\/>\\r\\nURL:&nbsp;{EMAIL_VERIFICATION_URL}<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-11-06 10:27:52'),
(63, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"Verify Your Email\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Patient One,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"{EMAIL_VERIFICATION_URL}\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf the above link dosn&#39;t work copy and visit the below URL:<br \\/>\\r\\nURL:&nbsp;{EMAIL_VERIFICATION_URL}<br \\/>\\r\\nOTP:&nbsp;{VERIFICATION_CODE}<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-11-06 10:30:28'),
(64, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"Verify Your Email\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Patient One,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/VkE3RnJoY2w4aWtYb1p0UUpkNENCQT09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf the above link dosn&#39;t work copy and visit the below URL:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/VkE3RnJoY2w4aWtYb1p0UUpkNENCQT09<br \\/>\\r\\nOTP:&nbsp;{VERIFICATION_CODE}<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-11-06 10:31:15'),
(65, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"Verify Your Email\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Patient One,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/cWV0MENBd2Q1aTZDY3M5dTQrZTJwUT09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf the above link dosn&#39;t work copy and visit the below URL:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/cWV0MENBd2Q1aTZDY3M5dTQrZTJwUT09<br \\/>\\r\\nOTP:&nbsp;{VERIFICATION_CODE}<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-11-06 10:31:28'),
(66, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"Verify Your Email\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n<div style=\\\"width:80%\\\">\\r\\n<div><img alt=\\\"\\\" src=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div><br \\/>\\r\\n<div>Hi Patient One,<\\/div>\\r\\n<div>\\r\\n<p>Your account is created successfully. Click <a href=\\\"http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/YU1Qa01HM2VINmZSbjNJSUZNRGhyZz09\\\" target=\\\"_blank\\\">here<\\/a> to verify your account.<br \\/>\\r\\nIf the above link dosn&#39;t work copy and visit the below URL:<br \\/>\\r\\nURL:&nbsp;http:\\/\\/simranfeeds.com\\/medzigo\\/api\\/verify-account\\/YU1Qa01HM2VINmZSbjNJSUZNRGhyZz09<br \\/>\\r\\nOTP:&nbsp;406561<br \\/>\\r\\n<p><br \\/>\\r\\nThanks,<br \\/>\\r\\nMedzigo<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\"}', '2020-11-06 10:32:33'),
(67, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Patient One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Dr. Doctor One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 7<br>\\r\\n   &nbsp;&nbsp;Patient Name : Sonu Kumar<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Monday, 09 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 10:20 AM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9500.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 7<br>\\r\\n   &nbsp;&nbsp;Order Date : Friday, 06 November, 2020, 04:55 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-06 16:56:08'),
(68, '{\"to\":{\"email\":\"doctor1@mailinator.com\",\"name\":\"Dr. Doctor One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Dr. Doctor One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Patient One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 7<br>\\r\\n   &nbsp;&nbsp;Patient Name : Sonu Kumar<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Monday, 09 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 10:20 AM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9500.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 7<br>\\r\\n   &nbsp;&nbsp;Order Date : Friday, 06 November, 2020, 04:55 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-06 16:56:17'),
(69, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Patient One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Dr. Doctor One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 8<br>\\r\\n   &nbsp;&nbsp;Patient Name : Arpit sahu<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Tuesday, 10 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 12:28 PM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9500.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 8<br>\\r\\n   &nbsp;&nbsp;Order Date : Friday, 06 November, 2020, 05:30 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-06 17:30:26'),
(70, '{\"to\":{\"email\":\"doctor1@mailinator.com\",\"name\":\"Dr. Doctor One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Dr. Doctor One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Patient One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 8<br>\\r\\n   &nbsp;&nbsp;Patient Name : Arpit sahu<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Tuesday, 10 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 12:28 PM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9500.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 8<br>\\r\\n   &nbsp;&nbsp;Order Date : Friday, 06 November, 2020, 05:30 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-06 17:30:34'),
(71, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Patient One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Dr. Doctor One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 10<br>\\r\\n   &nbsp;&nbsp;Patient Name : Patient One<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Monday, 09 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 10:00 AM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9500.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 10<br>\\r\\n   &nbsp;&nbsp;Order Date : Friday, 06 November, 2020, 06:08 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-06 18:08:20'),
(72, '{\"to\":{\"email\":\"doctor1@mailinator.com\",\"name\":\"Dr. Doctor One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Dr. Doctor One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Patient One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 10<br>\\r\\n   &nbsp;&nbsp;Patient Name : Patient One<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Monday, 09 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 10:00 AM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9500.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 10<br>\\r\\n   &nbsp;&nbsp;Order Date : Friday, 06 November, 2020, 06:08 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-06 18:08:28'),
(73, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Patient One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Dr. Doctor One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 11<br>\\r\\n   &nbsp;&nbsp;Patient Name : Patient One<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Monday, 09 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 03:20 PM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9500.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 11<br>\\r\\n   &nbsp;&nbsp;Order Date : Friday, 06 November, 2020, 06:16 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-06 18:17:25'),
(74, '{\"to\":{\"email\":\"doctor1@mailinator.com\",\"name\":\"Dr. Doctor One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Dr. Doctor One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Patient One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 11<br>\\r\\n   &nbsp;&nbsp;Patient Name : Patient One<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Monday, 09 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 03:20 PM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9500.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 11<br>\\r\\n   &nbsp;&nbsp;Order Date : Friday, 06 November, 2020, 06:16 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-06 18:17:33'),
(75, '{\"to\":{\"email\":\"patient1@mailinator.com\",\"name\":\"Patient One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Patient One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Dr. Doctor One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 12<br>\\r\\n   &nbsp;&nbsp;Patient Name : Patient One<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Monday, 09 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 11:20 AM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9500.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 12<br>\\r\\n   &nbsp;&nbsp;Order Date : Friday, 06 November, 2020, 06:32 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-06 18:32:39'),
(76, '{\"to\":{\"email\":\"doctor1@mailinator.com\",\"name\":\"Dr. Doctor One\"},\"subject\":\"Appointment Confirmed\",\"message\":\"<div style=\\\"background:#ffffff; height:auto; width:100%\\\">\\r\\n <div style=\\\"width:80%\\\">\\r\\n  <div><img alt=\\\"\\\" src=\\\"http:\\/\\/localhost\\/medzigo\\/api\\/assets\\/images\\/logo.png\\\" style=\\\"height:auto; width:100px\\\" \\/><\\/div>\\r\\n  <div>Hi Dr. Doctor One,<\\/div><br>\\r\\n  <div>\\r\\n   Your appointment with Patient One has been confirmed.<br><br>\\r\\n   <b>Your Appoinment details:<\\/b><br>\\r\\n   &nbsp;&nbsp;Appointment ID : 12<br>\\r\\n   &nbsp;&nbsp;Patient Name : Patient One<br>\\r\\n   &nbsp;&nbsp;Patient Email : patient1@mailinator.com<br>\\r\\n   &nbsp;&nbsp;Patient Mobile : 5555554444<br>\\r\\n   &nbsp;&nbsp;Appointment Date : Monday, 09 November, 2020<br>\\r\\n   &nbsp;&nbsp;Appointment Time : 11:20 AM<br>\\r\\n   &nbsp;&nbsp;Consultation Fee : \\u20b9500.00<br>\\r\\n   &nbsp;&nbsp;Appointment Status : Confirmed<br>\\r\\n   &nbsp;&nbsp;Order ID : 12<br>\\r\\n   &nbsp;&nbsp;Order Date : Friday, 06 November, 2020, 06:32 PM<br>\\r\\n   &nbsp;&nbsp;Payment Status : Paid<br><br>\\r\\n   Thanks,<br>\\r\\n   Medzigo\\r\\n  <\\/div>\\r\\n <\\/div>\\r\\n<\\/div>\"}', '2020-11-06 18:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `setting_id` int(11) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `setting_type` enum('Basic','Technical') NOT NULL DEFAULT 'Basic',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`setting_id`, `keyword`, `value`, `description`, `setting_type`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'SITE_NAME', 'Medzigo', 'Enter your website name in value field, do not change keyword field', 'Basic', 1, '2018-08-16 14:27:21', 1, '2020-08-04 11:18:47'),
(5, 'SITE_ADDRESS', '123 street', 'Enter address in value field, do not change keyword', 'Basic', 1, '2019-03-13 14:17:12', 1, '2019-05-30 06:36:50'),
(8, 'META_KEY', 'My Site meta key', 'Enter website meta key in value field, do not change keyword field', 'Basic', 1, '2019-05-14 07:26:00', 1, '2020-03-04 21:31:20'),
(9, 'META_DESCRIPTION', 'My site meta description', 'Enter website meta description in value field, do not change keyword field', 'Basic', 1, '2019-05-14 07:26:22', 1, '2020-08-04 11:18:59'),
(12, 'SITE_EMAIL', 'medzigo@simranfeeds.com', 'website official email', 'Basic', 1, '2019-05-14 11:11:51', 1, '2020-09-14 19:40:13'),
(13, 'NOT_REPLY_EMAIL', 'medzigo@simranfeeds.com', 'do not reply email', 'Basic', 1, '2019-05-14 11:12:17', 1, '2020-09-14 19:39:58'),
(14, 'FACEBOOK', 'https://facebook.com', 'facebook page url', 'Basic', 1, '2019-08-14 13:40:04', 1, '0000-00-00 00:00:00'),
(15, 'TWITTER', 'https://twitter.com', 'twitter page url', 'Basic', 1, '2019-08-14 13:40:37', 1, '0000-00-00 00:00:00'),
(16, 'INSTAGRAM', 'https://instagram.com', 'instagram page url', 'Basic', 1, '2019-08-14 13:40:55', 1, '0000-00-00 00:00:00'),
(17, 'GOOGLE_PLUS', 'https://plus.google.com', 'google plus page url', 'Basic', 1, '2019-08-14 13:41:17', 1, '0000-00-00 00:00:00'),
(18, 'LINKEDIN', 'https://linkedin.com', 'linkedin page url', 'Basic', 1, '2019-08-14 13:41:52', 1, '0000-00-00 00:00:00'),
(26, 'GOOGLE_MAP_API_KEY', 'AIzaSyBrlMTQe7hGxhg1qJZNLmv-9N6a_sN6_VU', 'This is api key for google map\n', 'Basic', 1, '2019-09-19 13:02:51', 1, '0000-00-00 00:00:00'),
(27, 'GOOGLE_RECAPTCHA_SITE_KEY', '6LciW7cUAAAAAN7JWcaChJLxMq6jY-CD0nb6hVKv', 'This is google re captcha site...\n', 'Basic', 1, '2019-09-19 13:03:28', 1, '0000-00-00 00:00:00'),
(28, 'GOOGLE_ANALYTICS_TRACKING_ID', 'UA-148358230-1', 'This is tracking id for google analytics', 'Basic', 1, '2019-09-19 13:04:18', 1, '0000-00-00 00:00:00'),
(29, 'SESSION_TIMEOUT', '900', 'Automatically logout the user if he is inactive for the specified value above. The value is in seconds, it must be a decimal number and greater than 0. If set to 0 or invalid value the default value 300 will be used. Please do not change the value of the \"keyword\" field, only change the value of the \"value\" field.', 'Basic', 1, '2019-11-16 06:49:45', 1, '2019-11-19 11:48:07'),
(31, 'EMAIL_PROTOCOL', 'smtp', 'your email protocol', 'Basic', 1, '2019-12-06 07:01:45', 1, '2019-12-09 06:03:15'),
(32, 'EMAIL_HOST', 'mail.simranfeeds.com', 'your email host', 'Basic', 1, '2019-12-06 07:02:03', 1, '2020-09-14 19:39:05'),
(33, 'EMAIL_PORT', '25', 'your email port', 'Basic', 1, '2019-12-06 07:02:20', 1, '2019-12-09 06:03:41'),
(34, 'EMAIL_TIMEOUT', '7', 'your email timeout', 'Basic', 1, '2019-12-06 07:02:32', 1, '2019-12-09 06:03:56'),
(35, 'EMAIL_USER', 'medzigo@simranfeeds.com', 'your email user', 'Basic', 1, '2019-12-06 07:02:51', 1, '2020-09-14 19:39:35'),
(36, 'EMAIL_PASS', 'Info9179@', 'your email password', 'Basic', 1, '2019-12-06 07:03:02', 1, '2020-09-14 19:47:15'),
(37, 'GOOGLE_RECAPTCHA_SECRET_KEY', '6LciW7cUAAAAAFHApmxQB3XzwUYvmHd85I3-KBNX', 'Your google recaptcha secret key', 'Basic', 1, '2019-12-09 06:08:20', 1, '0000-00-00 00:00:00'),
(38, 'ADMIN_EMAIL', 'superadmin@techlect.net', 'Enter admin email in value field\n', 'Basic', 1, '2020-03-05 10:29:18', 1, '0000-00-00 00:00:00'),
(39, 'STRIPE_PUBLISHABLE_KEY_TESTING', 'pk_test_UrcP64YzYPdMTwdDlaiiCfSA00mNOq7C0O', 'testing mode publication key for stripe payment gateway', 'Basic', 1, '2020-04-02 06:03:31', 1, '2020-04-28 09:59:39'),
(40, 'STRIPE_SECRET_KEY_TESTING', 'sk_test_Qw1Pikrcuj3VyupESHO5m7zw00atMH8hXG', 'testing mode secret key for stripe payment gateway', 'Basic', 1, '2020-04-02 06:04:02', 1, '2020-04-28 09:59:55'),
(41, 'STRIPE_PUBLISHABLE_KEY_LIVE', 'live_publishable_key_here', 'live mode publication key for stripe payment gatew...', 'Basic', 1, '2020-04-02 06:04:25', 1, '0000-00-00 00:00:00'),
(42, 'STRIPE_SECRET_KEY_LIVE', 'live_secrete_key_here', 'live mode secret key for stripe payment gateway', 'Basic', 1, '2020-04-02 06:04:48', 1, '0000-00-00 00:00:00'),
(43, 'PAYMENT_MODE', 'Testing', 'Testing or Live', 'Basic', 1, '2020-04-02 13:40:23', 1, '0000-00-00 00:00:00'),
(44, 'FIREBASE_ACCESS_TOKEN', 'AAAAOyI5ghc:APA91bHHWEVk7-UPZ2A01sHjh05M22C9u19_59KwTsnHVAvNXDbe3AFxctWL3lRaVBJtpdyfQLicAgTcFXttEc9erCl9MQLIF4ntK3Wl8AUBuVUlj5kowoflYwCFGCGxfobaUSMSCRXQ', '', 'Basic', 1, '2020-04-20 16:25:50', 1, '2020-04-24 07:18:17'),
(45, 'APP_URL', 'https://simranfeeds.com/medzigo/front', '', 'Basic', 1, '2020-10-23 14:06:24', NULL, '2020-10-23 08:36:24'),
(46, 'RAZORPAY_TEST_KEY_ID', 'rzp_test_G06yEkh41jFCRD', 'razorpay_test_key_id', 'Basic', 1, '2020-11-02 19:08:57', NULL, '2020-11-02 13:38:57'),
(47, 'RAZORPAY_TEST_KEY_SECRET', 'wimAThg37rZvZY2vKw7XzE9O', 'razorpay_test_key_secret', 'Basic', 1, '2020-11-02 19:09:28', NULL, '2020-11-02 13:39:28'),
(48, 'RAZORPAY_LIVE_KEY_ID', 'rzp_live_3xJtjlea6IkxnZ', 'razorpay_live_key_id', 'Basic', 1, '2020-11-02 19:09:52', NULL, '2020-11-02 13:39:52'),
(49, 'RAZORPAY_LIVE_KEY_SECRET', 'oOdApAJnL9VE5xs3pu1Yno4F', 'razorpay_live_key_secret', 'Basic', 1, '2020-11-02 19:10:16', NULL, '2020-11-02 13:40:16'),
(50, 'AGORA_ID', '817f64debecd45a3ac4f5cb141783204', 'AGORA_ID', 'Basic', 1, '2020-11-04 13:45:06', NULL, '2020-11-04 08:15:06'),
(51, 'AGORA_CERTIFICATE', '3fc7897d71a648a6bfa5538ea07e26cf', 'AGORA_CERTIFICATE', 'Basic', 1, '2020-11-04 13:45:36', NULL, '2020-11-04 08:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specialization`
--

CREATE TABLE `tbl_specialization` (
  `specialization_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `specialization_name` varchar(100) NOT NULL,
  `specialization_alias` varchar(250) NOT NULL,
  `specialization_image` varchar(100) NOT NULL,
  `status` enum('Active','Inactive','Deleted') NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_specialization`
--

INSERT INTO `tbl_specialization` (`specialization_id`, `parent_id`, `specialization_name`, `specialization_alias`, `specialization_image`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 0, 'General Practitioners', 'general-practitioners', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-03-04 22:17:25', 1, '0000-00-00 00:00:00'),
(2, 1, 'General Practitioners (GP)', 'General Practitioners-GP', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-03-04 22:18:06', 1, '0000-00-00 00:00:00'),
(3, 0, 'Physician', 'physician', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:32:21', 1, '0000-00-00 00:00:00'),
(4, 3, 'Physician 1', 'physician-1', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:32:21', 1, '0000-00-00 00:00:00'),
(5, 3, 'Physician 2', 'physician-2', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:11:52', 1, '0000-00-00 00:00:00'),
(6, 0, 'Cardiac', 'cardiac', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:32:21', 1, '0000-00-00 00:00:00'),
(7, 6, 'Cardiac 1', 'cardiac-1', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:32:21', 1, '0000-00-00 00:00:00'),
(8, 6, 'Cardiac 2', 'cardiac-2', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:32:21', 1, '0000-00-00 00:00:00'),
(9, 0, 'Dentistry', 'dentistry', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:32:21', 1, '0000-00-00 00:00:00'),
(10, 9, 'Dentistry 1', 'dentistry-1', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:32:21', 1, '0000-00-00 00:00:00'),
(11, 9, 'Dentistry 2', 'dentistry-2', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:32:21', 1, '0000-00-00 00:00:00'),
(12, 0, 'Allergist', 'allergist', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:11:52', 1, '0000-00-00 00:00:00'),
(13, 12, 'Allergist 1', 'allergist-1', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:32:21', 1, '0000-00-00 00:00:00'),
(14, 12, 'Allergist 2', 'allergist-2', '1ea8cb1ded161ba30683c11c5e3af16d-spacialization18.jpg', 'Active', 1, '2020-01-22 19:32:21', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_symptoms`
--

CREATE TABLE `tbl_symptoms` (
  `symptom_id` int(11) NOT NULL,
  `symptom` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_symptom_diseases`
--

CREATE TABLE `tbl_symptom_diseases` (
  `id` int(11) NOT NULL,
  `symptom_id` int(11) NOT NULL,
  `disease_id` int(11) NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_universities`
--

CREATE TABLE `tbl_universities` (
  `id` int(11) NOT NULL,
  `university` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_universities`
--

INSERT INTO `tbl_universities` (`id`, `university`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'APJ abdul kalam', 'Active', 2, '2020-10-01 13:17:52', 2, '2020-10-06 12:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` bigint(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `user_alias` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `dial_code` varchar(10) NOT NULL DEFAULT '91' COMMENT 'specially used for sms api',
  `dial_country_code` varchar(10) NOT NULL DEFAULT 'in' COMMENT 'specially used for sms api',
  `mobile_number` varchar(20) NOT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `timezone` varchar(50) NOT NULL DEFAULT 'Asia/Kolkata' COMMENT 'must be a valid timezone',
  `language` varchar(10) NOT NULL DEFAULT 'en' COMMENT 'must be a valid language code from language table',
  `currency` varchar(5) NOT NULL DEFAULT 'INR' COMMENT 'must be a valid currency code from currency table',
  `address_line1` varchar(250) NOT NULL,
  `address_line2` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `region` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL DEFAULT 'IN',
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `profile_image` varchar(250) NOT NULL,
  `cover_image` varchar(250) NOT NULL,
  `social_id` varchar(100) NOT NULL,
  `social_type` varchar(50) NOT NULL,
  `introduction` text NOT NULL,
  `languages` varchar(250) NOT NULL COMMENT 'languages known by user',
  `forget_pass_code` varchar(50) NOT NULL,
  `forget_pass_expiry` datetime DEFAULT NULL,
  `email_verification_code` varchar(20) NOT NULL,
  `email_verification_expiry` datetime DEFAULT NULL,
  `email_verification_status` enum('Verified','Not Verified') NOT NULL DEFAULT 'Not Verified',
  `mobile_verification_code` varchar(10) NOT NULL,
  `mobile_verification_expiry` datetime NOT NULL,
  `mobile_verification_status` enum('Verified','Not Verified') NOT NULL DEFAULT 'Not Verified',
  `status` enum('Active','Inactive','Deleted') NOT NULL DEFAULT 'Active',
  `account_status` enum('Verified','Not Verified') NOT NULL DEFAULT 'Not Verified',
  `accept_tnc` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `completion_status` enum('Complete','Incomplete') NOT NULL DEFAULT 'Incomplete',
  `completion_level` tinyint(4) NOT NULL DEFAULT 0,
  `completion_step` varchar(250) NOT NULL,
  `completion_message` varchar(250) NOT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `group_id`, `first_name`, `middle_name`, `last_name`, `full_name`, `user_alias`, `email`, `password`, `dial_code`, `dial_country_code`, `mobile_number`, `gender`, `dob`, `timezone`, `language`, `currency`, `address_line1`, `address_line2`, `city`, `postal_code`, `region`, `country`, `latitude`, `longitude`, `profile_image`, `cover_image`, `social_id`, `social_type`, `introduction`, `languages`, `forget_pass_code`, `forget_pass_expiry`, `email_verification_code`, `email_verification_expiry`, `email_verification_status`, `mobile_verification_code`, `mobile_verification_expiry`, `mobile_verification_status`, `status`, `account_status`, `accept_tnc`, `completion_status`, `completion_level`, `completion_step`, `completion_message`, `last_login_date`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 'Developer', '', 'Developer', 'App Developer', 'developer-developer-1', 'developer@techlect.net', '32e005477ce427556e53be0173ee647cd2296f9c442a85b1e0a5e28e11a3738c359b582fbb7697bda8a1297ddedd1b56d641b361753ca265e6028c954efcc574SPWlN6KBRwJ67FdBHCEz9BP938/k2d/tkhJsfsUvncI=', '91', 'in', '6574521456', 'Male', '1990-01-01', 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '', NULL, 'Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Verified', 'Yes', 'Incomplete', 0, '', '', '2020-11-04 15:48:34', 1, '2019-10-07 13:45:27', NULL, '0000-00-00 00:00:00'),
(2, 2, 'Medzigo', '', 'Medzigo', 'Medzigo', 'medzigo', 'superadmin@techlect.net', '996bdd40c1b7eda98f55c94a787f303cb9249f036ee58a8ed7121c3771cb6a869057f3afe21cdc8d11eeb09ba64220cc8916cfaba03bd3ca1725e966a9b8eb2c3+iSJVNGZmR/Qm5iOwpigoEm7ZmK2NtlGfjtLNHdh+A=', '91', 'in', '7777777777', 'Male', '1990-01-01', 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '2cd27b3ed1511219a56e286e539cbd77-2.jpg', '', '', '', 'dummy intro', '', '', NULL, '', NULL, 'Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Verified', 'Yes', 'Incomplete', 0, '', '', '2020-09-23 18:51:39', 1, '2019-10-07 13:46:04', NULL, '2020-04-01 12:27:44'),
(3, 5, 'Clinic', '', 'One', 'Clinic One', 'clinic-one-5', 'clinic1@mailinator.com', '32e005477ce427556e53be0173ee647cd2296f9c442a85b1e0a5e28e11a3738c359b582fbb7697bda8a1297ddedd1b56d641b361753ca265e6028c954efcc574SPWlN6KBRwJ67FdBHCEz9BP938/k2d/tkhJsfsUvncI=', '91', 'in', '6541236547', 'Female', '1990-01-01', 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '', NULL, 'Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Verified', 'Yes', 'Incomplete', 0, '', '', '2019-12-27 09:44:49', NULL, '2019-10-07 14:38:00', NULL, '2020-02-21 18:50:34'),
(4, 6, 'Doctor', '', 'One', 'Doctor One', 'doctor-one-4', 'doctor1@mailinator.com', '32e005477ce427556e53be0173ee647cd2296f9c442a85b1e0a5e28e11a3738c359b582fbb7697bda8a1297ddedd1b56d641b361753ca265e6028c954efcc574SPWlN6KBRwJ67FdBHCEz9BP938/k2d/tkhJsfsUvncI=', '91', 'in', '6354125698', 'Male', '1989-01-01', 'Asia/Kolkata', 'en', 'INR', 'Sfjstnstnwtn', '', '', '', '', 'IN', '', '', '54343983e74aefafcb5ac315b7767363-4.jpg', '', '', '', 'Doctor is a General Physician and Diabetologist in BBM and has an experience of 18 years in these fields. He completed MBBS from MGM Institute of Health Science, in 1976 and MD - Medicine from MGM Institute of Health Science, in 1980.', '', '', NULL, '', NULL, 'Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Verified', 'Yes', 'Complete', 100, '', '', '2019-12-20 22:28:45', NULL, '2019-11-13 16:22:11', 4, '2020-11-05 17:30:15'),
(5, 7, 'Patient', '', 'One', 'Patient One', 'patient-one-5', 'patient1@mailinator.com', '32e005477ce427556e53be0173ee647cd2296f9c442a85b1e0a5e28e11a3738c359b582fbb7697bda8a1297ddedd1b56d641b361753ca265e6028c954efcc574SPWlN6KBRwJ67FdBHCEz9BP938/k2d/tkhJsfsUvncI=', '91', 'in', '5555554444', 'Male', '1987-09-23', 'Asia/Kolkata', 'en', 'INR', 'indore', '', '', '', '', 'IN', '', '', '', '', '', '', 'Hii Pa', '', '', NULL, '584031', '2020-11-07 10:33:32', 'Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2019-11-15 07:33:20', 5, '2020-11-04 16:34:11'),
(10, 6, 'Ashok', '', 'Kumar', 'Ashok Kumar', 'ashok-kumar-1600093274', 'ashok.kumar@mailinator.com', '76930700f8128d272c3cc159936480a29a451ed82875a72304d89a77761da7e29e20ebf6c6ee3ea07ea1534e1becbff301a410fd36ee263b6c6077c1f946b45b95wUB4JP2SjuEcQy5fgmWCDubFviGSBxpW44TXvtINA=', '91', 'in', '3541256854', 'Male', '1990-01-01', 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '', NULL, 'Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2020-09-14 19:51:14', NULL, '2020-09-14 19:51:14'),
(11, 6, 'Rajeev', '', 'Kumar', 'Rajeev Kumar', 'rajeev-kumar-1600158514', 'rajeev.kumar@mailinator.com', 'e49551d443fa8563234dab30498e7d83de780691bf1392bb36e9496826c677905c2083da90b842813182044744074d9e05c419796dab867683cebae39b70491bXp9f3sYWRqZ8Y6EHbW3irqW51eYF72sVerXCcmRIE4U=', '91', 'in', '9856985475', 'Male', '1990-01-01', 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '', NULL, 'Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2020-09-15 13:58:34', NULL, '2020-09-15 13:58:34'),
(12, 6, 'Sohan', '', 'Kumar', 'Sohan Kumar', 'sohan-kumar-1600183240', 'sohan.kumar@mailinator.com', '94e3c40666111ca10f717c08b094950b417944ba55e669e2d5000683160d78ec84276ef6075e8f247f4fe8cf3d2e1e473e483e5ecdf283fa0b914732a055f1c1rP3pNBFmIhCIFp6ug//CRzIafzW39xZS1eFo6PkyEc4=', '91', 'in', '6354125685', 'Male', '1990-01-01', 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '3352da6ea4d7cb3a232523ea3aff9bbb-12.jpg', '', '', '', 'Demo practioner', '', '', NULL, '', NULL, 'Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 50, 'document', 'Provide your passport front', NULL, 3, '2020-09-15 20:50:40', NULL, '2020-09-15 20:56:36'),
(13, 7, 'demo', '', 'user', 'demo user', 'demo-user-1603171191', 'demo.user12345@mailinator.com', 'cdc9724ee42a905178e3a5961e521ff9ea36499cf2284a63ad740ac56b92d76c0c17b0d2e87fde7de7cd65775dbe7552f424b672a1e37d8660f4feb9a35a5bf7qXbcidL/MaV/yQ0bmriOrOkLequbH5bKWAgY3mCzQ+c=', '91', 'in', '6856547456', NULL, NULL, 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '973144', NULL, 'Not Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2020-10-20 10:49:51', NULL, '2020-10-20 10:49:51'),
(14, 6, 'Test', '', '', 'Test', 'test-1604650007', 'testdoctor@mailinator.com', 'd1ddeba9296dd408413d450a0a27df74e07cb214c5ecc7de559100252e108c32eedfba088f2fea3fdf20c4503681b0505a0b5f5b928a7dc7235e2d5a1c2d1161B8u0OeF2jZCvfAfUasK3S9KO/ETKd1x43urWkjndBWw=', '91', 'in', '7894561234', NULL, NULL, 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '922976', NULL, 'Not Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2020-11-06 13:36:47', NULL, '2020-11-06 13:36:47'),
(25, 6, 'Test', '', '', 'Test', 'test-1604650078', 'testdoctor3@mailinator.com', '9aae4cb9d078b19db9c2bf238ef7bddc3c0f3a48f703e7e794c888e34cf8c75745f5a7b780a8570030307688a27017723e61afade579bb6c8953c5b04fd67606aGBGEZytSpfVN69ZLheR+a/Li28Wpb0kGjmT+BHv5VU=', '91', 'in', '7894561233', NULL, NULL, 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '670632', NULL, 'Not Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2020-11-06 13:37:58', NULL, '2020-11-06 13:37:58'),
(26, 6, 'Test', '', '', 'Test', 'test-1604650109', 'testdoctor4@mailinator.com', '09fa9fe3729f077b72ff8471495af7c7aa0b1f2782e5964c010be033a684b0c29e9ad152ea7ee02e882ffafebee0e60926defb9e4bc0d172f76a146083983ee9AQTxNXdDBfjmrcYfz0ucXv1ITeiZ/sRnoVA2DSRMva0=', '91', 'in', '7894561232', NULL, NULL, 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '326999', NULL, 'Not Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2020-11-06 13:38:29', NULL, '2020-11-06 13:38:29'),
(27, 6, 'Test', '', '', 'Test', 'test-1604650152', 'testdoctor5@mailinator.com', '16049c6a9e43dce705de798093b094afbfdb1de0f520aafc6040327b84e3a69ff6990ff0bc99dce8e3f479e671708fa91fbf605445a629d65986ab0f04abeeb5EkM4efqMmCAd81YHWEkn9T1gvxMeC7Wr/CsS2s7quA4=', '91', 'in', '7894561132', NULL, NULL, 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '253232', NULL, 'Not Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2020-11-06 13:39:12', NULL, '2020-11-06 13:39:12'),
(28, 7, 'Naveen', '', 'Kumar', 'Naveen Kumar', 'naveen-kumar-1604655481', 'naveen.kumar@mailinator.com', '48a8e03bf2ee2690cbf1be5d1241e411758178595c2f70628e04a9baf4ef91fae9d12e1f06e7cac1520755de8d26eb3a6d0b7274f1b099e7dfaad87aa7b331a6ban/+QkUuws5ZQbvYmW9wp7EgzKMffPV8GQl6NLCscw=', '91', 'in', '3658452145', NULL, NULL, 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '850423', NULL, 'Not Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2020-11-06 15:08:01', NULL, '2020-11-06 15:08:01'),
(29, 6, 'DoctorTest', '', '', 'DoctorTest', 'doctortest-1604655511', 'testdoctor6@mailinator.com', '65edbb32e963d325e076ef6e49f8395ed13ca96c9cb734653c1a85ab0d48eb4aeb5ba8680e8efac435ff32de1e7a704f23560e3967751bad4c26493e777b25e7ephjV6tCLhgH2ebha9J+G1rCQTmrhgvFIed7ul4nagQ=', '91', 'in', '4567891239', NULL, NULL, 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '916042', NULL, 'Not Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2020-11-06 15:08:31', NULL, '2020-11-06 15:08:31'),
(30, 6, 'DoctorTest', '', '', 'DoctorTest', 'doctortest-1604655965', 'testdoctor7@mailinator.com', '4655bc2e093320f5da9038f3be92342eec3345c32b8232fd88afd5881f2b43e18d23d68375d6742c4abe10f67ffe09caf678fe3b4a1448b46ad71ea6e77ce93aF5RCvWGBPL9csZYq2FuAbxigFtLKX7wDXtIcTT07PWg=', '91', 'in', '4567891119', NULL, NULL, 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '736344', NULL, 'Not Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 29, 'email_verification', 'Verify your email', NULL, NULL, '2020-11-06 15:16:05', NULL, '2020-11-06 15:16:05'),
(32, 7, 'Naveen', '', 'Kumar', 'Naveen Kumar', 'naveen-kumar-1604656495', 'naveen.kumars@mailinator.com', 'b377064b50b3f2c42fe4e3c27ef5ae1f4082fa3195d752f5cfcb1266a165476a09cebbcbd08c1a0c8ca2fa5f1e05d951aa58cb5fee308a4b46e8c5b5332acea8vxx9BdT8dLYxW/bqPa2RHDRtn7fDBX0a0kAY1zoL+Lo=', '91', 'in', '3658452141', NULL, NULL, 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '856906', NULL, 'Not Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 0, '', '', NULL, NULL, '2020-11-06 15:24:55', NULL, '2020-11-06 15:24:55'),
(33, 6, 'Abc', '', '', 'Abc', 'abc-1604656978', 'testdoctor8@mailinator.com', 'bd7522db282312a435869db56276c88cd1901af37af1a4cfc99f748383da3b62e58a79f84dd18b5497a71ff7a854dbfe0ca952a21380035a6e785c5151a30d0aIXdTMkRbGRW4n3mqTHLgqpAhCKAGOwaE9NEFHBIot5Q=', '91', 'in', '7458963210', NULL, '2000-11-06', 'Asia/Kolkata', 'en', 'INR', '', '', '', '', '', 'IN', '', '', '', '', '', '', '', '', '', NULL, '401427', '2020-11-07 10:28:18', 'Not Verified', '', '0000-00-00 00:00:00', 'Not Verified', 'Active', 'Not Verified', 'Yes', 'Incomplete', 29, 'email_verification', 'Verify your email', NULL, NULL, '2020-11-06 15:32:58', NULL, '2020-11-06 15:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_address`
--

CREATE TABLE `tbl_user_address` (
  `address_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `address_type` enum('Shipping','Billing') NOT NULL DEFAULT 'Billing',
  `address_name` varchar(250) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `address_line1` varchar(250) NOT NULL,
  `address_line2` varchar(250) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `is_default` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_assigned`
--

CREATE TABLE `tbl_user_assigned` (
  `assign_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'user_id of assistant/clinic/hospital',
  `assigned_to` bigint(20) NOT NULL COMMENT 'user_id of doctor',
  `assign_by` bigint(20) NOT NULL COMMENT 'user_id who assigned it',
  `join_date` datetime NOT NULL,
  `left_date` datetime DEFAULT NULL,
  `status` enum('Joined','Left','Pending','Decline') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_authentication`
--

CREATE TABLE `tbl_user_authentication` (
  `id` int(11) NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_authentication`
--

INSERT INTO `tbl_user_authentication` (`id`, `user_id`, `token`, `expired_at`, `updated_at`) VALUES
(1, 2, '6b545a6f6d5371305544356e46442f72667a244f246334786345715a6a79525439716966712f6630793224596458483131557a3835623973442e4576', '2025-03-11 10:52:42', '2020-11-02 12:39:11'),
(2, 3, '634f584b46576e506c4b72396142243568736f24566d32734d595356672e4a6431367824366d7669766b3073723077673137704238716f514d567938', '2025-02-01 19:53:49', '2020-11-03 18:57:11'),
(3, 4, '73544b69585478427561464c6c4b32323224365a2464307531754a4e676b4f4a6672684676546b47452444586f743730777a6656797063616d4d2f39', '2025-06-22 13:56:57', '2020-11-06 17:18:31'),
(4, 5, '56426a32593864246d32324b79467a76654f657553243164436235316b54494549527368306d76716f424c44623563706d244c384448423364667133', '2025-04-04 19:57:28', '2020-11-06 16:57:38'),
(7, 2, '39586472316354687a626e642e2e34334a376362246b3033586a7037326a494f65394d544534787164655579646e244724596277476b616d47687464', '2020-09-15 17:53:44', '2020-09-15 14:53:44'),
(9, 2, '46684d656b2e596f7551482e3370743143494c74717a3949574e377a54724a4a31326679245567517043373750326d6c62522477336b696524797330', '2020-09-17 19:15:11', '2020-09-15 22:37:02'),
(13, 3, '5250714d634c2e3339473762416c456e796a7a2432247677333045716879476761354c47714955494379704e7536693154655477534c727a566f246a', '2020-09-17 01:29:29', '2020-09-16 13:29:30'),
(15, 2, '7476344a464d5262443124246c79786d6d322453436a53442e3045315553476d34334c6c6f32516754344f646261324d4f4235424f6c49706a677634', '2020-09-19 03:34:31', '2020-09-18 18:34:34'),
(16, 2, '362e31676f4d312e6f246b303059795732792e375a685550456624413137763439554a765362494c52556f6663756f4163742472523233363653496c', '2020-09-21 09:35:32', '2020-09-18 18:54:23'),
(21, 3, '244a30243474764f75634b71714c79455a644465636b366172312f327a586c64756d736f74594839696c4445716a654d3031517a59446c2457736479', '2020-10-05 04:31:36', '2020-10-01 13:40:18'),
(22, 3, '6932654f73673256724c71712451522f4e63355a6d4f4b2f324c5079796152246c5a4d7a6451634c47376848644a66752436593165487635305a2e45', '2020-10-04 04:40:58', '2020-10-01 13:41:51'),
(26, 2, '5932496c714930357830704f6f24243053534831446351634f6e79557966245a5a726446667777342f556958414d76587a594b57434c65456266464b', '2020-10-07 03:57:36', '2020-10-01 17:04:34'),
(27, 4, '3350372e716676695270325a6273447351546a773546706b79664f24385943654924673277462e6e3076472f6341316c42674c3763392f4924586268', '2020-10-02 10:53:08', '2020-10-01 16:54:23'),
(29, 4, '2e326f624724774b7568767949752e7845754d6651366f462f42793651312e7248342e706377246942505971782f792441697030757746694e664531', '2020-10-05 07:56:03', '2020-10-01 18:05:57'),
(30, 2, '753432417230775348305650246b247738384e7570746e4d2450744175672e512e3178364561575932727a78614e5761523379667a58726879786e38', '2020-10-02 22:46:07', '2020-10-02 10:49:26'),
(31, 2, '4f24524f432433784e676b43507854744d3134675579436c316d4c3068387365587a744c766730476e5476243479593244384f59372e61552f4f3235', '2020-10-02 22:50:16', '2020-10-02 10:50:18'),
(34, 3, '6f6d6a3334652f24486c7946386f327a437a466c426930562e6c567561244b6d5059665067313479782479786b734e6a32633230497631595964784d', '2020-10-11 00:13:41', '2020-10-02 18:39:39'),
(35, 2, '552e24636c74536a30517048374162245a684d656e7264317630565573377765626130342e6d6846363456663237434d7161244632616d6264567945', '2020-10-06 02:53:14', '2020-10-05 17:53:16'),
(37, 4, '493658567a4d49584b3424575a52654924305756433172306f4468613375247a31776d4a67616f6832324f3846335741704f65646d65415936796d65', '2020-10-06 11:53:49', '2020-10-05 17:53:59'),
(38, 4, '6d2f3852306c244f4879575a6662527a6863582465686b577a61522e637168454f2e31594d2438346e4d6f45486e2f6f794e6c3234634f5462473050', '2020-10-09 22:26:52', '2020-10-05 19:30:34'),
(40, 3, '304e67586b444c342472484a47434552305a46327947554672446b412e454232365054384a34784f246442726c4a4c58304424356c6533754b713178', '2020-10-06 08:04:06', '2020-10-05 23:04:08'),
(42, 3, '734943774b444e35246f24753032465479465733324c2e50242f52717a335161636e4158656d46614e455a7871634266526545433354315a4e656331', '2020-10-08 10:32:05', '2020-10-06 13:32:26'),
(43, 2, '6c3779774d5a5a246d70656b375031614724774265534e30453836533355786f7263516b58383069364e7869555649574372654d6a345a2476723268', '2020-10-09 13:32:52', '2020-10-06 16:21:38'),
(44, 2, '6558764d2462424f39544c24775272765831796d32747547346a4b4d7575794c4636794f612447463762327731302e4538755234364b743353363246', '2020-10-07 08:21:15', '2020-10-06 18:28:57'),
(46, 4, '7979346e55324e4f4b557969793147702f6d706d2e24395a734530396d445862496b3338454879246d556b45662451635566666c324857396645544b', '2020-10-10 07:25:35', '2020-10-07 16:51:25'),
(47, 2, '6e735365795238787a6831374359742e4a314264574a783552506e764a7766765261306f5424326752786954746575244b4356796564372464394230', '2020-10-16 16:31:43', '2020-10-15 13:33:48'),
(48, 2, '364f586e662424524c6d66794324344171307567713155796564624448456f75616d31314e324676344e6966793678326f34696947655738414b7832', '2020-10-17 07:24:40', '2020-10-15 19:27:07'),
(51, 2, '6c67516961423054353159713143463661242e797047797949572448797a3263587553336676466a41356c7968683132304d4f6763534e59356d2438', '2020-10-16 08:07:38', '2020-10-15 20:07:39'),
(52, 4, '53535479363974642472734b56642f45515035242f6e37362f32323437536d6758397162756e326e733769454b303166554f2473317667502f456341', '2020-10-16 05:14:22', '2020-10-15 20:14:28'),
(53, 2, '753339485a6f4a7132615371537072614524796d4c634f366568456a705337246531614961307545582430736a76765a316735582f74416758307a77', '2020-10-16 20:15:02', '2020-10-15 20:16:10'),
(54, 5, '375359447936435451323132433679462e5978766a6d494873342e354450466c4a30762479244e314e304e2f307448366c6c42565773434724786568', '2020-10-15 23:36:47', '2020-10-15 20:36:47'),
(55, 5, '72773679576d576b68243136462f37307a574d6a4f437648697a242e504338646d6524686d634a78726a6b48375a4d585556735a656e7032304b3248', '2020-10-16 14:36:48', '2020-10-15 20:44:55'),
(57, 2, '6c6f485351734330774c24244f434b2e585759245549504b443577656a4c5248474e76746a2e6939305534594b6744746b70557977504e7931322e30', '2020-10-18 13:58:25', '2020-10-16 11:23:57'),
(58, 2, '50794f704b795a4d4864533752322e4b3543445946617036247a506e31496c4a5744657355315675582461596b49714f4c7142243331506d30306f39', '2020-10-17 07:12:31', '2020-10-16 13:12:43'),
(59, 2, '6f462f3059595a76337a3532797752355149336d307642632e4356656c6543325338784b75452424326a4c616e386561723237522456753545316331', '2020-10-17 05:03:19', '2020-10-16 17:03:22'),
(60, 2, '593264456e2f6d312470636a7379756d646231764e516b734c4632744738683579543856516d48687a3046664f2443456765244642454f7447784f38', '2020-10-17 19:06:25', '2020-10-17 16:06:25'),
(61, 5, '3454522e6a6b5579366446246c2f4279534c482e782450534d72682445595a476a67324e4a62456a7a743453474b615a74316255686c307362396b38', '2020-10-18 20:44:31', '2020-10-17 20:45:04'),
(62, 4, '627637373149536164475a543179384451754549455724472f7758312e414f30484f354332524d67745363627778776f6f34612449244c6e56726f79', '2020-10-20 13:48:36', '2020-10-20 10:48:36'),
(64, 5, '775624244d4157747132774f45356c5871762433533341544248335631566e31692f332f393279546d6c6d6e4464496730616d656531314b3463324c', '2020-10-23 03:45:41', '2020-10-20 16:30:38'),
(66, 2, '796b5a35654f66312e47545856317839335633632e7a6b47327256636c2f5a355256247a4a733658303779466a55373665242f322e24307465616a62', '2020-10-23 20:06:53', '2020-10-21 17:20:46'),
(67, 2, '30687a35695a75244e316b334a615151684c362f5473565747354943774e416143654f33314332243251794459347170386b30525166576251763824', '2020-10-22 08:18:26', '2020-10-21 17:18:47'),
(68, 2, '4c6448323152632e45726c4b244f336724314c4e7137794c54514f4b6b474f4774343143466c45736b71523852793071444661326870776664503924', '2020-10-21 20:21:52', '2020-10-21 17:21:52'),
(70, 2, '5424484a4d376d3635756961777068557a544c6f44654c32714d64587975245768494e3056483336663264306624524b59374f6341487a693155732f', '2020-10-25 08:48:22', '2020-10-21 17:51:12'),
(71, 2, '426b7755715851454b356e777539247424714d2f2f4941454f6e596c663143712e3052707a6355684c50665a4450796253596d63787a327569242f35', '2020-10-22 22:56:49', '2020-10-22 19:56:49'),
(74, 2, '4a5658643647352479304c537a51466f5532246f75635a584968666448563132694a7277754e4875472433506c4e69796f6b3164347730626e347647', '2020-10-27 03:27:25', '2020-10-26 15:27:26'),
(75, 2, '5277727642303532552435686e32706d4e6f576238425a6f634a57326a30314f75504732242e66766636646f6a6d375179532e44315956676a572469', '2020-10-27 04:12:45', '2020-10-26 16:12:46'),
(76, 2, '3224774447465144792e4166384e375939774d24756957452e30796e24346f414e326c796461553072794d4d786b7547516c4c666a316846704e314a', '2020-11-02 01:53:12', '2020-10-27 11:01:43'),
(77, 2, '65315977703064544947564261564c71242450376c6a4337426545305545446c5134745849324443796d6724684975497732714a61646d6e504d784a', '2020-10-30 08:05:03', '2020-10-27 11:42:13'),
(78, 5, '625239566b706f242e624c2e4e7a32336a2e796b7530466b3976562f4d2430444f4e2e61726e522f76713847516232526f45246b756854464230312e', '2020-10-29 08:36:59', '2020-10-27 11:39:26'),
(79, 5, '34355a30696942483235246576547a4465796b666b614464245a5471416575793352303455313158536e76665343336e696e2435444275684b527945', '2020-10-29 00:57:42', '2020-10-27 16:36:16'),
(81, 2, '312e5a386c70686679764f4d396224344d246645333332305739514676614f677978496850486834244c776c316a4a2f7870613277554c332e564c47', '2020-11-03 13:18:32', '2020-10-29 14:17:11'),
(82, 5, '744b41325a6e745930522446796a666a385843594a556e3133244f5259616a39644f336a6f79756432534865306a56422e6e6d5a682477436f75474e', '2020-11-09 20:15:52', '2020-10-30 17:34:31'),
(83, 2, '696b553272246163634f442f63304d7977434c4632616f7865675324724c7737716b6357307a45335165763166307479696a4a24747636724e782f69', '2020-11-07 00:01:42', '2020-10-30 19:15:00'),
(84, 5, '712477504b482430766873794470324c4d4d79247949313435766d413074784469532e666b326149336c4479323152337953736e43732e2f3159366b', '2020-11-01 22:04:51', '2020-10-30 19:15:06'),
(91, 4, '55596d666b34723363574c3263324f4e493648343575544a4863314e626434246965682e796246676d4c24306c35307a6c482f3131525724764b6a61', '2020-11-01 10:07:09', '2020-10-31 16:07:17'),
(93, 4, '536873506e4e5079304f6631652e374746496e466e617854312e7375324954627664796124586471544a7845745656574c3679247355792e69415224', '2020-11-02 03:44:39', '2020-10-31 18:45:49'),
(95, 4, '6b736a677954612e37532e324d7575644e613348497231246868674e31756c3168734e674c3157643056633145304f2e246165547551465833245075', '2020-11-03 19:27:57', '2020-10-31 19:28:58'),
(96, 4, '6d246833436f6c354f792e41307a454f374663425a2456675a6f53716f692e3831794970312f656236377a4f322e4342246175674661754e6664744a', '2020-11-03 19:48:33', '2020-11-02 10:55:03'),
(99, 11, '41786e626d65777742422458372f5a6b33464b796d5055307824747579482e67545777554a776378314a3030323435732f316f49473670482478384f', '2020-11-02 14:02:50', '2020-11-02 11:02:50'),
(102, 3, '316558447a7a247a774c5555246337643233736b38706b4a304a4956502e534e2e6b4753507832794848246d75673172504f33752f644348536b4f71', '2020-11-03 03:37:59', '2020-11-02 12:38:01'),
(103, 4, '24366a6c61302f4a65534e54586b7661484d39686e7046336663654154626438756e747264676e326c5775543179244b614d66572444375668657330', '2020-11-02 15:44:02', '2020-11-02 12:44:02'),
(104, 4, '5244754831625a31376e5261686d624e24326579717830546b4265345334392e594e3137455a4d7446242f344b4955767831243154586d3034427967', '2020-11-02 15:45:06', '2020-11-02 12:45:06'),
(105, 4, '244b4b75795145324a61315875774c243875395a5147733578362e35374858333941584d634833743755573665304a24334233684b4b785170644663', '2020-11-02 15:48:46', '2020-11-02 12:48:46'),
(106, 4, '6c746a6f382e35464258752e734c62303267414624635437355a725252796453716b6d4b75755a31243143433947436f4b6c38786369366253246d50', '2020-11-02 19:08:23', '2020-11-02 13:09:08'),
(107, 4, '7671576e69503532505351522e64537832794350384f79377057396c6964736d2451797749666b73314954473324784f6a76305a3277435277244833', '2020-11-02 19:11:22', '2020-11-02 13:12:13'),
(108, 4, '63314256306a5847316a76557148704557647824316c543267362442712f35596f446c4f412e67447836744b61636d546279362472767233396c306c', '2020-11-03 01:14:07', '2020-11-02 13:27:48'),
(109, 4, '79303024526379335364584d4a795a536f6941575a326d46625a4e5239496f473424353054692f5458244e5137504f446a61556d6a46736f44624131', '2020-11-02 19:31:21', '2020-11-02 13:32:27'),
(110, 4, '6924794132754f734d48305871334b7643667965334824596f306b6855714d3545734251735355453037696775594b476f6132316e24714d61737077', '2020-11-03 09:27:02', '2020-11-02 15:36:47'),
(111, 4, '56417575376e38655a643959477a586c683859745775666f3924326f65662e6a756f306b67673824796c70474b35636e476c776530354b3159612438', '2020-11-12 07:27:25', '2020-11-02 17:50:33'),
(112, 3, '724a322479246978377a702e324b547546314b723546776856354f4e576b4f3254684b384a692f76314230655353797656504330246a62326d514a30', '2020-11-05 01:51:46', '2020-11-02 17:13:36'),
(113, 5, '7258677242497a542f4875794f795a2e5031243139346a2f79324f3175243851746a73687a374f78485038784b78737842307024506538334d35756d', '2020-11-03 13:15:59', '2020-11-02 19:24:31'),
(114, 4, '6d4e41364a48246e6d7341636270766f67734e242f48414d3237654e6d33552477794a32662e7159554e685a4d79526c4c4d5a634d61793031724a6b', '2020-11-08 11:28:52', '2020-11-03 12:37:35'),
(115, 4, '435371744e58366f30586a533430757131526a61453343315a5a686f32337161246b756264735377683332797a48494e4f524b78794b242435326371', '2020-11-03 21:39:42', '2020-11-03 12:42:38'),
(116, 4, '4d4a54744744313267245a4d4e423341752f374e6d655953673544722f50307924766233593366696d41592477325652363946357537642f79787164', '2020-11-17 03:48:42', '2020-11-05 12:16:15'),
(117, 4, '4f6b526143432442583335516655346b39506b52554e2e496b647977345224325070354e4c52306d31623144654624706549786c544e62792e58454e', '2021-02-01 22:03:58', '2020-11-05 17:30:48'),
(120, 5, '6b4164247752242f356e67764a4279324e766c36317575393761517a34344233557077243230553452497064496b6c71357465704545324d58733951', '2020-11-07 19:32:26', '2020-11-04 16:47:47'),
(121, 5, '6b41314a653350464f6c764556776f2f304a6e7a622451314b2463346d6c2e5a6432654e2e6e78367075454e57345a525377754f4471773279743724', '2020-11-04 19:34:12', '2020-11-04 16:34:12'),
(122, 1, '2444787951456f58303253664b4459513763754131243950317756615847244b4c39304763432e725642324b35616f64646c6362744c326e6f4d4275', '2020-11-04 19:34:53', '2020-11-04 16:34:53'),
(123, 1, '3224323658695837324144384247697230246b6b544d314a416a50324f6f3047734876423943525166744f6833584c35312f242e7964496142657564', '2020-11-04 19:35:08', '2020-11-04 16:35:08'),
(125, 5, '566a795a4b54464d493266384a5724446444456855302f314924586e56375347553268307165476a56244d6d7a58737234617659424c306536793167', '2020-11-04 23:15:25', '2020-11-04 17:15:28'),
(126, 5, '526c38307649784261684263654c3142472464577932626a6c7641754c6d6c6868652e51243349244c6637344332666c343630333577633172435a48', '2020-11-05 14:17:11', '2020-11-04 17:43:12'),
(128, 4, '594a2424363379304c344336484d37327265784f2450534f704471584277416539666e4d6a70653178714b4c794b6e6c2e785650504a4138577a3562', '2020-11-08 05:40:41', '2020-11-04 17:45:18'),
(130, 4, '746b435632567565306834776c7a5435415a5a4c50787a5524374f6377496e6679505252576357657751392e654224325547555a5531796763497824', '2020-11-06 09:21:41', '2020-11-04 18:30:12'),
(134, 5, '6f534735744f47314e49246b556c5078342e797a3550746b556855244f5724547071517977417934337a79323538784a30507a502f72735570422e44', '2020-11-05 22:46:20', '2020-11-05 16:46:23'),
(135, 4, '75726171366b4d6b797555774e39374664246e4f47304349574d75527a44677731484b563756242e4f4336743238705665574d536e724c786a246176', '2020-11-05 20:30:15', '2020-11-05 17:30:15'),
(136, 4, '2e2e65793024562e7a6f51246c56353178475833386b484a576d41457870544e4b2f5647633124774c44352f6b4d663643627a574f6d6661484d6332', '2020-11-13 14:31:27', '2020-11-06 10:27:22'),
(137, 4, '704e53506a46366e76424330323524436d4868645461382456707a414c4a477357793169246e5a6541747775525a46595233596b324966462e4a4d79', '2020-11-07 23:05:27', '2020-11-06 11:06:26'),
(138, 4, '6e5424707877595370462469386653656b326537744f55662e71696b246b314274307955327679676e66484d6736534b422e6348712e515067776548', '2020-11-06 14:05:27', '2020-11-06 11:05:27'),
(139, 4, '336861504748645a31564f374e59794c763033716e6f392e5572322f2f454f4c35485665245575313652245756647548302e67246b5678396d705742', '2020-11-06 14:05:27', '2020-11-06 11:05:27'),
(140, 4, '6a365373585a4933756d767a6a2f776b53507a6c3231324579316157746579714e244974736a30245138493865786c2f52515454757a797024433141', '2020-11-06 14:06:47', '2020-11-06 11:06:47'),
(141, 4, '6132423678714b366f393145247a246c476441496e55345038454d6f6f58794352582e243236727a706d347a674a6247552e6a394c76793062547475', '2020-11-06 14:06:47', '2020-11-06 11:06:47'),
(142, 4, '70372424777759392472692f734532615276326c31704f41636f7939424b39647152304d78466b3251776352374f3548535251732e613677636f6a6d', '2020-11-10 08:06:48', '2020-11-06 11:09:37'),
(143, 4, '574675487a7464635a3262654e50452e7731554747736f61302e3379442f795964713024554a686e4f4d7361314b745132242f584724544b50393931', '2020-11-23 17:10:03', '2020-11-06 13:31:17'),
(144, 4, '4b4772584c4575594f535a50384b2f2e7632424b7366486d454a72676f242e68385333514d2e7a6d65726c616d664659797679662439307973315224', '2020-11-15 19:53:50', '2020-11-06 14:59:27'),
(145, 4, '5744746d716d382f246a57245a6a5456244348744f6d48513532644165326c79434366307937596359533649304e77566c454979476d506e6c4f4e31', '2020-11-06 16:53:50', '2020-11-06 13:53:50'),
(146, 4, '7a746e6337636c37316d3356535379507a39377a43476424707563497255514d4f73345252244b516c4272725324557730356e4d5531593232616752', '2020-11-06 16:53:50', '2020-11-06 13:53:50'),
(147, 4, '7a6b52323072504937417a6e74524270577459753224316d6e7a6b7a6c44245024437a4e6a2e37313872665059596f77422f794a75635936485a6135', '2020-11-06 16:53:50', '2020-11-06 13:53:50'),
(148, 4, '6e3075326b796f3631696a454275484935514e374a69594951467924643034416c6e34756d784269346271463239632466397849725759544374242f', '2020-11-06 16:53:50', '2020-11-06 13:53:50'),
(149, 4, '6b754c4d4a376734644753336d4f6a7069736e3145463436756f41697931776624504f7735683579323054584f7624436f3072523224795336653839', '2020-11-06 16:53:51', '2020-11-06 13:53:51'),
(150, 4, '70243350357146706330643259386d3746357951746856656633636b43472f3124247932366d7944717635592e5869342e52584d316c6e4c715a304a', '2020-11-06 16:53:51', '2020-11-06 13:53:51'),
(151, 4, '6179454b4c792f6737556b7761612456347952635041726b787858756d62374a6b72643124326b79714e2430784b4a426d3877316f6936692f2f6567', '2020-11-06 16:53:51', '2020-11-06 13:53:51'),
(152, 4, '71585148306b79732f6f2e6757544a6824612e6c426b742f6b395370474a456b5655576f24462f242e306933624c38457a4550686979314f48325557', '2020-11-06 16:53:52', '2020-11-06 13:53:52'),
(153, 28, '245524674b6e495252554f2f43544c3562613272424e24503937423148793275423041382e486a554735627a3175316e576161516862414254536f31', '2020-11-06 18:08:03', '2020-11-06 15:08:03'),
(154, 30, '39563944787a7876792f53576b67646a37322431754b4d782f30586273786a4b493454244e626a665834654a6b484c79664824467247785776426358', '2020-11-06 21:16:07', '2020-11-06 15:16:09'),
(155, 32, '304c3244736d34324765564a595824613832244533676c61536a504f2f7979552f4178657230695868354b655470752e5871247731534d54355a4367', '2020-11-06 18:24:57', '2020-11-06 15:24:57'),
(156, 33, '76686541396d61513032707869656f374e597450543831313366242442312f4167752f6666684f762f2448622e4750797a744374507949634f337676', '2020-11-08 03:33:00', '2020-11-06 15:53:44'),
(157, 5, '506f4e5679246831696e4f636b5768416f6d677932333130774962433250456f6e47445a5a57245856767a7a2e474c305a764b244b316c4331633549', '2020-11-15 16:10:59', '2020-11-06 18:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_awards`
--

CREATE TABLE `tbl_user_awards` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` varchar(250) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_awards`
--

INSERT INTO `tbl_user_awards` (`id`, `user_id`, `name`, `image`, `description`, `created_date`, `updated_date`) VALUES
(1, 12, 'Exellence award preventive cardiology by Dr. Maureen M. Mowery', '', 'Exellence award preventive cardiology by Dr. Maureen M. Mowery', '2020-10-02 18:20:44', '2020-10-02 12:50:44'),
(2, 12, 'B.C. Rao Award of BBM MA', '', 'null', '2020-10-02 18:20:53', '2020-10-02 12:50:53'),
(6, 4, 'Gshrdf', '6e0bbe990ebbe7000c296c1b18b95365-award-6.jpeg', ' See Fb', '2020-11-04 13:19:39', '2020-11-04 14:22:07'),
(7, 4, 'award23', '11a699b89d7a46f428ebc2d8731870ca-award-7.jpg', 'This is demo awardvv', '2020-11-04 13:34:27', '2020-11-04 14:10:40'),
(8, 4, 'Xyfxhfxyf', '', 'Fyfxf', '2020-11-04 13:41:05', '2020-11-04 08:11:05'),
(10, 4, 'Dugxuf', 'a4052b93a74d6ce1d063927e11b01d69-award-10.jpg', 'Yxfyxfy', '2020-11-04 14:21:34', '2020-11-04 14:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_banks`
--

CREATE TABLE `tbl_user_banks` (
  `bank_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `account_holder_name` varchar(100) NOT NULL,
  `account_number` varchar(250) NOT NULL,
  `bank_code` varchar(250) NOT NULL,
  `is_default` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_banks`
--

INSERT INTO `tbl_user_banks` (`bank_id`, `user_id`, `bank_name`, `account_holder_name`, `account_number`, `bank_code`, `is_default`, `created_date`, `updated_date`) VALUES
(1, 12, 'SBI', 'Dr Kumar', '34bb4ac188adb4b8daed83de272997bdefeebd3e1836e1bea59d8c55743a584dfd20e6e85a779f510b822e6ea13c42098b6b24ceb623ee87b04246159d84373avGI0J8JLs6EYJ+YZ/N79Tbx0OHIwFmmJ5OS7obJDfSI=', 'b0f940bd52462ea79e122f66dd0fea7170b0026e7850a213a6f49f848b29a6580e6e5c4f9432624c7d3450f0c48b2a5098320bbea5ff721feecd65e814e5367dPjLVEKn6WAPIEBwZTjtrD8qMC8eMDtogTxaRvC/KUks=', 'Yes', '2020-09-21 14:10:50', '2020-09-21 08:40:50'),
(2, 4, 'Hdfc', 'Shashank', '733320fa5d755115dd046bb701453003f8777f39dce2d3fe6ef0e9fe93c37c0934d02f7301c9cf67928d82f94dddf29c0789d68328ae26c825145b48d5bcf2bautnvkhGsay6UZPI0u1KQkzbzh7xEc3NFoUKMEpIOsp8=', 'e4ced67274a2bdda98a39d7093d7a67ca98897f5016aa15243c0e2a1580bcc87ec63e2fbd59c02c590ce621a38042544b286224ba6997cc2d58f04a8c47c65501r7jRfWgMPlRd3cUfJt4O70VylLDX3BeSFp86/4dUgE=', 'Yes', '2020-11-02 17:37:07', '2020-11-04 14:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_cards`
--

CREATE TABLE `tbl_user_cards` (
  `card_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_holder_name` varchar(255) NOT NULL,
  `exp_month` tinyint(3) UNSIGNED NOT NULL,
  `exp_year` smallint(3) UNSIGNED NOT NULL,
  `cvv` varchar(250) NOT NULL,
  `card_type` varchar(25) NOT NULL,
  `is_default` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_clinics`
--

CREATE TABLE `tbl_user_clinics` (
  `clinic_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `clinic_name` varchar(250) NOT NULL,
  `clinic_alias` varchar(250) NOT NULL,
  `clinic_address` varchar(250) NOT NULL,
  `clinic_latitude` varchar(100) NOT NULL,
  `clinic_longitude` varchar(100) NOT NULL,
  `clinic_postal_code` varchar(50) NOT NULL,
  `clinic_email` varchar(200) NOT NULL,
  `clinic_phone_number` varchar(255) NOT NULL,
  `clinic_city` varchar(100) NOT NULL,
  `clinic_region` varchar(100) NOT NULL,
  `clinic_country` varchar(100) NOT NULL DEFAULT 'IN',
  `introduction` text NOT NULL,
  `clinic_image` varchar(255) NOT NULL,
  `clinic_amenities` varchar(250) NOT NULL,
  `payment_mode` enum('Offline','Online') NOT NULL DEFAULT 'Online',
  `work_schedule` text NOT NULL,
  `status` enum('Active','Inactive','Deleted') NOT NULL DEFAULT 'Active',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_clinics`
--

INSERT INTO `tbl_user_clinics` (`clinic_id`, `user_id`, `clinic_name`, `clinic_alias`, `clinic_address`, `clinic_latitude`, `clinic_longitude`, `clinic_postal_code`, `clinic_email`, `clinic_phone_number`, `clinic_city`, `clinic_region`, `clinic_country`, `introduction`, `clinic_image`, `clinic_amenities`, `payment_mode`, `work_schedule`, `status`, `created_date`, `updated_date`) VALUES
(6, 10, 'Ashok Kumar\'s Clinic', 'ashok-kumars-clinic', '', '', '', '', 'ashok.kumar@mailinator.com', '3541256854', '', '', 'IN', '', '', '', 'Online', 'Mon - Sat\r\n10:00 AM - 01:00 PM And 05:00 PM - 08:00 PM', 'Inactive', '2020-09-14 19:51:14', '2020-09-14 19:51:14'),
(7, 11, 'Rajeev Kumar\'s Clinic', 'rajeev-kumars-clinic', '', '', '', '', 'rajeev.kumar@mailinator.com', '9856985475', '', '', 'IN', '', '', '', 'Online', 'Mon - Sat\r\n10:00 AM - 01:00 PM And 05:00 PM - 08:00 PM', 'Inactive', '2020-09-15 13:58:34', '2020-09-15 13:58:34'),
(8, 3, 'Clinic One\'s Clinic', 'clinic-one-1601551636', '', '', '', '', 'clinic1@mailinator.com', '5555555555', '', '', 'IN', '', '', '', 'Online', 'Mon - Sat\r\n10:00 AM - 01:00 PM And 05:00 PM - 08:00 PM', 'Active', '2020-09-14 19:51:14', '2020-09-14 19:51:14'),
(9, 4, 'Doctor One Clinic', 'Doctor-One-Clinic-1601551636', 'Indian Coffee House Road, Indore GPO, Indore, Madhya Pradesh, India', '22.9734229', '78.6568942', '452001', 'clinicone@mailinator.com', '07894561234', 'indore', 'MP', 'IN', 'Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction Introduction ', '', '', 'Online', 'Mon - Sat\r\n10:00 AM - 01:00 PM And 05:00 PM - 08:00 PM', 'Active', '2020-10-01 16:57:16', '2020-10-01 11:27:16'),
(10, 4, 'Bsbdbd', 'bsbdbd-1604575918', 'Unnamed Road, Madhya Pradesh 451115, India', '22.3602317', '76.1538946', '451115', 'jfj@gmail.com', '4561237891', 'Indore', 'Madhya Pradesh', 'India', 'Bcbfbdbdbdbdb', '', '', 'Online', 'Hdhdbdbbddbbdbfbfbfbfbbfb', 'Active', '2020-11-05 17:01:58', '2020-11-05 11:31:58'),
(11, 30, 'DoctorTest', 'doctortest-1604655965', '', '', '', '', 'testdoctor7@mailinator.com', '4567891119', '', '', 'IN', '', '', '', 'Online', '', 'Active', '2020-11-06 15:16:05', '2020-11-06 15:16:05'),
(12, 33, 'Abc', 'abc-1604656978', '', '', '', '', 'testdoctor8@mailinator.com', '7458963210', '', '', 'IN', '', '', '', 'Online', '', 'Active', '2020-11-06 15:32:58', '2020-11-06 15:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_clinics_attachments`
--

CREATE TABLE `tbl_user_clinics_attachments` (
  `id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` enum('Image','Video') NOT NULL DEFAULT 'Image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_clinics_relation`
--

CREATE TABLE `tbl_user_clinics_relation` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `clinic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_clinics_relation`
--

INSERT INTO `tbl_user_clinics_relation` (`id`, `user_id`, `clinic_id`) VALUES
(1, 12, 8),
(2, 3, 8),
(3, 4, 9),
(4, 11, 7),
(5, 10, 6),
(6, 4, 10),
(7, 30, 11),
(8, 33, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_devices`
--

CREATE TABLE `tbl_user_devices` (
  `device_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `access_for` enum('Registration','Login') DEFAULT NULL,
  `access_date` datetime NOT NULL,
  `system` varchar(100) NOT NULL,
  `token` varchar(255) NOT NULL,
  `released` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `uiMode` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `serial` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_devices`
--

INSERT INTO `tbl_user_devices` (`device_id`, `user_id`, `access_for`, `access_date`, `system`, `token`, `released`, `model`, `version`, `uiMode`, `fingerprint`, `serial`) VALUES
(1, 2, 'Login', '2020-11-05 11:23:29', 'Windows', 'fN64RY2epEJjcPYbSWy-XA:APA91bFO5AZ54EvK6riNle2FpM9OPZIwKdNFAZuGXXlU55MZOUWi9OsizAj7clISNQAQLOkwN-fbQRs6vr0AiQuUff0aPkjHk9Jn3qg26kx0aH_gBkIgFLc6j_9gY5-_slchpEXiglp2', 'NA', 'windows-7', '86.0.4240.111', 'Chrome', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'Unknown'),
(2, 3, 'Login', '2020-11-05 11:23:05', 'Windows', 'fN64RY2epEJjcPYbSWy-XA:APA91bFO5AZ54EvK6riNle2FpM9OPZIwKdNFAZuGXXlU55MZOUWi9OsizAj7clISNQAQLOkwN-fbQRs6vr0AiQuUff0aPkjHk9Jn3qg26kx0aH_gBkIgFLc6j_9gY5-_slchpEXiglp2', 'NA', 'windows-7', '86.0.4240.111', 'Chrome', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'Unknown'),
(4, 5, 'Login', '2020-10-21 17:06:36', 'Windows', 'dd8Qq4bf7A61diJBuaLCs9:APA91bEpwlD2A-SGymJBV-l4zx_3_8v0BnavPUyjLu5Fadm4Fk-QWvtlmrmiqyOgi8MkJsBIHEuIroONRitRa4ZMFydjseHNd1XCtnHYqdFBFFDxRX9odIkUFXeKIJibaz5ZSqhKklFo', 'NA', 'windows-7', '86.0.4240.111', 'Chrome', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'Unknown'),
(5, 11, 'Login', '2020-11-02 11:02:50', 'android', 'c1mAyCjayUU:APA91bG1Bg7lVSzNcmj_Ua9qCYKn37ndtpBk1c-HKuY6VbIpwJ2zaI1Mfk3OE6anYpqt_ErsPgM2AjfdxTyjGJQ0HnbCxXwEJ3O7ddbnrN0bWTlugHBrz2iwDdoQyuFkjfviL1h1glj3', '9', 'Redmi Note 8', '28', 'normal', 'xiaomi/ginkgo/ginkgo:9/PKQ1.190616.001/V11.0.4.0.PCOINXM:user/release-keys', 'unknown'),
(37, 4, 'Login', '2020-11-06 13:53:52', 'android', 'fGcSrhweXzs:APA91bGVo4-ZtVUFAGJ6g3fNlbxO0iVNs-gs_y3-8EBWrXf2-p691TJKVSiRICkffvHYq_EDo1nkpDM53yX6sVlqvQhI3t1z6YyiN6iU8uRMHfkwhOxbRKv4A-TSAY8_H7nKHI9LeYUF', '10', 'RMX2040', '29', 'normal', 'realme/RMX2040/RMX2040:10/QP1A.190711.020/1600670400:user/release-keys', 'unknown');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_documents`
--

CREATE TABLE `tbl_user_documents` (
  `document_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` enum('passport_front','passport_back','id_card_front','id_card_back','driving_front','driving_back','medical_licence','signature','address_proof') NOT NULL,
  `document_number` varchar(200) NOT NULL,
  `file_name` varchar(250) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_documents`
--

INSERT INTO `tbl_user_documents` (`document_id`, `user_id`, `title`, `document_number`, `file_name`, `file_type`, `created_date`, `updated_date`) VALUES
(1, 4, 'id_card_back', ' Gjcg vjcg v ', '0c3c6f3a2f4fca33e96c92e5e269936c-document-1.jpg', 'image/jpeg', '2020-11-02 16:31:57', '2020-11-04 14:31:21'),
(2, 4, 'passport_back', 'Ndndnd', '96c508be7de819f9cf7facea6c0a36a6-document-4.jpg', 'image/jpeg', '2020-11-02 16:33:50', '2020-11-02 11:03:50'),
(3, 4, 'id_card_front', 'Cnncncbc', 'f82b2d7a8df2a3c96657cb4baa6fbc2f-document-4.jpg', 'image/jpeg', '2020-11-02 16:43:36', '2020-11-02 11:13:36'),
(5, 4, 'driving_front', 'Jrjjr', 'd84877906060d67dd218cdc5e10f7f56-document-4.jpg', 'image/jpeg', '2020-11-02 16:44:54', '2020-11-02 11:14:54'),
(6, 4, 'driving_back', 'Vxhgxg', 'f5154fb0bb8caacb97ef7dd6b42ead0e-document-4.jpg', 'image/jpeg', '2020-11-02 16:45:23', '2020-11-02 11:15:23'),
(7, 4, 'medical_licence', 'Jgcvjxvjxghx', 'a5169927a69254976b1f54bb865991a0-document-4.jpg', 'image/jpeg', '2020-11-02 16:46:33', '2020-11-02 11:16:33'),
(10, 4, 'signature', ' Gjcg vjcg v ', 'b79692f5628094ee5d490353eeb4b89b-document-4.jpg', 'image/jpeg', '2020-11-04 13:33:32', '2020-11-04 08:03:32'),
(11, 4, 'address_proof', 'Gu gj g', 'd544469cec1329da319e623d8f98e4c7-document-4.jpg', 'image/jpeg', '2020-11-04 13:33:51', '2020-11-04 08:03:51'),
(12, 4, 'id_card_back', 'Sfbdgnfg', 'd34df5598fcc6f185f5b8730d4da8e70-document-4.jpg', 'image/jpeg', '2020-11-04 13:51:42', '2020-11-04 08:21:42'),
(13, 4, 'passport_front', ' X dbdg ', '0aa62538b6f404a5c9a38e52abc4129b-document-4.jpg', 'image/jpeg', '2020-11-04 15:24:16', '2020-11-04 09:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_education`
--

CREATE TABLE `tbl_user_education` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `degree` varchar(200) NOT NULL,
  `university` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_education`
--

INSERT INTO `tbl_user_education` (`id`, `user_id`, `degree`, `university`, `year`, `created_date`, `updated_date`) VALUES
(1, 12, 'MBBS ', 'MG Institute of Health science', 1996, '2020-10-02 18:18:39', '2020-10-02 12:48:39'),
(2, 12, 'MD ', 'MG Institute of Health science, BBM', 2000, '2020-10-02 18:19:18', '2020-10-02 12:49:18'),
(3, 12, 'PGDHS ', 'MG Institute of Health science, BBM', 2001, '2020-10-02 18:19:44', '2020-10-02 18:19:56'),
(4, 4, 'Jvjbcrrff', 'Fiyfyi', 2012, '2020-11-02 16:47:52', '2020-11-04 12:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_experience`
--

CREATE TABLE `tbl_user_experience` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `currently_working` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `start_year` year(4) DEFAULT NULL,
  `start_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `end_year` year(4) DEFAULT NULL,
  `end_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_experience`
--

INSERT INTO `tbl_user_experience` (`id`, `user_id`, `organization`, `designation`, `description`, `currently_working`, `start_year`, `start_month`, `end_year`, `end_month`, `created_date`, `updated_date`) VALUES
(1, 12, 'Present Owner at Healthcare Clinic', 'Owner ', 'Description ', 'Yes', 1996, 1, NULL, NULL, '2020-10-02 18:16:40', '2020-10-02 12:46:40'),
(9, 4, 'N k s', 'Igcgic', 'Jg jg ', 'Yes', 2015, 5, 0000, 0, '2020-11-04 11:44:17', '2020-11-04 11:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_group`
--

CREATE TABLE `tbl_user_group` (
  `group_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `menu_level` int(1) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` bigint(20) NOT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_group`
--

INSERT INTO `tbl_user_group` (`group_id`, `parent_id`, `group_name`, `menu_level`, `menu_order`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 0, 'Developer', 0, 1, 'Active', 2, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 0, 'Super Admin', 0, 1, 'Active', 2, '2020-01-18 01:00:00', 0, '0000-00-00 00:00:00'),
(3, 0, 'Admin', 0, 1, 'Active', 2, '2020-01-18 01:00:00', 0, '0000-00-00 00:00:00'),
(4, 0, 'User', 0, 0, 'Active', 2, '2020-01-18 01:00:00', 0, '0000-00-00 00:00:00'),
(5, 4, 'Clinic', 1, 0, 'Active', 2, '2020-01-18 01:00:00', 0, '0000-00-00 00:00:00'),
(6, 4, 'Doctor', 1, 0, 'Active', 2, '2020-01-18 01:00:00', 0, '0000-00-00 00:00:00'),
(7, 4, 'Patient', 1, 0, 'Active', 2, '2020-01-18 01:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_insurance`
--

CREATE TABLE `tbl_user_insurance` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `insurance_type` enum('Personal','Company') NOT NULL DEFAULT 'Personal' COMMENT 'This column is for patient user only, for doctor ignore this column',
  `provider_id` int(11) NOT NULL,
  `provider_name` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_patient`
--

CREATE TABLE `tbl_user_patient` (
  `patient_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `patient_type` enum('Self','Family') NOT NULL DEFAULT 'Family',
  `patient_name` varchar(50) NOT NULL,
  `patient_email` varchar(100) NOT NULL,
  `patient_image` varchar(200) NOT NULL,
  `patient_gender` enum('Male','Female') DEFAULT NULL,
  `patient_dob` date DEFAULT NULL,
  `patient_mobile` char(15) NOT NULL,
  `blood_group` char(10) NOT NULL,
  `allergy` text NOT NULL,
  `medical_history` text NOT NULL,
  `height` varchar(50) NOT NULL COMMENT 'in inches',
  `weight` varchar(50) NOT NULL COMMENT 'in kilogram',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_patient`
--

INSERT INTO `tbl_user_patient` (`patient_id`, `user_id`, `patient_type`, `patient_name`, `patient_email`, `patient_image`, `patient_gender`, `patient_dob`, `patient_mobile`, `blood_group`, `allergy`, `medical_history`, `height`, `weight`, `created_date`, `updated_date`) VALUES
(1, 13, 'Self', 'demo user', 'demo.user12345@mailinator.com', '', NULL, '0000-00-00', '3254745669', '', '', '', '', '', '2020-11-02 10:54:21', '2020-11-02 10:54:21'),
(2, 5, 'Self', 'Patient One', 'patient1@mailinator.com', '', 'Male', '1987-09-23', '5555554444', 'b', 'Allergy', 'Medical History', '', '', '2020-11-06 18:32:18', '2020-11-02 10:54:21'),
(3, 5, 'Family', 'Manish Yadav', 'demo@gmail.com', '', NULL, NULL, '6898569856', '', '', '', '', '', '2020-11-04 17:18:36', '2020-11-04 11:48:36'),
(4, 5, 'Family', 'Sonu Kumar', 'ap@mailinator.com', '', 'Male', '1990-01-31', '6585455256', 'A+', 'Lorem ipsum allergies', 'Loem ipsum medical histories', '156', '58', '2020-11-06 13:19:27', '2020-11-06 07:49:27'),
(5, 5, 'Family', 'Sonu Kumar', 'patient1@mailinator.com', 'caf9a9599c593359b1ec0ab2233f6c9a-user-patients-5.jpg', '', '1990-01-31', '5555554444', 'b', 'Lorem ipsum allergies', 'Loem ipsumMedical History medical histories', '156', '58', '2020-11-06 18:15:45', '2020-11-06 07:51:40'),
(6, 14, 'Self', 'Test', 'testdoctor@mailinator.com', '', NULL, NULL, '7894561234', '', '', '', '', '', '2020-11-06 13:36:47', '2020-11-06 08:06:47'),
(7, 25, 'Self', 'Test', 'testdoctor3@mailinator.com', '', NULL, NULL, '7894561233', '', '', '', '', '', '2020-11-06 13:37:58', '2020-11-06 08:07:58'),
(8, 26, 'Self', 'Test', 'testdoctor4@mailinator.com', '', NULL, NULL, '7894561232', '', '', '', '', '', '2020-11-06 13:38:29', '2020-11-06 08:08:29'),
(9, 27, 'Self', 'Test', 'testdoctor5@mailinator.com', '', NULL, NULL, '7894561132', '', '', '', '', '', '2020-11-06 13:39:12', '2020-11-06 08:09:12'),
(10, 28, 'Self', 'Naveen Kumar', 'naveen.kumar@mailinator.com', '', NULL, NULL, '3658452145', '', '', '', '', '', '2020-11-06 15:08:01', '2020-11-06 09:38:01'),
(11, 29, 'Self', 'DoctorTest', 'testdoctor6@mailinator.com', '', NULL, NULL, '4567891239', '', '', '', '', '', '2020-11-06 15:08:31', '2020-11-06 09:38:31'),
(12, 30, 'Self', 'DoctorTest', 'testdoctor7@mailinator.com', '', NULL, NULL, '4567891119', '', '', '', '', '', '2020-11-06 15:16:05', '2020-11-06 09:46:05'),
(13, 32, 'Self', 'Naveen Kumar', 'naveen.kumars@mailinator.com', '', NULL, NULL, '3658452141', '', '', '', '', '', '2020-11-06 15:24:55', '2020-11-06 09:54:55'),
(14, 33, 'Self', 'Abc', 'testdoctor8@mailinator.com', '', NULL, NULL, '7458963210', '', '', '', '', '', '2020-11-06 15:32:58', '2020-11-06 10:02:58'),
(15, 5, 'Family', 'Sonu Kumar', 'patient1@mailinator.com', '', NULL, NULL, '5555554444', '', '', '', '', '', '2020-11-06 16:47:50', '2020-11-06 16:47:50'),
(16, 5, 'Family', 'Sonu Kumar', 'patient1@mailinator.com', '', NULL, NULL, '5555554444', '', '', '', '', '', '2020-11-06 16:55:43', '2020-11-06 16:55:43'),
(17, 5, 'Family', 'Arpit sahu', 'patient1@mailinator.com', '', NULL, NULL, '5555554444', '', '', '', '', '', '2020-11-06 17:30:03', '2020-11-06 17:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_services`
--

CREATE TABLE `tbl_user_services` (
  `service_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `clinic_id` int(11) DEFAULT NULL,
  `service_type` enum('In Person','Virtual') NOT NULL DEFAULT 'Virtual',
  `title` varchar(100) NOT NULL,
  `instructions` text NOT NULL,
  `service_fee` float(10,2) NOT NULL,
  `pay_at` enum('Online','Clinic') NOT NULL DEFAULT 'Online',
  `status` enum('Active','Inactive') NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_services`
--

INSERT INTO `tbl_user_services` (`service_id`, `user_id`, `clinic_id`, `service_type`, `title`, `instructions`, `service_fee`, `pay_at`, `status`, `created_date`, `updated_date`) VALUES
(7, 10, NULL, 'Virtual', 'Virtual Consultation', 'Virtual Consultation', 200.00, 'Online', 'Active', '2020-10-02 12:44:09', '2020-10-02 18:15:21'),
(8, 11, NULL, 'Virtual', 'Virtual Consultation', 'Virtual Consultation', 200.00, 'Online', 'Active', '2020-10-02 12:44:09', '2020-10-02 18:15:21'),
(9, 12, NULL, 'Virtual', 'Virtual Consultation', 'Virtual Consultation', 200.00, 'Online', 'Active', '2020-10-02 12:44:09', '2020-10-02 18:15:21'),
(12, 4, NULL, 'Virtual', 'Virtual Consultation', 'Virtual Consultation', 500.00, 'Online', 'Active', '2020-10-02 12:44:09', '2020-11-04 17:42:41'),
(17, 30, NULL, 'Virtual', 'Virtual Consultation', '', 0.00, 'Online', 'Active', '2020-11-06 15:16:05', '2020-11-06 09:46:05'),
(18, 33, NULL, 'Virtual', 'Virtual Consultation', '', 0.00, 'Online', 'Active', '2020-11-06 15:32:58', '2020-11-06 10:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_settings`
--

CREATE TABLE `tbl_user_settings` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `meta_key` varchar(100) NOT NULL,
  `meta_value` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_settings`
--

INSERT INTO `tbl_user_settings` (`id`, `user_id`, `meta_key`, `meta_value`) VALUES
(11, 4, 'currency', '$'),
(3, 4, 'education', 'MBBS, Post graduate diploma in health science (PGDHSc)'),
(2, 4, 'experience', '2017'),
(15, 4, 'instruction_description', 'Bdbdbfbfb'),
(14, 4, 'instruction_title', 'Testing'),
(13, 4, 'specialization', 'Physician'),
(12, 4, 'timezone', 'Africa/Banjul'),
(5, 10, 'education', 'MBBS, Post graduate diploma in health science (PGDHSc)'),
(4, 10, 'experience', '2005'),
(8, 11, 'education', 'MBBS, Post graduate diploma in health science (PGDHSc)'),
(6, 11, 'experience', '2009'),
(10, 12, 'education', 'MBBS, Post graduate diploma in health science (PGDHSc)'),
(9, 12, 'experience', '2009'),
(16, 30, 'education', ''),
(17, 30, 'experience', '2020'),
(18, 33, 'education', ''),
(19, 33, 'experience', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_specialization`
--

CREATE TABLE `tbl_user_specialization` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `sub_specialization_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_specialization`
--

INSERT INTO `tbl_user_specialization` (`id`, `user_id`, `specialization_id`, `sub_specialization_id`) VALUES
(1, 4, 1, 2),
(2, 10, 1, 2),
(3, 11, 1, 2),
(4, 12, 1, 2),
(5, 30, 1, 2),
(6, 33, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_wallet`
--

CREATE TABLE `tbl_user_wallet` (
  `wallet_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `sender_id` bigint(20) DEFAULT NULL COMMENT 'user_id of sender',
  `description` mediumtext NOT NULL,
  `transaction_type` enum('Debit','Credit') NOT NULL,
  `status` enum('Block','Unblock','Refund','Pending','Available','Withdrawal','Deposit','Transfer') NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_work_schedule`
--

CREATE TABLE `tbl_user_work_schedule` (
  `schedule_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `clinic_id` int(11) NOT NULL,
  `schedule_type` enum('Daily','Specific') NOT NULL DEFAULT 'Daily',
  `availability_status` enum('Available','Partial Available','Unavailable','Not Working') NOT NULL DEFAULT 'Available',
  `day_name` varchar(50) NOT NULL,
  `schedule_shift` enum('Morning','Afternoon','Evening','Night') DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `meeting_time` smallint(5) UNSIGNED NOT NULL,
  `padding_time` smallint(5) UNSIGNED NOT NULL,
  `reason` varchar(250) NOT NULL,
  `slots` text NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) NOT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_work_schedule`
--

INSERT INTO `tbl_user_work_schedule` (`schedule_id`, `user_id`, `clinic_id`, `schedule_type`, `availability_status`, `day_name`, `schedule_shift`, `from_date`, `to_date`, `from_time`, `to_time`, `meeting_time`, `padding_time`, `reason`, `slots`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(5, 12, 8, 'Daily', 'Available', 'Monday', 'Morning', NULL, NULL, '00:00:00', '06:00:00', 50, 10, '', '{\"0000-0050\":1,\"0100-0150\":1,\"0200-0250\":1,\"0300-0350\":1,\"0400-0450\":1,\"0500-0550\":1}', 3, '2020-10-01 13:39:54', 0, '2020-10-01 08:09:54'),
(6, 12, 8, 'Daily', 'Available', 'Monday', 'Afternoon', NULL, NULL, '12:00:00', '15:00:00', 20, 5, '', '{\"1200-1220\":1,\"1225-1245\":1,\"1250-1310\":1,\"1315-1335\":1,\"1340-1400\":1,\"1405-1425\":1,\"1430-1450\":1,\"1455-1515\":1}', 3, '2020-10-02 18:37:13', 0, '2020-10-02 13:07:13'),
(7, 12, 8, 'Daily', 'Available', 'Tuesday', 'Afternoon', NULL, NULL, '05:00:00', '08:00:00', 40, 20, '', '{\"0500-0540\":1,\"0600-0640\":1,\"0700-0740\":1}', 3, '2020-10-02 18:38:58', 0, '2020-10-02 13:08:58'),
(8, 12, 8, 'Specific', 'Unavailable', '', NULL, '2020-10-02', '2020-10-05', NULL, NULL, 0, 0, 'dadasd d ada ad ad', '', 3, '2020-10-02 18:39:35', 0, '2020-10-02 13:09:35'),
(9, 4, 9, 'Daily', 'Available', 'Monday', 'Morning', NULL, NULL, '10:00:00', '12:00:00', 15, 5, '', '{\"1000-1015\":1,\"1020-1035\":1,\"1040-1055\":1,\"1100-1115\":1,\"1120-1135\":1,\"1140-1155\":1}', 4, '2020-10-31 18:29:13', 0, '2020-10-31 12:59:13'),
(10, 4, 9, 'Daily', 'Available', 'Monday', 'Afternoon', NULL, NULL, '13:00:00', '17:00:00', 15, 5, '', '{\"1300-1315\":1,\"1320-1335\":1,\"1340-1355\":1,\"1400-1415\":1,\"1420-1435\":1,\"1440-1455\":1,\"1500-1515\":1,\"1520-1535\":1,\"1540-1555\":1,\"1600-1615\":1,\"1620-1635\":1,\"1640-1655\":1}', 4, '2020-10-31 18:40:18', 0, '2020-10-31 13:10:18'),
(11, 4, 9, 'Daily', 'Available', 'Monday', 'Evening', NULL, NULL, '18:00:00', '19:00:00', 15, 5, '', '{\"1800-1815\":1,\"1820-1835\":1,\"1840-1855\":1}', 4, '2020-10-31 18:50:59', 0, '2020-10-31 13:20:59'),
(12, 4, 9, 'Daily', 'Available', 'Tuesday', 'Afternoon', NULL, NULL, '12:28:00', '13:28:00', 25, 15, '', '{\"1228-1253\":1,\"1308-1333\":1}', 4, '2020-11-05 12:29:17', 0, '2020-11-05 06:59:17'),
(13, 4, 9, 'Specific', 'Unavailable', '', NULL, '2020-11-05', '2020-12-05', NULL, NULL, 0, 0, 'Utduyduycytxyr', '', 4, '2020-11-05 13:01:21', 0, '2020-11-05 07:31:21'),
(14, 4, 9, 'Specific', 'Unavailable', '', NULL, '2021-01-05', '2021-02-05', NULL, NULL, 0, 0, 'Hxhfxufxyfxyrxtrz ez', '', 4, '2020-11-05 13:04:07', 0, '2020-11-05 07:34:07'),
(15, 4, 9, 'Specific', 'Partial Available', '', 'Afternoon', '2022-04-05', '2023-07-05', '14:09:00', '15:09:00', 25, 15, 'Cyfcyf gc hc gc', '{\"1409-1434\":1,\"1449-1514\":1}', 4, '2020-11-05 13:11:44', 0, '2020-11-05 07:41:44'),
(16, 4, 9, 'Daily', 'Available', 'Tuesday', 'Morning', NULL, NULL, '13:15:00', '15:15:00', 30, 15, '', '{\"1315-1345\":1,\"1400-1430\":1,\"1445-1515\":1}', 4, '2020-11-05 13:15:26', 0, '2020-11-05 07:45:26'),
(17, 4, 10, 'Daily', 'Available', 'Wednesday', 'Afternoon', NULL, NULL, '17:05:00', '18:05:00', 25, 15, '', '{\"1705-1730\":1,\"1745-1810\":1}', 4, '2020-11-05 17:06:52', 0, '2020-11-05 11:36:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_activity_log`
--
ALTER TABLE `tbl_activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_act_activity_by` (`activity_by`),
  ADD KEY `FK_act_activity_for` (`activity_for`),
  ADD KEY `FK_act_created_by` (`created_by`);

--
-- Indexes for table `tbl_api`
--
ALTER TABLE `tbl_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `tbl_api_access`
--
ALTER TABLE `tbl_api_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_api_keys`
--
ALTER TABLE `tbl_api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_api_limits`
--
ALTER TABLE `tbl_api_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_api_logs`
--
ALTER TABLE `tbl_api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_api_menu`
--
ALTER TABLE `tbl_api_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_api_params`
--
ALTER TABLE `tbl_api_params`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_api_settings`
--
ALTER TABLE `tbl_api_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_api_submenu`
--
ALTER TABLE `tbl_api_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `FK_apt_order_id` (`order_id`),
  ADD KEY `FK_apt_user_id` (`user_id`),
  ADD KEY `FK_apt_doctor_id` (`doctor_id`),
  ADD KEY `FK_apt_created_by` (`created_by`),
  ADD KEY `FK_apt_confirmed_by` (`confirmed_by`),
  ADD KEY `FK_apt_completed_by` (`completed_by`),
  ADD KEY `FK_apt_reschedule_by` (`reschedule_by`),
  ADD KEY `FK_apt_cancel_by` (`cancel_by`),
  ADD KEY `FK_apt_updated_by` (`updated_by`),
  ADD KEY `FK_apt_clinic_id` (`clinic_id`),
  ADD KEY `FK_apt_patient_id` (`patient_id`);

--
-- Indexes for table `tbl_appointment_attachments`
--
ALTER TABLE `tbl_appointment_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_aat_appointment_id` (`appointment_id`);

--
-- Indexes for table `tbl_appointment_feedback`
--
ALTER TABLE `tbl_appointment_feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `FK_af_appointment_id` (`appointment_id`);

--
-- Indexes for table `tbl_appointment_followup`
--
ALTER TABLE `tbl_appointment_followup`
  ADD PRIMARY KEY (`followup_id`),
  ADD KEY `FK_afl_appointment_id` (`appointment_id`);

--
-- Indexes for table `tbl_appointment_prescriptions`
--
ALTER TABLE `tbl_appointment_prescriptions`
  ADD PRIMARY KEY (`prescription_id`),
  ADD KEY `FK_apr_appointment_id` (`appointment_id`);

--
-- Indexes for table `tbl_appointment_reports`
--
ALTER TABLE `tbl_appointment_reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `FK_arp_appointment_id` (`appointment_id`);

--
-- Indexes for table `tbl_appointment_services`
--
ALTER TABLE `tbl_appointment_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_asr_appointment_id` (`appointment_id`);

--
-- Indexes for table `tbl_appointment_status_history`
--
ALTER TABLE `tbl_appointment_status_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ash_created_by` (`created_by`),
  ADD KEY `FK_ash_appointment_id` (`appointment_id`);

--
-- Indexes for table `tbl_article`
--
ALTER TABLE `tbl_article`
  ADD PRIMARY KEY (`article_id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `FK_art_created_by` (`created_by`),
  ADD KEY `FK_art_updated_by` (`updated_by`),
  ADD KEY `FK_art_category_id` (`category_id`);

--
-- Indexes for table `tbl_article_category`
--
ALTER TABLE `tbl_article_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD UNIQUE KEY `category_alias` (`category_alias`),
  ADD KEY `FK_art_cat_created_by` (`created_by`),
  ADD KEY `FK_art_cat_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_article_category_follow`
--
ALTER TABLE `tbl_article_category_follow`
  ADD PRIMARY KEY (`follow_id`);

--
-- Indexes for table `tbl_article_likes`
--
ALTER TABLE `tbl_article_likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `tbl_article_tags`
--
ALTER TABLE `tbl_article_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `tbl_clinic_amenities`
--
ALTER TABLE `tbl_clinic_amenities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `amenity` (`amenity`),
  ADD KEY `FK_clm_created_by` (`created_by`),
  ADD KEY `FK_clm_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_cms_content`
--
ALTER TABLE `tbl_cms_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_type` (`section_type`),
  ADD KEY `FK_cmcc_created_by` (`created_by`),
  ADD KEY `FK_cmcc_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_cms_menus`
--
ALTER TABLE `tbl_cms_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cmcm_created_by` (`created_by`),
  ADD KEY `FK_cmcm_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_cms_sliders`
--
ALTER TABLE `tbl_cms_sliders`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_cms_speciality`
--
ALTER TABLE `tbl_cms_speciality`
  ADD PRIMARY KEY (`speciality_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_code` (`country_code`),
  ADD UNIQUE KEY `country_name` (`country_name`);

--
-- Indexes for table `tbl_country_regions`
--
ALTER TABLE `tbl_country_regions`
  ADD PRIMARY KEY (`region_id`),
  ADD UNIQUE KEY `cr_unique` (`country_code`,`region_code`);

--
-- Indexes for table `tbl_country_region_cities`
--
ALTER TABLE `tbl_country_region_cities`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `crc_unique` (`country_code`,`region_code`,`city_name`);

--
-- Indexes for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD KEY `FK_c_created_by` (`created_by`),
  ADD KEY `FK_d_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_db_tables`
--
ALTER TABLE `tbl_db_tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `tbl_diseases`
--
ALTER TABLE `tbl_diseases`
  ADD PRIMARY KEY (`disease_id`),
  ADD KEY `FK_d_created_by` (`created_by`);

--
-- Indexes for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  ADD PRIMARY KEY (`template_id`),
  ADD UNIQUE KEY `template_code` (`template_code`),
  ADD KEY `FK_et_created_by` (`created_by`),
  ADD KEY `FK_et_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`enquiry_id`),
  ADD KEY `FK_enq_user_id` (`user_id`);

--
-- Indexes for table `tbl_enquiry_reply`
--
ALTER TABLE `tbl_enquiry_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_enq_r_user_id` (`user_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_insurance_providers`
--
ALTER TABLE `tbl_insurance_providers`
  ADD PRIMARY KEY (`provider_id`),
  ADD KEY `FK_ip_created_by` (`created_by`),
  ADD KEY `FK_ip_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_code` (`language_code`),
  ADD UNIQUE KEY `language` (`language`),
  ADD KEY `FK_lang_created_by` (`created_by`),
  ADD KEY `FK_lang_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_language_contents`
--
ALTER TABLE `tbl_language_contents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type` (`content_type`,`row_id`,`lang_code`) USING BTREE,
  ADD KEY `FK_lc_created_by` (`created_by`),
  ADD KEY `FK_lc_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_ord_user_id` (`user_id`);

--
-- Indexes for table `tbl_order_address`
--
ALTER TABLE `tbl_order_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_oa_order_id` (`order_id`);

--
-- Indexes for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_oia_order_id` (`order_id`);

--
-- Indexes for table `tbl_order_payment_history`
--
ALTER TABLE `tbl_order_payment_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `FK_oph_order_id` (`order_id`);

--
-- Indexes for table `tbl_order_status`
--
ALTER TABLE `tbl_order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indexes for table `tbl_order_status_history`
--
ALTER TABLE `tbl_order_status_history`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `FK_osh_order_id` (`order_id`);

--
-- Indexes for table `tbl_order_total`
--
ALTER TABLE `tbl_order_total`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tbl_sent_notifications`
--
ALTER TABLE `tbl_sent_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `FK_set_created_by` (`created_by`),
  ADD KEY `FK_set_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_specialization`
--
ALTER TABLE `tbl_specialization`
  ADD PRIMARY KEY (`specialization_id`),
  ADD UNIQUE KEY `specialization_name` (`specialization_name`),
  ADD UNIQUE KEY `specialization_alias` (`specialization_alias`),
  ADD KEY `FK_spz_created_by` (`created_by`),
  ADD KEY `FK_spz_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_symptoms`
--
ALTER TABLE `tbl_symptoms`
  ADD PRIMARY KEY (`symptom_id`);

--
-- Indexes for table `tbl_symptom_diseases`
--
ALTER TABLE `tbl_symptom_diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_universities`
--
ALTER TABLE `tbl_universities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_uni_created_by` (`created_by`),
  ADD KEY `FK_uni_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_alias` (`user_alias`),
  ADD UNIQUE KEY `mobile_number` (`mobile_number`),
  ADD KEY `full_name` (`full_name`),
  ADD KEY `FK_group_id` (`group_id`),
  ADD KEY `FK_us_created_by` (`created_by`),
  ADD KEY `FK_us_updated_by` (`updated_by`);

--
-- Indexes for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK_ua_user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `tbl_user_assigned`
--
ALTER TABLE `tbl_user_assigned`
  ADD PRIMARY KEY (`assign_id`),
  ADD KEY `FK_uas_user_id` (`user_id`) USING BTREE,
  ADD KEY `FK_uas_assigned_to` (`assigned_to`) USING BTREE,
  ADD KEY `FK_uas_assign_by` (`assign_by`) USING BTREE;

--
-- Indexes for table `tbl_user_authentication`
--
ALTER TABLE `tbl_user_authentication`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `tbl_user_awards`
--
ALTER TABLE `tbl_user_awards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ua_unique` (`user_id`,`name`),
  ADD KEY `FK_uaw_user_id` (`user_id`);

--
-- Indexes for table `tbl_user_banks`
--
ALTER TABLE `tbl_user_banks`
  ADD PRIMARY KEY (`bank_id`),
  ADD KEY `FK_ub_user_id` (`user_id`);

--
-- Indexes for table `tbl_user_cards`
--
ALTER TABLE `tbl_user_cards`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `FK_uc_user_id` (`user_id`);

--
-- Indexes for table `tbl_user_clinics`
--
ALTER TABLE `tbl_user_clinics`
  ADD PRIMARY KEY (`clinic_id`),
  ADD KEY `FK_ucl_user_id` (`user_id`);

--
-- Indexes for table `tbl_user_clinics_attachments`
--
ALTER TABLE `tbl_user_clinics_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_uca_clinic_id` (`clinic_id`);

--
-- Indexes for table `tbl_user_clinics_relation`
--
ALTER TABLE `tbl_user_clinics_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ucr_user_id` (`user_id`),
  ADD KEY `FK_ucr_clinic_id` (`clinic_id`);

--
-- Indexes for table `tbl_user_devices`
--
ALTER TABLE `tbl_user_devices`
  ADD PRIMARY KEY (`device_id`),
  ADD KEY `FK_ud_user_id` (`user_id`);

--
-- Indexes for table `tbl_user_documents`
--
ALTER TABLE `tbl_user_documents`
  ADD PRIMARY KEY (`document_id`),
  ADD KEY `FK_udoc_user_id` (`user_id`);

--
-- Indexes for table `tbl_user_education`
--
ALTER TABLE `tbl_user_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_uedu_user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `tbl_user_experience`
--
ALTER TABLE `tbl_user_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_uexp_user_id` (`user_id`);

--
-- Indexes for table `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `tbl_user_insurance`
--
ALTER TABLE `tbl_user_insurance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_uins_user_id` (`user_id`),
  ADD KEY `FK_uins_provider_id` (`provider_id`) USING BTREE;

--
-- Indexes for table `tbl_user_patient`
--
ALTER TABLE `tbl_user_patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `FK_upat_user_id` (`user_id`);

--
-- Indexes for table `tbl_user_services`
--
ALTER TABLE `tbl_user_services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `FK_usv_user_id` (`user_id`),
  ADD KEY `FK_usv_clinic_id` (`clinic_id`);

--
-- Indexes for table `tbl_user_settings`
--
ALTER TABLE `tbl_user_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `us_unique` (`user_id`,`meta_key`,`meta_value`),
  ADD KEY `FK_ust_user_id` (`user_id`);

--
-- Indexes for table `tbl_user_specialization`
--
ALTER TABLE `tbl_user_specialization`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usp_unique` (`user_id`,`specialization_id`,`sub_specialization_id`),
  ADD KEY `FK_us_specialization_id` (`specialization_id`),
  ADD KEY `FK_us_sub_specialization_id` (`sub_specialization_id`);

--
-- Indexes for table `tbl_user_wallet`
--
ALTER TABLE `tbl_user_wallet`
  ADD PRIMARY KEY (`wallet_id`),
  ADD KEY `FK_uwal_user_id` (`user_id`),
  ADD KEY `FK_uwal_order_id` (`order_id`);

--
-- Indexes for table `tbl_user_work_schedule`
--
ALTER TABLE `tbl_user_work_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `FK_usch_user_id` (`user_id`),
  ADD KEY `FK_usch_clinic_id` (`clinic_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_activity_log`
--
ALTER TABLE `tbl_activity_log`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_api`
--
ALTER TABLE `tbl_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `tbl_api_access`
--
ALTER TABLE `tbl_api_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_api_keys`
--
ALTER TABLE `tbl_api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_api_limits`
--
ALTER TABLE `tbl_api_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_api_logs`
--
ALTER TABLE `tbl_api_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_api_menu`
--
ALTER TABLE `tbl_api_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_api_params`
--
ALTER TABLE `tbl_api_params`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3834;

--
-- AUTO_INCREMENT for table `tbl_api_settings`
--
ALTER TABLE `tbl_api_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_api_submenu`
--
ALTER TABLE `tbl_api_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=576;

--
-- AUTO_INCREMENT for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_appointment_attachments`
--
ALTER TABLE `tbl_appointment_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_appointment_feedback`
--
ALTER TABLE `tbl_appointment_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_appointment_followup`
--
ALTER TABLE `tbl_appointment_followup`
  MODIFY `followup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_appointment_prescriptions`
--
ALTER TABLE `tbl_appointment_prescriptions`
  MODIFY `prescription_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_appointment_reports`
--
ALTER TABLE `tbl_appointment_reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_appointment_services`
--
ALTER TABLE `tbl_appointment_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_appointment_status_history`
--
ALTER TABLE `tbl_appointment_status_history`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_article`
--
ALTER TABLE `tbl_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_article_category`
--
ALTER TABLE `tbl_article_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_article_category_follow`
--
ALTER TABLE `tbl_article_category_follow`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_article_likes`
--
ALTER TABLE `tbl_article_likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_article_tags`
--
ALTER TABLE `tbl_article_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_clinic_amenities`
--
ALTER TABLE `tbl_clinic_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cms_content`
--
ALTER TABLE `tbl_cms_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_cms_menus`
--
ALTER TABLE `tbl_cms_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_cms_sliders`
--
ALTER TABLE `tbl_cms_sliders`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_cms_speciality`
--
ALTER TABLE `tbl_cms_speciality`
  MODIFY `speciality_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_country_regions`
--
ALTER TABLE `tbl_country_regions`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_country_region_cities`
--
ALTER TABLE `tbl_country_region_cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_db_tables`
--
ALTER TABLE `tbl_db_tables`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `tbl_diseases`
--
ALTER TABLE `tbl_diseases`
  MODIFY `disease_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_enquiry_reply`
--
ALTER TABLE `tbl_enquiry_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_insurance_providers`
--
ALTER TABLE `tbl_insurance_providers`
  MODIFY `provider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_language_contents`
--
ALTER TABLE `tbl_language_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order_address`
--
ALTER TABLE `tbl_order_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order_payment_history`
--
ALTER TABLE `tbl_order_payment_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_order_status`
--
ALTER TABLE `tbl_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_order_status_history`
--
ALTER TABLE `tbl_order_status_history`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order_total`
--
ALTER TABLE `tbl_order_total`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_sent_notifications`
--
ALTER TABLE `tbl_sent_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_specialization`
--
ALTER TABLE `tbl_specialization`
  MODIFY `specialization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_symptoms`
--
ALTER TABLE `tbl_symptoms`
  MODIFY `symptom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_symptom_diseases`
--
ALTER TABLE `tbl_symptom_diseases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_universities`
--
ALTER TABLE `tbl_universities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_assigned`
--
ALTER TABLE `tbl_user_assigned`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_authentication`
--
ALTER TABLE `tbl_user_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `tbl_user_awards`
--
ALTER TABLE `tbl_user_awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user_banks`
--
ALTER TABLE `tbl_user_banks`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user_cards`
--
ALTER TABLE `tbl_user_cards`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_clinics`
--
ALTER TABLE `tbl_user_clinics`
  MODIFY `clinic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user_clinics_attachments`
--
ALTER TABLE `tbl_user_clinics_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_clinics_relation`
--
ALTER TABLE `tbl_user_clinics_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user_devices`
--
ALTER TABLE `tbl_user_devices`
  MODIFY `device_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_user_documents`
--
ALTER TABLE `tbl_user_documents`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_user_education`
--
ALTER TABLE `tbl_user_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user_experience`
--
ALTER TABLE `tbl_user_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user_insurance`
--
ALTER TABLE `tbl_user_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_patient`
--
ALTER TABLE `tbl_user_patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_user_services`
--
ALTER TABLE `tbl_user_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user_settings`
--
ALTER TABLE `tbl_user_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_user_specialization`
--
ALTER TABLE `tbl_user_specialization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user_wallet`
--
ALTER TABLE `tbl_user_wallet`
  MODIFY `wallet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_work_schedule`
--
ALTER TABLE `tbl_user_work_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_activity_log`
--
ALTER TABLE `tbl_activity_log`
  ADD CONSTRAINT `FK_act_activity_by` FOREIGN KEY (`activity_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_act_activity_for` FOREIGN KEY (`activity_for`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_act_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD CONSTRAINT `FK_apt_cancel_by` FOREIGN KEY (`cancel_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_apt_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `tbl_user_clinics` (`clinic_id`),
  ADD CONSTRAINT `FK_apt_completed_by` FOREIGN KEY (`completed_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_apt_confirmed_by` FOREIGN KEY (`confirmed_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_apt_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_apt_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_apt_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`),
  ADD CONSTRAINT `FK_apt_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `tbl_user_patient` (`patient_id`),
  ADD CONSTRAINT `FK_apt_reschedule_by` FOREIGN KEY (`reschedule_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_apt_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_apt_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_appointment_attachments`
--
ALTER TABLE `tbl_appointment_attachments`
  ADD CONSTRAINT `FK_aat_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `tbl_appointment` (`appointment_id`);

--
-- Constraints for table `tbl_appointment_feedback`
--
ALTER TABLE `tbl_appointment_feedback`
  ADD CONSTRAINT `FK_af_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `tbl_appointment` (`appointment_id`);

--
-- Constraints for table `tbl_appointment_followup`
--
ALTER TABLE `tbl_appointment_followup`
  ADD CONSTRAINT `FK_afl_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `tbl_appointment` (`appointment_id`);

--
-- Constraints for table `tbl_appointment_prescriptions`
--
ALTER TABLE `tbl_appointment_prescriptions`
  ADD CONSTRAINT `FK_apr_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `tbl_appointment` (`appointment_id`);

--
-- Constraints for table `tbl_appointment_reports`
--
ALTER TABLE `tbl_appointment_reports`
  ADD CONSTRAINT `FK_arp_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `tbl_appointment` (`appointment_id`);

--
-- Constraints for table `tbl_appointment_services`
--
ALTER TABLE `tbl_appointment_services`
  ADD CONSTRAINT `FK_asr_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `tbl_appointment` (`appointment_id`);

--
-- Constraints for table `tbl_appointment_status_history`
--
ALTER TABLE `tbl_appointment_status_history`
  ADD CONSTRAINT `FK_ash_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `tbl_appointment` (`appointment_id`),
  ADD CONSTRAINT `FK_ash_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_article`
--
ALTER TABLE `tbl_article`
  ADD CONSTRAINT `FK_art_category_id` FOREIGN KEY (`category_id`) REFERENCES `tbl_article_category` (`category_id`),
  ADD CONSTRAINT `FK_art_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_art_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_article_category`
--
ALTER TABLE `tbl_article_category`
  ADD CONSTRAINT `FK_art_cat_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_art_cat_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_clinic_amenities`
--
ALTER TABLE `tbl_clinic_amenities`
  ADD CONSTRAINT `FK_clm_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_clm_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_cms_content`
--
ALTER TABLE `tbl_cms_content`
  ADD CONSTRAINT `FK_cmcc_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_cmcc_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_cms_menus`
--
ALTER TABLE `tbl_cms_menus`
  ADD CONSTRAINT `FK_cmcm_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_cmcm_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD CONSTRAINT `FK_c_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_c_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_d_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_diseases`
--
ALTER TABLE `tbl_diseases`
  ADD CONSTRAINT `FK_d_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  ADD CONSTRAINT `FK_et_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_et_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD CONSTRAINT `FK_enq_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_enquiry_reply`
--
ALTER TABLE `tbl_enquiry_reply`
  ADD CONSTRAINT `FK_enq_r_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_insurance_providers`
--
ALTER TABLE `tbl_insurance_providers`
  ADD CONSTRAINT `FK_ip_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_ip_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  ADD CONSTRAINT `FK_lang_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_lang_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_language_contents`
--
ALTER TABLE `tbl_language_contents`
  ADD CONSTRAINT `FK_lc_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_lc_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `FK_ord_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_order_address`
--
ALTER TABLE `tbl_order_address`
  ADD CONSTRAINT `FK_oa_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`);

--
-- Constraints for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  ADD CONSTRAINT `FK_oia_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`);

--
-- Constraints for table `tbl_order_payment_history`
--
ALTER TABLE `tbl_order_payment_history`
  ADD CONSTRAINT `FK_oph_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`);

--
-- Constraints for table `tbl_order_status_history`
--
ALTER TABLE `tbl_order_status_history`
  ADD CONSTRAINT `FK_osh_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`);

--
-- Constraints for table `tbl_order_total`
--
ALTER TABLE `tbl_order_total`
  ADD CONSTRAINT `FK_ot_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`);

--
-- Constraints for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD CONSTRAINT `FK_set_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_set_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_specialization`
--
ALTER TABLE `tbl_specialization`
  ADD CONSTRAINT `FK_spz_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_spz_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_universities`
--
ALTER TABLE `tbl_universities`
  ADD CONSTRAINT `FK_uni_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_uni_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `FK_group_id` FOREIGN KEY (`group_id`) REFERENCES `tbl_user_group` (`group_id`),
  ADD CONSTRAINT `FK_us_created_by` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_us_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  ADD CONSTRAINT `FK_ua_group_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_assigned`
--
ALTER TABLE `tbl_user_assigned`
  ADD CONSTRAINT `FK_uas_ab_user_id` FOREIGN KEY (`assign_by`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_uas_at_user_id` FOREIGN KEY (`assigned_to`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `FK_uas_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_awards`
--
ALTER TABLE `tbl_user_awards`
  ADD CONSTRAINT `FK_uaw_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_banks`
--
ALTER TABLE `tbl_user_banks`
  ADD CONSTRAINT `FK_ub_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_cards`
--
ALTER TABLE `tbl_user_cards`
  ADD CONSTRAINT `FK_uc_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_clinics`
--
ALTER TABLE `tbl_user_clinics`
  ADD CONSTRAINT `FK_ucl_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_clinics_attachments`
--
ALTER TABLE `tbl_user_clinics_attachments`
  ADD CONSTRAINT `FK_uca_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `tbl_user_clinics` (`clinic_id`);

--
-- Constraints for table `tbl_user_clinics_relation`
--
ALTER TABLE `tbl_user_clinics_relation`
  ADD CONSTRAINT `FK_ucr_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `tbl_user_clinics` (`clinic_id`),
  ADD CONSTRAINT `FK_ucr_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_devices`
--
ALTER TABLE `tbl_user_devices`
  ADD CONSTRAINT `FK_ud_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_documents`
--
ALTER TABLE `tbl_user_documents`
  ADD CONSTRAINT `FK_udoc_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_education`
--
ALTER TABLE `tbl_user_education`
  ADD CONSTRAINT `FK_ue_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_experience`
--
ALTER TABLE `tbl_user_experience`
  ADD CONSTRAINT `FK_uexp_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_insurance`
--
ALTER TABLE `tbl_user_insurance`
  ADD CONSTRAINT `FK_ui_provider_id` FOREIGN KEY (`provider_id`) REFERENCES `tbl_insurance_providers` (`provider_id`),
  ADD CONSTRAINT `FK_uins_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_patient`
--
ALTER TABLE `tbl_user_patient`
  ADD CONSTRAINT `FK_upat_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_services`
--
ALTER TABLE `tbl_user_services`
  ADD CONSTRAINT `FK_usv_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `tbl_user_clinics` (`clinic_id`),
  ADD CONSTRAINT `FK_usv_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_settings`
--
ALTER TABLE `tbl_user_settings`
  ADD CONSTRAINT `FK_ust_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_specialization`
--
ALTER TABLE `tbl_user_specialization`
  ADD CONSTRAINT `FK_us_specialization_id` FOREIGN KEY (`specialization_id`) REFERENCES `tbl_specialization` (`specialization_id`),
  ADD CONSTRAINT `FK_us_sub_specialization_id` FOREIGN KEY (`sub_specialization_id`) REFERENCES `tbl_specialization` (`specialization_id`),
  ADD CONSTRAINT `FK_usp_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_wallet`
--
ALTER TABLE `tbl_user_wallet`
  ADD CONSTRAINT `FK_uwal_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`),
  ADD CONSTRAINT `FK_uwal_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_user_work_schedule`
--
ALTER TABLE `tbl_user_work_schedule`
  ADD CONSTRAINT `FK_usch_clinic_id` FOREIGN KEY (`clinic_id`) REFERENCES `tbl_user_clinics` (`clinic_id`),
  ADD CONSTRAINT `FK_usch_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
