
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `code` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `sellingPrice` double NOT NULL,
  `quantity` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE `ingredients`(
  `name` varchar(256) NOT NULL,
  `amount` int NOT NULL,
  `description` varchar(256) NOT NULL,
  `code` varchar(256) NOT NULL,
   FOREIGN KEY (`code`)
        REFERENCES stock(code)
	ON DELETE CASCADE,
  FOREIGN KEY (`description`)
        REFERENCES stock(description)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('30c347589471378e2ac72c349d3ce51e101141b7', '127.0.0.1', 1479688006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393638373730363b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d),
('ffab0e63f84d77a9d6d26861016a818ac87b73f9', '127.0.0.1', 1479688228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393638383031353b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a323a7b693a313b693a313b693a36393b693a313b7d7d75736572726f6c657c733a343a2275736572223b),
('069a468e2cc6f5bbca841588fa6da630aaa04aa8', '127.0.0.1', 1479688621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393638383334333b75736572726f6c657c733a353a2261646d696e223b),
('c4ea9125e5d1d25d626e08b54696af086b50097b', '127.0.0.1', 1479689012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393638383832363b75736572726f6c657c733a353a2261646d696e223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a313a7b693a32313b693a313b7d7d),
('14b490e22a5664683f25e9f0d260636ad3b6730b', '127.0.0.1', 1479689455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393638393432383b75736572726f6c657c733a353a2261646d696e223b),
('4051c403fbcea3638b1c89a2303c9e35a4f9968a', '127.0.0.1', 1479689943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393638393738363b75736572726f6c657c733a353a2261646d696e223b),
('7167404d5f2cc789be580075ee8a6e71a6804434', '127.0.0.1', 1479690337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393639303130333b75736572726f6c657c733a353a2261646d696e223b),
('f38fb2ddd9accdcf689b79721c6f37b816617e60', '127.0.0.1', 1479690612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393639303438323b75736572726f6c657c733a353a2261646d696e223b),
('aea27e198572f6f87e6f6f65bc97704be7d1b22f', '127.0.0.1', 1479690944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393639303834323b75736572726f6c657c733a353a2261646d696e223b);

INSERT INTO `stock` (`code`, `description`,`sellingPrice`,`quantity`) VALUES
('haircut','a simple haircut','24.99','3'),
('perm','a hairstyle produced by setting the hair in waves or curls and then treating it with chemicals so that the style lasts for several months','28.99','1'),
('style','the styling of hair, usually on the human scalp','19.99','8'),
('wax','sculpting the hair','14.99','1'),
('clean','removes excess sweat and oil, as well as unwanted products from the hair and scalp','21.99','12'),
('buzzcut','a haircut in which all the hair is cut very close to the scalp','15.99','9');

INSERT INTO `ingredients` (`name`, `amount`,`description`,`code`) VALUES
('scissors','1','a simple haircut','haircut'),
('gowns','1','a simple haircut','haircut'),
('gel','2','a simple haircut','haircut'),
('comb','2','a hairstyle produced by setting the hair in waves or curls and then treating it with chemicals so that the style lasts for several months','perm'),
('gowns','1','a hairstyle produced by setting the hair in waves or curls and then treating it with chemicals so that the style lasts for several months','perm'),
('mousse','3','a hairstyle produced by setting the hair in waves or curls and then treating it with chemicals so that the style lasts for several months','perm'),
('hair dryer','1','a hairstyle produced by setting the hair in waves or curls and then treating it with chemicals so that the style lasts for several months','perm'),
('hair spray','1','a hairstyle produced by setting the hair in waves or curls and then treating it with chemicals so that the style lasts for several months','perm'),
('shampoo','1','the styling of hair, usually on the human scalp','style'),
('conditioner','1','the styling of hair, usually on the human scalp','style'),
('hair dryer','1','the styling of hair, usually on the human scalp','style'),
('hairspray','1','the styling of hair, usually on the human scalp','style'),
('comb','1','the styling of hair, usually on the human scalp','style'),
('wax','5','sculpting the hair','wax'),
('towel','1','sculpting the hair','wax'),
('gowns','1','sculpting the hair','wax'),
('shampoo','2','removes excess sweat and oil, as well as unwanted products from the hair and scalp','clean'),
('conditioner','1','removes excess sweat and oil, as well as unwanted products from the hair and scalp','clean'),
('hair dryer','1','removes excess sweat and oil, as well as unwanted products from the hair and scalp','clean'),
('buzzer','1','a haircut in which all the hair is cut very close to the scalp','buzzcut'),
('gowns','1','a haircut in which all the hair is cut very close to the scalp','buzzcut'); 


