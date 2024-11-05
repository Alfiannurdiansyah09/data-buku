<?php
include 'koneksi.php';
$isbn          =$_POST['isbn'];
$judul         =$_POST['judul'];
$id_kategori   =$_POST['id_kategori'];
$id_penulis    =$_POST['id_penulis'];
$harga         =$_POST['harga'];
$deskripsi     =$_POST['deskripsi'];

$target_dir = "file_cover/";
$namaFile = $_FILES["cover"]["name"];
$target_file = $target_dir . basename($namaFile);
$namaSementara = $_FILES['cover']['tmp_name'];
$terupload = move_uploaded_file($namaSementara, $target_file);

$sql = mysqli_query($koneksi, "insert into buku(isbn, judul,id_kategori,id_penulis,harga,cover,deskripsi)
values ('$isbn','$judul','$id_kategori','$id_penulis','$harga','$namaFile','$deskripsi')");
header("location:daftarbuku.php");

?>