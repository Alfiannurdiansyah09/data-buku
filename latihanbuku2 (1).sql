-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 08:56 AM
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
-- Database: `latihanbuku2`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `isbn` int(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_penulis` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `cover` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`isbn`, `judul`, `id_kategori`, `id_penulis`, `harga`, `deskripsi`, `cover`) VALUES
(216862, 'Antologi Cerpen Jimat Terkutuk', 2, 10, 96000, 'Pembahasan buku ini mengenai (1) selayang pandang kebijakan publik, (2) advokasi kebijakan, (3) elemen penting advokasi kebijakan (4) advokasi kebijakan dalam perspektif goverance, (5) sudut pandang teori dan strategi advokasi kebijakan, (6) best practice advokasi kebijakan, serta yang terakhir (7) policy change dan policy oriented learning.\r\n\r\nTujuan penulis membuat buku yang spesifik hanya membahas mengenai advokasi kebijakan adalah untuk mencoba memberikan pemahaman makna lebih mendalam lagi dari sebuah advokasi kebijakan, karena penulis menyadari bahwa advokasi kebijakan kadang masih belum bisa diterima para pembuat dan pelaksana kebijakan, bahkan sering kali aktor yang melakukan advokasi kebijakan dikatakan sebagai pihak yang kurang kerjaan serta merasa pintar, padahal jika kita berbicara dalam konteks demokrasi advokasi kebijakan yang notabenenya adalah bentuk partisipasi dari warga negara dalam upayanya memasukan agenda kepentingan atau mengubah kebijakan adalah bagian dari sebuah penciptaan tata kelola yang baik atau yang dikenal hari ini dengan nama good governance.\r\n\r\nBerangkat dari permasalahan itu buku ini mencoba hadir untuk memberi pencerahan dan pengetahuan makna sesungguhnya dari advokasi kebijakan untuk kita semua. Harapan nantinya dengan dibuatnya buku ini semoga dapat bermanfaat bagi mahasiswa, dosen atau kelompok masyarakat serta organisasi-organisasi lainnya yang sedang mempelajari atau sedang melakukan advokasi kebijakan demi terciptanya sebuah kebijakan publik yang berpihak pada publik.', ''),
(567905, 'Petualangan di Alam Liar', 1, 29, 70000, 'Cerita petualangan menegangkan di alam liar.', ''),
(567906, 'Dunia Digital', 10, 28, 55000, 'Transformasi dunia di era digital.', ''),
(567907, 'Mengelola Waktu', 9, 27, 45000, 'Strategi mengelola waktu secara efektif.', ''),
(567908, 'Seni Berbicara di Depan Umum', 8, 26, 60000, 'Tips dan trik berbicara di depan umum dengan percaya diri.', ''),
(567909, 'Mengatasi Stres', 14, 25, 70000, 'Cara-cara untuk mengatasi stres dalam kehidupan sehari-hari.', ''),
(808376, '25 Dongeng Anak Favorit dari Seluruh Dunia', 4, 3, 105000, 'Buku 25 Dongeng Anak Favorit dari Seluruh Dunia ini berisi kumpulan dongeng berjumlah 25 cerita yang berasal dari seluruh antero dunia ini. Dengan adanya buku ini, diharapkan menambah wawasan anak terhadap dunia sosial dan memperkokoh jiwa moral anak.', ''),
(1484100, 'Seni Berbicara', 9, 21, 120000, 'teknik dan strategi berbicara di depan umur', ''),
(2453634, 'kunci sukses lolos polri', 9, 32, 120000, 'bismillah tembus', 'brimob.jpg'),
(3916665, 'Rama dan Shinta', 1, 8, 85000, 'Kisah Rama dan Shinta tidaklah asing di telinga orang Indonesia. Kisah keduanya merupakan bagian dari cerita kepahlawanan ', 'rama.jpg'),
(3916948, 'Kita, Kata, cinta', 1, 6, 120000, 'apaaja', 'kita,kata,cinta.avif'),
(4071806, '101 Dongeng Seru Sebelum Bobok', 4, 2, 90000, 'Cara terbaik menanamkan budi pekerti kepada anak adalah dengan cara membacakan dongeng. Anak akan mengerti mana yang perbuatan baik dan yang buruk serta akibatnya. Juga imajinasi anak akan berkembang saat berusaha mengikuti alur yang dibacakan. Buku ini berisi 101 dongeng yang disertai dengan ilustrasi keren. Juga ada petuah bijaksana dalam kehidupan ini. Hal tersebut menjadikan buku ini sangat direkomendasikan kepada Anda untuk mengenalkan nilai-nilai moral kepada sang buah hati.', ''),
(4074050, 'Perempuan Batih', 1, 7, 60000, '“Yang aku takutkan bukan kematian, melainkan bila dibunuh sepi.” ***Gadis, seorang perempuan kampung yang hidup dalam masyarakat matrilineal Minangkabau, Sumatra Barat. Sebagai anak perempuan satu-satunya, seharusnya kehidupan Gadis baik-baik saja. Tapi tidak. Ia justru harus menantang hidup yang sangat berat. Menjawab tantangan kehidupan akan takdirnya sebagai perempuan.Anak perempuan di Minangkabau seharusnya tinggal di rumah kaumnya. Namun, anak-anak perempuan Gadis memilih meninggalkan rumah. Mereka ingin menjadi manusia mandiri. Padahal, dalam keluarga batih, perempuan mengambil peran yang sangat strategis dan menentukan.Tinggal di kampung yang berbatasan dengan hiruk-pikuk kota di Sumatra Barat, Gadis hidup dalam gilingan perubahan zaman.Benarlah kata pepatah, “Kasih anak sepanjang galah, kasih ibu sepanjang jalan.”', 'perempuanbatih.avif'),
(4074234, 'Bukan Cinta monyet', 1, 5, 70000, '“Kalau aku suka sama side, gimana?” ucap Indar tiba-tiba. “Bukan rasa suka sebagai kakak atau adik, apa lagi sekadar teman. Aku menyukai side layaknya sebagai gadis.”***Lika tak habis pikir bagaimana siswa yang beberapa tahun lebih muda dibanding dirinya bisa mengatakan tidak suka punya hubungan pelatih dan siswa, kakak dan adik, apa lagi sekadar teman.Kala Indar mengungkapkan perasaannya, Lika menganggap remaja itu terkena demam cinta monyet. Demam yang cepat reda seiring berlalunya waktu dan bergantinya tempat. Namun, sekian tahun kemudian, mantan muridnya ini bahkan berencana memaling—mencuri—Lika.***Indar tahu bahwa kebahagiaan keluarganya, ayah dan ibunya dibangun dari pondasi yang rapuh. Demi mendapatkan sang idaman, ayahnya menempuh cara licik. Maka, Indar bertekad memperjuangkan apa yang ingin hatinya miliki secara adil dan benar. Namun, semua berubah saat gadis yang disukainya mengatakan akan menikah, dengan orang yang tak disangka-sangka pula. Ia tak bisa membiarkan diri hanyut dalam rasa bersalah karena membiarkan kehancuran itu datang begitu saja. Indar harus mengambil tindakan. Tindakan yang kemungkinan besar tidak adil dan salah. Namun, jika tidak dilakukan, akan lebih banyak hati yang disakiti. Lelaki itu dalam dilema.', 'Bukan-Cinta-Monyet-1.jpg'),
(4567891, 'Memahami Alam Semesta', 6, 16, 75000, 'Petualangan ilmiah menjelajahi alam semesta.', ''),
(4567892, 'Sejarah Indonesia	', 7, 17, 60000, 'Menelusuri perjalanan sejarah bangsa Indonesia.', ''),
(4567893, 'Panduan Memasak Sehat', 8, 18, 50000, 'Resep masakan sehat untuk kehidupan sehari-hari.', ''),
(4567894, 'Kekuatan Pikiran Positif', 9, 19, 55000, 'Cara membangun pola pikir positif.', ''),
(4567903, 'Kesehatan Mental', 14, 28, 80000, 'Pentingnya menjaga kesehatan mental di era modern.', ''),
(4567905, 'Petualangan di Alam Liar', 1, 29, 70000, 'Cerita petualangan menegangkan di alam liar.', ''),
(4567906, 'Dunia Digital', 10, 28, 55000, 'Transformasi dunia di era digital.', ''),
(4567907, 'Mengelola Waktu', 9, 27, 45000, 'Strategi mengelola waktu secara efektif.', ''),
(4567908, 'Seni Berbicara di Depan Umum', 8, 26, 60000, 'Tips dan trik berbicara di depan umum dengan percaya diri.', ''),
(4567909, 'Mengatasi Stres', 14, 25, 70000, 'Cara-cara untuk mengatasi stres dalam kehidupan sehari-hari.', ''),
(5180606, 'Akibat Perbuatan Edo dan Teman-teman', 4, 4, 54800, 'Dalam menjalani kehidupan kita tentu pernah berbuat kesalahan yang kadang kita sengaja maupun tidak disengaja. Dalam buku ini mengisahkan tentang Perbuatan Edo dan teman-temannya baik disengaja maupun tidak sengaja, yang berakibat tidak baik dan membuat Edo dan teman-temannya menyesal dan merasa tidak nyaman akibat perbuatannya sendiri. Dengan mengetahui kesalahannya, Edo dan teman-temannya berjanji untuk tidak mengulangi lagi.\r\n\r\nCerita “AKIBAT PERBUATAN EDO DAN TEMAN-TEMAN” menyadarkan kita betapa hal-hal yang kita anggap remeh, akan berakibat besar pada diri kita. Untuk itu belajarlah dari kegagalan. Karena kegagalan adalah kesuksesan yang tertunda.', ''),
(5783340, 'Dukun Carok & Tongkat Kayu (basabasi)', 2, 12, 50000, 'Cerpen sebagai genre sastra memiliki ruang yang luas sehingga sangat representatif untuk dijadikan ladang mediasi yang menghubungkan ide substansial penulisnya dengan pembacanya. Dalam hal ini, cerpen tidak melulu berposisi sebagai bangunan estetik cerita yang hendak menyentuh perasaan pembaca. Sebuah cerpen berupaya menyemai gagasan kebudayaan, dalam bentuk pelestarian, inovasi, akulturasi atau kritik—ini adalah salah satu yang paling penting dalam misi saya menulis cerpen.\r\n\r\nCerita-cerita yang saya tulis dieksplorasi dari fakta lapangan, dari sebuah dinamika budaya dan tradisi masyarakat di sekitar lingkungan saya hidup dan berinteraksi. Narasi dan diskusi para tokoh yang berkelindan dalam cerpen di kumcer ini, secara inklusif saya setir untuk mengupas titik-titik eksistensial sebuah kebudayaan. Dengan kata lain, saya mencoba menginventarisir nilai-nilai kebudayaan di dalam cerpen-cerpen saya sebagai upaya merawat dan—bila mungkin—diniatkan untuk bisa dipelajari secara tekstual oleh siapa pun yang ingin mengetahui budaya Madura.', ''),
(7290209, 'Bajingan Tengik Luka Socrates & Kisah-Kisah Lain', 2, 11, 100000, 'Selain dikenal sebagai dramawan dan penyair, Bertolt Brecht adalah penulis prosa khususnya cerita fiksi. Volume pertama yang diterbitkan saat dia kembali ke Jerman pada tahun 1949 adalah sebuah kumpulan cerita pendek, anekdot prosa, dan puisi naratif berjudul Tales from the Calendar. Setelah pengasingan yang pahit selama enam belas tahun, Brecht memilih memperkenalkan kembali dirinya kepada khalayak pembaca Jerman dengan kisah-kisah realistis yang dibuat dalam tradisi narasi populer untuk memberikan pelajaran sekaligus penghiburan. Nada dan gaya cerita yang bersahaja adalah tipikal seni cerita Brecht.\r\n\r\nBrecht adalah penulis yang selalu berusaha menyusun peristiwa-peristiwa dalam arah yang jelas dan linier dari awal hingga akhir. Karya-karya teater dan puisinya menjadi saksi gaya penulisan yang konstan ini. Walau dia sangat masyhur di dunia literatur berbahasa Inggris sebagai dramawan dan pembaharu teater, bukan berarti tulisan prosa naratifnya bisa diremehkan. Penerbitan kumpulan cerita pendek dalam terjemahan ini menawarkan kesempatan untuk memberikan sudut pandang berbeda dari penulis yang sudah diakui secara internasional ini. Orang-orang yang sudah mengenal drama dan/atau puisi Brecht akan merasakan gema dan resonansi; sedangkan mereka yang belum mengenal akan menemukan pendongeng hebat yang peduli kepada manifestasi proses sejarah dalam peristiwa sehari-hari.', ''),
(7290377, 'Jalan Udara', 1, 9, 55000, 'Penganugerahan Hadiah Nobel Sastra 1958 kepada Boris Pasternak memberi perhatian yang tidak biasa kepada novel hebat Pasternak, Dr. Zhivago, dan sekumpulan kecil karyanya yang lain, salah satunya adalah kumpulan cerpennya yang berjudul Jalan Udara.Jalan Udara menampilkan gaya dan struktur kompleks yang berdasar kepada citra istimewa dan perpindahan dimensi temporal dan spasial. Fitur-fitur ini tentu saja merupakan meta-bahasa subjektif khas Pasternak yang sangat membutuhkan perhatian khusus pembaca untuk menikmatinya.Dalam Jalan Udara, Pasternak menunjukkan secara mendalam tata bahasa puitis modern. Tema takdir manusia dalam revolusi terungkap melalui antitesis spasial antara dunia alam abadi dan dunia sejarah. Melalui pola spasial detail gambar, penjajaran mode naratif, dan pengenalan waktu historis, pembaca akan memahami drama manusia yang kompleks dihadirkan dengan baik dalam cerita.', 'Jalan.jpg'),
(7290735, 'Hikayat Benda-Benda', 2, 13, 58000, '“Sejak dipublikasikan pertama kali pada tahun 1978, kumpulan cerita pendek berjudul Objecto Quase (Hikayat Benda-Benda) ini mempertegas kemampuan dan kerja kreatif Saramago dalam penguasaan teknik-teknik yang diperlukan untuk menyuguhkan bentuk cerita yang lebih pendek. Sebagai master of suspense, ia begitu memukau kita dengan peralihan halus dari pernyataan tajam dan pengalihan-pengalihan yang spekulatif.\r\n\r\n“Cerita-cerita awal Saramago ini adalah pengingat kenapa dia layak memperoleh hadiah Nobel.”\r\n—Scotland on Sunday\r\n\r\n“Novelis paling berbakat … di dunia!”', ''),
(143039483, 'Menguasai SEO', 12, 23, 200000, 'cara meningkatkan visibilitas website di mesin penc', ''),
(262033848, 'Dasar-Dasar Desain Grafis', 11, 22, 175000, 'Buku ini membahas prinsip-prinsip desain graf', ''),
(307272700, 'Manajemen Waktu', 13, 24, 100000, 'Teknik mengatur waktu agar lebih produktif', ''),
(402894626, 'Pemrograman Python', 1, 14, 150000, 'Panduan lengkap untuk belajar Python dari dasar.', ''),
(491923242, 'Memahami Data Science	', 10, 20, 250000, 'Panduan lengkap untuk memahami konsep data science.', ''),
(743273524, 'Mengatasi Stres', 14, 7, 150000, 'Teknik mengelola stres dalam kehidupan sehari-hari.', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'komik'),
(2, 'cerpen'),
(3, 'komik'),
(4, 'fiksi'),
(5, 'dongeng'),
(6, 'Fiksi Ilmiah'),
(7, 'Sejarah'),
(8, 'Keterampilan'),
(9, 'Motivasi'),
(10, 'Teknologi'),
(11, 'Desain'),
(12, 'Bisnis'),
(13, 'Pengembangan Diri'),
(14, 'Kesehatan'),
(15, 'manga');

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `id_penulis` int(11) NOT NULL,
  `nama_penulis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`id_penulis`, `nama_penulis`) VALUES
