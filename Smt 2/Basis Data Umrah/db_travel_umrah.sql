-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2025 at 10:12 AM
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
-- Database: `db_travel_umrah`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` char(6) NOT NULL,
  `no_ktp` char(20) NOT NULL,
  `no_paspor` char(10) NOT NULL,
  `no_visa` char(15) NOT NULL,
  `no_bpjs` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `no_ktp`, `no_paspor`, `no_visa`, `no_bpjs`) VALUES
('DJ01', '3175091201980000', 'A1234567', 'VSA2039485721', '100234567890'),
('DJ02', '3273022405850000', 'B7654321', 'VSA3984751023', '109876543210'),
('DJ03', '6171041307750000', 'C2345678', 'VSA5092847563', '204567891234'),
('DJ04', '3374031002900000', 'D8765432', 'VSA1928374650', '303216549876'),
('DJ05', '1102030208010000', 'E3456789', 'VSA7482910563', '406789123456'),
('DJ06', '3509216106990000', 'F9876543', 'VSA3847561209', '501122334455'),
('DJ07', '3201155504000000', 'G4567890', 'VSA9182736450', '609988776655'),
('DJ08', '5103034606830000', 'H0987654', 'VSA2039485712', '707654321987'),
('DJ09', '3302084112780000', 'Z5678901', 'VSA4758392017', '803344556677'),
('DJ10', '7402064509910010', 'Y1092837', 'VSA1029384756', '902233445566');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` char(6) NOT NULL,
  `id_paket` char(6) NOT NULL,
  `item_fasilitas` varchar(200) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status_pemberian` enum('Sudah Diserahkan','Belum Diserahkan','','') NOT NULL,
  `tgl_pemberian` date NOT NULL,
  `tgl_pengembalian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `id_paket`, `item_fasilitas`, `jumlah`, `status_pemberian`, `tgl_pemberian`, `tgl_pengembalian`) VALUES
