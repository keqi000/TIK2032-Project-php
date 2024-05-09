<?php
// Koneksi ke database untuk konten blog
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";

$conn = new mysqli($servername, $username, $password, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi ke database gagal: " . $conn->connect_error);
}

// Ambil data konten blog dari database
$sql = "SELECT * FROM artikel";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ReDo Blog</title>

     <!--icon-->
    <script src="https://unpkg.com/feather-icons"></script>

    <link rel="stylesheet" href="index_css.css" />
</head>
<body>
    <!-- navbar -->
    <?php include 'navbar.php'; ?>

    <!-- section blog start -->
    <section class="blog" id="blog">
        <h2>Artikels</h2>
        <h3>Info atau berita terbaru tersedia dibawah</h3>

        <div class="konten-blog">
            <?php
            // Periksa hasil dari query untuk konten blog
            if ($result->num_rows > 0) {
                // Output data dari setiap baris
                while($row = $result->fetch_assoc()) {
                    echo "<div class='content'>";
                    echo "<div class='content-text'>";
                    echo "<h4>".$row['judul']."</h4>";
                    echo "<p>".$row['konten']."</p>";
                    echo "</div>";
                    echo "<div class='content-link'>";
                    echo "<button onclick='openModal(".$row['id'].")' class='blog-detail-button'>Read more...</button>";
                    echo "</div>";
                    echo "</div>";
                }
            } else {
                echo "Tidak ada artikel.";
            }
            ?>
        </div>
    </section>
    <!-- section blog end -->

    <!-- Modal box -->
    <div class="modal" id="myModal">
        <div class="modal-container">
            <div class="close"><i data-feather="x"></i></div>

            <div class="modal-content">
                <div class="product-content">
                    <div id="modal-content"></div>
                </div>
            </div>
        </div>
    </div>

    <!--footer-->
    <?php include 'footer.php'; ?>
    <!--footer end-->

    <script>
      feather.replace();
    </script>

<script>
   // Fungsi untuk membuka modal dengan konten dari database
function openModal(id) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("modal-content").innerHTML = this.responseText;
            document.getElementById("myModal").style.display = "flex";
            document.querySelector(".product-content").style.display = "flex";
            document.body.style.overflow = "hidden"; // Mengatur overflow body menjadi hidden ketika modal terbuka
        }
    };
    xhttp.open("GET", "get_modal_content.php?id=" + id, true);
    xhttp.send();
}

// Fungsi untuk menutup modal
var close = document.getElementsByClassName("close")[0];
close.onclick = function() {
    closeModal();
}

// Fungsi untuk menutup modal ketika pengguna mengklik di luar area modal
window.onclick = function(event) {
    var modal = document.getElementById("myModal");
    if (event.target == modal) {
        closeModal();
    }
}

function closeModal() {
    document.getElementById("myModal").style.display = "none";
    document.body.style.overflow = "scroll"; // Mengatur overflow body menjadi scroll ketika modal ditutup
} 
</script>



</body>
</html>

<?php
// Tutup koneksi ke database
$conn->close();
?>