(2, 'Fitri Haryani Nasution'),
(3, 'Kak Adit'),
(4, 'Siti Munfarijah'),
(5, 'Purnama Teduh'),
(6, ' Khrisna Pabichara'),
(7, 'A.R. Rizal'),
(8, 'Pitoyo Amrih'),
(9, ' Boris Pasternak'),
(10, 'Chaerul Sabara'),
(11, 'Bertolt Brecht'),
(12, 'A. Warits Rovi'),
(13, 'Jose Saramago'),
(14, 'Nurdiani,S.Pd.Sd'),
(15, 'Andi A.'),
(16, 'Budi S.'),
(17, 'Citra M.'),
(18, 'Dini R.'),
(19, 'Fajar S.	'),
(20, 'John Doe'),
(21, 'Jane Smith'),
(22, 'Sarah Johnson'),
(23, 'Mike Brown'),
(24, 'Lisa White	'),
(25, 'Vina H'),
(26, 'Udin K.'),
(27, 'Tami U.'),
(28, 'Sari T'),
(29, 'Rina S'),
(32, 'kakang'),
(34, 'asdrasrasr');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `nama`) VALUES
(12345, 'aldi@gmail.como', 'aldi123', 'aldi'),
(12346, 'ansyah@gmail.com', 'e341075d93d39a99a469a2dfecfb7967', 'ansyah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `id_kategori` (`id_kategori`,`id_penulis`),
  ADD KEY `id_penulis` (`id_penulis`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id_penulis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id_penulis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12347;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_penulis`) REFERENCES `penulis` (`id_penulis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
