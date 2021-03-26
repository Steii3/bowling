-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 26 mars 2021 à 10:36
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bowlingdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie_age`
--

DROP TABLE IF EXISTS `categorie_age`;
CREATE TABLE IF NOT EXISTS `categorie_age` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `libellé` varchar(25) NOT NULL,
  `age_min` int(11) NOT NULL,
  `age_max` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie_age`
--

INSERT INTO `categorie_age` (`id`, `libellé`, `age_min`, `age_max`) VALUES
(1, 'poussin', 6, 8),
(2, 'benjamin', 9, 11),
(3, 'minime', 12, 14),
(4, 'cadet', 15, 17),
(5, 'juniors', 18, 21),
(6, 'senior', 22, 49);

-- --------------------------------------------------------

--
-- Structure de la table `centre`
--

DROP TABLE IF EXISTS `centre`;
CREATE TABLE IF NOT EXISTS `centre` (
  `id` int(11) NOT NULL,
  `nom` varchar(11) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `num_tel` int(11) NOT NULL,
  `adresse_email` varchar(25) NOT NULL,
  `nbr_pistes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `centre`
--

INSERT INTO `centre` (`id`, `nom`, `adresse`, `num_tel`, `adresse_email`, `nbr_pistes`) VALUES
(1, 'Blazej', '71 Waubesa Parkway', 2147483647, 'gblazej0@phoca.cz', 7),
(2, 'Gogarty', '925 Center Circle', 1638208905, 'rgogarty1@twitter.com', 2),
(3, 'Baversor', '80 Merchant Lane', 2147483647, 'mbaversor2@storify.com', 4),
(4, 'Clackers', '7834 Laurel Plaza', 1848924864, 'eclackers3@1und1.de', 9),
(5, 'Attenboroug', '96 Del Sol Terrace', 2147483647, 'aattenborough4@webnode.co', 2),
(6, 'Skoughman', '9283 Ridgeview Pass', 2147483647, 'jskoughman5@ow.ly', 4),
(7, 'Kubis', '21 Ridge Oak Lane', 2147483647, 'ikubis6@is.gd', 2),
(8, 'Crosfeld', '401 Comanche Pass', 2147483647, 'scrosfeld7@shutterfly.com', 8),
(9, 'Wilcot', '619 Carioca Avenue', 2147483647, 'ewilcot8@ovh.net', 8),
(10, 'Dunklee', '92352 Pearson Junction', 2147483647, 'bdunklee9@xing.com', 3),
(11, 'Renals', '0 Briar Crest Way', 1413944887, 'drenalsa@hexun.com', 7),
(12, 'Zoppo', '04 Continental Plaza', 2147483647, 'tzoppob@reverbnation.com', 5),
(13, 'Lister', '58714 Annamark Point', 2147483647, 'glisterc@i2i.jp', 4),
(14, 'Schermick', '2 Warrior Crossing', 1387362172, 'sschermickd@examiner.com', 9),
(15, 'Liddiatt', '6268 Monterey Park', 2147483647, 'gliddiatte@typepad.com', 6),
(16, 'Silverman', '72425 Grover Point', 2147483647, 'csilvermanf@gnu.org', 1),
(17, 'Dyson', '7940 Kedzie Trail', 2147483647, 'mdysong@unblog.fr', 5),
(18, 'Castellino', '9 Elmside Circle', 2147483647, 'kcastellinoh@ycombinator.', 9),
(19, 'Treadgold', '8162 Corscot Parkway', 2147483647, 'atreadgoldi@springer.com', 8),
(20, 'Bougourd', '75340 Thierer Crossing', 2147483647, 'nbougourdj@bing.com', 0),
(21, 'Greasty', '418 Oak Valley Pass', 2147483647, 'pgreastyk@ucoz.ru', 9),
(22, 'Boullin', '68724 Eggendart Crossing', 2147483647, 'lboullinl@sphinn.com', 9),
(23, 'Wardrope', '9 Goodland Junction', 2147483647, 'gwardropem@csmonitor.com', 7),
(24, 'Temporal', '70 Clyde Gallagher Plaza', 2147483647, 'ktemporaln@hubpages.com', 6),
(25, 'Spalding', '76 Logan Parkway', 2147483647, 'cspaldingo@wufoo.com', 8),
(26, 'Kealy', '91 Northland Alley', 2147483647, 'tkealyp@lycos.com', 6),
(27, 'Brampton', '949 Muir Pass', 2147483647, 'pbramptonq@godaddy.com', 3),
(28, 'MacGill', '1 Sunnyside Road', 2147483647, 'bmacgillr@theatlantic.com', 0),
(29, 'Hardacre', '30536 Shoshone Crossing', 2147483647, 'ahardacres@dailymotion.co', 1),
(30, 'Blade', '0 Barby Pass', 2147483647, 'fbladet@cyberchimps.com', 1),
(31, 'Metterick', '11 Oakridge Avenue', 2147483647, 'bmettericku@nih.gov', 3),
(32, 'Ollie', '65298 Sunbrook Drive', 2147483647, 'tolliev@miitbeian.gov.cn', 9),
(33, 'Pottiphar', '63 Ramsey Road', 2147483647, 'ipottipharw@rediff.com', 5),
(34, 'Adcock', '6676 Cody Drive', 2147483647, 'tadcockx@domainmarket.com', 2),
(35, 'Barbier', '468 Namekagon Center', 1686970963, 'ebarbiery@bluehost.com', 4),
(36, 'Body', '529 Dixon Center', 2147483647, 'mbodyz@ustream.tv', 4),
(37, 'Pykett', '433 Duke Crossing', 1026228684, 'bpykett10@usnews.com', 4),
(38, 'Cristofalo', '74 Green Pass', 2147483647, 'acristofalo11@ow.ly', 5),
(39, 'Trees', '43581 Westend Plaza', 2147483647, 'otrees12@harvard.edu', 1),
(40, 'McGow', '82777 Ruskin Center', 2147483647, 'smcgow13@tmall.com', 6),
(41, 'Goldes', '27387 Quincy Point', 1449318927, 'igoldes14@ebay.co.uk', 4),
(42, 'Sicha', '6 Esch Plaza', 2147483647, 'fsicha15@aol.com', 7),
(43, 'Yakebovich', '310 Banding Hill', 2147483647, 'myakebovich16@icio.us', 4),
(44, 'Christoforo', '0747 Portage Place', 2147483647, 'echristoforou17@discuz.ne', 2),
(45, 'Kennermann', '71 Canary Trail', 2147483647, 'ckennermann18@rakuten.co.', 7),
(46, 'Bickersteth', '5 Jenna Hill', 2147483647, 'mbickersteth19@admin.ch', 1),
(47, 'Lehr', '86296 Ridgeway Parkway', 2147483647, 'vlehr1a@example.com', 1),
(48, 'Spehr', '23184 Quincy Drive', 2147483647, 'aspehr1b@xing.com', 4),
(49, 'Torel', '865 Vera Point', 2147483647, 'atorel1c@dropbox.com', 3),
(50, 'Nethercott', '9 Crest Line Terrace', 2147483647, 'lnethercott1d@flickr.com', 2),
(51, 'Cullum', '405 Towne Center', 2147483647, 'kcullum1e@marriott.com', 7),
(52, 'de Merida', '0 Warrior Lane', 2147483647, 'ndemerida1f@bluehost.com', 4),
(53, 'Kilday', '9 Valley Edge Road', 2147483647, 'rkilday1g@prweb.com', 4),
(54, 'Laffan', '78423 Marcy Court', 2147483647, 'dlaffan1h@wordpress.com', 9),
(55, 'Grimm', '040 Packers Crossing', 2147483647, 'agrimm1i@flickr.com', 0),
(56, 'Ebbin', '8360 Manley Circle', 2147483647, 'oebbin1j@networkadvertisi', 8),
(57, 'Blair', '51 4th Junction', 2147483647, 'nblair1k@techcrunch.com', 7),
(58, 'Hardwicke', '26 Delladonna Parkway', 2147483647, 'lhardwicke1l@tiny.cc', 7),
(59, 'Dermott', '3327 Drewry Street', 2021914962, 'kdermott1m@hostgator.com', 9),
(60, 'Brusby', '4858 Dwight Crossing', 2147483647, 'gbrusby1n@sitemeter.com', 1),
(61, 'Ebbrell', '704 Londonderry Terrace', 1107684550, 'jebbrell1o@yolasite.com', 2),
(62, 'Buyers', '6 Barby Crossing', 2147483647, 'rbuyers1p@vimeo.com', 6),
(63, 'Zanni', '35 Emmet Plaza', 2147483647, 'ezanni1q@hud.gov', 7),
(64, 'Degli Abbat', '4 Green Pass', 2147483647, 'pdegliabbati1r@dmoz.org', 4),
(65, 'Lancashire', '11 Barnett Point', 2147483647, 'klancashire1s@apple.com', 4),
(66, 'Murkitt', '1157 Lakeland Avenue', 2147483647, 'imurkitt1t@goodreads.com', 2),
(67, 'Ramelet', '5 Superior Street', 2147483647, 'cramelet1u@guardian.co.uk', 3),
(68, 'Treves', '87310 Debra Alley', 2147483647, 'htreves1v@tinypic.com', 1),
(69, 'Jorczyk', '7265 Maywood Center', 2147483647, 'wjorczyk1w@japanpost.jp', 4),
(70, 'Pound', '173 Valley Edge Plaza', 2147483647, 'gpound1x@arizona.edu', 5),
(71, 'Castagnasso', '850 Springs Road', 2147483647, 'scastagnasso1y@disqus.com', 1),
(72, 'Moggach', '532 Toban Center', 2147483647, 'tmoggach1z@army.mil', 6),
(73, 'Hagart', '1 Pennsylvania Center', 2147483647, 'ghagart20@php.net', 7),
(74, 'Goodricke', '1667 Spaight Hill', 2147483647, 'tgoodricke21@guardian.co.', 6),
(75, 'Sobtka', '6839 Badeau Terrace', 2147483647, 'rsobtka22@seattletimes.co', 1),
(76, 'Boays', '001 Delaware Hill', 2147483647, 'oboays23@bing.com', 4),
(77, 'Rospars', '83 Manufacturers Circle', 2147483647, 'prospars24@economist.com', 5),
(78, 'Karpychev', '54035 Muir Pass', 2147483647, 'ekarpychev25@si.edu', 6),
(79, 'Tatham', '7 Burning Wood Park', 2147483647, 'btatham26@myspace.com', 8),
(80, 'Wille', '9128 Mendota Center', 2147483647, 'wwille27@people.com.cn', 0),
(81, 'O\'Fogarty', '17640 Maryland Junction', 2147483647, 'zofogarty28@abc.net.au', 9),
(82, 'Hanselman', '1001 Dixon Center', 2147483647, 'ahanselman29@spiegel.de', 9),
(83, 'Garnett', '53397 Sutteridge Hill', 2147483647, 'bgarnett2a@npr.org', 4),
(84, 'Gosnell', '5 Dorton Park', 2147483647, 'agosnell2b@statcounter.co', 3),
(85, 'Rabbe', '47 Forster Street', 2147483647, 'brabbe2c@mayoclinic.com', 8),
(86, 'Odgers', '791 Twin Pines Road', 2147483647, 'jodgers2d@china.com.cn', 3),
(87, 'Cota', '010 Artisan Hill', 2147483647, 'ccota2e@slashdot.org', 5),
(88, 'Adcocks', '266 Alpine Parkway', 2147483647, 'cadcocks2f@hao123.com', 5),
(89, 'Foulks', '53005 Comanche Park', 2147483647, 'efoulks2g@gravatar.com', 5),
(90, 'Almeida', '81 Main Street', 2147483647, 'salmeida2h@simplemachines', 3),
(91, 'Marzellano', '4 Boyd Road', 2147483647, 'gmarzellano2i@mac.com', 0),
(92, 'Tunkin', '52 Michigan Junction', 2147483647, 'atunkin2j@reference.com', 3),
(93, 'Zanolli', '2 Golf Course Parkway', 2147483647, 'lzanolli2k@google.com.br', 3),
(94, 'Hayman', '50631 Iowa Alley', 2147483647, 'mhayman2l@princeton.edu', 0),
(95, 'Bleakley', '49785 Hoffman Alley', 2147483647, 'tbleakley2m@parallels.com', 4),
(96, 'Klempke', '6 Maple Wood Avenue', 2147483647, 'rklempke2n@networksolutio', 0),
(97, 'Todaro', '672 Alpine Drive', 2147483647, 'btodaro2o@patch.com', 0),
(98, 'Gillicuddy', '3 Nancy Point', 2147483647, 'ugillicuddy2p@apple.com', 2),
(99, 'Colyer', '05 Arapahoe Circle', 2147483647, 'scolyer2q@seattletimes.co', 3),
(100, 'Steiner', '1 Moland Trail', 2147483647, 'isteiner2r@godaddy.com', 9);

-- --------------------------------------------------------

--
-- Structure de la table `club`
--

DROP TABLE IF EXISTS `club`;
CREATE TABLE IF NOT EXISTS `club` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `ville` varchar(25) NOT NULL,
  `adresse` varchar(25) NOT NULL,
  `president` varchar(25) NOT NULL,
  `centre` int(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Cascade club` (`centre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `club`
--

INSERT INTO `club` (`id`, `nom`, `ville`, `adresse`, `president`, `centre`) VALUES
(1, 'Meevee', 'Guinsadan', 'Macpherson', 'Sindee', 92),
(2, 'Kamba', 'Danzi', 'Bay', 'Ainslee', 23),
(3, 'Gigashots', 'Cheban', 'Corry', 'Mort', 66),
(4, 'Skynoodle', 'Hualgayoc', 'Harbort', 'Jordana', 30),
(5, 'Devbug', 'Roboré', 'Ridgeview', 'Arnie', 67),
(6, 'Voonder', 'Panambi', 'Sherman', 'Carri', 96),
(7, 'Quimba', 'Koszęcin', 'Stephen', 'Wylma', 86),
(8, 'Edgewire', 'Świętajno', 'Cherokee', 'Chelsie', 11),
(9, 'Gabvine', 'Sukaraja', 'Veith', 'Stacy', 33),
(10, 'Meevee', 'Sumurber', 'Rowland', 'Aime', 34),
(11, 'Meembee', 'Shuozhou', 'Vernon', 'Hyacintha', 2),
(12, 'Feedbug', 'Karanggedang', 'Spohn', 'Mattheus', 38),
(13, 'Zava', 'Greater Napanee', 'Derek', 'Cynthie', 74),
(14, 'Eire', 'Payxambabazar', 'Steensland', 'Rorie', 92),
(15, 'Riffwire', 'Wuhu', 'Daystar', 'Timi', 91),
(16, 'Bluezoom', 'Beitou', 'Sutteridge', 'Patricio', 71),
(17, 'Twitternation', 'Burgos', 'Florence', 'Susannah', 17),
(18, 'Reallinks', 'Ágios Andréas', 'Sherman', 'Maurise', 10),
(19, 'Skibox', 'Burgas', 'Anthes', 'Marabel', 68),
(20, 'Skajo', 'Vila Velha', 'Rowland', 'Dianemarie', 4),
(21, 'Abatz', 'Vostryakovo', 'Sundown', 'Renaldo', 93),
(22, 'Vinte', 'Tevriz', 'Sutherland', 'Leah', 58),
(23, 'Realbuzz', 'Ngantru', 'Sunbrook', 'Spencer', 49),
(24, 'Zooxo', 'Évry', 'Scoville', 'Dorri', 76),
(25, 'Devpulse', 'Vinsady', 'Waywood', 'Vernor', 35),
(26, 'Plajo', 'Baomin', 'Golf Course', 'Felicle', 21),
(27, 'Fiveclub', 'Mesopotam', 'Union', 'Culver', 82),
(28, 'Topiclounge', 'Nepomuceno', 'Fairfield', 'Chris', 23),
(29, 'Fatz', 'Wang Nam Yen', 'Carioca', 'Maiga', 73),
(30, 'Trupe', 'Matiompong', 'Almo', 'Kalvin', 79),
(31, 'Rhybox', 'Phan Rang-Tháp Chàm', 'Warbler', 'Ingra', 86),
(32, 'Flashspan', 'Guanshan', 'Moulton', 'Candy', 71),
(33, 'Skiba', 'Wola Rębkowska', 'Spenser', 'Humberto', 60),
(34, 'Skidoo', 'Taoyuan', 'Ridgeway', 'Kearney', 54),
(35, 'Eamia', 'Golug', 'Warner', 'Liam', 97),
(36, 'Jamia', 'Terezín', 'Bobwhite', 'Gigi', 92),
(37, 'Oloo', 'Dziemiany', 'Arapahoe', 'Jenilee', 7),
(38, 'Gabspot', 'Szczurowa', 'Little Fleur', 'Darren', 68),
(39, 'Divape', 'Ar Ruways', 'Warrior', 'Andre', 50),
(40, 'InnoZ', 'Sioguí Abajo', 'Lukken', 'Filberte', 91),
(41, 'Skimia', 'Noşratābād', 'Independence', 'Chastity', 66),
(42, 'Feedfish', 'Panenjoan', 'Bultman', 'Sylvester', 57),
(43, 'Realcube', 'Parchowo', 'Bunting', 'Lorant', 79),
(44, 'Realbuzz', 'Yangxu', 'Mosinee', 'Arden', 5),
(45, 'Fiveclub', 'Hwacheon', 'Vermont', 'Skylar', 90),
(46, 'Tambee', 'Bojonglarang', 'Iowa', 'Lucilia', 31),
(47, 'Feedfire', 'Dolega District', 'Gulseth', 'Susanetta', 86),
(48, 'Zazio', 'Shepetivka', 'Farmco', 'Kathryn', 65),
(49, 'Buzzshare', 'Gereneng', 'Lighthouse Bay', 'Venita', 24),
(50, 'Linkbridge', 'Danané', 'Dayton', 'Jobie', 2),
(51, 'Voonyx', 'Kaltungo', 'Mayfield', 'Gardiner', 61),
(52, 'Lazzy', 'Minas', 'Village Green', 'Hogan', 4),
(53, 'Skinix', 'Ochobo', 'South', 'Maureen', 66),
(54, 'Livefish', 'Huaguoshan', 'Logan', 'Griswold', 38),
(55, 'Thoughtbridge', 'Asmara', 'Bartelt', 'Celine', 55),
(56, 'Shuffletag', 'Rio Branco', 'Pierstorff', 'Boyd', 78),
(57, 'Linkbridge', 'Bato', 'Pennsylvania', 'Dexter', 49),
(58, 'Lajo', 'Dahedian', 'Petterle', 'Gaile', 89),
(59, 'Devbug', 'Paita', 'Clyde Gallagher', 'Erinna', 28),
(60, 'Thoughtstorm', 'Pasarnangka', 'American', 'Bryana', 23),
(61, 'Cogidoo', 'Tharyarwady', 'Mendota', 'Kaitlyn', 96),
(62, 'Shuffledrive', 'Göteborg', 'Lillian', 'Cly', 62),
(63, 'Oyoyo', 'Yekaterinovka', 'Melby', 'Becka', 96),
(64, 'Livetube', 'Xiang Ngeun', 'Macpherson', 'Gerhardt', 82),
(65, 'Thoughtbeat', 'Savran’', 'Beilfuss', 'Christoph', 55),
(66, 'Jabbersphere', 'Cockburn Town', 'Darwin', 'Aarika', 33),
(67, 'Oloo', 'Piškorevci', 'Bunting', 'Felisha', 33),
(68, 'Quatz', 'Shuiyang', 'Ilene', 'Tristam', 8),
(69, 'Avamm', 'Strasbourg', 'Bay', 'Imogene', 80),
(70, 'Divanoodle', 'Kaminoyama', 'Lien', 'Adrian', 1),
(71, 'Centidel', 'Onitsha', 'Vera', 'Evelyn', 71),
(72, 'Thoughtbeat', 'Araci', 'Eastlawn', 'Calv', 58),
(73, 'Quimm', 'Haputale', 'Springs', 'Rivy', 85),
(74, 'Realmix', 'Kubanskiy', 'Sauthoff', 'Lucinda', 69),
(75, 'Teklist', 'Cabay', 'Hanson', 'Selina', 74),
(76, 'Yambee', 'Haeju', 'Scoville', 'Andeee', 4),
(77, 'Centizu', 'Kisovec', 'Melby', 'Lon', 51),
(78, 'Chatterpoint', 'Krivodanovka', 'Fordem', 'Baxie', 28),
(79, 'Jaxnation', 'Urachiche', 'Pleasure', 'Gisela', 30),
(80, 'Photobug', 'Dokri', 'Heath', 'Alastair', 23),
(81, 'Myworks', 'Des Moines', 'Rutledge', 'Rosina', 84),
(82, 'Ntags', 'Bissau', 'Hooker', 'Saba', 6),
(83, 'Quatz', 'Ziroudani', 'Badeau', 'Luigi', 91),
(84, 'Meevee', 'Huangxi', 'Arapahoe', 'Beth', 33),
(85, 'Realcube', 'Sélestat', 'Forest Run', 'Gideon', 83),
(86, 'Jabbertype', 'Panyuran', 'Ruskin', 'Paulie', 38),
(87, 'Viva', 'Puerto Rico', 'Dapin', 'Deanna', 77),
(88, 'Flashpoint', 'Kontagora', 'Roth', 'Reinaldo', 93),
(89, 'Skinix', 'Baardheere', 'Grayhawk', 'Florette', 34),
(90, 'Roomm', 'Lubin', 'Blaine', 'Chuck', 98),
(91, 'Tagchat', 'Kumane', 'Forest', 'Gardener', 46),
(92, 'Babblestorm', 'Pervomaysk', 'Myrtle', 'Suki', 78),
(93, 'Aivee', 'Ajaccio', 'Kedzie', 'Yetta', 56),
(94, 'Digitube', 'Wanghu', 'Almo', 'Roberto', 50),
(95, 'Twinte', 'Dnestrovsc', 'Bonner', 'Mada', 40),
(96, 'Skinix', 'Irving', 'Troy', 'Carline', 50),
(97, 'Trunyx', 'Willemstad', 'Fallview', 'Allis', 83),
(98, 'Plambee', 'Santa Eulalia', 'Schurz', 'Felix', 66),
(99, 'Youtags', 'Succha', 'Mcguire', 'Alexina', 35),
(100, 'Minyx', 'Labangka Satu', 'Buena Vista', 'Albertina', 68);

-- --------------------------------------------------------

--
-- Structure de la table `competition`
--

DROP TABLE IF EXISTS `competition`;
CREATE TABLE IF NOT EXISTS `competition` (
  `num_seq` int(11) NOT NULL,
  `date` date NOT NULL,
  `centre` int(11) NOT NULL,
  `cout_inscription` int(11) NOT NULL,
  `type_compétition` int(11) NOT NULL,
  PRIMARY KEY (`num_seq`),
  KEY `Cascade Compétition` (`centre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `competition`
--

INSERT INTO `competition` (`num_seq`, `date`, `centre`, `cout_inscription`, `type_compétition`) VALUES
(1, '2021-03-19', 6, 24, 24),
(2, '2020-12-03', 45, 47, 80),
(3, '2021-06-04', 33, 48, 60),
(4, '2020-07-11', 25, 100, 26),
(5, '2022-02-12', 1, 15, 51),
(6, '2021-02-27', 37, 85, 14),
(7, '2020-04-01', 47, 54, 35),
(8, '2021-05-11', 28, 8, 61),
(9, '2020-08-20', 9, 56, 75),
(10, '2022-03-12', 44, 33, 11),
(11, '2020-04-24', 61, 75, 78),
(12, '2022-02-14', 45, 6, 63),
(13, '2020-06-30', 72, 99, 60),
(14, '2022-07-19', 66, 25, 52),
(15, '2021-01-09', 39, 71, 11),
(16, '2021-01-04', 27, 16, 34),
(17, '2020-10-11', 68, 18, 74),
(18, '2021-12-20', 80, 22, 64),
(19, '2022-04-02', 63, 51, 46),
(20, '2020-11-07', 1, 16, 2),
(21, '2022-01-25', 25, 29, 89),
(22, '2020-05-05', 5, 50, 28),
(23, '2020-08-23', 74, 25, 24),
(24, '2020-11-30', 19, 86, 34),
(25, '2021-06-04', 9, 96, 37),
(26, '2020-11-20', 97, 48, 72),
(27, '2020-09-14', 69, 93, 22),
(28, '2022-02-09', 59, 92, 85),
(29, '2021-12-22', 45, 88, 75),
(30, '2022-07-08', 45, 13, 9),
(31, '2022-07-19', 97, 48, 50),
(32, '2021-02-02', 94, 32, 63),
(33, '2020-05-07', 70, 89, 47),
(34, '2021-02-01', 3, 100, 94),
(35, '2022-06-16', 49, 32, 36),
(36, '2021-12-27', 1, 37, 25),
(37, '2020-07-27', 7, 95, 21),
(38, '2021-05-03', 5, 82, 26),
(39, '2021-01-15', 70, 23, 11),
(40, '2021-01-24', 54, 32, 80),
(41, '2021-11-18', 39, 2, 51),
(42, '2021-10-13', 65, 29, 78),
(43, '2022-04-01', 37, 9, 61),
(44, '2022-03-22', 83, 24, 61),
(45, '2022-03-02', 7, 22, 53),
(46, '2020-04-08', 6, 88, 85),
(47, '2020-09-12', 11, 9, 19),
(48, '2021-05-31', 37, 77, 96),
(49, '2020-12-17', 99, 63, 70),
(50, '2020-06-16', 12, 76, 78),
(51, '2021-01-26', 44, 25, 75),
(52, '2020-06-26', 8, 30, 28),
(53, '2021-11-23', 83, 86, 79),
(54, '2020-07-06', 77, 64, 35),
(55, '2022-07-12', 40, 9, 23),
(56, '2020-04-05', 62, 76, 48),
(57, '2020-05-19', 62, 65, 68),
(58, '2021-02-14', 60, 35, 60),
(59, '2021-01-05', 79, 92, 54),
(60, '2020-07-12', 4, 94, 40),
(61, '2021-04-05', 58, 11, 37),
(62, '2020-09-29', 1, 38, 18),
(63, '2020-05-09', 2, 21, 71),
(64, '2021-09-27', 76, 7, 47),
(65, '2021-10-17', 38, 93, 59),
(66, '2020-12-20', 35, 45, 85),
(67, '2021-06-06', 96, 94, 28),
(68, '2020-11-26', 11, 13, 67),
(69, '2022-02-17', 95, 41, 55),
(70, '2021-12-06', 42, 29, 79),
(71, '2021-08-29', 40, 13, 67),
(72, '2022-04-24', 74, 20, 91),
(73, '2021-02-24', 29, 87, 52),
(74, '2021-06-29', 47, 15, 45),
(75, '2020-05-18', 45, 74, 43),
(76, '2021-08-31', 41, 67, 65),
(77, '2020-12-22', 80, 21, 4),
(78, '2020-06-03', 9, 88, 51),
(79, '2020-04-03', 21, 50, 46),
(80, '2020-11-20', 68, 15, 47),
(81, '2021-12-25', 36, 49, 7),
(82, '2022-04-17', 52, 6, 70),
(83, '2021-05-17', 83, 44, 18),
(84, '2021-06-19', 29, 48, 61),
(85, '2021-09-01', 38, 36, 14),
(86, '2021-07-14', 91, 60, 76),
(87, '2020-07-01', 25, 70, 85),
(88, '2020-08-05', 28, 30, 69),
(89, '2020-10-16', 11, 49, 26),
(90, '2022-05-25', 58, 84, 84),
(91, '2022-03-09', 51, 60, 53),
(92, '2021-03-19', 85, 58, 36),
(93, '2021-05-20', 94, 19, 45),
(94, '2020-08-04', 45, 22, 28),
(95, '2021-02-06', 37, 41, 7),
(96, '2022-05-05', 25, 92, 84),
(97, '2021-11-21', 70, 19, 46),
(98, '2022-01-20', 89, 29, 33),
(99, '2022-02-03', 76, 85, 80),
(100, '2021-12-27', 49, 62, 75);

-- --------------------------------------------------------

--
-- Structure de la table `licencie`
--

DROP TABLE IF EXISTS `licencie`;
CREATE TABLE IF NOT EXISTS `licencie` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL,
  `sexe` varchar(55) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `club` int(11) NOT NULL,
  `catAge` int(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contrainte_foreign_key_catAge` (`catAge`),
  KEY `contrainte_foreign_key_club` (`club`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='111111111111111111111111111111';

--
-- Déchargement des données de la table `licencie`
--

INSERT INTO `licencie` (`id`, `nom`, `prenom`, `date`, `sexe`, `adresse`, `club`, `catAge`) VALUES
(1, 'Massen', 'Jo-ann', '2021-01-28 05:51:21', 'Male', '86574 Orin Lane', 5, 6),
(2, 'McKeighen', 'Katee', '2021-01-06 09:02:43', 'Genderfluid', '026 Bonner Junction', 30, 1),
(3, 'Gruczka', 'Laryssa', '2020-06-27 17:14:19', 'Agender', '6075 Esker Alley', 15, 6),
(4, 'Ingleson', 'Corry', '2020-07-03 10:15:05', 'Male', '762 Shasta Street', 31, 6),
(5, 'Buxsey', 'Wilie', '2021-03-06 03:18:44', 'Non-binary', '93301 Thompson Avenue', 2, 4),
(6, 'Ruddlesden', 'Georgetta', '2020-06-17 01:20:16', 'Bigender', '2 Washington Way', 94, 6),
(7, 'Korous', 'Aldis', '2021-01-12 01:52:54', 'Bigender', '73824 Algoma Avenue', 89, 6),
(8, 'Osinin', 'Lenore', '2021-03-18 09:58:28', 'Polygender', '976 Morningstar Circle', 55, 5),
(9, 'Bambery', 'Charisse', '2021-01-08 08:13:42', 'Non-binary', '22 Morningstar Hill', 1, 6),
(10, 'Waddingham', 'Ephraim', '2021-03-11 06:41:43', 'Non-binary', '9 Sundown Junction', 89, 1),
(11, 'Pavlitschek', 'Symon', '2020-05-05 16:35:54', 'Bigender', '8732 Claremont Point', 8, 6),
(12, 'Yemm', 'Griffin', '2020-06-08 10:29:10', 'Polygender', '0500 Valley Edge Place', 29, 6),
(13, 'McPartling', 'Dene', '2020-09-13 02:59:39', 'Genderqueer', '55737 Golden Leaf Place', 89, 6),
(14, 'Yewen', 'Maje', '2020-10-27 18:55:29', 'Female', '85144 Melby Lane', 44, 3),
(15, 'Maris', 'See', '2020-10-26 15:47:07', 'Bigender', '698 Caliangt Point', 55, 4),
(16, 'Langtry', 'Eddi', '2021-02-28 03:46:32', 'Non-binary', '9909 Evergreen Trail', 47, 3),
(17, 'Baack', 'Reggie', '2020-09-04 20:43:40', 'Genderfluid', '3 Northview Circle', 17, 3),
(18, 'Egarr', 'Andros', '2020-08-04 04:52:15', 'Agender', '32 Golf Course Parkway', 1, 5),
(19, 'Caslane', 'Vanny', '2021-01-14 09:10:19', 'Genderqueer', '702 Fulton Alley', 35, 6),
(20, 'Cavy', 'Alejandro', '2020-05-04 23:20:39', 'Polygender', '8283 Service Way', 49, 6),
(21, 'Prescot', 'Melly', '2020-08-04 22:46:07', 'Polygender', '1 Mockingbird Way', 2, 6),
(22, 'Johncey', 'Drusie', '2020-04-26 12:32:33', 'Bigender', '40073 Moulton Center', 12, 6),
(23, 'Swinfon', 'Amandi', '2020-10-21 14:15:20', 'Agender', '51 Merrick Pass', 77, 5),
(24, 'Keslake', 'Luce', '2020-06-22 01:54:02', 'Genderqueer', '4814 Milwaukee Alley', 16, 5),
(25, 'Yarr', 'Adriane', '2021-02-12 05:22:02', 'Genderfluid', '8 Mesta Center', 63, 5),
(26, 'Dakhov', 'Brandais', '2020-03-31 18:06:49', 'Non-binary', '83798 Fuller Park', 93, 6),
(27, 'Whelband', 'Marchelle', '2020-10-15 10:12:14', 'Bigender', '6785 Sugar Trail', 73, 5),
(28, 'Stoppe', 'Luella', '2021-02-28 02:06:28', 'Polygender', '7604 Michigan Alley', 87, 6),
(29, 'Rawstorn', 'Jeanine', '2020-08-01 02:23:54', 'Polygender', '438 Reinke Road', 56, 5),
(30, 'Eskriet', 'Selig', '2021-02-10 16:46:29', 'Bigender', '4857 Kropf Avenue', 14, 6),
(31, 'Pendre', 'Buffy', '2021-01-22 19:38:35', 'Genderqueer', '13888 Eastwood Drive', 99, 5),
(32, 'Zavattero', 'Delcine', '2020-04-07 09:34:05', 'Genderfluid', '57 Grover Point', 82, 6),
(33, 'Caesmans', 'Tomasine', '2021-01-08 12:05:27', 'Bigender', '89926 Bonner Way', 13, 3),
(34, 'Alwen', 'Jennette', '2020-07-16 23:04:12', 'Genderfluid', '26 Armistice Junction', 83, 6),
(35, 'Bethune', 'Carmita', '2020-08-17 07:27:36', 'Genderqueer', '166 Maple Court', 93, 3),
(36, 'Nesby', 'Madlen', '2020-12-09 12:10:37', 'Non-binary', '1 Carberry Park', 32, 6),
(37, 'Greenacre', 'Liane', '2020-06-29 10:19:49', 'Genderfluid', '80 Springs Avenue', 20, 6),
(38, 'Sweetman', 'Corry', '2021-02-28 18:31:52', 'Genderqueer', '66248 Bellgrove Alley', 34, 4),
(39, 'Gooding', 'Leodora', '2020-05-24 17:41:25', 'Polygender', '0 Elmside Avenue', 88, 3),
(40, 'Lawton', 'Dulcinea', '2020-07-10 10:15:41', 'Polygender', '01 Ridgeway Center', 24, 6),
(41, 'Pree', 'Raffaello', '2020-08-31 10:21:27', 'Polygender', '0765 Washington Alley', 26, 6),
(42, 'Clardge', 'Kenneth', '2021-03-11 12:19:27', 'Polygender', '57205 Crowley Court', 72, 5),
(43, 'Lerer', 'Rosana', '2020-10-24 11:06:13', 'Agender', '2554 Shoshone Crossing', 66, 2),
(44, 'Richings', 'Peg', '2020-07-02 16:04:49', 'Bigender', '22 Debs Avenue', 18, 5),
(45, 'McGuire', 'Millisent', '2020-12-02 13:36:16', 'Male', '588 Vidon Terrace', 69, 6),
(46, 'Braiden', 'Jethro', '2020-11-01 23:05:08', 'Agender', '03 Sutherland Point', 72, 6),
(47, 'Joontjes', 'Lanny', '2020-06-11 04:22:53', 'Female', '3 Graedel Circle', 77, 6),
(48, 'Ovise', 'Charil', '2020-08-07 00:01:17', 'Male', '37 Hoepker Plaza', 80, 5),
(49, 'Jebb', 'Freedman', '2020-11-21 22:22:16', 'Agender', '14 Village Parkway', 71, 5),
(50, 'Pilipets', 'Lucky', '2020-11-03 22:00:10', 'Agender', '2452 Messerschmidt Place', 53, 4),
(51, 'Purvess', 'Barr', '2020-07-10 06:41:50', 'Genderfluid', '1097 Harper Avenue', 45, 5),
(52, 'Camacke', 'Saul', '2021-03-01 07:03:24', 'Genderfluid', '19 Pankratz Street', 67, 6),
(53, 'Puvia', 'Kimble', '2020-12-03 08:02:40', 'Female', '661 Raven Circle', 34, 6),
(54, 'Monier', 'Saloma', '2020-09-04 10:58:22', 'Genderfluid', '83765 5th Junction', 5, 6),
(55, 'Berr', 'Blinnie', '2020-06-14 10:35:18', 'Female', '6 Scoville Place', 70, 6),
(56, 'Juleff', 'Mariejeanne', '2020-07-27 00:38:53', 'Female', '240 6th Crossing', 73, 4),
(57, 'Crang', 'Zacharias', '2020-06-28 13:22:04', 'Agender', '3 Hintze Hill', 14, 2),
(58, 'Cartmel', 'Cletus', '2021-01-13 16:51:45', 'Bigender', '900 Darwin Way', 71, 5),
(59, 'Gerbel', 'Artemas', '2020-07-21 15:20:08', 'Genderfluid', '88389 Bellgrove Hill', 14, 2),
(60, 'Lemm', 'Kaja', '2020-05-12 20:11:30', 'Male', '13476 Paget Road', 2, 6),
(61, 'How to preserve', 'Gussie', '2020-07-02 04:44:17', 'Non-binary', '865 Elgar Circle', 99, 6),
(62, 'Sheed', 'Adria', '2020-06-05 02:21:15', 'Genderfluid', '54 Schlimgen Junction', 18, 4),
(63, 'Schermick', 'Rodrique', '2020-12-26 12:31:05', 'Female', '3785 Melody Center', 11, 6),
(64, 'Bilbery', 'Ardelis', '2021-01-01 11:06:14', 'Female', '3 Gale Trail', 7, 6),
(65, 'Killoran', 'Katti', '2020-08-11 14:14:57', 'Female', '73 Ilene Point', 71, 6),
(66, 'Tucknutt', 'Baxie', '2020-03-28 04:19:17', 'Female', '80 Pennsylvania Plaza', 19, 3),
(67, 'Spinelli', 'Arlinda', '2020-11-16 15:25:52', 'Non-binary', '04817 American Ash Point', 37, 5),
(68, 'Filippazzo', 'Herby', '2020-05-11 09:10:44', 'Bigender', '4 Sutteridge Alley', 26, 4),
(69, 'Malham', 'Anatollo', '2021-03-12 03:07:09', 'Genderfluid', '402 Petterle Point', 53, 6),
(70, 'Olver', 'Cyndi', '2020-09-10 22:32:04', 'Agender', '65 Magdeline Junction', 42, 5),
(71, 'Lapthorn', 'Nikoletta', '2021-02-11 15:18:51', 'Polygender', '1502 Golf Course Way', 2, 5),
(72, 'Happel', 'Aldrich', '2021-02-26 02:43:48', 'Female', '1 Mesta Hill', 55, 4),
(73, 'Armin', 'Grayce', '2020-06-12 21:41:34', 'Female', '47370 Ronald Regan Way', 19, 5),
(74, 'Gudgeon', 'Geneva', '2021-01-28 14:30:11', 'Female', '84 Bay Circle', 92, 5),
(75, 'Ilyin', 'Berenice', '2020-09-08 07:26:49', 'Polygender', '3 Bunting Terrace', 6, 3),
(76, 'Rao', 'Sonny', '2020-10-26 01:00:22', 'Polygender', '8792 Blackbird Street', 88, 4),
(77, 'Iacovaccio', 'Lauraine', '2020-11-03 00:01:15', 'Male', '2011 Utah Hill', 82, 6),
(78, 'Reames', 'Jodie', '2020-08-21 17:12:17', 'Non-binary', '60322 Marcy Pass', 21, 3),
(79, 'Dowle', 'Candi', '2020-09-12 04:05:55', 'Non-binary', '37 Clove Circle', 42, 6),
(80, 'Gilbank', 'Blair', '2020-09-05 22:39:00', 'Agender', '952 Anderson Hill', 85, 6),
(81, 'Frude', 'Mimi', '2021-02-08 11:20:20', 'Polygender', '8 Fisk Place', 2, 5),
(82, 'McCall', 'Win', '2020-04-30 14:34:55', 'Polygender', '3332 Pierstorff Pass', 43, 5),
(83, 'Kebell', 'Nial', '2020-06-02 04:30:57', 'Genderqueer', '88 Rusk Trail', 24, 6),
(84, 'Syme', 'Suzie', '2020-10-09 23:28:00', 'Polygender', '06164 Birchwood Alley', 76, 6),
(85, 'Garn', 'Marcos', '2021-02-15 06:59:33', 'Genderqueer', '69 Harbort Pass', 11, 4),
(86, 'Gettins', 'Florette', '2021-03-04 19:56:01', 'Female', '310 Monument Trail', 88, 5),
(87, 'Wadhams', 'Blondie', '2021-03-07 11:56:45', 'Genderfluid', '8 Heffernan Alley', 18, 5),
(88, 'Storks', 'Janie', '2020-10-04 03:19:51', 'Male', '6323 Service Trail', 63, 3),
(89, 'Codrington', 'Clair', '2021-01-21 06:22:25', 'Non-binary', '345 Fisk Circle', 89, 5),
(90, 'Drinkwater', 'Marena', '2020-09-06 11:22:24', 'Genderqueer', '31 Eastwood Terrace', 96, 6),
(91, 'Dreye', 'Raye', '2020-05-11 19:43:28', 'Genderqueer', '222 Derek Lane', 5, 6),
(92, 'Micklewright', 'Zollie', '2020-07-09 03:09:46', 'Non-binary', '1713 Northport Center', 91, 6),
(93, 'OIlier', 'Kathi', '2020-09-16 11:27:04', 'Non-binary', '97000 Clarendon Road', 55, 6),
(94, 'Ridding', 'Maryann', '2020-07-18 14:27:21', 'Genderqueer', '3 Parkside Way', 7, 6),
(95, 'Brinded', 'Ainsley', '2020-06-24 22:01:55', 'Genderqueer', '6 Tomscot Point', 3, 6),
(96, 'Minney', 'Delilah', '2020-10-09 06:03:07', 'Male', '66 Express Street', 25, 6),
(97, 'McQuirter', 'Rachelle', '2020-04-28 19:44:04', 'Non-binary', '3 John Wall Pass', 68, 4),
(98, 'Keen', 'Quinlan', '2021-03-07 00:29:58', 'Genderqueer', '562 Mayfield Park', 62, 5),
(99, 'Schoenfisch', 'Sandye', '2020-12-04 11:06:57', 'Genderfluid', '05 Farwell Lane', 29, 6),
(100, 'O\'Heaney', 'Allie', '2020-04-02 08:28:09', 'Genderfluid', '6 Porter Street', 90, 6);

-- --------------------------------------------------------

--
-- Structure de la table `participer`
--

DROP TABLE IF EXISTS `participer`;
CREATE TABLE IF NOT EXISTS `participer` (
  `competition` int(11) NOT NULL,
  `joueur` int(11) NOT NULL,
  `nbr_total_quilles` int(11) NOT NULL,
  `nbr_parties` int(11) NOT NULL,
  PRIMARY KEY (`competition`,`joueur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `Cascade club` FOREIGN KEY (`centre`) REFERENCES `centre` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contrainte_foreign_key_centre` FOREIGN KEY (`centre`) REFERENCES `centre` (`id`);

--
-- Contraintes pour la table `competition`
--
ALTER TABLE `competition`
  ADD CONSTRAINT `Cascade Compétition` FOREIGN KEY (`centre`) REFERENCES `centre` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contrainte_foreign_key_centreCompet` FOREIGN KEY (`centre`) REFERENCES `centre` (`id`);

--
-- Contraintes pour la table `licencie`
--
ALTER TABLE `licencie`
  ADD CONSTRAINT `contrainte_foreign_key_catAge` FOREIGN KEY (`catAge`) REFERENCES `categorie_age` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contrainte_foreign_key_club` FOREIGN KEY (`club`) REFERENCES `club` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
