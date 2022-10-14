-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Oct 14, 2022 at 11:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wdpf51_wp_project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-09-27 11:26:23', '2022-09-27 11:26:23', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_duplicator_packages`
--

INSERT INTO `wp_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20220927_worpresstestsite', 'b23f97def622c4e36085_20220927123340', 100, '2022-09-27 12:34:39', 'admin', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-09-27 12:33:40\";s:7:\"Version\";s:5:\"1.5.0\";s:9:\"VersionWP\";s:5:\"6.0.2\";s:9:\"VersionDB\";s:7:\"10.4.22\";s:10:\"VersionPHP\";s:6:\"7.4.27\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:25:\"20220927_worpresstestsite\";s:4:\"Hash\";s:35:\"b23f97def622c4e36085_20220927123340\";s:8:\"NameHash\";s:61:\"20220927_worpresstestsite_b23f97def622c4e36085_20220927123340\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:71:\"20220927_worpresstestsite_b23f97def622c4e36085_20220927123340_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:10:\"40.93 sec.\";s:7:\"ExeSize\";s:7:\"73.36KB\";s:7:\"ZipSize\";s:7:\"33.82MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:5:\"admin\";s:7:\"Archive\";O:11:\"DUP_Archive\":26:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:73:\"20220927_worpresstestsite_b23f97def622c4e36085_20220927123340_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:40:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2\";s:4:\"Size\";i:35459280;s:4:\"Dirs\";a:0:{}s:9:\"dirsCount\";i:825;s:5:\"Files\";a:0:{}s:10:\"filesCount\";i:4458;s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:5282;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:3:{i:0;s:49:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-admin\";i:1;s:52:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-includes\";i:2;s:61:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/languages\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:7:{i:0;s:40:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2\";i:1;s:40:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2\";i:2;s:51:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content\";i:3;s:59:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/uploads\";i:4;s:59:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/plugins\";i:5;s:62:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/mu-plugins\";i:6;s:58:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/themes\";}s:31:\"\0DUP_Archive\0relativeFiltersDir\";a:2:{i:0;s:72:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/backups-dup-lite/tmp\";i:1;s:15:\"backups-dup-pro\";}s:24:\"\0DUP_Archive\0listFileObj\";N;s:23:\"\0DUP_Archive\0listDirObj\";N;}s:9:\"Installer\";O:13:\"DUP_Installer\":15:{s:4:\"File\";s:79:\"20220927_worpresstestsite_b23f97def622c4e36085_20220927123340_installer.php.bak\";s:4:\"Size\";i:75123;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;s:17:\"\0*\0origFileManger\";O:40:\"Duplicator\\Libs\\Snap\\SnapOrigFileManager\":4:{s:18:\"\0*\0persistanceFile\";s:124:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/backups-dup-lite/tmp/original_files_b23f97d-27123340/entries_stored.json\";s:18:\"\0*\0origFilesFolder\";s:104:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/backups-dup-lite/tmp/original_files_b23f97d-27123340\";s:20:\"\0*\0origFolderEntries\";a:0:{}s:11:\"\0*\0rootPath\";s:40:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2\";}s:32:\"\0DUP_Installer\0configTransformer\";O:44:\"Duplicator\\Libs\\WpConfig\\WPConfigTransformer\":3:{s:17:\"\0*\0wp_config_path\";s:54:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-config.php\";s:16:\"\0*\0wp_config_src\";s:3187:\"<?php\n/**\n * The base configuration for WordPress\n *\n * The wp-config.php creation script uses this file during the installation.\n * You don\'t have to use the web site, you can copy this file to \"wp-config.php\"\n * and fill in the values.\n *\n * This file contains the following configurations:\n *\n * * Database settings\n * * Secret keys\n * * Database table prefix\n * * ABSPATH\n *\n * @link https://wordpress.org/support/article/editing-wp-config-php/\n *\n * @package WordPress\n */\n\n// ** Database settings - You can get this info from your web host ** //\n/** The name of the database for WordPress */\ndefine( \'DB_NAME\', \'wdpf51_wp_project2\' );\n\n/** Database username */\ndefine( \'DB_USER\', \'root\' );\n\n/** Database password */\ndefine( \'DB_PASSWORD\', \'\' );\n\n/** Database hostname */\ndefine( \'DB_HOST\', \'localhost:3310\' );\n\n/** Database charset to use in creating database tables. */\ndefine( \'DB_CHARSET\', \'utf8mb4\' );\n\n/** The database collate type. Don\'t change this if in doubt. */\ndefine( \'DB_COLLATE\', \'\' );\n\n/**#@+\n * Authentication unique keys and salts.\n *\n * Change these to different unique phrases! You can generate these using\n * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.\n *\n * You can change these at any point in time to invalidate all existing cookies.\n * This will force all users to have to log in again.\n *\n * @since 2.6.0\n */\ndefine( \'AUTH_KEY\',         \'bNqD?q|8Bx9JNX36+X;a@CW5/)mC|dM6|NhfRJ,M+Z^b$ZZ;l>)+3k`Y!_E-q.MY\' );\ndefine( \'SECURE_AUTH_KEY\',  \'P4#&rLjUO)ZAnsHbglfDY+O(,MMauo&lp+h7.SmN-M4k~c9Y<L :R39s}QFa=5bX\' );\ndefine( \'LOGGED_IN_KEY\',    \'rak!:N3r-.yPC6#9%tKtvz(=NwX(3Xgcx3kt$6(LSk(& ;pLN/ba*Cd vkq>h7A#\' );\ndefine( \'NONCE_KEY\',        \'vs%oT/u@9(9BOHg$&tuk%<8ju$3b7__k{g=nyqGO_&HFIR[;/XZuZ+52-L[qI0;Y\' );\ndefine( \'AUTH_SALT\',        \'fI@MTpm$s3&19z7Re w2XDec=F}gQ<iWXvrE1vw)@lscTJbyed<4A&!(#6G&k_f^\' );\ndefine( \'SECURE_AUTH_SALT\', \'-_XgrTzxbI=>hW7S8npyhtz<p<cz[~Ig|y8o=:({E6?]bwdLR}w1]&i 2~F&_1[6\' );\ndefine( \'LOGGED_IN_SALT\',   \'[SU>Fios1%~d1us7o_j,DQII+.+rMyiB`0x=>YTt)OX*2]8+oV5IZ!_]Hy7t16:>\' );\ndefine( \'NONCE_SALT\',       \'j#i`QaazE|rD41ZqyK4+ghkaNN%)y9i%zF,VE{d1$:`?loTz2@91;@Z}:78ujb<{\' );\n\n/**#@-*/\n\n/**\n * WordPress database table prefix.\n *\n * You can have multiple installations in one database if you give each\n * a unique prefix. Only numbers, letters, and underscores please!\n */\n$table_prefix = \'wp_\';\n\n/**\n * For developers: WordPress debugging mode.\n *\n * Change this to true to enable the display of notices during development.\n * It is strongly recommended that plugin and theme developers use WP_DEBUG\n * in their development environments.\n *\n * For information on other constants that can be used for debugging,\n * visit the documentation.\n *\n * @link https://wordpress.org/support/article/debugging-in-wordpress/\n */\ndefine( \'WP_DEBUG\', false );\n\n/* Add any custom values between this line and the \"stop editing\" line. */\n\n\n\n/* That\'s all, stop editing! Happy publishing. */\n\n/** Absolute path to the WordPress directory. */\nif ( ! defined( \'ABSPATH\' ) ) {\n	define( \'ABSPATH\', __DIR__ . \'/\' );\n}\n\n/** Sets up WordPress vars and included files. */\nrequire_once ABSPATH . \'wp-settings.php\';\n\";s:13:\"\0*\0wp_configs\";a:2:{s:8:\"constant\";a:16:{s:7:\"DB_NAME\";a:3:{s:3:\"src\";s:42:\"define( \'DB_NAME\', \'wdpf51_wp_project2\' );\";s:5:\"value\";s:20:\"\'wdpf51_wp_project2\'\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_NAME\'\";i:1;s:23:\", \'wdpf51_wp_project2\' \";i:2;s:2:\");\";}}s:7:\"DB_USER\";a:3:{s:3:\"src\";s:28:\"define( \'DB_USER\', \'root\' );\";s:5:\"value\";s:6:\"\'root\'\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_USER\'\";i:1;s:9:\", \'root\' \";i:2;s:2:\");\";}}s:11:\"DB_PASSWORD\";a:3:{s:3:\"src\";s:28:\"define( \'DB_PASSWORD\', \'\' );\";s:5:\"value\";s:2:\"\'\'\";s:5:\"parts\";a:3:{i:0;s:21:\"define( \'DB_PASSWORD\'\";i:1;s:5:\", \'\' \";i:2;s:2:\");\";}}s:7:\"DB_HOST\";a:3:{s:3:\"src\";s:38:\"define( \'DB_HOST\', \'localhost:3310\' );\";s:5:\"value\";s:16:\"\'localhost:3310\'\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_HOST\'\";i:1;s:19:\", \'localhost:3310\' \";i:2;s:2:\");\";}}s:10:\"DB_CHARSET\";a:3:{s:3:\"src\";s:34:\"define( \'DB_CHARSET\', \'utf8mb4\' );\";s:5:\"value\";s:9:\"\'utf8mb4\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'DB_CHARSET\'\";i:1;s:12:\", \'utf8mb4\' \";i:2;s:2:\");\";}}s:10:\"DB_COLLATE\";a:3:{s:3:\"src\";s:27:\"define( \'DB_COLLATE\', \'\' );\";s:5:\"value\";s:2:\"\'\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'DB_COLLATE\'\";i:1;s:5:\", \'\' \";i:2;s:2:\");\";}}s:8:\"AUTH_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'AUTH_KEY\',         \'bNqD?q|8Bx9JNX36+X;a@CW5/)mC|dM6|NhfRJ,M+Z^b$ZZ;l>)+3k`Y!_E-q.MY\' );\";s:5:\"value\";s:66:\"\'bNqD?q|8Bx9JNX36+X;a@CW5/)mC|dM6|NhfRJ,M+Z^b$ZZ;l>)+3k`Y!_E-q.MY\'\";s:5:\"parts\";a:3:{i:0;s:18:\"define( \'AUTH_KEY\'\";i:1;s:77:\",         \'bNqD?q|8Bx9JNX36+X;a@CW5/)mC|dM6|NhfRJ,M+Z^b$ZZ;l>)+3k`Y!_E-q.MY\' \";i:2;s:2:\");\";}}s:15:\"SECURE_AUTH_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'SECURE_AUTH_KEY\',  \'P4#&rLjUO)ZAnsHbglfDY+O(,MMauo&lp+h7.SmN-M4k~c9Y<L :R39s}QFa=5bX\' );\";s:5:\"value\";s:66:\"\'P4#&rLjUO)ZAnsHbglfDY+O(,MMauo&lp+h7.SmN-M4k~c9Y<L :R39s}QFa=5bX\'\";s:5:\"parts\";a:3:{i:0;s:25:\"define( \'SECURE_AUTH_KEY\'\";i:1;s:70:\",  \'P4#&rLjUO)ZAnsHbglfDY+O(,MMauo&lp+h7.SmN-M4k~c9Y<L :R39s}QFa=5bX\' \";i:2;s:2:\");\";}}s:13:\"LOGGED_IN_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'LOGGED_IN_KEY\',    \'rak!:N3r-.yPC6#9%tKtvz(=NwX(3Xgcx3kt$6(LSk(& ;pLN/ba*Cd vkq>h7A#\' );\";s:5:\"value\";s:66:\"\'rak!:N3r-.yPC6#9%tKtvz(=NwX(3Xgcx3kt$6(LSk(& ;pLN/ba*Cd vkq>h7A#\'\";s:5:\"parts\";a:3:{i:0;s:23:\"define( \'LOGGED_IN_KEY\'\";i:1;s:72:\",    \'rak!:N3r-.yPC6#9%tKtvz(=NwX(3Xgcx3kt$6(LSk(& ;pLN/ba*Cd vkq>h7A#\' \";i:2;s:2:\");\";}}s:9:\"NONCE_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'NONCE_KEY\',        \'vs%oT/u@9(9BOHg$&tuk%<8ju$3b7__k{g=nyqGO_&HFIR[;/XZuZ+52-L[qI0;Y\' );\";s:5:\"value\";s:66:\"\'vs%oT/u@9(9BOHg$&tuk%<8ju$3b7__k{g=nyqGO_&HFIR[;/XZuZ+52-L[qI0;Y\'\";s:5:\"parts\";a:3:{i:0;s:19:\"define( \'NONCE_KEY\'\";i:1;s:76:\",        \'vs%oT/u@9(9BOHg$&tuk%<8ju$3b7__k{g=nyqGO_&HFIR[;/XZuZ+52-L[qI0;Y\' \";i:2;s:2:\");\";}}s:9:\"AUTH_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'AUTH_SALT\',        \'fI@MTpm$s3&19z7Re w2XDec=F}gQ<iWXvrE1vw)@lscTJbyed<4A&!(#6G&k_f^\' );\";s:5:\"value\";s:66:\"\'fI@MTpm$s3&19z7Re w2XDec=F}gQ<iWXvrE1vw)@lscTJbyed<4A&!(#6G&k_f^\'\";s:5:\"parts\";a:3:{i:0;s:19:\"define( \'AUTH_SALT\'\";i:1;s:76:\",        \'fI@MTpm$s3&19z7Re w2XDec=F}gQ<iWXvrE1vw)@lscTJbyed<4A&!(#6G&k_f^\' \";i:2;s:2:\");\";}}s:16:\"SECURE_AUTH_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'SECURE_AUTH_SALT\', \'-_XgrTzxbI=>hW7S8npyhtz<p<cz[~Ig|y8o=:({E6?]bwdLR}w1]&i 2~F&_1[6\' );\";s:5:\"value\";s:66:\"\'-_XgrTzxbI=>hW7S8npyhtz<p<cz[~Ig|y8o=:({E6?]bwdLR}w1]&i 2~F&_1[6\'\";s:5:\"parts\";a:3:{i:0;s:26:\"define( \'SECURE_AUTH_SALT\'\";i:1;s:69:\", \'-_XgrTzxbI=>hW7S8npyhtz<p<cz[~Ig|y8o=:({E6?]bwdLR}w1]&i 2~F&_1[6\' \";i:2;s:2:\");\";}}s:14:\"LOGGED_IN_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'LOGGED_IN_SALT\',   \'[SU>Fios1%~d1us7o_j,DQII+.+rMyiB`0x=>YTt)OX*2]8+oV5IZ!_]Hy7t16:>\' );\";s:5:\"value\";s:66:\"\'[SU>Fios1%~d1us7o_j,DQII+.+rMyiB`0x=>YTt)OX*2]8+oV5IZ!_]Hy7t16:>\'\";s:5:\"parts\";a:3:{i:0;s:24:\"define( \'LOGGED_IN_SALT\'\";i:1;s:71:\",   \'[SU>Fios1%~d1us7o_j,DQII+.+rMyiB`0x=>YTt)OX*2]8+oV5IZ!_]Hy7t16:>\' \";i:2;s:2:\");\";}}s:10:\"NONCE_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'NONCE_SALT\',       \'j#i`QaazE|rD41ZqyK4+ghkaNN%)y9i%zF,VE{d1$:`?loTz2@91;@Z}:78ujb<{\' );\";s:5:\"value\";s:66:\"\'j#i`QaazE|rD41ZqyK4+ghkaNN%)y9i%zF,VE{d1$:`?loTz2@91;@Z}:78ujb<{\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'NONCE_SALT\'\";i:1;s:75:\",       \'j#i`QaazE|rD41ZqyK4+ghkaNN%)y9i%zF,VE{d1$:`?loTz2@91;@Z}:78ujb<{\' \";i:2;s:2:\");\";}}s:8:\"WP_DEBUG\";a:3:{s:3:\"src\";s:28:\"define( \'WP_DEBUG\', false );\";s:5:\"value\";s:5:\"false\";s:5:\"parts\";a:3:{i:0;s:18:\"define( \'WP_DEBUG\'\";i:1;s:8:\", false \";i:2;s:2:\");\";}}s:7:\"ABSPATH\";a:3:{s:3:\"src\";s:36:\"	define( \'ABSPATH\', __DIR__ . \'/\' );\";s:5:\"value\";s:13:\"__DIR__ . \'/\'\";s:5:\"parts\";a:3:{i:0;s:18:\"	define( \'ABSPATH\'\";i:1;s:16:\", __DIR__ . \'/\' \";i:2;s:2:\");\";}}}s:8:\"variable\";a:1:{s:12:\"table_prefix\";a:3:{s:3:\"src\";s:22:\"$table_prefix = \'wp_\';\";s:5:\"value\";s:5:\"\'wp_\'\";s:5:\"parts\";a:2:{i:0;s:15:\"$table_prefix =\";i:1;s:7:\" \'wp_\';\";}}}}}}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:1870089;s:4:\"File\";s:74:\"20220927_worpresstestsite_b23f97def622c4e36085_20220927123340_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":23:{s:9:\"buildMode\";s:9:\"MYSQLDUMP\";s:11:\"charSetList\";a:1:{i:0;s:7:\"utf8mb4\";}s:13:\"collationList\";a:2:{i:0;s:18:\"utf8mb4_general_ci\";i:1;s:18:\"utf8mb4_unicode_ci\";}s:10:\"engineList\";a:1:{i:0;s:6:\"InnoDB\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:18:\"wdpf51_wp_project2\";s:15:\"tablesBaseCount\";i:13;s:16:\"tablesFinalCount\";i:13;s:20:\"muFilteredTableCount\";i:0;s:14:\"tablesRowCount\";i:282;s:16:\"tablesSizeOnDisk\";i:3260416;s:10:\"tablesList\";a:13:{s:14:\"wp_commentmeta\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:49152;}s:11:\"wp_comments\";a:3:{s:14:\"inaccurateRows\";i:1;s:12:\"insertedRows\";i:1;s:4:\"size\";i:98304;}s:22:\"wp_duplicator_packages\";a:3:{s:14:\"inaccurateRows\";i:1;s:12:\"insertedRows\";i:1;s:4:\"size\";i:32768;}s:8:\"wp_links\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:32768;}s:10:\"wp_options\";a:3:{s:14:\"inaccurateRows\";i:179;s:12:\"insertedRows\";i:182;s:4:\"size\";i:2572288;}s:11:\"wp_postmeta\";a:3:{s:14:\"inaccurateRows\";i:39;s:12:\"insertedRows\";i:39;s:4:\"size\";i:49152;}s:8:\"wp_posts\";a:3:{s:14:\"inaccurateRows\";i:21;s:12:\"insertedRows\";i:21;s:4:\"size\";i:131072;}s:11:\"wp_termmeta\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:49152;}s:8:\"wp_terms\";a:3:{s:14:\"inaccurateRows\";i:4;s:12:\"insertedRows\";i:4;s:4:\"size\";i:49152;}s:21:\"wp_term_relationships\";a:3:{s:14:\"inaccurateRows\";i:7;s:12:\"insertedRows\";i:7;s:4:\"size\";i:32768;}s:16:\"wp_term_taxonomy\";a:3:{s:14:\"inaccurateRows\";i:4;s:12:\"insertedRows\";i:4;s:4:\"size\";i:49152;}s:11:\"wp_usermeta\";a:3:{s:14:\"inaccurateRows\";i:25;s:12:\"insertedRows\";i:25;s:4:\"size\";i:49152;}s:8:\"wp_users\";a:3:{s:14:\"inaccurateRows\";i:1;s:12:\"insertedRows\";i:1;s:4:\"size\";i:65536;}}s:18:\"varLowerCaseTables\";s:1:\"1\";s:8:\"dbEngine\";s:7:\"MariaDB\";s:7:\"version\";s:7:\"10.4.22\";s:14:\"versionComment\";s:31:\"mariadb.org binary distribution\";s:9:\"viewCount\";i:0;s:9:\"procCount\";i:0;s:9:\"funcCount\";i:0;s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:147:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/backups-dup-lite/tmp/20220927_worpresstestsite_b23f97def622c4e36085_20220927123340_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-09-27 12:33:40\";s:7:\"Version\";s:5:\"1.5.0\";s:9:\"VersionWP\";s:5:\"6.0.2\";s:9:\"VersionDB\";s:7:\"10.4.22\";s:10:\"VersionPHP\";s:6:\"7.4.27\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:25:\"20220927_worpresstestsite\";s:4:\"Hash\";s:35:\"b23f97def622c4e36085_20220927123340\";s:8:\"NameHash\";s:61:\"20220927_worpresstestsite_b23f97def622c4e36085_20220927123340\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:84;s:8:\"Database\";r:227;s:13:\"BuildProgress\";r:322;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wdpf51_wp/wp_project2', 'yes'),
(2, 'home', 'http://localhost/wdpf51_wp/wp_project2', 'yes'),
(3, 'blogname', 'WorPress Test site', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'roobon@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:25:\"duplicator/duplicator.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tokeytheme', 'yes'),
(41, 'stylesheet', 'tokeytheme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1679829977', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1664371586;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1664407586;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1664407600;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1664450784;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1664450800;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1664450802;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1664969184;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1664279325;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(127, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1664364448;s:15:\"version_checked\";s:5:\"6.0.2\";s:12:\"translations\";a:0:{}}', 'no'),
(134, '_site_transient_timeout_browser_df16c081c25306654a0efb89b8761a08', '1664882801', 'no'),
(135, '_site_transient_browser_df16c081c25306654a0efb89b8761a08', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"105.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(136, '_site_transient_timeout_php_check_d564ef3bc004ad591bb7443752129422', '1664882802', 'no'),
(137, '_site_transient_php_check_d564ef3bc004ad591bb7443752129422', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(141, 'can_compress_scripts', '1', 'no'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(159, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(202, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1664370057;s:7:\"checked\";a:6:{s:5:\"astra\";s:5:\"3.9.2\";s:12:\"rabbanyTheme\";s:3:\"1.0\";s:10:\"tokeytheme\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:5:\"astra\";a:6:{s:5:\"theme\";s:5:\"astra\";s:11:\"new_version\";s:5:\"3.9.2\";s:3:\"url\";s:35:\"https://wordpress.org/themes/astra/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/astra.3.9.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.3\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(203, 'current_theme', 'Tokey Theme', 'yes'),
(204, 'theme_mods_astra', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1664365745;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"header-widget\";a:0:{}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-1\";a:0:{}s:24:\"advanced-footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-3\";a:0:{}s:24:\"advanced-footer-widget-4\";a:0:{}}}}', 'yes'),
(205, 'theme_switched', '', 'yes'),
(206, 'astra-settings', 'a:3:{s:18:\"theme-auto-version\";s:5:\"3.9.2\";s:22:\"is_theme_queue_running\";b:0;s:33:\"_astra_pb_compatibility_completed\";b:1;}', 'yes'),
(214, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(225, 'recently_activated', 'a:0:{}', 'yes'),
(230, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.6.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1664279931;s:7:\"version\";s:5:\"5.6.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(233, '_transient_is_multi_author', '0', 'yes'),
(240, '_site_transient_timeout_popular_importers_4f26834e60f5b96e3ab155a0080c63b8', '1664454311', 'no'),
(241, '_site_transient_popular_importers_4f26834e60f5b96e3ab155a0080c63b8', 'a:2:{s:9:\"importers\";a:7:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no'),
(246, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1664364452;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.6.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:5:\"1.5.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/duplicator.1.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2605836\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2605835\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:3:\"5.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.6.3\";s:25:\"duplicator/duplicator.php\";s:5:\"1.5.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(247, 'duplicator_settings', 'a:17:{s:7:\"version\";s:5:\"1.5.0\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;}', 'yes'),
(248, 'duplicator_version_plugin', '1.5.0', 'yes'),
(249, 'duplicator_ui_view_state', 'a:3:{s:22:\"dup-pack-storage-panel\";s:1:\"0\";s:22:\"dup-pack-archive-panel\";s:1:\"0\";s:24:\"dup-pack-installer-panel\";s:1:\"0\";}', 'yes'),
(250, 'duplicator_package_active', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-09-27 12:33:40\";s:7:\"Version\";s:5:\"1.5.0\";s:9:\"VersionWP\";s:5:\"6.0.2\";s:9:\"VersionDB\";s:7:\"10.4.22\";s:10:\"VersionPHP\";s:6:\"7.4.27\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:25:\"20220927_worpresstestsite\";s:4:\"Hash\";s:35:\"b23f97def622c4e36085_20220927123340\";s:8:\"NameHash\";s:61:\"20220927_worpresstestsite_b23f97def622c4e36085_20220927123340\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:71:\"20220927_worpresstestsite_b23f97def622c4e36085_20220927123340_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":26:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:40:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:9:\"dirsCount\";i:825;s:5:\"Files\";a:0:{}s:10:\"filesCount\";i:4458;s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-09-27 12:33:40\";s:7:\"Version\";s:5:\"1.5.0\";s:9:\"VersionWP\";s:5:\"6.0.2\";s:9:\"VersionDB\";s:7:\"10.4.22\";s:10:\"VersionPHP\";s:6:\"7.4.27\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:25:\"20220927_worpresstestsite\";s:4:\"Hash\";s:35:\"b23f97def622c4e36085_20220927123340\";s:8:\"NameHash\";s:61:\"20220927_worpresstestsite_b23f97def622c4e36085_20220927123340\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":15:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:65;s:17:\"\0*\0origFileManger\";N;s:32:\"\0DUP_Installer\0configTransformer\";O:44:\"Duplicator\\Libs\\WpConfig\\WPConfigTransformer\":3:{s:17:\"\0*\0wp_config_path\";s:54:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-config.php\";s:16:\"\0*\0wp_config_src\";N;s:13:\"\0*\0wp_configs\";a:0:{}}}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":23:{s:9:\"buildMode\";s:3:\"PHP\";s:11:\"charSetList\";a:0:{}s:13:\"collationList\";a:0:{}s:10:\"engineList\";a:0:{}s:17:\"isTablesUpperCase\";b:0;s:15:\"isNameUpperCase\";b:0;s:4:\"name\";s:0:\"\";s:15:\"tablesBaseCount\";i:0;s:16:\"tablesFinalCount\";i:0;s:20:\"muFilteredTableCount\";i:0;s:14:\"tablesRowCount\";i:0;s:16:\"tablesSizeOnDisk\";i:0;s:10:\"tablesList\";a:0:{}s:18:\"varLowerCaseTables\";i:1;s:8:\"dbEngine\";s:0:\"\";s:7:\"version\";i:0;s:14:\"versionComment\";i:0;s:9:\"viewCount\";i:0;s:9:\"procCount\";i:0;s:9:\"funcCount\";i:0;s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:65;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:65;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:3:{i:0;s:49:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-admin\";i:1;s:52:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-includes\";i:2;s:61:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/languages\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:7:{i:0;s:40:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2\";i:1;s:40:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2\";i:2;s:51:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content\";i:3;s:59:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/uploads\";i:4;s:59:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/plugins\";i:5;s:62:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/mu-plugins\";i:6;s:58:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/themes\";}s:31:\"\0DUP_Archive\0relativeFiltersDir\";a:2:{i:0;s:72:\"I:/xampp742/htdocs/wdpf51_wp/wp_project2/wp-content/backups-dup-lite/tmp\";i:1;s:15:\"backups-dup-pro\";}s:24:\"\0DUP_Archive\0listFileObj\";N;s:23:\"\0DUP_Archive\0listDirObj\";N;}s:9:\"Installer\";r:86;s:8:\"Database\";r:105;s:13:\"BuildProgress\";r:143;}', 'yes'),
(254, '_transient_timeout_astra-theme-cron-test-ok', '1664368046', 'no'),
(255, '_transient_astra-theme-cron-test-ok', '1', 'no'),
(256, '_transient_timeout_global_styles_astra', '1664364506', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(258, '_transient_global_styles_astra', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--ast-global-color-0: var(--ast-global-color-0);--wp--preset--color--ast-global-color-1: var(--ast-global-color-1);--wp--preset--color--ast-global-color-2: var(--ast-global-color-2);--wp--preset--color--ast-global-color-3: var(--ast-global-color-3);--wp--preset--color--ast-global-color-4: var(--ast-global-color-4);--wp--preset--color--ast-global-color-5: var(--ast-global-color-5);--wp--preset--color--ast-global-color-6: var(--ast-global-color-6);--wp--preset--color--ast-global-color-7: var(--ast-global-color-7);--wp--preset--color--ast-global-color-8: var(--ast-global-color-8);--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}body { margin: 0; }body{--wp--style--block-gap: 24px;}.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }.wp-site-blocks > * { margin-block-start: 0; margin-block-end: 0; }.wp-site-blocks > * + * { margin-block-start: var( --wp--style--block-gap ); }.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-ast-global-color-0-color{color: var(--wp--preset--color--ast-global-color-0) !important;}.has-ast-global-color-1-color{color: var(--wp--preset--color--ast-global-color-1) !important;}.has-ast-global-color-2-color{color: var(--wp--preset--color--ast-global-color-2) !important;}.has-ast-global-color-3-color{color: var(--wp--preset--color--ast-global-color-3) !important;}.has-ast-global-color-4-color{color: var(--wp--preset--color--ast-global-color-4) !important;}.has-ast-global-color-5-color{color: var(--wp--preset--color--ast-global-color-5) !important;}.has-ast-global-color-6-color{color: var(--wp--preset--color--ast-global-color-6) !important;}.has-ast-global-color-7-color{color: var(--wp--preset--color--ast-global-color-7) !important;}.has-ast-global-color-8-color{color: var(--wp--preset--color--ast-global-color-8) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-ast-global-color-0-background-color{background-color: var(--wp--preset--color--ast-global-color-0) !important;}.has-ast-global-color-1-background-color{background-color: var(--wp--preset--color--ast-global-color-1) !important;}.has-ast-global-color-2-background-color{background-color: var(--wp--preset--color--ast-global-color-2) !important;}.has-ast-global-color-3-background-color{background-color: var(--wp--preset--color--ast-global-color-3) !important;}.has-ast-global-color-4-background-color{background-color: var(--wp--preset--color--ast-global-color-4) !important;}.has-ast-global-color-5-background-color{background-color: var(--wp--preset--color--ast-global-color-5) !important;}.has-ast-global-color-6-background-color{background-color: var(--wp--preset--color--ast-global-color-6) !important;}.has-ast-global-color-7-background-color{background-color: var(--wp--preset--color--ast-global-color-7) !important;}.has-ast-global-color-8-background-color{background-color: var(--wp--preset--color--ast-global-color-8) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-ast-global-color-0-border-color{border-color: var(--wp--preset--color--ast-global-color-0) !important;}.has-ast-global-color-1-border-color{border-color: var(--wp--preset--color--ast-global-color-1) !important;}.has-ast-global-color-2-border-color{border-color: var(--wp--preset--color--ast-global-color-2) !important;}.has-ast-global-color-3-border-color{border-color: var(--wp--preset--color--ast-global-color-3) !important;}.has-ast-global-color-4-border-color{border-color: var(--wp--preset--color--ast-global-color-4) !important;}.has-ast-global-color-5-border-color{border-color: var(--wp--preset--color--ast-global-color-5) !important;}.has-ast-global-color-6-border-color{border-color: var(--wp--preset--color--ast-global-color-6) !important;}.has-ast-global-color-7-border-color{border-color: var(--wp--preset--color--ast-global-color-7) !important;}.has-ast-global-color-8-border-color{border-color: var(--wp--preset--color--ast-global-color-8) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(261, '_transient_timeout_global_styles_svg_filters_astra', '1664364506', 'no'),
(262, '_transient_global_styles_svg_filters_astra', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(266, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":0}', 'yes'),
(268, 'theme_mods_rabbanyTheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1664370063;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(270, '_site_transient_timeout_theme_roots', '1664371856', 'no'),
(271, '_site_transient_theme_roots', 'a:6:{s:5:\"astra\";s:7:\"/themes\";s:12:\"rabbanyTheme\";s:7:\"/themes\";s:10:\"tokeytheme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(273, 'theme_mods_tokeytheme', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(274, '_transient_doing_cron', '1664443157.4125490188598632812500', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1664279081:1'),
(5, 8, '_wp_attached_file', '2022/09/161923_bangladesh_pratidin_bd-pratdin-15.jpg'),
(6, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:966;s:6:\"height\";i:648;s:4:\"file\";s:52:\"2022/09/161923_bangladesh_pratidin_bd-pratdin-15.jpg\";s:8:\"filesize\";i:111921;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"161923_bangladesh_pratidin_bd-pratdin-15-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18454;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"161923_bangladesh_pratidin_bd-pratdin-15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9592;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"161923_bangladesh_pratidin_bd-pratdin-15-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73499;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 5, '_wp_old_slug', '%e0%a6%ac%e0%a6%bf%e0%a6%b6%e0%a7%8d%e0%a6%ac%e0%a7%87%e0%a6%b0-%e0%a6%a6%e0%a7%8d%e0%a6%ac%e0%a6%bf%e0%a6%a4%e0%a7%80%e0%a7%9f-%e0%a6%a6%e0%a6%be%e0%a6%ae%e0%a6%bf-%e0%a6%a6%e0%a6%b2-%e0%a6%ac'),
(11, 5, '_thumbnail_id', '8'),
(13, 13, '_menu_item_type', 'custom'),
(14, 13, '_menu_item_menu_item_parent', '0'),
(15, 13, '_menu_item_object_id', '13'),
(16, 13, '_menu_item_object', 'custom'),
(17, 13, '_menu_item_target', ''),
(18, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 13, '_menu_item_xfn', ''),
(20, 13, '_menu_item_url', 'http://localhost/wdpf51_wp/wp_project2/'),
(22, 14, '_edit_lock', '1664279474:1'),
(23, 17, '_edit_lock', '1664280262:1'),
(24, 19, '_menu_item_type', 'post_type'),
(25, 19, '_menu_item_menu_item_parent', '0'),
(26, 19, '_menu_item_object_id', '14'),
(27, 19, '_menu_item_object', 'page'),
(28, 19, '_menu_item_target', ''),
(29, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 19, '_menu_item_xfn', ''),
(31, 19, '_menu_item_url', ''),
(33, 20, '_menu_item_type', 'post_type'),
(34, 20, '_menu_item_menu_item_parent', '0'),
(35, 20, '_menu_item_object_id', '17'),
(36, 20, '_menu_item_object', 'page'),
(37, 20, '_menu_item_target', ''),
(38, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 20, '_menu_item_xfn', ''),
(40, 20, '_menu_item_url', ''),
(42, 21, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(43, 21, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:32:\"[_site_title] <roobon@gmail.com>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(44, 21, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:32:\"[_site_title] <roobon@gmail.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(45, 21, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(46, 21, '_additional_settings', ''),
(47, 21, '_locale', 'en_US');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-09-27 11:26:23', '2022-09-27 11:26:23', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-09-27 11:26:23', '2022-09-27 11:26:23', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?p=1', 0, 'post', '', 1),
(2, 1, '2022-09-27 11:26:23', '2022-09-27 11:26:23', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wdpf51_wp/wp_project2/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-09-27 11:26:23', '2022-09-27 11:26:23', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-09-27 11:26:23', '2022-09-27 11:26:23', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wdpf51_wp/wp_project2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-09-27 11:26:23', '2022-09-27 11:26:23', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-09-27 11:26:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-09-27 11:26:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?p=4', 0, 'post', '', 0),
(5, 1, '2022-09-27 11:29:43', '2022-09-27 11:29:43', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wdpf51_wp/wp_project2/wp-content/uploads/2022/09/161923_bangladesh_pratidin_bd-pratdin-15.jpg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>কাতার বিশ্বকাপের আগে&nbsp;নিজেদের মাঠে ঝালিয়ে নিতে ব্যস্ত বিশ্বের নামি-দামি ফুটবল দলগুলো। সেই ফুটবল মহারণের আগে দেখে নেওয়া যাক জনপ্রিয় ফুটবল বিষয়ক ওয়েবসাইট ট্রান্সফার মার্কেটের তালিকায় কোন দলের দাম কতো?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>দেশগুলোর খেলোয়াড়দের বিভিন্ন ক্লাবের মূল্যসহ আর্থিক নানা দিক বিবেচনায় দলগুলোর বাজার মূল্য নির্ধারণ করেছে ট্রান্সফার মার্কেট। দামি দলের তালিকায় সবার ওপরে আছে ইংল্যান্ডের নাম। দলটির আর্থিক মূল্য ১.৩ বিলিয়ন ইউরো।দ্বিতীয় অবস্থানে আছে লাতিন আমেরিকার দেশ ব্রাজিল। দলটি অর্থমূল্য ১.০৫ বিলিয়ন ডলার। এরপরেই আছে ক্রিশ্চিয়ানো রোনালদোর পর্তুগাল। দলটির বাজার মূল্য ৯৩৮ মিলিয়ন ডলার।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>নুতন একটা লাইন সংযুক্ত করলাম</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>এর পরে আছে জার্মানি, ফ্রান্স ও স্পেনের মতো হেভিওয়েট দলগুলো। আর দামি ফুটবল দলের তালিকার সাত নম্বরে থাকা আর্জেন্টিনার ৬৭১ মিলিয়ন ইউরো।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>দামি দেশের তালিকার আটে আছে ইতালি, নয় নম্বরে বেলজিয়াম ও দশে নেদারল্যান্ডস।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; সূত্র:&nbsp;<a href=\"https://www.transfermarkt.com/vereins-statistik/wertvollstenationalmannschaften/marktwertetop\">ট্রান্সফার মার্কেট</a></p>\n<!-- /wp:paragraph -->', 'বিশ্বের দ্বিতীয় দামি দল ব্রাজিল, আর্জেন্টিনা ৭', '', 'publish', 'open', 'open', '', '%e0%a6%ac%e0%a6%b6%e0%a6%ac%e0%a6%b0-%e0%a6%a6%e0%a6%ac%e0%a6%a4%e0%a7%9f-%e0%a6%a6%e0%a6%ae-%e0%a6%a6%e0%a6%b2', '', '', '2022-09-27 11:41:54', '2022-09-27 11:41:54', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?p=5', 0, 'post', '', 0),
(6, 1, '2022-09-27 11:27:55', '2022-09-27 11:27:55', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-09-27 11:27:55', '2022-09-27 11:27:55', '', 0, 'http://localhost/wdpf51_wp/wp_project2/2022/09/27/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(7, 1, '2022-09-27 11:29:43', '2022-09-27 11:29:43', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>কাতার বিশ্বকাপের আগে&nbsp;নিজেদের মাঠে ঝালিয়ে নিতে ব্যস্ত বিশ্বের নামি-দামি ফুটবল দলগুলো। সেই ফুটবল মহারণের আগে দেখে নেওয়া যাক জনপ্রিয় ফুটবল বিষয়ক ওয়েবসাইট ট্রান্সফার মার্কেটের তালিকায় কোন দলের দাম কতো?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>দেশগুলোর খেলোয়াড়দের বিভিন্ন ক্লাবের মূল্যসহ আর্থিক নানা দিক বিবেচনায়&nbsp;দলগুলোর বাজার মূল্য নির্ধারণ করেছে ট্রান্সফার মার্কেট। দামি দলের&nbsp;তালিকায় সবার ওপরে আছে ইংল্যান্ডের নাম। দলটির আর্থিক মূল্য ১.৩ বিলিয়ন ইউরো।দ্বিতীয় অবস্থানে আছে লাতিন আমেরিকার দেশ ব্রাজিল। দলটি অর্থমূল্য ১.০৫ বিলিয়ন ডলার। এরপরেই আছে ক্রিশ্চিয়ানো রোনালদোর পর্তুগাল। দলটির বাজার মূল্য ৯৩৮ মিলিয়ন ডলার।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>এর পরে আছে জার্মানি, ফ্রান্স ও স্পেনের মতো হেভিওয়েট দলগুলো। আর দামি ফুটবল দলের তালিকার সাত নম্বরে থাকা আর্জেন্টিনার ৬৭১ মিলিয়ন ইউরো।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>দামি দেশের তালিকার আটে আছে ইতালি, নয় নম্বরে বেলজিয়াম ও দশে নেদারল্যান্ডস।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; সূত্র:&nbsp;<a href=\"https://www.transfermarkt.com/vereins-statistik/wertvollstenationalmannschaften/marktwertetop\">ট্রান্সফার মার্কেট</a></p>\n<!-- /wp:paragraph -->', 'বিশ্বের দ্বিতীয় দামি দল ব্রাজিল, আর্জেন্টিনা ৭', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-09-27 11:29:43', '2022-09-27 11:29:43', '', 5, 'http://localhost/wdpf51_wp/wp_project2/?p=7', 0, 'revision', '', 0),
(8, 1, '2022-09-27 11:31:11', '2022-09-27 11:31:11', '', '161923_bangladesh_pratidin_bd-pratdin-15', '', 'inherit', 'open', 'closed', '', '161923_bangladesh_pratidin_bd-pratdin-15', '', '', '2022-09-27 11:31:11', '2022-09-27 11:31:11', '', 5, 'http://localhost/wdpf51_wp/wp_project2/wp-content/uploads/2022/09/161923_bangladesh_pratidin_bd-pratdin-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2022-09-27 11:31:17', '2022-09-27 11:31:17', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wdpf51_wp/wp_project2/wp-content/uploads/2022/09/161923_bangladesh_pratidin_bd-pratdin-15.jpg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>কাতার বিশ্বকাপের আগে নিজেদের মাঠে ঝালিয়ে নিতে ব্যস্ত বিশ্বের নামি-দামি ফুটবল দলগুলো। সেই ফুটবল মহারণের আগে দেখে নেওয়া যাক জনপ্রিয় ফুটবল বিষয়ক ওয়েবসাইট ট্রান্সফার মার্কেটের তালিকায় কোন দলের দাম কতো?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>দেশগুলোর খেলোয়াড়দের বিভিন্ন ক্লাবের মূল্যসহ আর্থিক নানা দিক বিবেচনায়&nbsp;দলগুলোর বাজার মূল্য নির্ধারণ করেছে ট্রান্সফার মার্কেট। দামি দলের&nbsp;তালিকায় সবার ওপরে আছে ইংল্যান্ডের নাম। দলটির আর্থিক মূল্য ১.৩ বিলিয়ন ইউরো।দ্বিতীয় অবস্থানে আছে লাতিন আমেরিকার দেশ ব্রাজিল। দলটি অর্থমূল্য ১.০৫ বিলিয়ন ডলার। এরপরেই আছে ক্রিশ্চিয়ানো রোনালদোর পর্তুগাল। দলটির বাজার মূল্য ৯৩৮ মিলিয়ন ডলার।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>এর পরে আছে জার্মানি, ফ্রান্স ও স্পেনের মতো হেভিওয়েট দলগুলো। আর দামি ফুটবল দলের তালিকার সাত নম্বরে থাকা আর্জেন্টিনার ৬৭১ মিলিয়ন ইউরো।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>দামি দেশের তালিকার আটে আছে ইতালি, নয় নম্বরে বেলজিয়াম ও দশে নেদারল্যান্ডস।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; সূত্র:&nbsp;<a href=\"https://www.transfermarkt.com/vereins-statistik/wertvollstenationalmannschaften/marktwertetop\">ট্রান্সফার মার্কেট</a></p>\n<!-- /wp:paragraph -->', 'বিশ্বের দ্বিতীয় দামি দল ব্রাজিল, আর্জেন্টিনা ৭', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-09-27 11:31:17', '2022-09-27 11:31:17', '', 5, 'http://localhost/wdpf51_wp/wp_project2/?p=9', 0, 'revision', '', 0),
(11, 1, '2022-09-27 11:41:54', '2022-09-27 11:41:54', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wdpf51_wp/wp_project2/wp-content/uploads/2022/09/161923_bangladesh_pratidin_bd-pratdin-15.jpg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>কাতার বিশ্বকাপের আগে&nbsp;নিজেদের মাঠে ঝালিয়ে নিতে ব্যস্ত বিশ্বের নামি-দামি ফুটবল দলগুলো। সেই ফুটবল মহারণের আগে দেখে নেওয়া যাক জনপ্রিয় ফুটবল বিষয়ক ওয়েবসাইট ট্রান্সফার মার্কেটের তালিকায় কোন দলের দাম কতো?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>দেশগুলোর খেলোয়াড়দের বিভিন্ন ক্লাবের মূল্যসহ আর্থিক নানা দিক বিবেচনায় দলগুলোর বাজার মূল্য নির্ধারণ করেছে ট্রান্সফার মার্কেট। দামি দলের তালিকায় সবার ওপরে আছে ইংল্যান্ডের নাম। দলটির আর্থিক মূল্য ১.৩ বিলিয়ন ইউরো।দ্বিতীয় অবস্থানে আছে লাতিন আমেরিকার দেশ ব্রাজিল। দলটি অর্থমূল্য ১.০৫ বিলিয়ন ডলার। এরপরেই আছে ক্রিশ্চিয়ানো রোনালদোর পর্তুগাল। দলটির বাজার মূল্য ৯৩৮ মিলিয়ন ডলার।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>নুতন একটা লাইন সংযুক্ত করলাম</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>এর পরে আছে জার্মানি, ফ্রান্স ও স্পেনের মতো হেভিওয়েট দলগুলো। আর দামি ফুটবল দলের তালিকার সাত নম্বরে থাকা আর্জেন্টিনার ৬৭১ মিলিয়ন ইউরো।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>দামি দেশের তালিকার আটে আছে ইতালি, নয় নম্বরে বেলজিয়াম ও দশে নেদারল্যান্ডস।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; সূত্র:&nbsp;<a href=\"https://www.transfermarkt.com/vereins-statistik/wertvollstenationalmannschaften/marktwertetop\">ট্রান্সফার মার্কেট</a></p>\n<!-- /wp:paragraph -->', 'বিশ্বের দ্বিতীয় দামি দল ব্রাজিল, আর্জেন্টিনা ৭', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-09-27 11:41:54', '2022-09-27 11:41:54', '', 5, 'http://localhost/wdpf51_wp/wp_project2/?p=11', 0, 'revision', '', 0),
(12, 1, '2022-09-27 11:46:35', '2022-09-27 11:46:35', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wdpf51_wp/wp_project2/wp-content/uploads/2022/09/161923_bangladesh_pratidin_bd-pratdin-15.jpg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>কাতার বিশ্বকাপের আগে&nbsp;নিজেদের মাঠে ঝালিয়ে নিতে ব্যস্ত বিশ্বের নামি-দামি ফুটবল দলগুলো। সেই ফুটবল মহারণের আগে দেখে নেওয়া যাক জনপ্রিয় ফুটবল বিষয়ক ওয়েবসাইট ট্রান্সফার মার্কেটের তালিকায় কোন দলের দাম কতো?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>দেশগুলোর খেলোয়াড়দের বিভিন্ন ক্লাবের মূল্যসহ আর্থিক নানা দিক বিবেচনায়&nbsp;দলগুলোর বাজার মূল্য নির্ধারণ করেছে ট্রান্সফার মার্কেট। দামি দলের&nbsp;তালিকায় সবার ওপরে আছে ইংল্যান্ডের নাম। দলটির আর্থিক মূল্য ১.৩ বিলিয়ন ইউরো।দ্বিতীয় অবস্থানে আছে লাতিন আমেরিকার দেশ ব্রাজিল। দলটি অর্থমূল্য ১.০৫ বিলিয়ন ডলার। এরপরেই আছে ক্রিশ্চিয়ানো রোনালদোর পর্তুগাল। দলটির বাজার মূল্য ৯৩৮ মিলিয়ন ডলার।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>নুতন একটা লাইন সংযুক্ত করলাম</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>এর পরে আছে জার্মানি, ফ্রান্স ও স্পেনের মতো হেভিওয়েট দলগুলো। আর দামি ফুটবল দলের তালিকার সাত নম্বরে থাকা আর্জেন্টিনার ৬৭১ মিলিয়ন ইউরো।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>দামি দেশের তালিকার আটে আছে ইতালি, নয় নম্বরে বেলজিয়াম ও দশে নেদারল্যান্ডস।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; সূত্র:&nbsp;<a href=\"https://www.transfermarkt.com/vereins-statistik/wertvollstenationalmannschaften/marktwertetop\">ট্রান্সফার মার্কেট</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'বিশ্বের দ্বিতীয় দামি দল ব্রাজিল, আর্জেন্টিনা ৭', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2022-09-27 11:46:35', '2022-09-27 11:46:35', '', 5, 'http://localhost/wdpf51_wp/wp_project2/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-09-27 11:54:22', '2022-09-27 11:50:40', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-09-27 11:54:22', '2022-09-27 11:54:22', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2022-09-27 11:53:35', '2022-09-27 11:53:35', '<!-- wp:heading -->\n<h2>What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2022-09-27 11:53:35', '2022-09-27 11:53:35', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?page_id=14', 0, 'page', '', 0),
(15, 1, '2022-09-27 11:52:45', '2022-09-27 11:52:45', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-astra', '', '', '2022-09-27 11:52:45', '2022-09-27 11:52:45', '', 0, 'http://localhost/wdpf51_wp/wp_project2/2022/09/27/wp-global-styles-astra/', 0, 'wp_global_styles', '', 0),
(16, 1, '2022-09-27 11:53:35', '2022-09-27 11:53:35', '<!-- wp:heading -->\n<h2>What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-09-27 11:53:35', '2022-09-27 11:53:35', '', 14, 'http://localhost/wdpf51_wp/wp_project2/?p=16', 0, 'revision', '', 0),
(17, 1, '2022-09-27 11:53:55', '2022-09-27 11:53:55', '<!-- wp:contact-form-7/contact-form-selector {\"id\":21,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"21\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2022-09-27 12:02:19', '2022-09-27 12:02:19', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?page_id=17', 0, 'page', '', 0),
(18, 1, '2022-09-27 11:53:55', '2022-09-27 11:53:55', '<!-- wp:heading -->\n<h2>What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-09-27 11:53:55', '2022-09-27 11:53:55', '', 17, 'http://localhost/wdpf51_wp/wp_project2/?p=18', 0, 'revision', '', 0),
(19, 1, '2022-09-27 11:54:22', '2022-09-27 11:54:22', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2022-09-27 11:54:22', '2022-09-27 11:54:22', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2022-09-27 11:54:22', '2022-09-27 11:54:22', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2022-09-27 11:54:22', '2022-09-27 11:54:22', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?p=20', 3, 'nav_menu_item', '', 0),
(21, 1, '2022-09-27 11:58:51', '2022-09-27 11:58:51', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <roobon@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <roobon@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2022-09-27 11:58:51', '2022-09-27 11:58:51', '', 0, 'http://localhost/wdpf51_wp/wp_project2/?post_type=wpcf7_contact_form&p=21', 0, 'wpcf7_contact_form', '', 0),
(22, 1, '2022-09-27 12:02:19', '2022-09-27 12:02:19', '<!-- wp:contact-form-7/contact-form-selector {\"id\":21,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"21\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-09-27 12:02:19', '2022-09-27 12:02:19', '', 17, 'http://localhost/wdpf51_wp/wp_project2/?p=22', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'Main menu', 'main-menu', 0),
(4, 'astra', 'astra', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(6, 2, 0),
(13, 3, 0),
(15, 4, 0),
(19, 3, 0),
(20, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"80d0056f2e8e183942b182d6743aea4cb4dbfefb2100f86590b65fe9252fa608\";a:4:{s:10:\"expiration\";i:1664450799;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0\";s:5:\"login\";i:1664277999;}s:64:\"a655d49d93ea389fce0baed8356ac6e494bdb008b4b38d1bdf110425719a4c4e\";a:4:{s:10:\"expiration\";i:1664538007;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0\";s:5:\"login\";i:1664365207;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1664278721'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'closedpostboxes_dashboard', 'a:3:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:21:\"dashboard_quick_press\";}'),
(25, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BI1cTWnf/5CntA/2aK9wKVbl6YCHjd0', 'admin', 'roobon@gmail.com', 'http://localhost/wdpf51_wp/wp_project2', '2022-09-27 11:26:22', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
