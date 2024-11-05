<?php
include('header.php');
include 'koneksi.php';

?>

<div class="container mt-5">

<h1 align="center"> daftar penulis buku</h1>
  
<table class="table table-bordered table-hover" margin="0">
    <thead class="table-dark">
      <tr align="center">
        <th>id buku</th>
        <th>Nama penulis</th>
     
        <th>Aksi</th> 
      </tr>
    </thead>
    <tbody>
      <?php
      $penulis = mysqli_query($koneksi,"select * from penulis");
      $nomor = 1;
      while($row=mysqli_fetch_array($penulis)){
      ?>

      <tr>

        <td><?php echo $nomor;?></td>
        <td><?php echo $row['nama_penulis'] ?></td>            
        <td>
          <div class="d-flex gap-2">
          <a href="editpenulis.php?id_penulis=<?php echo $row ['id_penulis'] ?>" class="btn btn-warning btn-sm"> edit
           </a>  
           
          <a href="hapuspenulis.php?id_penulis=<?php echo $row ['id_penulis'] ?>" class="btn btn-danger btn-sm"  onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus
          </a>
          
        </td>
      </tr>
      <tr>
        
      <?php
      $nomor++;
     } ?>
        <td colspan="3"  align="center">
            <a href="tambahpenulis.php"> <button class="btn btn-primary btn-sm w-75"> tambah penulis</button>
        </th>
      </tr>
      
</thead>
</table>
<script src="js/bootstrap.bundle.js"></script>
</div>
<?php
include('footer.php');
?>
