-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2024 pada 07.41
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `konten`) VALUES
(1, 'Profil Singkat Elon Musk: Visi, Inovasi, dan Pengaruhnya', 'Elon Musk adalah salah satu tokoh terkemuka di dunia teknologi dan industri. Lahir di Afrika Selatan pada tahun 1971, Musk telah menjadi wajah yang sangat dikenal di berbagai bidang, mulai dari otomotif hingga eksplorasi luar angkasa. Visinya yang revolusioner dan inovasinya yang tak henti-hentinya telah menginspirasi jutaan orang di seluruh dunia.'),
(2, 'Tesla: Revolusi Industri Otomotif dengan Mobil Listrik', 'Tesla, perusahaan mobil listrik yang didirikan oleh Elon Musk pada tahun 2003, telah mengubah wajah industri otomotif secara radikal. Dengan visi untuk menciptakan mobil yang ramah lingkungan tanpa mengorbankan kinerja dan gaya, Tesla telah menjadi pelopor dalam pengembangan teknologi kendaraan listrik.'),
(3, 'Pengisian Daya Tesla Ramah Lingkungan', 'Salah satu tantangan utama dalam mengadopsi kendaraan listrik adalah ketersediaan infrastruktur pengisian daya yang memadai. Tesla mengatasi tantangan ini dengan membangun jaringan pengisian daya yang luas, dikenal sebagai Supercharger Network. Tempat pengisian daya Tesla tersebar di berbagai lokasi strategis di seluruh dunia, mulai dari pusat perbelanjaan hingga rest area di jalan tol.'),
(4, 'Man City Vs Arsenal: Kesempatan buat The Gunners', 'Partai tandang ke Manchester City menjadi kesempatan besar bagi Arsenal, karena laga ini berpotensi menandai momen bersejarah bagi The Gunners. Arsenal, yang saat ini menempati posisi pemuncak klasemen, memiliki misi untuk mempertahankan posisi mereka serta merusak moral rivalnya dalam persaingan juara.'),
(5, 'Halte TransJakarta Disulap Jadi Pameran Seni Dadakan!', 'Halte TransJakarta di daerah Sudirman Thamrin telah diubah menjadi pameran seni dadakan yang memukau. Melibatkan desain layaknya karya seni Vincent van Gogh, halte ini memberikan pengalaman unik bagi para penumpang yang menunggu bus selanjutnya. Kolaborasi antara PT TransJakarta dan City Vision, bertujuan untuk mempercantik halte dengan desain seniman ternama, serta sebagai sarana promosi.'),
(6, 'Kejagung Hitung Kerugian Negara dari Korupsi Timah', 'Kejaksaan Agung RI menyatakan bahwa mereka sedang menghitung total kerugian negara setelah Harvey Moeis, suami Sandra Dewi, menjadi tersangka dalam kasus korupsi timah. Penetapan Moeis sebagai tersangka merupakan langkah dalam kasus dugaan tindak pidana korupsi dalam tata niaga komoditas timah PT Timah Tbk tahun 2015-2022.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel_lengkap`
--

CREATE TABLE `artikel_lengkap` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `konten1` text NOT NULL,
  `konten2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel_lengkap`
--

INSERT INTO `artikel_lengkap` (`id`, `judul`, `gambar`, `konten1`, `konten2`) VALUES
(1, 'Profil Singkat Elon Musk: Visi, Inovasi, dan Pengaruhnya', '3.jpg', 'Elon Musk adalah salah satu tokoh terkemuka di dunia teknologi dan industri. Lahir di Afrika Selatan pada tahun 1971, Musk telah menjadi wajah yang sangat dikenal di berbagai bidang, mulai dari otomotif hingga eksplorasi luar angkasa. Visinya yang revolusioner dan inovasinya yang tak henti-hentinya telah menginspirasi jutaan orang di seluruh dunia. Musk terkenal karena perannya dalam mendirikan perusahaan seperti SpaceX, Tesla, dan Neuralink. Melalui SpaceX, ia bertekad untuk membuat manusia multiplanetar dengan menjelajahi luar angkasa. Sedangkan Tesla, perusahaan mobil listrik yang didirikannya, mengubah paradigma industri otomotif dengan menghadirkan kendaraan ramah lingkungan yang canggih dan berkualitas tinggi. Pengaruh Musk terasa luas, tidak hanya dalam teknologi dan industri, tetapi juga dalam bidang energi terbarukan dan transportasi. Dengan gagasannya yang ambisius dan komitmennya terhadap inovasi, Elon Musk terus menginspirasi generasi mendatang untuk bermimpi lebih besar dan mengubah dunia menjadi tempat yang lebih baik.', 'Elon Musk juga dikenal karena visinya dalam mengembangkan teknologi kecerdasan buatan (AI) melalui perusahaan OpenAI, yang bertujuan untuk memajukan pemahaman manusia tentang kecerdasan mesin dan potensinya untuk memecahkan masalah kompleks. Selain itu, melalui Neuralink, Musk berupaya mengintegrasikan otak manusia dengan komputer, membuka potensi baru dalam bidang neuroteknologi dan memperluas batas kemampuan manusia. Dengan berbagai proyek revolusionernya, Elon Musk terus menjadi sumber inspirasi bagi para pengusaha, ilmuwan, dan visioner di seluruh dunia, mendorong terciptanya solusi-solusi inovatif untuk tantangan-tantangan global yang dihadapi umat manusia.'),
(2, 'Tesla: Revolusi Industri Otomotif dengan Mobil Listrik', '1.jpg', 'Tesla, perusahaan mobil listrik yang didirikan oleh Elon Musk pada tahun 2003, telah mengubah wajah industri otomotif secara radikal. Dengan visi untuk menciptakan mobil yang ramah lingkungan tanpa mengorbankan kinerja dan gaya, Tesla telah menjadi pelopor dalam pengembangan teknologi kendaraan listrik. Model-model seperti Tesla Model S, Model 3, Model X, dan Model Y telah menggemparkan pasar dengan desain yang canggih, kinerja yang luar biasa, dan jangkauan yang mengesankan. Dibandingkan dengan mobil konvensional, mobil-mobil Tesla menawarkan pengalaman berkendara yang lebih bersih, lebih efisien, dan lebih aman. Tidak hanya itu, Tesla juga telah membangun infrastruktur pengisian daya yang luas, dikenal sebagai Supercharger Network, yang memungkinkan para pengguna Tesla untuk melakukan perjalanan jarak jauh dengan nyaman tanpa khawatir kehabisan daya. Dengan terus memperluas jaringan pengisian dayanya, Tesla memperkuat posisinya sebagai pemimpin dalam industri kendaraan listrik.', 'Tak hanya terbatas pada mobil listrik, Tesla juga terlibat dalam pengembangan teknologi energi terbarukan, seperti baterai penyimpan energi untuk rumah dan bisnis melalui produk seperti Tesla Powerwall. Upaya ini menunjukkan komitmen Tesla dalam menghadirkan solusi yang ramah lingkungan dan berkelanjutan untuk kebutuhan energi masa depan. Dengan terus menggali potensi inovasi dalam berbagai sektor, Tesla terus memperkuat dampaknya dalam mendorong transisi menuju masa depan yang lebih hijau dan berkelanjutan.'),
(3, 'Pengisian Daya Tesla Ramah Lingkungan', '2.jpg', 'Salah satu tantangan utama dalam mengadopsi kendaraan listrik adalah ketersediaan infrastruktur pengisian daya yang memadai. Tesla mengatasi tantangan ini dengan membangun jaringan pengisian daya yang luas, dikenal sebagai Supercharger Network. Tempat pengisian daya Tesla tersebar di berbagai lokasi strategis di seluruh dunia, mulai dari pusat perbelanjaan hingga rest area di jalan tol. Dengan teknologi canggih, pengguna Tesla dapat mengisi daya mobil mereka dengan cepat dan mudah, memungkinkan mereka untuk melakukan perjalanan jarak jauh tanpa kekhawatiran. Selain itu, Tesla juga memperkenalkan stasiun pengisian daya rumah, yang memungkinkan para pengguna untuk mengisi daya mobil mereka secara nyaman di rumah mereka sendiri. Dengan infrastruktur pengisian daya yang terus berkembang, Tesla berkomitmen untuk mempercepat transisi menuju transportasi yang ramah lingkungan dan berkelanjutan.', 'Selain itu, Tesla juga terus melakukan inovasi dalam teknologi baterai dan sistem pengisian daya, dengan tujuan untuk meningkatkan efisiensi dan jangkauan kendaraan listrik. Melalui penelitian dan pengembangan yang berkelanjutan, perusahaan ini bertekad untuk menghadirkan solusi yang lebih baik dan lebih efektif dalam memenuhi kebutuhan energi kendaraan masa depan. Dengan terus mendorong batas-batas teknologi, Tesla tidak hanya menjadi pemimpin dalam industri mobil listrik, tetapi juga menjadi pionir dalam menciptakan masa depan transportasi yang lebih cerdas, bersih, dan berkelanjutan.'),
(4, 'Man City Vs Arsenal: Kesempatan buat The Gunners', '5.jpg', 'Partai tandang ke Manchester City menjadi kesempatan besar bagi Arsenal, karena laga ini berpotensi menandai momen bersejarah bagi The Gunners. Arsenal, yang saat ini menempati posisi pemuncak klasemen, memiliki misi untuk mempertahankan posisi mereka serta merusak moral rivalnya dalam persaingan juara. Meskipun terpisah hanya satu poin dari Manchester City, Arsenal diingatkan akan pengalaman besar tim lawan dalam menghadapi tekanan persaingan. Bagi Arsenal, laga ini menjadi pembuktian penting setelah kegagalan mereka dalam meraih gelar juara musim lalu. Dengan memenangkan pertandingan di markas Manchester City, Arsenal berpotensi mendapatkan suntikan moral yang besar, yang akan menjadi modal penting untuk menyongsong sisa pertandingan musim ini.', 'Selain itu, kemenangan atas Manchester City juga akan menjadi bukti nyata atas kemajuan yang telah dicapai oleh Arsenal di bawah kepemimpinan manajer baru mereka. Performa yang impresif dalam laga tandang ini akan memperkuat keyakinan tim serta mendapatkan dukungan kuat dari para penggemar. Dengan memanfaatkan momentum positif ini, Arsenal memiliki peluang besar untuk memperpanjang tren kemenangan mereka dan memperkuat posisi mereka sebagai salah satu kandidat kuat dalam perburuan gelar juara. Dengan demikian, pertandingan melawan Manchester City bukan hanya tentang meraih tiga poin, tetapi juga tentang menetapkan standar baru dan membangun fondasi yang solid untuk masa depan yang cerah bagi klub ini.'),
(5, 'Halte TransJakarta Disulap Jadi Pameran Seni Dadakan!', '6.jpg', 'Halte TransJakarta di daerah Sudirman Thamrin telah diubah menjadi pameran seni dadakan yang memukau. Melibatkan desain layaknya karya seni Vincent van Gogh, halte ini memberikan pengalaman unik bagi para penumpang yang menunggu bus selanjutnya. Kolaborasi antara PT TransJakarta dan City Vision, perusahaan media iklan luar ruangan terbesar di Indonesia, bertujuan untuk mempercantik halte dengan desain seniman ternama, serta sebagai sarana promosi. Konsep seni dadakan ini tidak hanya terbatas pada Halte Tosari, namun juga dapat ditemukan di beberapa halte lainnya seperti Halte Dukuh Atas dan Halte Gelora Bung Karno (GBK). Lokasi halte yang strategis membuatnya menjadi pilihan tepat untuk kampanye promosi yang efektif. Respons positif dari pengguna TransJakarta dan masyarakat umum menandakan keberhasilan dari kolaborasi ini, yang juga berfungsi sebagai ajang promosi bagi pengiklan yang ingin memasang iklan mereka di halte TransJakarta.', 'Inisiatif untuk mengubah halte TransJakarta menjadi pameran seni dadakan juga merupakan langkah yang positif dalam memperkaya pengalaman publik di ruang publik perkotaan. Selain menjadi tempat transit yang fungsional, halte-halte ini sekarang juga menjadi titik menarik yang mempercantik kota dan memberikan inspirasi bagi warga Jakarta. Dengan menyajikan karya seni yang memukau secara tidak terduga di tempat-tempat yang biasanya dianggap sebagai bagian dari infrastruktur yang biasa, proyek ini membuka mata masyarakat akan potensi kreatif yang tak terbatas dalam memanfaatkan ruang publik. Diharapkan, inisiatif semacam ini akan terus berkembang dan menginspirasi langkah-langkah serupa di kota-kota lain, menciptakan lingkungan perkotaan yang lebih berwarna dan dinamis bagi semua orang.'),
(6, 'Kejagung Hitung Kerugian Negara dari Korupsi Timah', '7.jpg', 'Kejaksaan Agung RI menyatakan bahwa mereka sedang menghitung total kerugian negara setelah Harvey Moeis, suami Sandra Dewi, menjadi tersangka dalam kasus korupsi timah. Penetapan Moeis sebagai tersangka merupakan langkah dalam kasus dugaan tindak pidana korupsi dalam tata niaga komoditas timah PT Timah Tbk tahun 2015-2022. Meskipun masih dalam proses penghitungan, Kejaksaan Agung menggandeng Badan Pengawasan Keuangan dan Pembangunan (BPKP) serta para ahli untuk merumuskan formula perhitungan kerugian negara. Moeis diduga meminta pihak smelter untuk menyisihkan sebagian keuntungan mereka sebagai bagian dari pembayaran dana CSR. Kasus ini melibatkan pelanggaran Undang-undang Pemberantasan Tindak Pidana Korupsi.', 'Penetapan Harvey Moeis sebagai tersangka dalam kasus korupsi ini menjadi sorotan publik yang cukup besar, terutama mengingat hubungannya dengan Sandra Dewi, seorang artis terkenal di Indonesia. Kasus ini juga menunjukkan pentingnya penegakan hukum dan peran Kejaksaan Agung dalam memberantas korupsi di Indonesia. Dengan menunjukkan sikap tegas terhadap siapa pun yang terlibat dalam tindak pidana korupsi, Kejaksaan Agung memberikan pesan bahwa tidak ada yang dikecualikan dari hukum, tanpa memandang kedudukan atau hubungan sosial seseorang. Diharapkan, langkah-langkah yang diambil dalam penanganan kasus ini dapat membawa keadilan bagi negara dan memberikan efek jera bagi para pelaku tindak pidana korupsi di masa mendatang.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `artikel_lengkap`
--
ALTER TABLE `artikel_lengkap`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `artikel_lengkap`
--
ALTER TABLE `artikel_lengkap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
