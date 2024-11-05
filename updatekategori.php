<?php
include 'koneksi.php';
$id_kategori = $_POST['id_kategori'];
$nama_kategori = $_POST['nama_kategori'];
$update = mysqli_query($koneksi,"update kategori set nama_kategori='$nama_kategori' where id_kategori='$id_kategori'");
header("location:kategori.php");

?>