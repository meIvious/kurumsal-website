-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Şub 2021, 11:02:28
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kurumsal`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `metatitle` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `metadesc` longtext COLLATE utf8_turkish_ci NOT NULL,
  `metakey` longtext COLLATE utf8_turkish_ci NOT NULL,
  `metaauthor` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `metaowner` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `metacopy` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `logoyazisi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `renkkodu` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `twit` varchar(70) COLLATE utf8_turkish_ci NOT NULL,
  `face` varchar(70) COLLATE utf8_turkish_ci NOT NULL,
  `ints` varchar(70) COLLATE utf8_turkish_ci NOT NULL,
  `telefonno` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `adres` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `mailadres` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `slogan` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `referansbaslik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `galeribaslik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `yorumbaslik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `iletisimbaslik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `hizmetlerbaslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `mesajtercih` int(11) NOT NULL DEFAULT 1,
  `haritabilgi` text COLLATE utf8_turkish_ci NOT NULL,
  `footer` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `title`, `metatitle`, `metadesc`, `metakey`, `metaauthor`, `metaowner`, `metacopy`, `logoyazisi`, `renkkodu`, `twit`, `face`, `ints`, `telefonno`, `adres`, `mailadres`, `slogan`, `referansbaslik`, `galeribaslik`, `yorumbaslik`, `iletisimbaslik`, `hizmetlerbaslik`, `mesajtercih`, `haritabilgi`, `footer`) VALUES
(1, 'UDEMY NAKLİYAT', 'UDEMY NAKLİYAT', 'UDEMY NAKLİYAT', 'UDEMY NAKLİYAT', 'UDEMY NAKLİYAT-OLCAY KALYONCUOĞLU', 'LES', 'teknolojivadisi', '', 'fff', 'twitter', '', 'teknolojivadisi', '+90 555 44 44 44', 'ev', 'info@udemynakliyat.com', 'slogan', 'referans sayfa başlık', 'galeri sayfasının başlıgı burada olacak', 'teknolojivadisi', 'iletişim sayfasının başlıgı burada olacak', 'hizmetler başlık satırı  olacak', 3, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24369.879448556032!2d27.225460317567723!3d40.22607844707246!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b6b3e8ed742f0b%3A0x5db6d4ca26019f8f!2sBiga%2C%20%C3%87anakkale!5e0!3m2!1str!2str!4v1610379308989!5m2!1str!2str&quot; width=&quot;600&quot; height=&quot;450&quot; frameborder=&quot;0&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; aria-hidden=&quot;false&quot; tabindex=&quot;0&quot;', '2019 © Copyright UDEMY NAKLİYATi. All rights reserved.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `resimyol` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`id`, `resimyol`) VALUES
(10, 'img/filo/1.jpg'),
(11, 'img/filo/2.jpg'),
(12, 'img/filo/3.jpg'),
(13, 'img/filo/4.jpg'),
(14, 'img/filo/5.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelenmail`
--

