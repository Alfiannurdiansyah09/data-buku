<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tambah prnulis</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <h1>Form tambah penulis</h1>
    <form action= "simpanpenulis.php" method="POST">
   
    <div class="mb-3">
        <label for="formGroupExampleInput" class="form-label">ID penulis</label>
        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="tambahkan ID penulis">
      </div>
      <div class="mb-3">
        <label for="formGroupExampleInput2" class="form-label">Nama penulis</label>
        <input type="text" name="nama_penulis" class="form-control" id="formGroupExampleInput2" placeholder="tambahkan nama penulis">
      </div>
      <div class="mb-3">
     
          <button type="submit" class="btn btn-warning btn-sm">Simpan</button></a>
          <a href="penulis.php"><button class="btn btn-danger btn-sm">Batal</button></a>
</form>
    
    <script src="js/bootstrap.bundle.js"></script>