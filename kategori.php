<?php
include('header.php');
include 'koneksi.php';
?>

<div class="container mt-5">

<h1 align="center"> daftar kategori buku</h1>
  
<table class="table table-bordered table-hover" margin="0">
    <thead class="table-dark">
      <tr align="center">
        <th>id buku</th>
        <th>Nama kategoori</th>
     
        <th>Aksi</th> 
      </tr>
    </thead>
    <tbody>
      <?php
      $kategori = mysqli_query($koneksi,"select * from kategori");
      $nomor = 1;
      while($row=mysqli_fetch_array($kategori)){
      ?>
      <tr>
        <td><?php echo $nomor;?></td>
        <td><?php echo $row['nama_kategori'] ?></td>            
        <td>
        <div class="d-flex gap-2">
            <a href="editkategori.php?id_kategori=<?php echo $row ['id_kategori'] ?>" class="btn btn-warning btn-sm"> edit
      </a>


          <a  href="hapuskategori.php?id_kategori=<?php echo $row ['id_kategori'] ?>"  class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus</a>
        </td>
      </tr>
      <tr>
        
      <?php
      $nomor++;
     } ?>
        <td colspan="3"  align="center">
            <a href="tambahkategori.php"> <button class="btn btn-primary btn-sm w-75"> tambah kategori</button>
        </th>
      </tr>
      
</thead>
</table>
<script src="js/bootstrap.bundle.js"></script>
</div>
<?php
include('footer.php');
?>