('FG01', 'GD1290', '\"\r\n* Bus VIP antar kota\r\n* Visa Umroh\r\n* Asuransi perjalanan lengkap\r\n* Perlengkapan premium (tas, koper, mukena/sarung)\r\n\"\r\n', 7, 'Belum Diserahkan', '2026-07-27', '2026-08-21'),
('FP01', 'PL1492', '\"\r\n* Transportasi pribadi (HiAce atau bus luxury)\r\n* Visa Umroh + VIP fast track imigrasi\r\n* Asuransi perjalanan VIP\r\n* Exclusive gift set (Al-Qur’an, parfum arab, sajadah premium, dll)\"\r\n', 7, 'Sudah Diserahkan', '2025-07-27', '2025-08-22'),
('FS01', 'SV2847', '\"\r\n* Bus AC antar kota (Madinah–Mekkah)\r\n* Visa Umroh\r\n* Asuransi perjalanan dasar\r\n* Koper + buku panduan + ID Card\"\r\n', 6, 'Belum Diserahkan', '2027-07-27', '2027-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `info_hotel`
--

CREATE TABLE `info_hotel` (
  `id_hotel` char(6) NOT NULL,
  `nama_hotel` varchar(75) NOT NULL,
  `id_jamaah` char(6) NOT NULL,
  `id_paket` char(6) NOT NULL,
  `alamat` varchar(125) NOT NULL,
  `jenis_kamar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info_hotel`
--

INSERT INTO `info_hotel` (`id_hotel`, `nama_hotel`, `id_jamaah`, `id_paket`, `alamat`, `jenis_kamar`) VALUES
('HG01', 'Dar Al Eiman Ajyad dan Al Haram Hotel – Al Rawda', '92745L', 'GD0001', 'Abraj Al Bait Complex, King Abdul Aziz Gate, Makkah 21955 dan Opposite Masjid Nabawi, King Fahd Road, Madinah 3936', 'Gold'),
('HG02', 'Dar Al Eiman Ajyad dan Al Haram Hotel – Al Rawda', '56382N', 'GD0002', 'Abraj Al Bait Complex, King Abdul Aziz Gate, Makkah 21955 dan Opposite Masjid Nabawi, King Fahd Road, Madinah 3936', 'Gold'),
('HG03', 'Dar Al Eiman Ajyad dan Al Haram Hotel – Al Rawda', '39018P', 'GD0003', 'Abraj Al Bait Complex, King Abdul Aziz Gate, Makkah 21955 dan Opposite Masjid Nabawi, King Fahd Road, Madinah 3936', 'Gold'),
('HP01', 'Makkah Clock Royal Tower – A Fairmont Hotel dan Madinah Hilton Hotel', '87420R', 'PL0001', 'Abraj Al Bait Complex, King Abdul Aziz Gate, Makkah 21955 dan Opposite Masjid Nabawi, King Fahd Road, Madinah 3936', 'Platinum'),
('HP02', 'Makkah Clock Royal Tower – A Fairmont Hotel dan Madinah Hilton Hotel', '21930S', 'PL0002', 'Abraj Al Bait Complex, King Abdul Aziz Gate, Makkah 21955 dan Opposite Masjid Nabawi, King Fahd Road, Madinah 3936', 'Platinum'),
('HP03', 'Makkah Clock Royal Tower – A Fairmont Hotel dan Madinah Hilton Hotel', '75610T', 'PL0003', 'Abraj Al Bait Complex, King Abdul Aziz Gate, Makkah 21955 dan Opposite Masjid Nabawi, King Fahd Road, Madinah 3936', 'Platinum'),
('HP04', 'Makkah Clock Royal Tower – A Fairmont Hotel dan Madinah Hilton Hotel', '60847Z', 'PL0004', 'Abraj Al Bait Complex, King Abdul Aziz Gate, Makkah 21955 dan Opposite Masjid Nabawi, King Fahd Road, Madinah 3936', 'Platinum'),
('HS01', 'Dar Al Eiman Al Sud dan Al Eiman Al Nour Hotel', '48291K', 'SV0001', 'Ajyad Street, Makkah 21955, Saudi Arabia dan Central Area North, Madinah 42311, Saudi Arabia', 'Silver'),
('HS02', 'Dar Al Eiman Al Sud dan Al Eiman Al Nour Hotel', '73820J', 'SV0002', 'Ajyad Street, Makkah 21955, Saudi Arabia dan Central Area North, Madinah 42311, Saudi Arabia', 'Silver'),
('HS03', 'Dar Al Eiman Al Sud dan Al Eiman Al Nour Hotel', '10492M', 'SV0003', 'Ajyad Street, Makkah 21955, Saudi Arabia dan Central Area North, Madinah 42311, Saudi Arabia', 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `info_manasik`
--

CREATE TABLE `info_manasik` (
  `id_manasik` char(6) NOT NULL,
  `tgl_manasik` date NOT NULL,
  `waktu` varchar(30) NOT NULL,
  `lokasi_manasik` varchar(45) NOT NULL,
  `id_muthawif` char(6) NOT NULL,
  `kegiatan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info_manasik`
--

INSERT INTO `info_manasik` (`id_manasik`, `tgl_manasik`, `waktu`, `lokasi_manasik`, `id_muthawif`, `kegiatan`) VALUES
('MG01', '2026-07-26', '08.00 - selesai', 'Gedung Serbaguna Asrama Haji Donohudan', '9182LS', '\"* Pembukaan & sambutan pembina travel\r\n* Materi fiqih umroh & etika selama di Tanah Suci\r\n* Praktik ihram, thawaf, sa’i, tahallul secara langsung\r\n* Pembekalan kesehatan dan kebugaran fisik\r\n* Informasi detail rute perjalanan dan jadwal ibadah\r\n* Simulasi bersama tim keberangkatan\r\n* Penyerahan perlengkapan eksklusif Gold\r\n* Ramah tamah & snack siang\"\r\n'),
('MG02', '2026-07-26', '08.00 - selesai', 'Gedung Serbaguna Asrama Haji Donohudan', '3401FA', '\"* Pembukaan & sambutan pembina travel\r\n* Materi fiqih umroh & etika selama di Tanah Suci\r\n* Praktik ihram, thawaf, sa’i, tahallul secara langsung\r\n* Pembekalan kesehatan dan kebugaran fisik\r\n* Informasi detail rute perjalanan dan jadwal ibadah\r\n* Simulasi bersama tim keberangkatan\r\n* Penyerahan perlengkapan eksklusif Gold\r\n* Ramah tamah & snack siang\"\r\n'),
('MG03', '2026-07-26', '08.00 - selesai', 'Gedung Serbaguna Asrama Haji Donohudan', '7639TS', '\"* Pembukaan & sambutan pembina travel\r\n* Materi fiqih umroh & etika selama di Tanah Suci\r\n* Praktik ihram, thawaf, sa’i, tahallul secara langsung\r\n* Pembekalan kesehatan dan kebugaran fisik\r\n* Informasi detail rute perjalanan dan jadwal ibadah\r\n* Simulasi bersama tim keberangkatan\r\n* Penyerahan perlengkapan eksklusif Gold\r\n* Ramah tamah & snack siang\"\r\n'),
('MP01', '2025-07-25', '13.00 - selesai', 'Hotel Alila Solo - Ballroom Orchid', '5820NR', '\"* VIP Check-in & penyambutan eksklusif\r\n* Sesi kajian mendalam: Hikmah Umroh & sejarah Mekkah-Madinah\r\n* Workshop interaktif: tata cara ibadah sesuai sunnah\r\n* Live simulasi manasik di lokasi khusus miniatur Ka\'bah\r\n* Diskusi intensif dengan mutawwif senior\r\n* Coaching spiritual & mental preparation\r\n* Briefing keberangkatan oleh tour leader utama\r\n* Coffee break dan jamuan makan sore eksklusif\"\r\n'),
('MP02', '2025-07-25', '13.00 - selesai', 'Hotel Alila Solo - Ballroom Orchid', '4298ZD', '\"* VIP Check-in & penyambutan eksklusif\r\n* Sesi kajian mendalam: Hikmah Umroh & sejarah Mekkah-Madinah\r\n* Workshop interaktif: tata cara ibadah sesuai sunnah\r\n* Live simulasi manasik di lokasi khusus miniatur Ka\'bah\r\n* Diskusi intensif dengan mutawwif senior\r\n* Coaching spiritual & mental preparation\r\n* Briefing keberangkatan oleh tour leader utama\r\n* Coffee break dan jamuan makan sore eksklusif\"\r\n'),
('MP03', '2025-07-25', '13.00 - selesai', 'Hotel Alila Solo - Ballroom Orchid', '1175HS', '\"* VIP Check-in & penyambutan eksklusif\r\n* Sesi kajian mendalam: Hikmah Umroh & sejarah Mekkah-Madinah\r\n* Workshop interaktif: tata cara ibadah sesuai sunnah\r\n* Live simulasi manasik di lokasi khusus miniatur Ka\'bah\r\n* Diskusi intensif dengan mutawwif senior\r\n* Coaching spiritual & mental preparation\r\n* Briefing keberangkatan oleh tour leader utama\r\n* Coffee break dan jamuan makan sore eksklusif\"\r\n'),
('MP04', '2025-07-25', '13.00 - selesai', 'Hotel Alila Solo - Ballroom Orchid', '3946AK', '\"* VIP Check-in & penyambutan eksklusif\r\n* Sesi kajian mendalam: Hikmah Umroh & sejarah Mekkah-Madinah\r\n* Workshop interaktif: tata cara ibadah sesuai sunnah\r\n* Live simulasi manasik di lokasi khusus miniatur Ka\'bah\r\n* Diskusi intensif dengan mutawwif senior\r\n* Coaching spiritual & mental preparation\r\n* Briefing keberangkatan oleh tour leader utama\r\n* Coffee break dan jamuan makan sore eksklusif\"\r\n'),
('MS01', '2027-07-27', '08.00 - selesai', 'Aula Masjid Agung Karanganyar', '8392AH', '\"* Registrasi & pembagian perlengkapan\r\n* Pemutaran video dokumenter perjalanan umroh\r\n* Simulasi tata cara ihram, tawaf, dan sa’i\r\n* Tanya jawab seputar ibadah\r\n* Penjelasan teknis keberangkatan dan koper jamaah\r\n* Penutupan & doa bersama\"\r\n'),
('MS02', '2027-07-27', '08.00 - selesai', 'Aula Masjid Agung Karanganyar', '2745MN', '\"* Registrasi & pembagian perlengkapan\r\n* Pemutaran video dokumenter perjalanan umroh\r\n* Simulasi tata cara ihram, tawaf, dan sa’i\r\n* Tanya jawab seputar ibadah\r\n* Penjelasan teknis keberangkatan dan koper jamaah\r\n* Penutupan & doa bersama\"\r\n'),
('MS03', '2027-07-27', '08.00 - selesai', 'Aula Masjid Agung Karanganyar', '6503RA', '\"* Registrasi & pembagian perlengkapan\r\n* Pemutaran video dokumenter perjalanan umroh\r\n* Simulasi tata cara ihram, tawaf, dan sa’i\r\n* Tanya jawab seputar ibadah\r\n* Penjelasan teknis keberangkatan dan koper jamaah\r\n* Penutupan & doa bersama\"\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `info_muthawif`
--

CREATE TABLE `info_muthawif` (
  `id_muthawif` char(6) NOT NULL,
  `nama_muthawif` char(45) NOT NULL,
  `no_telp` char(15) NOT NULL,
  `keahlian` varchar(100) NOT NULL,
  `status_ketersediaan` enum('Tersedia','Penuh','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info_muthawif`
--

INSERT INTO `info_muthawif` (`id_muthawif`, `nama_muthawif`, `no_telp`, `keahlian`, `status_ketersediaan`) VALUES
('1175HS', 'Hanafi Syarif', '6281930304141', 'Konsultan ibadah privat, mahir memberikan kajian reflektif dan motivasi spiritual.', 'Tersedia'),
('2745MN', 'Muhammad Nur', '6281299002277', 'Fasih bahasa Arab dasar, penyampaian fiqih umroh sesuai Mazhab Syafi’i.', 'Tersedia'),
('3401FA', 'Fajar Akbar', '6281588801122', 'Pengalaman lebih dari 7 tahun, menguasai jalur cepat Masjidil Haram & Nabawi.', 'Tersedia'),
('3946AK', 'Ali Karim', '6282155660099', 'Penanganan jamaah dalam jumlah besar, cepat tanggap saat darurat.', 'Tersedia'),
('4298ZD', 'Zainuddin Daud', '6289677774589', 'Komunikatif, mahir menyampaikan manasik dengan bahasa daerah (misal: Jawa/Sunda).', 'Penuh'),
('5820NR', 'Nur Rahman', '6281322334455', 'Ahli sejarah Islam, membimbing ziarah dan city tour dengan narasi inspiratif.', 'Tersedia'),
('6503RA', 'Rizky Ardi', '6281377771001', 'Fasih bahasa Inggris & Arab, terbiasa mendampingi jamaah VIP & ekspatriat.', 'Tersedia'),
('7639TS', 'Taufik Saleh', '6285788437722', 'Pemandu ziarah sejarah Mekah dan Madinah, kuat dalam logistik lapangan.', 'Tersedia'),
('8392AH', 'Ahmad Hasan', '6281234560011', 'Penjelasan tata cara umroh secara sederhana, sabar dalam membimbing lansia dan jamaah baru.', 'Tersedia'),
('9182LS', 'Lukmansyah', '6281260609090', 'Gaya penyampaian elegan, dokumentasi spiritual perjalanan umroh (foto/video naratif).', 'Penuh');

-- --------------------------------------------------------

--
-- Table structure for table `info_pelanggan`
--

CREATE TABLE `info_pelanggan` (
  `id_pelanggan` char(6) NOT NULL,
  `id_jamaah` char(6) NOT NULL,
  `id_muthawif` char(6) NOT NULL,
  `id_paket` char(6) NOT NULL,
  `id_jadwal` char(6) NOT NULL,
  `id_feedback` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info_pelanggan`
--

INSERT INTO `info_pelanggan` (`id_pelanggan`, `id_jamaah`, `id_muthawif`, `id_paket`, `id_jadwal`, `id_feedback`) VALUES
('P01', '48291K', '8392AH', 'SV2847', 'JS01', 'FB01'),
('P02', '73820J', '7639TS', 'SV2847', 'JS01', 'FB02'),
('P03', '10492M', '4298ZD', 'SV2847', 'JS01', 'FB03'),
('P04', '92745L', '2745MN', 'GD1290', 'JG01', 'FB04'),
('P05', '56382N', '5820NR', 'GD1290', 'JG01', 'FB05'),
('P06', '39018P', '3946AK', 'GD1290', 'JG01', 'FB06'),
('P07', '87420R', '6503RA', 'PL1492', 'JP01', 'FB07'),
('P08', '21930S', '9182LS', 'PL1492', 'JP01', 'FB08'),
('P09', '75610T', '3401FA', 'PL1492', 'JP01', 'FB09'),
('P10', '60847Z', '1175HS', 'PL1492', 'JP01', 'FB10');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_keberangkatan`
--

CREATE TABLE `jadwal_keberangkatan` (
  `id_jadwal` char(6) NOT NULL,
  `id_jamaah` char(6) NOT NULL,
  `id_paket` char(6) NOT NULL,
  `tgl_keberangkatan` date NOT NULL,
  `tgl_pulang` date NOT NULL,
  `status_keberangkatan` enum('Berangkat','Pending','Cancel','') NOT NULL,
  `id_muthawif` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_keberangkatan`
--

INSERT INTO `jadwal_keberangkatan` (`id_jadwal`, `id_jamaah`, `id_paket`, `tgl_keberangkatan`, `tgl_pulang`, `status_keberangkatan`, `id_muthawif`) VALUES
('JG0001', '92745L', 'GD0001', '2026-08-12', '2026-08-20', 'Berangkat', '9182LS'),
('JG0002', '56382N', 'GD0002', '2026-08-12', '2026-08-20', 'Berangkat', '3401FA'),
('JG0003', '39018P', 'GD0003', '2026-08-12', '2026-08-20', 'Cancel', '7639TS'),
('JP0001', '87420R', 'PL0001', '2025-08-12', '2025-08-21', 'Pending', '5820NR'),
('JP0002', '21930S', 'PL0002', '2025-08-12', '2025-08-21', 'Berangkat', '4298ZD'),
('JP0003', '75610T', 'PL0003', '2025-08-12', '2025-08-21', 'Berangkat', '1175HS'),
('JP0004', '60847Z', 'PL0004', '2025-08-12', '2025-08-21', 'Berangkat', '3946AK'),
('JS0001', '48291K', 'SV0001', '2027-08-12', '2027-06-19', 'Berangkat', '8392AH'),
('JS0002', '73820J', 'SV0002', '2027-08-12', '2027-08-19', 'Berangkat', '2745MN'),
('JS0003', '10492M', 'SV0003', '2027-08-12', '2027-08-19', 'Pending', '6503RA');

-- --------------------------------------------------------

--
-- Table structure for table `jamaah`
--

CREATE TABLE `jamaah` (
  `id_jamaah` char(6) NOT NULL,
  `nama_lengkap` varchar(75) NOT NULL,
  `no_ktp` char(20) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `tempat_tanggal_lahir` varchar(50) NOT NULL,
  `alamat` varchar(75) NOT NULL,
  `no_telp` char(15) NOT NULL,
  `status_kawin` enum('Belum Kawin','Sudah Kawin','','') NOT NULL,
  `kewarganegaraan` varchar(3) NOT NULL,
  `no_paspor` char(10) NOT NULL,
  `tgl_pendaftaran` year(4) NOT NULL,
  `status_berangkat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jamaah`
--

INSERT INTO `jamaah` (`id_jamaah`, `nama_lengkap`, `no_ktp`, `jenis_kelamin`, `tempat_tanggal_lahir`, `alamat`, `no_telp`, `status_kawin`, `kewarganegaraan`, `no_paspor`, `tgl_pendaftaran`, `status_berangkat`) VALUES
('10492M', 'Candra Wijaya', '6171041307750000', 'L', 'Pontianak, 13 Juli 1975', 'Jl. Merdeka No. 3, Pontianak', '085712345678', 'Sudah Kawin', 'WNI', 'C2345678', '2024', 'Pending'),
('21930S', 'Ni Luh Ayu', '5103034606830000', 'P', 'Denpasar, 6 Juni 1983', 'Jl. Danau Tempe No. 4, Denpasar', '081990001111', 'Sudah Kawin', 'WNI', 'H0987654', '2024', 'Berangkat'),
('39018P', 'Tia Arum', '3509216106990000', 'P', 'Malang, 21 Juni 1999', 'Jl. Simpang Pahlawan No. 17, Malang', '083855667788', 'Belum Kawin', 'WNI', 'F9876543', '2024', 'Cancel'),
('48291K', 'Andi Pratama', '3175091201980000', 'L', 'Jakarta, 12 Januari 1998', 'Jl. Melati No. 10, Jakarta Selatan', '081234567890', 'Belum Kawin', 'WNI', 'A1234567', '2024', 'Berangkat'),
('56382N', 'Edi Saputra', '1102030208010000', 'L', 'Banda Aceh, 2 Agustus 2001', 'Jl. Tgk. Umar No. 9, Banda Aceh', '082211223344', 'Belum Kawin', 'WNI', 'E3456789', '2024', 'Berangkat'),
('60847Z', 'Marlina Dwi', '7402064509910010', 'P', 'Kolaka, 5 September 1991', 'Jl. Poros Kolaka Timur No. 22, Kolaka', '088244445555', 'Belum Kawin', 'WNI', 'Y1092837', '2024', 'Berangkat'),
('73820J', 'Budi Santoso', '3273022405850000', 'L', 'Bandung, 24 Mei 1985', 'Jl. Cendana No.5, Bandung', '082198765432', 'Sudah Kawin', 'WNI', 'B7654321', '2024', 'Berangkat'),
('75610T', 'Siti Nuraini', '3302084112780000', 'P', 'Purworejo, 1 Desember 1978', 'Jl. Veteran No. 9, Purworejo', '089622223333', 'Sudah Kawin', 'WNI', 'Z5678901', '2024', 'Berangkat'),
('87420R', 'Melani Oktaviani', '3201155504000000', 'P', 'Bekasi, 15 April 2000', 'Jl. Harapan Baru No. 27, Bekasi', '085166778899', 'Belum Kawin', 'WNI', 'G4567890', '2024', 'Pending'),
('92745L', 'Dwi Haryanto', '3374031002900000', 'L', 'Semarang, 10 Februari 1990', 'Jl. Nusa Indah No.7, Semarang', '081387654321', 'Sudah Kawin', 'WNI', 'D8765432', '2024', 'Berangkat');

-- --------------------------------------------------------

--
-- Table structure for table `maskapai`
--

CREATE TABLE `maskapai` (
  `id_maskapai` char(6) NOT NULL,
  `nama_maskapai` varchar(45) NOT NULL,
  `kode_maskapai` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maskapai`
--

INSERT INTO `maskapai` (`id_maskapai`, `nama_maskapai`, `kode_maskapai`) VALUES
('1032', 'Saudia Airlines', 'SA'),
('3210', 'Garuda Indonesia', 'GA'),
('9901', 'Qatar Airways', 'QA');

-- --------------------------------------------------------

--
-- Table structure for table `paket_layanan`
--

CREATE TABLE `paket_layanan` (
  `id_paket` char(6) NOT NULL,
  `id_jamaah` char(6) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `id_muthawif` char(6) NOT NULL,
  `tgl_berangkat` year(4) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket_layanan`
--

INSERT INTO `paket_layanan` (`id_paket`, `id_jamaah`, `nama_paket`, `id_muthawif`, `tgl_berangkat`, `harga`) VALUES
('GD0001', '92745L', 'Gold', '9182LS', '2026', 36500000),
('GD0002', '56382N', 'Gold', '3401FA', '2026', 36500000),
('GD0003', '39018P', 'Gold', '7639TS', '2026', 36500000),
('PL0001', '87420R', 'Platinum', '5820NR', '2025', 55000000),
('PL0002', '21930S', 'Platinum', '4298ZD', '2025', 55000000),
('PL0003', '75610T', 'Platinum', '1175HS', '2025', 55000000),
('PL0004', '60847Z', 'Platinum', '3946AK', '2025', 55000000),
('SV0001', '48291K', 'Silver', '8392AH', '2027', 29900000),
('SV0002', '73820J', 'Silver', '2745MN', '2027', 29900000),
('SV0003', '10492M', 'Silver', '6503RA', '2027', 29900000);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` char(15) NOT NULL,
  `jenis_pembayaran` varchar(25) NOT NULL,
  `id_paket` char(6) NOT NULL,
  `id_jamaah` char(6) NOT NULL,
  `status_pembayaran` enum('Lunas','Belum Lunas','Dibatalkan','') NOT NULL,
  `tgl_pembayaran` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `jenis_pembayaran`, `id_paket`, `id_jamaah`, `status_pembayaran`, `tgl_pembayaran`) VALUES
('PH2025A1938', 'Non Tunai', 'SV0001', '6758K', 'Lunas', '2024'),
('PH2025B4820', 'Non Tunai', 'SV0002', '73820J', 'Lunas', '2024'),
('PH2025C0917', 'Non Tunai', 'SV0003', '10492M', 'Belum Lunas', '2024'),
('PH2025D7402', 'Tunai', 'GD0001', '92745L', 'Lunas', '2024'),
('PH2025E8561', 'Non Tunai', 'GD0002', '56382N', 'Lunas', '2024'),
('PH2025F2094', 'Non Tunai', 'GD0003', '39018P', 'Dibatalkan', '2024'),
('PH2025G3748', 'NonTunai', 'PL0001', '87420R', 'Belum Lunas', '2024'),
('PH2025H6842', 'Tunai', 'PL0002', '21930S', 'Lunas', '2024'),
('PH2025J5039', 'Non Tunai', 'PL0003', '75610T', 'Lunas', '2024'),
('PH2025K7105', 'Non Tunai', 'PL0004', '60847Z', 'Lunas', '2024');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` char(6) NOT NULL,
  `id_jamaah` char(6) NOT NULL,
  `id_jadwal` char(6) NOT NULL,
  `tgl_registrasi` date NOT NULL,
  `id_paket` char(6) NOT NULL,
  `status_bayar` enum('DP','Dibatalkan','Proses','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `id_jamaah`, `id_jadwal`, `tgl_registrasi`, `id_paket`, `status_bayar`) VALUES
('P00001', '48291K', 'JS0001', '2024-07-10', 'SV0001', 'DP'),
('P00002', '73820J', 'JS0002', '2024-04-12', 'SV0002', 'DP'),
('P00003', '10492M', 'JS0003', '2024-05-09', 'SV0003', 'DP'),
('P00004', '92745L', 'JG0001', '2024-04-17', 'GD0001', 'DP'),
('P00005', '56382N', 'JG0002', '2024-05-23', 'GD0002', 'Dibatalkan'),
('P00006', '39018P', 'JG0003', '2024-04-21', 'GD0003', 'Dibatalkan'),
('P00007', '87420R', 'JP0001', '2024-05-01', 'PL0001', 'DP'),
('P00008', '21930S', 'JP0002', '2024-04-02', 'PL0002', 'DP'),
('P00009', '75610T', 'JP0003', '2024-05-27', 'PL0003', 'DP'),
('P00010', '60847Z', 'JP0004', '2024-04-09', 'PL0004', 'DP');

-- --------------------------------------------------------

--
-- Table structure for table `rincian_kegiatan`
--

CREATE TABLE `rincian_kegiatan` (
  `id_kegiatan` char(6) NOT NULL,
  `id_paket` char(6) NOT NULL,
  `hari` int(11) NOT NULL,
  `waktu_mulai` date NOT NULL,
  `waktu_selesai` date NOT NULL,
  `kegiatan` varchar(500) NOT NULL,
  `lokasi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rincian_kegiatan`
--

INSERT INTO `rincian_kegiatan` (`id_kegiatan`, `id_paket`, `hari`, `waktu_mulai`, `waktu_selesai`, `kegiatan`, `lokasi`) VALUES
('KG01', 'GD1290', 9, '2026-08-12', '2026-08-20', '\"Kumpul di Bandara – briefing – terbang ke Madinah\r\nTiba di Madinah – check-in – ziarah sekitar Nabawi\r\nZiarah Madinah: Quba, Uhud, Qiblatain, Percetakan Al-Qur\'an\r\nMiqat Bir Ali – ke Mekkah – Umroh 1\r\nIstirahat – kajian & zikir malam\r\nCity tour Mekkah: Jabal Rahmah, Mina, Muzdalifah\r\nBelanja oleh-oleh – tawaf sunnah\r\nPersiapan pulang – ke bandara Jeddah\r\nTiba di Indonesia – selesai\r\n\"\r\n', 'Madinah - Mekah'),
('KP01', 'PL1492', 10, '2025-08-12', '2025-08-21', '\"Lounge VIP – penerbangan direct ke Madinah\r\nTiba di Madinah – check-in – orientasi privat\r\nZiarah privat Madinah: Raudhah, Museum Rasulullah\r\nManasik privat – Miqat Bir Ali – Umroh 1\r\nIstirahat – zikir malam – kajian pribadi\r\nCity tour privat: Jabal Nur, Museum Haramain\r\nTawaf sunnah – dokumentasi – farewell dinner\r\nBelanja privat – relaksasi hotel/spa\r\nFast track airport – terbang ke Indonesia\r\nTiba di Indonesia – sambutan & sertifikat VIP\r\n\"\r\n', 'Madinah - Mekah'),
('KS01', 'SV2847', 8, '2027-08-12', '2027-08-19', '\"Kumpul di Bandara – briefing – terbang ke Madinah\r\nTiba di Madinah – check-in – salat di Masjid Nabawi\r\nZiarah Madinah: Quba, Uhud, Qiblatain, Kebun Kurma\r\nMiqat di Bir Ali – perjalanan ke Mekkah – Umroh 1\r\nIbadah & istirahat – salat di Masjidil Haram\r\nCity tour Mekkah (opsional): Jabal Nur, Arafah\r\nPersiapan pulang – transfer ke bandara Jeddah\r\nTiba di Indonesia – selesai\r\n\"\r\n', 'Madinah - Mekah');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pembayaran`
--

CREATE TABLE `riwayat_pembayaran` (
  `id_riwayat` char(6) NOT NULL,
  `id_pembayaran` char(15) NOT NULL,
  `id_jamaah` char(6) NOT NULL,
  `id_paket` char(6) NOT NULL,
  `status_aktif` enum('Selesai','Dalam Proses','Dibatalkan','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_pembayaran`
--

INSERT INTO `riwayat_pembayaran` (`id_riwayat`, `id_pembayaran`, `id_jamaah`, `id_paket`, `status_aktif`) VALUES
('HG01', 'PH2025D7402', '92745L', 'GD0001', 'Selesai'),
('HG02', 'PH2025E8561', '56382N', 'GD0002', 'Selesai'),
('HG03', 'PH2025F2094', '39018P', 'GD0003', 'Dibatalkan'),
('HP01', 'PH2025G3748', '87420R', 'PL0001', 'Dalam Proses'),
('HP02', 'PH2025H6842', '21930S', 'PL0002', 'Selesai'),
('HP03', 'PH2025J5039', '75610T', 'PL0003', 'Selesai'),
('HP04', 'PH2025K7105', '60847Z', 'PL0004', 'Selesai'),
('HS01', 'PH2025A1938', '48291K', 'SV0001', 'Selesai'),
('HS02', 'PH2025B4820', '73820J', 'SV0002', 'Selesai'),
('HS03', 'PH2025C0917', '10492M', 'SV0003', 'Dalam Proses');

-- --------------------------------------------------------

--
-- Table structure for table `umpan_balik`
--

CREATE TABLE `umpan_balik` (
  `id_feedback` char(6) NOT NULL,
  `id_jamaah` char(6) NOT NULL,
  `id_paket` char(6) NOT NULL,
  `rating_muthawif` int(1) NOT NULL,
  `rating_pelayanan` int(1) NOT NULL,
  `ulasan` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `umpan_balik`
--

INSERT INTO `umpan_balik` (`id_feedback`, `id_jamaah`, `id_paket`, `rating_muthawif`, `rating_pelayanan`, `ulasan`) VALUES
('FB01', '6758K', 'SV2847', 4, 5, '\"Mutawif sangat sabar dan jelas menjelaskan manasik. Semoga bisa lebih banyak sesi tanya jawab ke depan.\"\r\n'),
('FB02', '7653B', 'SV2847', 4, 5, '\"Pelayanan cepat dan tanggap. Hanya saja koper datang agak terlambat di Mekkah, mohon ditingkatkan logistiknya.\"\r\n'),
('FB03', '9532V', 'SV2847', 4, 4, '\"Perjalanan menyenangkan, tapi waktu ziarah terasa terlalu cepat. Lebih baik kalau ada waktu bebas di Madinah.\"\r\n'),
('FB04', '4214L', 'GD1290', 5, 5, '\"Pengalaman spiritual terbaik dalam hidup saya. Mutawwif sangat membantu dan berwawasan luas.\"\r\n'),
('FB05', '8953B', 'GD1290', 4, 4, '\"Kamar hotel bersih, makanan enak. Mutawwif ramah tapi kadang suara kurang terdengar saat bimbingan.\"\r\n'),
('FB06', '7623S', 'GD1290', 5, 5, '\"Sangat profesional. Jadwal rapi dan disampaikan dengan baik. Sukses terus untuk travel ini!\"\r\n'),
('FB07', '8734K', 'PL1492', 3, 4, '\"Secara keseluruhan baik, hanya saja saat city tour kurang banyak informasi dari mutawwif.\"\r\n'),
('FB08', '4321S', 'PL1492', 5, 5, '\"Layanan sangat prima, terutama untuk Platinum. Mutawwif juga sangat sabar dan personal.\"\r\n'),
('FB09', '75610T', 'PL1492', 4, 5, '\"Saya merasa nyaman dan aman. Mungkin bisa ditambahkan sesi sharing spiritual antar jamaah.\"\r\n'),
('FB10', '4593YF', 'PL1492', 5, 5, '\"Mutawwif sangat berpengalaman dan bijak. Tidak ada keluhan, semoga terus konsisten!\"\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `info_hotel`
--
ALTER TABLE `info_hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `info_manasik`
--
ALTER TABLE `info_manasik`
  ADD PRIMARY KEY (`id_manasik`);

--
-- Indexes for table `info_muthawif`
--
ALTER TABLE `info_muthawif`
  ADD PRIMARY KEY (`id_muthawif`);

--
-- Indexes for table `info_pelanggan`
--
ALTER TABLE `info_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `jadwal_keberangkatan`
--
ALTER TABLE `jadwal_keberangkatan`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jamaah`
--
ALTER TABLE `jamaah`
  ADD PRIMARY KEY (`id_jamaah`);

--
-- Indexes for table `maskapai`
--
ALTER TABLE `maskapai`
  ADD PRIMARY KEY (`id_maskapai`);

--
-- Indexes for table `paket_layanan`
--
ALTER TABLE `paket_layanan`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `rincian_kegiatan`
--
ALTER TABLE `rincian_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `riwayat_pembayaran`
--
ALTER TABLE `riwayat_pembayaran`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indexes for table `umpan_balik`
--
ALTER TABLE `umpan_balik`
  ADD PRIMARY KEY (`id_feedback`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
