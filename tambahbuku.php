<?php
include('header.php');
include 'koneksi.php';
?>

    <h1>Form Tambah Buku</h1>
   <form action="simpanbuku.php" enctype="multipart/form-data" method="POST">
    <div class="mb-3">
        <label for="formGroupExampleInput" class="form-label">isbn</label>
        <input type="text" name=isbn class="form-control" id="formGroupExampleInput" placeholder="tambahkan isbn">
      </div>
    <div class="mb-3">
        <label for="formGroupExampleInput" class="form-label">judul buku</label>
        <input type="text" name=judul class="form-control" id="formGroupExampleInput" placeholder="tambahkan judul">
      </div>
      <div class="mb-3">
        <label for="formGroupExampleInput" class="form-label">Kategori</label>
        <select name="id_kategori" class="from-control">
         
        <?php
        $kategori = mysqli_query($koneksi,"select * from kategori");
        while($k=mysqli_fetch_array($kategori)){
          echo "<option value='".$k['id_kategori']."'>".$k['nama_kategori']."</option>";
        }
        ?>
 </select>
        
        
      
       
      <div class="mb-3">
        <label for="formGroupExampleInput2" class="form-label">penulis</label>
        <select name=id_penulis class="form-control"> 

        <?php
        $penulis = mysqli_query($koneksi,"select * from penulis");
        while($k=mysqli_fetch_array($penulis)){
          echo "<option value='".$k['id_penulis']."'>".$k['nama_penulis']."</option>";
        }
        ?>
   </select>

      </div>
     
        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">Harga</label>
            <input type="text" name=harga class="form-control" id="formGroupExampleInput" placeholder="tambahkan Harga">
          </div>
          <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">Deskripsi</label>
            <input type="text" name=deskripsi class="form-control" id="formGroupExampleInput" placeholder="tambahkan deskripsi">
          </div>
          <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">cover</label>
            <input type="file" name=cover class="form-control" id="formGroupExampleInput" placeholder="tambahkan cover">
          </div>
         <button type="submit" class="btn btn-warning btn-sm">Simpan</button></a>
          <a href="daftarbuku.php"><button class="btn btn-danger btn-sm">Batal</button></a>
</form>
    
    <script src="js/bootstrap.bundle.js"></script>