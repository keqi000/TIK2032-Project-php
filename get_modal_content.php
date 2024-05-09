<?php
// Koneksi ke database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";

$conn = new mysqli($servername, $username, $password, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi ke database gagal: " . $conn->connect_error);
}

// Ambil ID artikel dari parameter GET
$id = $_GET['id'];

// Query untuk mengambil konten artikel berdasarkan ID
$sql = "SELECT * FROM artikel_lengkap WHERE id=$id";
$result = $conn->query($sql);

// Periksa hasil query
if ($result->num_rows > 0) {
    // Output data dari setiap baris
    while($row = $result->fetch_assoc()) {
        // Tampilkan konten artikel dalam format yang sesuai
        echo "<h3>" . $row['judul'] . "</h3>";
        echo "<img src='" . $row['gambar'] . "' alt='" . $row['judul'] . "' />";
        echo "<p>" . $row['konten1'] . "</p>";
        echo "<p>" . $row['konten2'] . "</p>";
    }
} else {
    echo "Artikel tidak ditemukan.";
}

// Tutup koneksi ke database
$conn->close();
