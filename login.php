
<?php
include 'koneksi.php';
session_start();
//cara membaca inputan dari form
$nama = $_POST['nama'];
$password = md5( $_POST['password']);

//melakukan pengecekan ke tabel user
$sql ="select * from user where nama='$nama' or email='$nama' and password='$password'";
//melakukan konversi hasil menjadi quary
$user = mysqli_fetch_array(mysqli_query($koneksi,$sql));

if($user){
    echo "berhasil login";
   $_SESSION['nama'] = $user['nama'];
    header("location:daftarbuku.php");
} else{
   echo "gagal login";
    header("location:index.php");
}

exit;


?>