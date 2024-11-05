<?php
include 'koneksi.php';
$isbn= $_POST['isbn'];
$sql = mysqli_query($koneksi,"delete from buku where isbn ='$isbn'");
header("location:daftarbuku.php");
?>