

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit prnulis</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
  <?php
include 'koneksi.php';
$id = $_GET['id_penulis'];
$sql = mysqli_query($koneksi, "select * from penulis where id_penulis='$id'");
$penulis = mysqli_fetch_array($sql);

?>
    <h1>Form Edit penulis</h1>
   
    <form action="updatepenulis.php" method="POST">
           
      <div class="mb-3">
        <label for="namapenulis" class="form-label">ID penulis</label>
        <input name="id_penulis" value="<?php echo $penulis['id_penulis']?>"type="text" class="form-control">
      </div>
      <div class="mb-3">
        <label for="namapenulis" class="form-label">Nama penulis</label>
        <input name="nama_penulis" value="<?php echo $penulis['nama_penulis']?>"type="text" class="form-control" id="namapenulis" placeholder="tambahkan nama penulis" required>
      </div>
     
          <button type="submit" class="btn btn-warning btn-sm">Simpan</button>
          <a href="penulis.php"><button class="btn btn-danger btn-sm">Batal</button></a>
    </form>

        
    
    <script src="js/bootstrap.bundle.js"></script>