<?php
include 'koneksi.php';
$id_penulis = $_POST['id_penulis'];
$nama_penulis = $_POST['nama_penulis'];
$update = mysqli_query($koneksi,"update penulis set nama_penulis='$nama_penulis'where id_penulis='$id_penulis'");
header("location:penulis.php");

?>