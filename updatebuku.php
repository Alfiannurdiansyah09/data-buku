<?php
include 'koneksi.php';
$isbn          =$_POST['isbn'];
$judul         =$_POST['judul'];
$id_kategori   =$_POST['id_kategori'];
$id_penulis    =$_POST['id_penulis'];
$harga         =$_POST['harga'];

$target_dir = "file_cover/";
$namaFile = $_FILES["cover"]["name"];
$target_file = $target_dir . basename($namaFile);
$namaSementara = $_FILES['cover']['tmp_name'];
$terupload = move_uploaded_file($namaSementara, $target_file);

$deskripsi     =$_POST['deskripsi'];
$sql           = mysqli_query($koneksi, "update buku set isbn='$isbn',judul='$judul',id_kategori='$id_kategori',id_penulis='$id_penulis',harga='$harga',cover='$namaFile',deskripsi='$deskripsi' where isbn='$isbn'");
header("location:daftarbuku.php");
?>
