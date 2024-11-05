<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit data</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <h1>Form Edit Data</h1>
   
    <div class="mb-3">
        <label for="formGroupExampleInput" class="form-label">judul</label>
        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="tambahkan judul">
      </div>
      <div class="mb-3">
        <label for="formGroupExampleInput2" class="form-label">penulis</label>
        <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="tambahkan penulis">
      </div>
      <div class="mb-3">
        <label for="formGroupExampleInput" class="form-label">Kategori</label>
        <p>
            <select class="form-select" aria-label="Default select example">
                <option selected>Fiksi</option>
                <option value="1">Belajar</option>
                <option value="2">Latihan</option>
                <option value="3">Novel</option>
              </select>
        </p>
        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">Harga</label>
            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="tambahkan Harga">
          </div>
          <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">Deskripsi</label>
            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="tambahkan deskripsi">
          </div>
          <a href="daftarbuku.php"><button class="btn btn-warning btn-sm">Simpan</button></a>
          <a href="daftarbuku.php"><button class="btn btn-danger btn-sm">Batal</button></a>
        
    
    <script src="js/bootstrap.bundle.js"></script>