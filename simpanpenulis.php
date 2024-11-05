<?php
include 'koneksi.php';
$nama_penulis = $_POST['nama_penulis'];
$sql = mysqli_query($koneksi, "insert into penulis(nama_penulis) values ('$nama_penulis')");
header("location:penulis.php");
?>