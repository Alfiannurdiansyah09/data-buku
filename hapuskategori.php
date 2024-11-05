<?php
include 'koneksi.php';
$id_kategori= $_GET['id_kategori'];
$hapus = mysqli_query($koneksi,"delete from kategori where id_kategori ='$id_kategori'");
header("location:kategori.php");
?>