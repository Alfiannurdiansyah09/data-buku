<?php
include('header.php');
include 'koneksi.php';
$isbn = $_GET['isbn'];
$sql = mysqli_query($koneksi, "select * from buku where isbn='$isbn'");
$buku = mysqli_fetch_array($sql);
?>

    <h1>Form edit buku</h1>
   <form action="updatebuku.php" enctype="multipart/form-data" method="POST">
    <div class="mb-3">
        <label for="isbn" class="form-label">isbn</label>
        <input name="isbn"   value="<?php echo $buku['isbn']?>"type="text" class="form-control" id="formGroupExampleInput" placeholder="tambahkan isbn">
      </div>
    <div class="mb-3">
        <label for="judul" class="form-label">judul buku</label>
        <input  name="judul" value="<?php echo $buku['judul']?>" type="text" class="form-control" id="formGroupExampleInput" placeholder="tambahkan judul">
      </div>
      <div class="mb-3">
        <label for="nama_kategori" class="form-label">Kategori</label>
        <select name="id_kategori" value="<?php echo $buku['nama_kategori']?>"  class="from-control">
         
        <?php
        $kategori = mysqli_query($koneksi,"select * from kategori");
        while($p=mysqli_fetch_array($kategori)){
          echo "<option value='".$p['id_kategori']."'";
          echo $p['id_kategori']==$buku['id_kategori']?'selected':'';
          echo ">".$p['nama_kategori']."</option>";
        }
        ?>
 </select>
        
        
      
       
      <div class="mb-3">
        <label for="nama_penulis" class="form-label">penulis</label>
        <select name="id_penulis" value="<?php echo $buku['nama_penulis']?>"  class="form-control"> 

        <?php
        $penulis = mysqli_query($koneksi,"select * from penulis");
        while($p=mysqli_fetch_array($penulis)){
          echo "<option value='".$p['id_penulis']."'";
          echo $p['id_penulis']==$buku['id_penulis']?'selected':'';
          echo ">".$p['nama_penulis']."</option>";
        }
        ?>
   </select>

      </div>
     
        <div class="mb-3">
            <label for="harga" class="form-label">Harga</label>
            <input  value="<?php echo $buku['harga']?>" name="harga"  type="text"  class="form-control" id="formGroupExampleInput" placeholder="tambahkan Harga">
          </div>
          <div class="mb-3">
            <label for="deskripsi" class="form-label">Deskripsi</label>
            <input  value="<?php echo $buku['deskripsi']?>" type="text" name="deskripsi" class="form-control" id="formGroupExampleInput" placeholder="tambahkan deskripsi">
          </div>
          <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">cover</label>
            <input type="file" name=cover class="form-control" id="formGroupExampleInput" placeholder="tambahkan cover">
          </div>
         <button type="submit" class="btn btn-warning btn-sm">Simpan</button></a>
          <a href="daftarbuku.php"><button class="btn btn-danger btn-sm">Batal</button></a>
</form>
    
    <script src="js/bootstrap.bundle.js"></script>