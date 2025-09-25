-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2025 at 01:19 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sensa2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `galerija`
--

CREATE TABLE `galerija` (
  `id_slika` int(11) NOT NULL,
  `naziv_slika` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `putanja_slika` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galerija`
--

INSERT INTO `galerija` (`id_slika`, `naziv_slika`, `putanja_slika`) VALUES
(1, 'Cudoviste ', 'Cudoviste.jpg'),
(2, 'Kockice', 'Kockice1.jpg'),
(3, 'Kockice2', 'Kockice2.jpg'),
(4, 'Obruč', 'Obruc.jpg'),
(5, 'Poligon', 'Poligon.jpg'),
(6, 'Ribice', 'Ribice.jpg'),
(7, 'ShooShooMali', 'ShooShooMali.jpg'),
(8, 'Fliper', 'Fliper.jpg'),
(9, 'Materijal ', 'Materijal.jpg'),
(10, 'Materijal1', 'Materijal1.jpg'),
(11, 'Uskrs', 'Uskrs.jpg'),
(12, 'Vulkan', 'Vulkan1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kontakt`
--

CREATE TABLE `kontakt` (
  `id_kontakt` int(11) NOT NULL,
  `imePrezime` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `poruka` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id_korisnik` int(11) NOT NULL,
  `ime_korisnik` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `prezime_korisnik` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `korisnicko_ime` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `lozinka` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uloga_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id_korisnik`, `ime_korisnik`, `prezime_korisnik`, `korisnicko_ime`, `email`, `lozinka`, `uloga_id`) VALUES
(5, 'Aleksandra', 'Fridl', 'admin', 'bebelak@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(6, 'Mladen', 'Jeremic', 'korisnik', 'mladjica@gmail.com', '716b64c0f6bad9ac405aab3f00958dd1', 2),
(9, 'Veljko', 'Fridl', 'Veljko', 'veljko@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 2),
(10, 'Vesna', 'Fridl', 'Vesna', 'vesna@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 2),
(11, 'David', 'Jeremic', 'david', 'david@gmail.com', '172522ec1028ab781d9dfd17eaca4427', 2),
(12, 'Milica', 'Domanovic', 'Mica', 'mica@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 2),
(13, 'Djura', 'Djurisic', 'duro1111', 'duro@gmail.com', '25f9e794323b453885f5181f1b624d0b', 2),
(14, 'Daca', 'Misic', 'misko', 'daca@gmail.com', '25f9e794323b453885f5181f1b624d0b', 2),
(15, 'Nenad', 'Blazic', 'blaza', 'blaza@gmail.com', '25f9e794323b453885f5181f1b624d0b', 2);

-- --------------------------------------------------------

--
-- Table structure for table `meni`
--

CREATE TABLE `meni` (
  `id_meni` int(11) NOT NULL,
  `naziv_meni` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posetioci_meni` int(11) NOT NULL,
  `admin_meni` int(11) NOT NULL,
  `korisnik_meni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meni`
--

INSERT INTO `meni` (`id_meni`, `naziv_meni`, `posetioci_meni`, `admin_meni`, `korisnik_meni`) VALUES
(1, 'Početna', 1, 0, 1),
(2, 'Program', 1, 1, 1),
(3, 'Galerija', 0, 1, 1),
(5, 'Autor', 1, 0, 0),
(6, 'Korisnici', 0, 1, 0),
(7, 'Anketa', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `odgovori`
--

CREATE TABLE `odgovori` (
  `id_odgovor` int(11) NOT NULL,
  `ime_odgovor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `glas_odgovor` int(11) NOT NULL,
  `pitanje_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `odgovori`
--

INSERT INTO `odgovori` (`id_odgovor`, `ime_odgovor`, `glas_odgovor`, `pitanje_id`) VALUES
(1, 'Ocena 1', 4, 1),
(2, 'Ocena 2', 6, 1),
(3, 'Ocena 3', 8, 1),
(4, 'Ocena 4', 1, 1),
(5, 'Ocena 5', 4, 1),
(7, 'Da', 0, 2),
(8, 'Ne', 0, 2),
(9, 'Da', 0, 5),
(10, 'Ne', 0, 5),
(11, 'Mozda', 0, 5),
(12, 'Da', 3, 6),
(13, 'Ne', 1, 6),
(14, 'Hocemo', 0, 71),
(15, '\\zx\\z', 0, 2),
(16, 'Nesto', 0, 2),
(17, 'Nesto1', 0, 2),
(18, 'Da', 0, 3),
(19, 'Ne', 0, 3),
(20, 'Necu da', 0, 3),
(21, 'Da ', 0, 10),
(24, 'Ne', 0, 10),
(25, 'Suncano', 0, 14),
(26, 'Suncano', 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `pitanja`
--

CREATE TABLE `pitanja` (
  `id_pitanja` int(11) NOT NULL,
  `naziv_pitanja` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `aktivno_pitanje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `pitanja`
--

INSERT INTO `pitanja` (`id_pitanja`, `naziv_pitanja`, `aktivno_pitanje`) VALUES
(1, 'Ocena sajta:', 1),
(10, 'Bkal bla?', 0),
(11, 'Nesto li?', 0),
(12, 'Znas li?', 0),
(13, 'Hoces li?', 0),
(14, 'Kakvo je vreme', 0);

-- --------------------------------------------------------

--
-- Table structure for table `programi`
--

CREATE TABLE `programi` (
  `id_prog` int(11) NOT NULL,
  `naziv_prog` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tekst1_prog` text COLLATE utf8mb4_unicode_ci,
  `tekst2_prog` text COLLATE utf8mb4_unicode_ci,
  `tekst3_prog` text COLLATE utf8mb4_unicode_ci,
  `slikaP_id` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programi`
--

INSERT INTO `programi` (`id_prog`, `naziv_prog`, `tekst1_prog`, `tekst2_prog`, `tekst3_prog`, `slikaP_id`) VALUES
(3, 'Mali (3-7god)', 'Radionice su prilika da se stekne funkcionalno znanje stečeno u školi ali i u kreativnim učionicama ovog tipa. Različite su tematike i različite uzraste dece. Osmišljavaju se krejem meseca i do početka meseca se objavljuju na oglasnoj tabli u našim prostorijama. Takođe se oslanjaju na NTC sistem učenja.', 'Ciljevi NTC sistema učenja su: <br>\r\n								- podizanje nivoa intelektualnih sposobnosti svih učenika koji učestvuju u programu <br>\r\n								- sprečavanje poremećaja pažnje i koncentracije u školskom periodu <br>\r\n								- razvijanje koordinacije pokreta i motorike <br>\r\n								- razvijanje brzine razmišljanja, povezivanja i zaključivanja (funkcionalno znanje) <br>\r\n								- pravovremeno uočavanje darovitih učenika i podsticanja razvoja njihovih sposobnos <br>', 'svi', '1'),
(5, 'Radionice(7-10god)', 'Radionice su prilika da se stekne funkcionalno znanje stečeno u školi ali i u kreativnim učionicama ovog tipa. Različite su tematike i različite uzraste dece. Osmišljavaju se krejem meseca i do početka meseca se objavljuju na oglasnoj tabli u našim prostorijama. Takođe se oslanjaju na NTC sistem učenja.', 'Ciljevi NTC sistema učenja su:\n- podizanje nivoa intelektualnih sposobnosti svih učenika koji učestvuju u programu\n- sprečavanje poremećaja pažnje i koncentracije u školskom periodu\n- razvijanje koordinacije pokreta i motorike\n- razvijanje brzine razmišljanja, povezivanja i zaključivanja (funkcionalno znanje)\n- pravovremeno uočavanje darovitih učenika i podsticanja razvoja njihovih sposobnos', 'Nesto Nesto Nesto Nesto Nesto', '3');

-- --------------------------------------------------------

--
-- Table structure for table `sadrzaj`
--

CREATE TABLE `sadrzaj` (
  `id_sadzaj` int(11) NOT NULL,
  `naziv_sadrzaj` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slika_sadrzaj` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tekst1_sadrzaj` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tekst2_sadrzaj` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tekst3_sadrzaj` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sadrzaj`
--

INSERT INTO `sadrzaj` (`id_sadzaj`, `naziv_sadrzaj`, `slika_sadrzaj`, `tekst1_sadrzaj`, `tekst2_sadrzaj`, `tekst3_sadrzaj`) VALUES
(1, 'imeIprezime', 'aleksandra_fridl.jpg', 'Aleksandra', 'Fridl', 'Moje ime je Aleksandra Fridl.</br> Završila sam Filozofski fakultet, smer etnologija i antropologija. </br> 						Trenutno sam na završnoj godini studija Visoke ICT škole.</br> 						Ovaj sajt je realizovan radi ispunjavanja predispitnih obaveza iz predmeta Web programiranje PHP2, profesora Nenada Kojića,			na smeru Intrnet tehnologije, modul Web programiranje.'),
(2, 'Adresa', 'Flajer2.png', 'Kreativna učionica - Sensa</br>\r\n								Svetog Save 52</br>\r\n								Lazarevac', '', ''),
(3, 'slikaItekst', 'logo.jpg', '\n', '', ''),
(4, 'tekst_kontakt', 'NTC4.jpg', 'Sensa - kreativna učionica otvorena je 2012.godinie.</br>							Nastavni program koji realizuje sprovode licencirani', 'mentori koji svojim učešćem trebaju da motivišu polaznike i organizuju nastavu.</br> \r\nMaterijal koji se koristi je propratni materijal', 'sistema učenja.');

-- --------------------------------------------------------

--
-- Table structure for table `slikeprog`
--

CREATE TABLE `slikeprog` (
  `id_slikaP` int(125) NOT NULL,
  `naziv_slika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `putanja_slike` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slikeprog`
--

INSERT INTO `slikeprog` (`id_slikaP`, `naziv_slika`, `putanja_slike`) VALUES
(1, '	\r\nmali 2', '	\r\nShooShooMali4.jpg'),
(2, 'Mali naucnici', '15807438131580298094DSCN1306.JPG'),
(3, 'Radionice', 'Kosmos.jpg'),
(4, 'Radim na sebi', '15807454941580298094DSCN1306.JPG'),
(5, 'Mali naucnici', '158074639315807454941580298094DSCN1306.JPG'),
(6, 'Mali naucnici1', '1580746454aleksandra_fridl.jpg'),
(7, 'Mali naucnici 122', '1581959683DSCN1310.JPG'),
(8, 'Neto', '1757677275IMG_2073.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `uloga`
--

CREATE TABLE `uloga` (
  `id` int(125) NOT NULL,
  `naziv_uloga` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uloga`
--

INSERT INTO `uloga` (`id`, `naziv_uloga`) VALUES
(1, 'admin'),
(2, 'korisnik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galerija`
--
ALTER TABLE `galerija`
  ADD PRIMARY KEY (`id_slika`);

--
-- Indexes for table `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id_kontakt`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id_korisnik`);

--
-- Indexes for table `meni`
--
ALTER TABLE `meni`
  ADD PRIMARY KEY (`id_meni`);

--
-- Indexes for table `odgovori`
--
ALTER TABLE `odgovori`
  ADD PRIMARY KEY (`id_odgovor`);

--
-- Indexes for table `pitanja`
--
ALTER TABLE `pitanja`
  ADD PRIMARY KEY (`id_pitanja`);

--
-- Indexes for table `programi`
--
ALTER TABLE `programi`
  ADD PRIMARY KEY (`id_prog`);

--
-- Indexes for table `sadrzaj`
--
ALTER TABLE `sadrzaj`
  ADD PRIMARY KEY (`id_sadzaj`);

--
-- Indexes for table `slikeprog`
--
ALTER TABLE `slikeprog`
  ADD PRIMARY KEY (`id_slikaP`);

--
-- Indexes for table `uloga`
--
ALTER TABLE `uloga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galerija`
--
ALTER TABLE `galerija`
  MODIFY `id_slika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `id_kontakt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id_korisnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `meni`
--
ALTER TABLE `meni`
  MODIFY `id_meni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `odgovori`
--
ALTER TABLE `odgovori`
  MODIFY `id_odgovor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pitanja`
--
ALTER TABLE `pitanja`
  MODIFY `id_pitanja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `programi`
--
ALTER TABLE `programi`
  MODIFY `id_prog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sadrzaj`
--
ALTER TABLE `sadrzaj`
  MODIFY `id_sadzaj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slikeprog`
--
ALTER TABLE `slikeprog`
  MODIFY `id_slikaP` int(125) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uloga`
--
ALTER TABLE `uloga`
  MODIFY `id` int(125) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
