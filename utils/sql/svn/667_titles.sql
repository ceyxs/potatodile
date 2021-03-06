DROP TABLE IF EXISTS `titles`;
CREATE TABLE `titles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `skill_id` tinyint(3) NOT NULL default '-1',
  `min_skill_value` mediumint(8) NOT NULL default '-1',
  `max_skill_value` mediumint(8) NOT NULL default '-1',
  `min_aa_points` mediumint(8) NOT NULL default '-1',
  `max_aa_points` mediumint(8) NOT NULL default '-1',
  `class` tinyint(4) NOT NULL default '-1',
  `gender` tinyint(1) NOT NULL default '-1' COMMENT '-1 = either, 0 = male, 1 = female',
  `char_id` int(11) NOT NULL default '-1',
  `status` int(11) NOT NULL default '-1',
  `item_id` int(11) NOT NULL default '-1',
  `prefix` varchar(32) NOT NULL default '',
  `suffix` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

-- 
-- Dumping data for table `titles`
-- 

INSERT INTO `titles` (`id`, `skill_id`, `min_skill_value`, `max_skill_value`, `min_aa_points`, `max_aa_points`, `class`, `gender`, `char_id`, `status`, `item_id`, `prefix`, `suffix`) VALUES 
(3, -1, -1, -1, -1, -1, -1, -1, -1, 50, -1, 'Guide', ''),
(4, -1, -1, -1, 6, 17, -1, 0, -1, -1, -1, 'Baron', ''),
(5, -1, -1, -1, 6, 17, -1, 1, -1, -1, -1, 'Baroness', ''),
(6, -1, -1, -1, -1, -1, -1, -1, -1, 180, -1, 'Developer', 'of The Grand Creation'),
(7, -1, -1, -1, 18, 41, 1, -1, -1, -1, -1, 'Veteran', ''),
(8, -1, -1, -1, 18, 41, 8, -1, -1, -1, -1, 'Veteran', ''),
(9, -1, -1, -1, 18, 41, 15, -1, -1, -1, -1, 'Venerable', ''),
(10, -1, -1, -1, 18, 41, 16, -1, -1, -1, -1, 'Veteran', ''),
(11, -1, -1, -1, 18, 41, 2, -1, -1, -1, -1, 'Venerable', ''),
(12, -1, -1, -1, 18, 41, 6, -1, -1, -1, -1, 'Venerable', ''),
(13, -1, -1, -1, 18, 41, 14, 0, -1, -1, -1, 'Master', ''),
(14, -1, -1, -1, 18, 41, 14, 1, -1, -1, -1, 'Mistress', ''),
(15, -1, -1, -1, 18, 41, 13, 0, -1, -1, -1, 'Master', ''),
(16, -1, -1, -1, 18, 41, 13, 1, -1, -1, -1, 'Mistress', ''),
(17, -1, -1, -1, 18, 41, 7, 0, -1, -1, -1, 'Brother', ''),
(18, -1, -1, -1, 18, 41, 7, 1, -1, -1, -1, 'Sister', ''),
(19, -1, -1, -1, 18, 41, 11, -1, -1, -1, -1, 'Sage', ''),
(20, -1, -1, -1, 18, 41, 3, 0, -1, -1, -1, 'Sir', ''),
(21, -1, -1, -1, 18, 41, 3, 1, -1, -1, -1, 'Lady', ''),
(22, -1, -1, -1, 18, 41, 4, -1, -1, -1, -1, 'Veteran', ''),
(23, -1, -1, -1, 18, 41, 9, -1, -1, -1, -1, 'Veteran', ''),
(24, -1, -1, -1, 18, 41, 5, 0, -1, -1, -1, 'Sir', ''),
(25, -1, -1, -1, 18, 41, 5, 1, -1, -1, -1, 'Lady', ''),
(26, -1, -1, -1, 18, 41, 10, -1, -1, -1, -1, 'Venerable', ''),
(27, -1, -1, -1, 18, 41, 12, 0, -1, -1, -1, 'Master', ''),
(28, -1, -1, -1, 18, 41, 12, 1, -1, -1, -1, 'Mistress', ''),
(29, -1, -1, -1, 42, -1, 8, 0, -1, -1, -1, 'Impresario', ''),
(30, -1, -1, -1, 42, -1, 8, 1, -1, -1, -1, 'Muse', ''),
(31, -1, -1, -1, 42, -1, 15, -1, -1, -1, -1, 'Elder', ''),
(32, -1, -1, -1, 42, -1, 16, -1, -1, -1, -1, 'Savage', ''),
(33, -1, -1, -1, 42, -1, 2, -1, -1, -1, -1, 'Exarch', ''),
(34, -1, -1, -1, 42, -1, 6, -1, -1, -1, -1, 'Elder', ''),
(35, -1, -1, -1, 42, -1, 14, -1, -1, -1, -1, 'Sage', ''),
(36, -1, -1, -1, 42, -1, 13, -1, -1, -1, -1, 'Sage', ''),
(37, -1, -1, -1, 42, -1, 7, -1, -1, -1, -1, 'Sensei', ''),
(38, -1, -1, -1, 42, -1, 11, -1, -1, -1, -1, 'Lich', ''),
(39, -1, -1, -1, 42, -1, 3, 0, -1, -1, -1, 'Duke', ''),
(40, -1, -1, -1, 42, -1, 3, 1, -1, -1, -1, 'Duchess', ''),
(41, -1, -1, -1, 42, -1, 4, 0, -1, -1, -1, 'Hunter', ''),
(42, -1, -1, -1, 42, -1, 4, 1, -1, -1, -1, 'Huntress', ''),
(43, -1, -1, -1, 42, -1, 9, -1, -1, -1, -1, 'Marauder', ''),
(44, -1, -1, -1, 42, -1, 5, 0, -1, -1, -1, 'Duke', ''),
(45, -1, -1, -1, 42, -1, 5, 1, -1, -1, -1, 'Duchess', ''),
(46, -1, -1, -1, 42, -1, 10, -1, -1, -1, -1, 'Elder', ''),
(47, -1, -1, -1, 42, -1, 1, -1, -1, -1, -1, 'Marshall', ''),
(48, -1, -1, -1, 42, -1, 12, -1, -1, -1, -1, 'Sage', ''),
(49, 60, 100, 199, -1, -1, -1, -1, -1, -1, -1, 'Apprentice Chef', ''),
(50, 60, 200, 249, -1, -1, -1, -1, -1, -1, -1, 'Journeyman Chef', ''),
(51, 60, 250, 299, -1, -1, -1, -1, -1, -1, -1, 'Expert Chef', ''),
(52, 60, 300, -1, -1, -1, -1, -1, -1, -1, -1, 'Master Chef', ''),
(53, 65, 100, 199, -1, -1, -1, -1, -1, -1, -1, 'Apprentice Brewer', ''),
(54, 65, 200, 249, -1, -1, -1, -1, -1, -1, -1, 'Journeyman Brewer', ''),
(55, 65, 250, 299, -1, -1, -1, -1, -1, -1, -1, 'Expert Brewer', ''),
(56, 65, 300, -1, -1, -1, -1, -1, -1, -1, -1, 'Master Brewer', ''),
(57, 55, 100, 199, -1, -1, -1, -1, -1, -1, -1, 'Apprentice Fisherman', ''),
(58, 55, 200, 249, -1, -1, -1, -1, -1, -1, -1, 'Journeyman Fisherman', ''),
(59, 55, 250, 299, -1, -1, -1, -1, -1, -1, -1, 'Expert Fisherman', ''),
(60, 55, 300, -1, -1, -1, -1, -1, -1, -1, -1, 'Master Fisherman', ''),
(61, 64, 100, 199, -1, -1, -1, -1, -1, -1, -1, 'Apprentice Fletcher', ''),
(62, 64, 200, 249, -1, -1, -1, -1, -1, -1, -1, 'Journeyman Fletcher', ''),
(63, 64, 250, 299, -1, -1, -1, -1, -1, -1, -1, 'Expert Fletcher', ''),
(64, 64, 300, -1, -1, -1, -1, -1, -1, -1, -1, 'Master Fletcher', ''),
(65, 68, 100, 199, -1, -1, -1, -1, -1, -1, -1, 'Apprentice Jeweler', ''),
(66, 68, 200, 249, -1, -1, -1, -1, -1, -1, -1, 'Journeyman Jeweler', ''),
(67, 68, 250, 299, -1, -1, -1, -1, -1, -1, -1, 'Expert Jeweler', ''),
(68, 68, 300, -1, -1, -1, -1, -1, -1, -1, -1, 'Master Jeweler', ''),
(69, 69, 100, 199, -1, -1, -1, -1, -1, -1, -1, 'Apprentice Potter', ''),
(70, 69, 200, 249, -1, -1, -1, -1, -1, -1, -1, 'Journeyman Potter', ''),
(71, 69, 250, 299, -1, -1, -1, -1, -1, -1, -1, 'Expert Potter', ''),
(72, 69, 300, -1, -1, -1, -1, -1, -1, -1, -1, 'Master Potter', ''),
(73, 63, 100, 199, -1, -1, -1, -1, -1, -1, -1, 'Apprentice Smith', ''),
(74, 63, 200, 249, -1, -1, -1, -1, -1, -1, -1, 'Journeyman Smith', ''),
(75, 63, 250, 299, -1, -1, -1, -1, -1, -1, -1, 'Expert Smith', ''),
(76, 63, 300, -1, -1, -1, -1, -1, -1, -1, -1, 'Master Smith', ''),
(77, 59, 100, 199, -1, -1, 10, -1, -1, -1, -1, 'Apprentice Alchemist', ''),
(78, 59, 200, 249, -1, -1, 10, -1, -1, -1, -1, 'Journeyman Alchemist', ''),
(79, 59, 250, 299, -1, -1, 10, -1, -1, -1, -1, 'Expert Alchemist', ''),
(80, 59, 300, -1, -1, -1, 10, -1, -1, -1, -1, 'Master Alchemist', ''),
(81, 56, 100, 199, -1, -1, 9, -1, -1, -1, -1, 'Apprentice Poisoncrafter', ''),
(82, 56, 200, 249, -1, -1, 9, -1, -1, -1, -1, 'Journeyman Poisoncrafter', ''),
(83, 56, 250, 299, -1, -1, 9, -1, -1, -1, -1, 'Expert Poisoncrafter', ''),
(84, 56, 300, -1, -1, -1, 9, -1, -1, -1, -1, 'Master Poisoncrafter', ''),
(85, 58, 100, 199, -1, -1, -1, -1, -1, -1, -1, 'Apprentice Researcher', ''),
(86, 58, 200, 249, -1, -1, -1, -1, -1, -1, -1, 'Journeyman Researcher', ''),
(87, 58, 250, 299, -1, -1, -1, -1, -1, -1, -1, 'Expert Researcher', ''),
(88, 58, 300, -1, -1, -1, -1, -1, -1, -1, -1, 'Master Researcher', ''),
(89, 57, 100, 199, -1, -1, -1, -1, -1, -1, -1, 'Apprentice Tinker', ''),
(90, 57, 200, 249, -1, -1, -1, -1, -1, -1, -1, 'Journeyman Tinker', ''),
(91, 57, 250, 299, -1, -1, -1, -1, -1, -1, -1, 'Expert Tinker', ''),
(92, 57, 300, -1, -1, -1, -1, -1, -1, -1, -1, 'Master Tinker', ''),
(93, -1, -1, -1, -1, -1, 4, -1, -1, -1, 20487, 'Windcaller', '');
