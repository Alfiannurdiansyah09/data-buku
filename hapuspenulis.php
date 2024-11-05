<?php
include 'koneksi.php';
$id_penulis= $_GET['id_penulis'];
$hapus = mysqli_query($koneksi,"delete from penulis where id_penulis ='$id_penulis'");
header("location:penulis.php");
?>