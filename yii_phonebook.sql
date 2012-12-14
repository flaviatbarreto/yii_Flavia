-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 14/12/2012 às 02h08min
-- Versão do Servidor: 5.5.20
-- Versão do PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `yii_phonebook`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `grp_group`
--

CREATE TABLE IF NOT EXISTS `grp_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `grp_group`
--

INSERT INTO `grp_group` (`id`, `grp_name`) VALUES
(1, 'Familia'),
(2, 'UFBA'),
(3, 'Trabalho');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_phonebook`
--

CREATE TABLE IF NOT EXISTS `tbl_phonebook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `tbl_phonebook`
--

INSERT INTO `tbl_phonebook` (`id`, `name`, `phone`, `group_id`) VALUES
(3, 'Flávia Barreto', '(71)9256-6056', 0),
(4, 'Isabela Pinto', '(71) 9922-9292', 0),
(5, 'Paulo', '(71)9150-0137', 0),
(6, 'isadora', '(79)9927-1929', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usergroups_access`
--

CREATE TABLE IF NOT EXISTS `usergroups_access` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `element` int(3) NOT NULL,
  `element_id` bigint(20) NOT NULL,
  `module` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `usergroups_access`
--

INSERT INTO `usergroups_access` (`id`, `element`, `element_id`, `module`, `controller`, `permission`) VALUES
(1, 2, 3, 'Basic', 'phonebook', 'write'),
(2, 2, 3, 'Basic', 'phonebook', 'admin'),
(3, 2, 3, 'Basic', 'site', 'write'),
(4, 2, 3, 'userGroups', 'admin', 'read'),
(5, 2, 4, 'Basic', 'phonebook', 'write'),
(6, 2, 4, 'Basic', 'phonebook', 'admin'),
(7, 2, 4, 'Basic', 'site', 'write'),
(8, 2, 4, 'userGroups', 'admin', 'read'),
(9, 2, 4, 'userGroups', 'admin', 'write'),
(10, 2, 4, 'userGroups', 'admin', 'admin'),
(11, 2, 4, 'userGroups', 'user', 'write'),
(12, 2, 4, 'userGroups', 'user', 'admin'),
(13, 2, 2, 'Basic', 'site', 'write');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usergroups_configuration`
--

CREATE TABLE IF NOT EXISTS `usergroups_configuration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rule` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `usergroups_configuration`
--

INSERT INTO `usergroups_configuration` (`id`, `rule`, `value`, `options`, `description`) VALUES
(1, 'version', '1.8', 'CONST', 'userGroups version'),
(2, 'password_strength', '0', 'a:3:{i:0;s:4:"weak";i:1;s:6:"medium";i:2;s:6:"strong";}', 'password strength:<br/>weak: password of at least 5 characters, any character allowed.<br/>\r\n			medium: password of at least 5 characters, must contain at least 2 digits and 2 letters.<br/>\r\n			strong: password of at least 5 characters, must contain at least 2 digits, 2 letters and a special character.'),
(3, 'registration', 'FALSE', 'BOOL', 'allow user registration'),
(4, 'public_user_list', 'FALSE', 'BOOL', 'logged users can see the complete user list'),
(5, 'public_profiles', 'FALSE', 'BOOL', 'allow everyone, even guests, to see user profiles'),
(6, 'profile_privacy', 'TRUE', 'BOOL', 'logged user can see other users profiles'),
(7, 'personal_home', 'FALSE', 'BOOL', 'users can set their own home'),
(8, 'simple_password_reset', 'FALSE', 'BOOL', 'if true users just have to provide user and email to reset their password.<br/>Otherwise they will have to answer their custom question'),
(9, 'user_need_activation', 'TRUE', 'BOOL', 'if true when a user creates an account a mail with an activation code will be sent to his email address'),
(10, 'user_need_approval', 'FALSE', 'BOOL', 'if true when a user creates an account a user with user admin rights will have to approve the registration.<br/>If both this setting and user_need_activation are true the user will need to activate is account first and then will need the approval'),
(11, 'user_registration_group', '2', 'GROUP_LIST', 'the group new users automatically belong to'),
(12, 'dumb_admin', 'TRUE', 'BOOL', 'users with just admin write permissions won''t see the Main Configuration and Cron Jobs panels'),
(13, 'super_admin', 'FALSE', 'BOOL', 'users with userGroups admin admin permission will have access to everything, just like root'),
(14, 'permission_cascade', 'TRUE', 'BOOL', 'if a user has on a controller admin permissions will have access to write and read pages. If he has write permissions will also have access to read pages'),
(15, 'server_executed_crons', 'FALSE', 'BOOL', 'if true crons must be executed from the server using a crontab');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usergroups_cron`
--

