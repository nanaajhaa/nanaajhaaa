-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 12:46 PM
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
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'phpgurukulofficial@gmail.com', 1, '2024-01-09 18:30:00', '2024-06-21 05:38:40'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.in', 0, '2024-01-09 18:30:00', '2024-01-31 05:43:01'),
(4, 'suadmin2', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 0, '2024-01-09 18:30:00', '2024-01-31 05:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Law', 'Related to laws news', '2024-01-11 18:30:00', '2024-06-21 05:45:15', 1),
(5, 'Football', 'Sports', '2024-01-11 18:30:00', '2024-06-21 05:46:28', 1),
(6, 'Politics', 'Politics', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(7, 'Business', 'Business', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(8, 'Lifestyle', 'Lifestyles', '2024-01-11 18:30:00', '2024-06-21 05:47:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, 12, 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2024-01-17 18:30:00', 1),
(2, 12, 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2024-01-18 18:30:00', 1),
(3, 7, 'ABC', 'abc@test.com', 'This is sample text for testing.', '2024-01-22 18:30:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2024-01-14 18:30:00', '2024-01-31 05:44:12'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; Surabaya Indonesia<br></b></p><p><b>Phone Number : </b>+62 95339355192<br></p><p><b>Email -id : </b>umifarzah54@gmail.com</p>', '2024-01-15 18:30:00', '2024-06-21 06:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, ' \"Curi Motor untuk Beli Narkoba, Pria di Medan Ditembak Polisi\"', 3, 4, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><b>Medan</b> -Seorang pria bernama Armansyah (27) mencuri sepeda motor warga di Kota Medan, Sumatera Utara (Sumut) dan menjualnya untuk membeli narkoba. Pihak kepolisian menembak kaki pelaku karena melawan saat akan ditangkap.<br><br>\"Saat ditangkap, pelaku mencoba melawan dan melarikan diri hingga akhirnya diberikan tindakan tegas dan terukur terkena di bagian kedua kaki pelaku,\" kata Kapolsek Medan Kota Kompol Selvi, Jumat (21/6/2024)<br><br>Selvi mengatakan pencurian itu terjadi depan rumah korban di Jalan Air Bersih, Kecamatan Medan Kota, Sabtu (8/6) Lalu, pelaku ditangkap pada Rabu (19/6).</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">\"Dari hasil penyelidikan yang kita dapatkan dari rekaman CCTV, pelaku masuk ke dalam dan langsung membawa kabur sepeda motor korban yang saat itu kuncinya dalam kondisi lengket,\" ujarnya<br><br>Pihak kepolisian yang menerima laporan kejadian itu lalu memburu pelaku hingga akhirnya mengamankannya di Jermal XV Namun, saat akan ditangkap, pelaku mencoba melarikan diri hingga akhirnya terpaksa harus ditembak.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Berdasarkan hasil pemeriksaan, kata Selvi, pelaku telah menjual sepeda motor korban seharga Rp 2 juta. Uang hasil pencurian itu digunakan pelaku untuk berbagai hal, seperti membeli narkoba. Selvi menyebut pelaku merupakan residivis yang telah tiga kali masuk penjara karena kasus pencurian<br><br>\"Pelaku mengaku telah menjual sepeda motor korban seharga Rp 2 juta dan memakai uang tersebut untuk membeli handphone dan memakai narkoba,\" pungkasnya.<br></p>', '2024-01-15 18:30:00', '2024-06-21 06:08:37', 1, '-\"Curi-Motor-untuk-Beli-Narkoba,-Pria-di-Medan-Ditembak-Polisi\"', 'e213467325ae9a6c656bf35684521fe2jpeg', 24, 'admin', 'admin'),
(10, '\"32 Juta Keluarga RI Tinggal di Hunian Tak Layak, SMF Sentil Program 3 Juta Rumah\"', 7, 9, '<p><b>Jakarta</b> - Pemerintah Indonesia masih punya PR besar dalam menyediakan hunian yang layak Per tahun 2023 lalu, Survei Sosial Ekonomi Nasional (Susenas) BPS mencatat, 32 juta dari total 75 juta rumah tangga di Indonesia tinggal di rumah yang tidak layak huni.<br><br>Kepala Divisi Riset Ekonomi PT SMF Martin Daniel Siyaranamual menilai, pemerintah perlu memperluas fokusnya dalam hal penyediaan rumah ke penyediaan hunian layak Martin juga menyinggung salah satu program unggulan presiden-wakil presiden terpilih yakni Prabowo Subianto dan Gibran Rakabuming Raka.<br><br>\"Dari 75 juta, 32 jutanya tinggal di rumah tak layak hunı Datanya dari Susenas BPS tiap bulan maret Ada program 3 juta rumah dari paslon pemenang. 3 juta ini mau dibawa ke mana? Dana perumahan bisa apa?,\" kata Martin, dalam acara Talkshow di Cilandak, Jakarta Selatan, Jumat (21/6/2024).</p><p>Martin mengatakan, hunian sendiri memiliki artı yang lebih luas dari rumah itu sendiri, bisa berbentuk hunian vertikal maupun kontrakan. Dalam hal ini menurutnya, masih banyak juga masyarakat Jakarta yang tinggal di kontrakan-kontrakan tidak layak berbiaya murah.<br><br>Sementara apa bila berfokus pada perumahan itu sendiri, menurutnya ada 3 dimensi yang perlu dipertimbangkan pemerintah. Pertama dimensi pendapatan, yang mana apakah masyarakat di semua desil akan mendapatkan bantuan.</p><p>Dimensi kedua ialah lokasi Menurutnya yang perlu menjadi satu catatan penting, Indonesia terdiri atas daerah perkotaan dan pedesaan. Di perkotaan sendiri keberadaan hunian susun menjadi satu hal yang krusial dan tidak bisa diabaikan<br><br>\"Jangan maksa untuk punya rumah tapak di perkotaan Artinya konteks keberadaan hunian susun menjadi krusial Kenapa orang Indonesia enggan pindah ke hunian susun? Jawaban ini bukan untuk dijawab orang keuangan, teknik, ini urusan manusianya,\" ujarnya<br><br>Kemudian dimensi ketiga berkaitan dengan status pekerjaan Berdasarkan data Survei Angkatan Kerja Nasional (Sakernas) di 2023, tercatat 65% pekerja di Indonesia merupakan pekerja di sektor informal Di samping itu, masih banyak masyarakat yang belum memiliki akses perbankan atau bankable.</p><p>\"Mungkin nggak saat ini produk keuangan mencakup menjangkau mereka pekerja informal? Berapa banyak penduduk yang tak punya rekening? Ini penduduk dewasa, yang tak memiliki 47% per Maret 2023 Di daerah pedesaan lebih parah, 62%,\" paparnya.<br><br>Sementara itu, lanjut Martin, basis penyaluran batuan di Indonesia hingga saat ini masih dominan mengandalkan perbankan Karena itulah, menurutnya tetap perlu ada dukungan pemerintah dalam penyediaan regulasi yang tepat sesuai dengan kondısı di lapangan.<br><br>Di sisi lain, menurutnya pasar pembiayaan di Indonesia juga tergolong masih mahal. Hal ini terlihat dari pengguna fasilitas Kredit Pemilikan Rakyat (KPR) per 2022 hanya 36,1% Sisanya, banyak yang memilih angsuran non KPR seperti kredit multi guna, lalu bayar tunai, atau lainnya seperti rumah tunggu.</p><p>\"Mungkin nggak saat ini produk keuangan mencakup menjangkau mereka pekerja informal? Berapa banyak penduduk yang tak punya rekening? Ini penduduk dewasa, yang tak memiliki 47% per Maret 2023 Di daerah pedesaan lebih parah, 62%,\" paparnya.<br><br>Sementara itu, lanjut Martin, basis penyaluran batuan di Indonesia hingga saat ini masih dominan mengandalkan perbankan Karena itulah, menurutnya tetap perlu ada dukungan pemerintah dalam penyediaan regulasi yang tepat sesuai dengan kondısı di lapangan.<br><br>Di sisi lain, menurutnya pasar pembiayaan di Indonesia juga tergolong masih mahal. Hal ini terlihat dari pengguna fasilitas Kredit Pemilikan Rakyat (KPR) per 2022 hanya 36,1% Sisanya, banyak yang memilih angsuran non KPR seperti kredit multi guna, lalu bayar tunai, atau lainnya seperti rumah tunggu.</p><p>Ditambah lagi dengan pertumbuhan Upah Minimum Provinsi (UMP) masyarakat yang tidak sebanding dengan harga properti. Martin pun mencoba membandingkan antara keduanya, ditambah dengan inflasi<br><br>\"Inflasi RI sekarang 2,84% sedangkan ketika bicara pertumbuhan UMP, itu naiknya 3,17%. Jadi sisanya kenaikan yang benarnya, kurang dari 1% karena dipotong inflasi,\" jelasnya<br><br>Dengan perhitungan tersebut, menurutnya, kebutuhan pembelian rumah baru tidak akan bisa terpenuhi oleh para pekerja tanpa bantuan pembiayaan.<br><br>\"Harga rumah nggak ada yang naiknya di bawah 1%, artinya kalau hari ını pekerja kita belum punya rumah, maka sampai ia pension pun tidak akan punya rumah dan dana perumahan mencoba menjawab itu semua,\" jelas dia<br></p>', '2024-01-16 18:30:00', '2024-06-21 06:20:07', 1, '\"32-Juta-Keluarga-RI-Tinggal-di-Hunian-Tak-Layak,-SMF-Sentil-Program-3-Juta-Rumah\"', 'cf0844bbdc52a6244e01b0beaf42c1f4jpeg', 1, 'admin', 'admin'),
(11, 'PDIP masih dengarkan suara akar rumput untuk pemerintahan baru', 6, 7, '<p><b>Jakarta</b> (ANTARA) DPP PDI Perjuangan masih mendengarkan aspirasi akar rumput sebelum mengambil sikap mengenai posisi partai berlambang banteng moncong putih itu di pemerintahan Prabowo Subianto Gibran Rakabuming Raka.<br><br>Sekretaris Jenderal PDI Perjuangan Hasto Kristiyanto menilai penting fungsi pengawasan untuk mengontrol jalannya pemerintahan demi negara yang lebih baik lagi ke depan<br><br>\"Bagaimana sikap PDI Perjuangan, kami belum memutuskan hal itu karena menyangkut hal yang sangat strategis. Kami mendengarkan bagaimana anak ranting, ranting, PAC, DPC, masukan arus bawah karena PDI Perjuangan adalah Partai yang dibangun dari kekuatan arus bawah itu,\" kata Hasto di Gedung Galeri Nasional, Jakarta, Senin<br><br>Menurutnya, tatanan sistem pemerintahan yang baik harus dibangun melalui pengawasan yang kuat. Untuk itu, pentingnya suatu hukum check and balance<br><br>\"Pentingnya fungsi-fungsi di dalam teori politik ada yang berada di dalam pemerintahan ada yang berada di luar pemerintahan\" ujarnya.</p><p>Politisi asal Yogyakarta ini menyampaikan dalam teori politik pentingnya fungsi pemerintahan dan di luar pemerintahan menjalankan fungsi-fungsi penyeimbang. Dengan begitu, representasi dari rakyat itu betul-betul terwakili.<br><br>Hasto juga menyampaikan bagaimana sikap PDI Perjuangan di pemerintahan selanjutnya akan dibahas dalam Rapat Kerja Nasional (Rakernas) yang keempat pada akhir bulan ini.<br><br>\"Apakah sikap PDI Perjuangan terkait dengan berada di dalam pemerintahan atau di luar pemerintahan? Nanti kami akan mencermati seluruh dinamika termasuk pembahasan di dalam Rakernas, karena nanti ada komisi sikap politik yang akan membahas setelah mendengarkan masukan-masukan dari DPD Partai,\" tegas Hasto<br><br>\"Dari situlah kami akan formulasikan sikap politik termasuk bagaimana pemerintahan ke depan harus disikapi oleh PDI Perjuangan,\" sambungnya.<br></p>', '2024-01-16 18:30:00', '2024-06-21 06:29:04', 1, 'PDIP-masih-dengarkan-suara-akar-rumput-untuk-pemerintahan-baru', '27095ab35ac9b89abb8f32ad3adef56a.jpg', 34, 'admin', 'admin'),
(12, ' \"Bukti Timnas Denmark Bikin Inggris Kalang Kabut\" ', 5, 6, '<p><b>Jakarta </b>- Denmark menahan imbang Inggris di lanjutan Euro 2024, dengan skor 1-1. Tim Dinamit begitu perkasa, bikin Tim Tiga Singa kalang kabut!<br>Denmark vs Inggris berlangsung di Frankfurt Arena, pada matchday kedua Grup C Euro 2024, Kamis (20/6) malam WIB. Skor imbang 1-1.</p><p>Harry Kane bikin Timnas Inggris unggul duluan lewat sontekannya di menit ke-18. Timnas Denmark membalas dengan tembakan jarak jauh 28 meter Morten Hjulmand di menit ke-34.</p><p><br>Hasil itu membuat Inggris tetap di puncak Grup C sementara dengan empat poin. Denmark di posisi kedua dengan dua poin, ditempel Slovenia dengan poin yang sama dan Serbia di posisi buncit dengan satu poin.</p><p>Denmark tampil perkasa selama 90 menit. Tim Dinamit unggul dalam penguasaan bola, 53 persen berbanding 47 persen dibanding Inggris.</p><p>Rasmus Hojlund dkk lebih unggul dalam perihal tembakan sembilan berbanding delapan, serta tembakan on target tujuh berbanding empat.<br><br>\"Kami percaya dan harusnya bisa menang, sayang sekali kami kecewa dengan hasilnya,\" ujar pelatih Denmark, Kasper Hjulmand dilansir dari BBC.<br><br>\"Tapi, kami menunjukkan permainan kami. Kami akan terus bermain seperti ini dan akan lebih baik lagi,\" sambungnya.<br>Pelatih Inggris, Gareth Southgate mengaku Denmark memang lebih unggul. Strateginya di lapangan memang tidak berjalan baik.<br><br>\"Para pemain sudah melakukan tugasnya, kini saya harus mencari solusi. Kami tidak cukup baik dalam menekan lawan dan gampang kehilangan bola,\" ungkapnya.<br><br><br><br><br><br><br><br></p>', '2024-01-17 18:30:00', '2024-06-21 06:35:49', 1, '-\"Bukti-Timnas-Denmark-Bikin-Inggris-Kalang-Kabut\"-', '94d03fe8bc85d8f215152638f2cfa165jpeg', 22, 'admin', 'admin'),
(13, '\"Koleksi Musim Panas Tory Burch Dipoles untuk Liburan dan Ramadan\"', 8, 10, '<p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\"><b>Fimela.com</b>, Jakarta Meski berasal dari Amerika, desain Tory Burch sangat cocok diaplikasikan di negara tropis seperti Indonesia. Dikenal dengan permainan motif dan warna yang vibrant, Tory Burch merilis koleksi Spring/Summer 2019 bertema Something Wild.<br><br>Untuk ikut merasakan nyawa dari koleksi yang terinspirasi lewat perjalanan berlayar orangtua Tory Burch saat musim panas ke negara Mediterania dibuatlah pop-up store di Plaza Senayan dengan ambience liburan musim panas. Nuansa eksotis makin menyatu dengan ornamen layar perahu dan lantai yang dibuat dengan prints yang sama dengan koleksi Tory Burch.<br><br>Maka hadirlah motif stripes bergaya nautical yang diimplementasikan dalam pants, kemeja, dress, sampai tunik. Detail busana yang terinspirasi dari Maroko, Spanyol, dan Yunani juga pas menyambut bulan Ramadan pada 6 Mei 2019.</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">Fashion item dengan permainan garis juga hadir dalam aksesori tas tote berukuran ekstra yang muat menampung seluruh barang bawaan saat liburan. Serta menjadi ornamen dalam salah satu tas terlaris Tory Burch Lee Radzwill yang memberi semangat bertualang lewat motif stripes.</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\"><br></p>', '2024-01-18 18:30:00', '2024-06-21 06:48:16', 1, '\"Koleksi-Musim-Panas-Tory-Burch-Dipoles-untuk-Liburan-dan-Ramadan\"', 'f576b808532682d5dc33c9ad0e348700.png', 6, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2024-01-14 18:30:00', '2024-06-21 05:49:34', 0),
(4, 3, 'Criminal law', 'Criminal law\r\n\r\n', '2024-01-14 18:30:00', '2024-06-21 05:51:47', 1),
(5, 3, 'Football', 'Football', '2024-01-14 18:30:00', '2024-06-21 05:49:04', 0),
(6, 5, 'International Competitions', 'International Competitions', '2024-01-14 18:30:00', '2024-06-21 05:52:22', 1),
(7, 6, 'Political Theories ', 'Political Theories ', '2024-01-14 18:30:00', '2024-06-21 05:52:57', 1),
(8, 6, 'International', 'International', '2024-01-14 18:30:00', '2024-06-21 05:49:15', 0),
(9, 7, 'Finance and Investment', 'Finance and Investment', '2024-01-14 18:30:00', '2024-06-21 05:53:26', 1),
(10, 8, 'Fashion and Beauty ', 'Fashion and Beauty ', '2024-01-14 18:30:00', '2024-06-21 05:53:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `userId` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `emailId` varchar(255) DEFAULT NULL,
  `conatctNo` bigint(11) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `regDate` int(11) DEFAULT NULL,
  `isActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