CREATE TABLE `gelenmail` (
  `id` int(11) NOT NULL,
  `ad` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `mailadres` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `konu` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `zaman` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gelenmail`
--

INSERT INTO `gelenmail` (`id`, `ad`, `mailadres`, `konu`, `mesaj`, `zaman`, `durum`) VALUES
(22, 'aa', 'aa', 'aa', 'aa', '11.01.2021/14:44', 2),
(26, 'aa', '', '', '', '11.01.2021/14:45', 1),
(27, 'bb', 'bb', 'bb', 'bb', '11.01.2021/14:54', 1),
(28, 'cc', 'cc', 'cc', 'cc', '11.01.2021/14:55', 1),
(29, 'dd', 'dd', 'dd', 'dd', '11.01.2021/14:57', 1),
(30, 'vv', 'vv', 'vv', 'vv', '11.01.2021/15:01', 1),
(31, 'zz', 'zz', 'zz', 'zz', '11.01.2021/15:03', 1),
(32, 'kk', 'kk', 'kk', 'kk', '11.01.2021/15:07', 1),
(33, 'ıı', 'ıı', 'ıı', 'ıı', '11.01.2021/15:09', 1),
(34, 'uu', 'uu', 'uu', 'uu', '11.01.2021/15:10', 1),
(35, 'tt', 'tt', 'tt', 'tt', '11.01.2021/15:11', 1),
(36, 'pp', 'pp', 'pp', 'pp', '11.01.2021/15:11', 1),
(37, 'ğğ', 'ğğ', 'ğğ', 'ğğ', '11.01.2021/15:17', 1),
(38, 'tamam kanks', 'oldu', 'teşekkür', 'ederim', '11.01.2021/16:22', 1),
(39, 'berkay', 'asdas@fb.com.tr', 'konu yok', 'mesaj', '12.01.2021/20:30', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelenmailayar`
--

CREATE TABLE `gelenmailayar` (
  `id` int(11) NOT NULL,
  `host` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `mailadres` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `port` int(11) NOT NULL,
  `aliciadres` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gelenmailayar`
--

INSERT INTO `gelenmailayar` (`id`, `host`, `mailadres`, `sifre`, `port`, `aliciadres`) VALUES
(1, 'host', 'madres', 'hosif', 23456, 'info@teknolojivadisi.pro ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int(11) NOT NULL,
  `baslik` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `baslik`, `icerik`, `resim`) VALUES
(1, 'hakkımızda baslık satırı', 'hakkımızda sayfası içerik kısmıdır', 'img/logo (2).jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetler`
--

CREATE TABLE `hizmetler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` longtext COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hizmetler`
--

INSERT INTO `hizmetler` (`id`, `baslik`, `icerik`) VALUES
(2, 'baslık111111111111', 'içerik 111111111111'),
(4, 'baslik', 'icerik yeni gelecek olan vsaire'),
(5, 'sitedeneme', 'içerik deneme'),
(6, 'bekokero', 'boş');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icon`
--

CREATE TABLE `icon` (
  `id` int(11) NOT NULL,
  `iconyol` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `icon`
--

INSERT INTO `icon` (`id`, `iconyol`) VALUES
(13, 'img/icon/pega.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `intro`
--

CREATE TABLE `intro` (
  `id` int(11) NOT NULL,
  `resimyol` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `intro`
--

INSERT INTO `intro` (`id`, `resimyol`) VALUES
(27, 'img/carousel/1.jpg'),
(28, 'img/carousel/2.jpg'),
(29, 'img/carousel/3.jpg'),
(30, 'img/carousel/4.jpg'),
(31, 'img/carousel/5.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `logoyol` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `logo`
--

INSERT INTO `logo` (`id`, `logoyol`) VALUES
(1, 'img/logo/airfellogo.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `referanslar`
--

CREATE TABLE `referanslar` (
  `id` int(11) NOT NULL,
  `resimyol` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `referanslar`
--

INSERT INTO `referanslar` (`id`, `resimyol`) VALUES
(1, 'img/referans/ref1.png'),
(2, 'img/referans/ref2.png'),
(3, 'img/referans/ref3.png'),
(4, 'img/referans/ref4.png'),
(5, 'img/referans/ref5.png'),
(6, 'img/referans/ref6.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetim`
--

CREATE TABLE `yonetim` (
  `id` int(11) NOT NULL,
  `kulad` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  `aktif` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yonetim`
--

INSERT INTO `yonetim` (`id`, `kulad`, `sifre`, `aktif`) VALUES
(4, 'kerem', '96de4eceb9a0c2b9b52c0b618819821b', 1),
(5, 'berkay', '0af2e8b1e4a91c959f3f8ed885a39f1c', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(11) NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `isim` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `icerik`, `isim`) VALUES
(1, 'bu bir yorumdur', 'pınar'),
(2, 'bu da bir yorumdur', 'kerem'),
(4, 'Bence bu da yorum', 'berkay');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gelenmail`
--
ALTER TABLE `gelenmail`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gelenmailayar`
--
ALTER TABLE `gelenmailayar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hizmetler`
--
ALTER TABLE `hizmetler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `icon`
--
ALTER TABLE `icon`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `referanslar`
--
ALTER TABLE `referanslar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yonetim`
--
ALTER TABLE `yonetim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `gelenmail`
--
ALTER TABLE `gelenmail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Tablo için AUTO_INCREMENT değeri `gelenmailayar`
--
ALTER TABLE `gelenmailayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `hizmetler`
--
ALTER TABLE `hizmetler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `icon`
--
ALTER TABLE `icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `intro`
--
ALTER TABLE `intro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `referanslar`
--
ALTER TABLE `referanslar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `yonetim`
--
ALTER TABLE `yonetim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