CREATE TABLE IF NOT EXISTS `usergroups_cron` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lapse` int(6) DEFAULT NULL,
  `last_occurrence` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `usergroups_cron`
--

INSERT INTO `usergroups_cron` (`id`, `name`, `lapse`, `last_occurrence`) VALUES
(1, 'garbage_collection', 7, '2012-12-12 00:00:00'),
(2, 'unban', 1, '2012-12-14 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usergroups_group`
--

CREATE TABLE IF NOT EXISTS `usergroups_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(6) DEFAULT NULL,
  `home` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groupname` (`groupname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `usergroups_group`
--

INSERT INTO `usergroups_group` (`id`, `groupname`, `level`, `home`) VALUES
(1, 'root', 100, NULL),
(2, 'user', 1, '/phonebook'),
(3, 'admin', 90, '/phonebook'),
(4, 'sudo', 99, '/phonebook');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usergroups_lookup`
--

CREATE TABLE IF NOT EXISTS `usergroups_lookup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `element` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(5) DEFAULT NULL,
  `text` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `usergroups_lookup`
--

INSERT INTO `usergroups_lookup` (`id`, `element`, `value`, `text`) VALUES
(1, 'status', 0, 'banned'),
(2, 'status', 1, 'waiting activation'),
(3, 'status', 2, 'waiting approval'),
(4, 'status', 3, 'password change request'),
(5, 'status', 4, 'active');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usergroups_user`
--

CREATE TABLE IF NOT EXISTS `usergroups_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) DEFAULT NULL,
  `username` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `home` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `question` text COLLATE utf8_unicode_ci,
  `answer` text COLLATE utf8_unicode_ci,
  `creation_date` datetime DEFAULT NULL,
  `activation_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_time` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `ban` datetime DEFAULT NULL,
  `ban_reason` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `group_id_idxfk` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `usergroups_user`
--

INSERT INTO `usergroups_user` (`id`, `group_id`, `username`, `password`, `email`, `home`, `status`, `question`, `answer`, `creation_date`, `activation_code`, `activation_time`, `last_login`, `ban`, `ban_reason`) VALUES
(1, 1, 'admin', 'e97ff7b284c2f97d84cac975aabbe68a', 'flaviatbarreto@gmail.com', '/userGroups/admin/documentation', 4, 'admin 99', '12', '2012-12-12 20:10:14', NULL, NULL, '2012-12-14 01:44:22', NULL, NULL),
(2, 4, 'flavia', '0ad9fbef14882e6e7cd98b19e458e343', 'flaviabarreto@vivainovacao.com', NULL, 4, NULL, NULL, '2012-12-14 01:25:42', NULL, NULL, '2012-12-14 01:37:12', NULL, NULL),
(3, 3, 'albert', 'da2f9efb2f7febe0c4bf85e354c52400', 'albertmoreira@vivainovacao.com', NULL, 4, NULL, NULL, '2012-12-14 01:26:26', NULL, NULL, '2012-12-14 01:36:51', NULL, NULL),
(4, 2, 'isadora', 'c4b94c2404beff3b97cf3a975bab7dd8', 'isadorabarreto@gmail.com', NULL, 4, NULL, NULL, '2012-12-14 01:26:50', NULL, NULL, '2012-12-14 01:36:38', NULL, NULL);

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `usergroups_user`
--
ALTER TABLE `usergroups_user`
  ADD CONSTRAINT `usergroups_user_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `usergroups_group` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
