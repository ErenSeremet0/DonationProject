-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Ara 2024, 14:43:06
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `donationdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `note` varchar(256) DEFAULT NULL,
  `donation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `donation`
--

INSERT INTO `donation` (`donation_id`, `donor_id`, `event_id`, `amount`, `note`, `donation_date`) VALUES
(1, 15, 1, 1000.00, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed ', '2024-12-27 10:47:07'),
(2, 15, 5, 5000.00, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed ', '2024-12-27 10:47:34'),
(3, 15, 5, 1500.00, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed ', '2024-12-27 10:47:48'),
(4, 15, 6, 2000.00, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed ', '2024-12-16 10:48:14'),
(5, 17, 6, 11299.00, 'güzel bağış al la işte lazım olur aaaaaaaa', '2024-12-16 15:54:03'),
(6, 18, 6, 9999.00, 'ahahhaa güzelbğaış ahahhaha niye böyle diyon kiii', '2024-12-16 15:55:45'),
(7, 17, 18, 99999.00, 'Kalbimi bıraktım beee ne parası', '2024-12-16 17:40:21'),
(10, 17, 18, 9999.00, 'güzel canım biricik paracıklarımla yaptğımı bağışım', '2024-12-16 17:49:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `donor`
--

CREATE TABLE `donor` (
  `donor_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `institution` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `balance` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `donor`
--

INSERT INTO `donor` (`donor_id`, `first_name`, `last_name`, `birthday`, `email`, `phone`, `job_title`, `institution`, `password`, `balance`) VALUES
(11, 'Fikri', 'Sezer', '1990-06-12', 'fikri@example.com', '5056789090', 'Göz Doktoru', 'Saha Göz Hastanesi', '123', 17000),
(12, 'Alican', 'Erol', '1980-03-22', 'alican@example.com', '5101221344', '', '', '123', 20000),
(13, 'Canan', 'Öz', '1989-08-11', 'canan@example.com', '5338889200', 'Tasarımcı', 'Akıl Sanat Okulu', '123', 8000),
(14, 'Asuman', 'Solmaz', '1991-11-20', 'asuman@example.com', '5443667878', 'Avukat', 'Adalet Bürosu', '123', 8000),
(15, 'Berkay', 'Korkmaz', '1995-05-05', 'berkay@example.com', '5339904545', 'Bilgisayar Mühendisi', 'Tex Teknoloji', '123', 13000),
(17, 'Eren', 'Şeremet', NULL, 'erenseremet3044@gmail.com', NULL, NULL, NULL, '123', 0),
(18, 'magumt', NULL, NULL, 'cafer@cafer.com', NULL, NULL, NULL, NULL, 0),
(19, '11111111111111', NULL, NULL, '11111111111111111111@1111111111111', NULL, NULL, NULL, NULL, 0),
(20, '123123123', NULL, NULL, '12312312312@sadasdas', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `donor_event`
--

CREATE TABLE `donor_event` (
  `ID` int(11) NOT NULL,
  `donor_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `registration` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `donor_event`
--

INSERT INTO `donor_event` (`ID`, `donor_id`, `event_id`, `registration`, `image`) VALUES
(1, 15, 1, '2024-12-26 10:45:43', NULL),
(2, 15, 3, '2024-12-25 10:46:20', NULL),
(3, 15, 5, '2024-12-25 10:46:40', NULL),
(4, 15, 6, '2024-12-25 10:46:50', NULL),
(6, 15, 3, '2024-12-16 14:59:55', NULL),
(7, 15, 5, '2024-12-16 15:01:08', NULL),
(8, 15, 4, '2024-12-16 15:01:15', NULL),
(9, 15, 9, '2024-12-16 15:47:00', NULL),
(10, 15, 9, '2024-12-16 15:55:13', NULL),
(11, 15, 10, '2024-12-16 15:56:54', NULL),
(12, 15, 10, '2024-12-16 16:17:51', NULL),
(13, 15, 8, '2024-12-16 16:21:12', NULL),
(14, 17, 18, '2024-12-16 17:49:39', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `events`
--

INSERT INTO `events` (`event_id`, `recipient_id`, `event_name`, `image`, `location`, `description`, `end_time`, `created_time`) VALUES
(1, 1, 'Her Mahalleye Bir Kütüphane', 'p1.png', 'İstanbul', 'Lorem ipsum dolor sit amet, consectetur adipiscing...', '2025-01-16 13:35:40', '2024-12-03 10:35:40'),
(2, 2, 'Gençlere Kodlama Eğitimi', 'p2.png', 'Ankara', 'Projenin amacı gençlere teknoloji becerisi kazandırmak...', '2025-02-01 18:00:00', '2024-12-05 11:00:00'),
(3, 3, 'Sokak Hayvanlarına Yardım', 'p3.png', 'İzmir', 'Etkinlik kapsamında mama bağışı ve veteriner desteği sağlanacak...', '2025-01-25 16:00:00', '2024-12-06 07:30:00'),
(4, 1, 'Kışlık Giysi Dağıtımı', 'p4.png', 'Bursa', 'İhtiyaç sahibi ailelere kışlık giysi dağıtımı yapılacak...', '2025-01-20 15:00:00', '2024-12-07 06:15:00'),
(5, 4, 'Kan Bağışı Kampanyası', 'p5.png', 'Adana', 'Kan bağışı ile hayata umut olun...', '2025-03-01 20:00:00', '2024-12-08 08:45:00'),
(6, 5, 'Eğitim Materyalleri Dağıtımı', 'event1.png', 'Trabzon', 'Kırsal kesimdeki okullara kitap ve defter bağışı yapılacak...', '2025-02-15 12:00:00', '2024-12-09 05:00:00'),
(7, 6, 'Engelli Bireylere Destek', 'event2.png', 'Antalya', 'Engelli bireylere yönelik farkındalık ve yardım kampanyası...', '2025-04-10 17:00:00', '2024-12-10 12:20:00'),
(8, 2, 'Doğa Temizliği ve Fidan Dikimi', 'event3.png', 'Mersin', 'Ormanlık alanlarda temizlik ve fidan dikimi yapılacak...', '2025-03-30 14:00:00', '2024-12-11 09:35:00'),
(9, 3, 'Yerel Sanatçılarla Buluşma', 'inst3.jpg', 'Eskişehir', 'Sanata destek amacıyla düzenlenen etkinlik...', '2025-05-05 19:00:00', '2024-12-12 07:50:00'),
(10, 7, 'Sağlıklı Yaşam Semineri', 'inst2.jpg', 'Gaziantep', 'Sağlıklı yaşam ve spor üzerine bilgilendirici bir etkinlik...', '2025-01-30 18:30:00', '2024-12-13 11:10:00'),
(18, 1, 'Mervenin Kedileri', '157335777.png', 'Mervenin Evi', 'merveeeeeeeeeeeeeeee merve merve merveeee merveeeeeeeeeeeeeeee merve merve ', '2024-12-29 20:33:00', '2024-12-16 17:33:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `recipient`
--

CREATE TABLE `recipient` (
  `recipient_id` int(11) NOT NULL,
  `institution_name` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `purpose` varchar(200) DEFAULT NULL,
  `founding_date` date DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `recipient`
--

INSERT INTO `recipient` (`recipient_id`, `institution_name`, `email`, `phone`, `password`, `address`, `activity`, `purpose`, `founding_date`, `created_time`, `photo`) VALUES
(1, 'Eğitim ve Bilim Derneğiiiii2', 'egitim@dernek.org', '02123456789', 'securepassword1', 'İstanbul, Türkiye', 'Eğitim', 'Toplumun eğitim seviyesini artırmak', '2005-09-12', '2024-12-16 19:05:12', 'egitim_dernegi.jpg'),
(2, 'Yeşil Doğa Vakfı', 'yesildoga@vakif.org', '02123456790', 'securepassword2', 'Ankara, Türkiye', 'Çevre', 'Doğal çevreyi korumak ve sürdürülebilirlik sağlamak', '2010-05-23', '2024-12-16 19:05:12', 'yesil_doga_vakfi.jpg'),
(3, 'Sağlık Yardımlaşma Derneği', 'saglik@yardim.org', '02123456791', 'securepassword3', 'İzmir, Türkiye', 'Sağlık', 'Yoksul hastalara sağlık hizmeti sağlamak', '2015-08-10', '2024-12-16 19:05:12', 'saglik_yardim_dernegi.jpg'),
(4, 'Hayvan Hakları Platformu', 'hayvanhaklari@platform.org', '02123456792', 'securepassword4', 'Antalya, Türkiye', 'Hayvan Hakları', 'Hayvanların haklarını savunmak', '2018-03-14', '2024-12-16 19:05:12', 'hayvan_haklari_platformu.jpg'),
(5, 'Kadın Dayanışma Ağı', 'kadin@dayanisma.org', '02123456793', 'securepassword5', 'Bursa, Türkiye', 'Kadın Hakları', 'Kadınların ekonomik ve sosyal hayatta güçlenmesini sağlamak', '2020-02-28', '2024-12-16 19:05:12', 'kadin_dayanisma_agi.jpg'),
(6, 'Gençlik ve Spor Derneği', 'genclik@spor.org', '02123456794', 'securepassword6', 'Konya, Türkiye', 'Gençlik ve Spor', 'Gençlere spor eğitimi sağlamak ve sağlıklı yaşamı teşvik etmek', '2017-06-20', '2024-12-16 19:05:12', 'genclik_ve_spor_dernegi.jpg'),
(7, 'Sanat ve Kültür Vakfı', 'sanat@kultur.org', '02123456795', 'securepassword7', 'Sakarya, Türkiye', 'Sanat ve Kültür', 'Türk kültürünü yaymak ve sanatsal faaliyetleri desteklemek', '2012-11-15', '2024-12-16 19:05:12', 'sanat_ve_kultur_vakfi.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `donor_id` (`donor_id`);

--
-- Tablo için indeksler `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `donor_event`
--
ALTER TABLE `donor_event`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Tablo için indeksler `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`recipient_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `donor_event`
--
ALTER TABLE `donor_event`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `recipient`
--
ALTER TABLE `recipient`
  MODIFY `recipient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
