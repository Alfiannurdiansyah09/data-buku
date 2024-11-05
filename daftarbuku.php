<?php
include('header.php');
include 'koneksi.php';
?>

<div class="container mt-5">

<h1 align="center"> daftar buku</h1>
  
<table class="table table-bordered table-hover" margin="0">
    <thead class="table-dark">
      <tr align="center">
        <th>isbn</th>
        <th>judul buku</th>
        <th>kategori buku</th>
        <th>penulis</th>
        <th>harga</th>   
        <th>deskripsi </th> 
        <th>cover </th> 
        <th>Aksi</th> 
      </tr>
    </thead>
    <tbody>
      <?php
      $buku = mysqli_query($koneksi,"SELECT b.*,k.nama_kategori,p.nama_penulis
                                      FROM buku as b JOIN kategori as k ON b.id_kategori=k.id_kategori
                                      JOIN penulis as p ON b.id_penulis=p.id_penulis" );
      while($row=mysqli_fetch_array($buku)){
      ?>
      <tr>
        <td><?php echo $row['isbn'] ?></td> 
        <td><?php echo $row['judul'] ?></td>
        <td><?php echo $row['id_kategori'] ?></td>
        <td><?php echo $row['id_penulis'] ?></td>
        <td><?php echo $row['harga'] ?></td>
        <td><?php echo $row['deskripsi'] ?></td>
        <td><img src="file_cover/<?php echo $row['cover'] ?>" width="100"></td>
              
        <td>
           
        <div class="d-flex gap-2">
            <a href="editbuku.php?isbn=<?php echo $row ['isbn'] ?>" class="btn btn-warning btn-sm"> edit
      </a>  
         
      <form action="hapusbuku.php" method="POST">
        <input type="hidden" value="<?php echo $row['isbn']?>" name="isbn">
          <button type="submit" class="btn btn-danger btn-sm">Hapus</button>
      </form>
        </td>
      </tr>
      <tr>
        
      <?php
     } ?>
        <td colspan="8"  align="center">
            <a href="tambahbuku.php"> <button class="btn btn-primary btn-sm w-75"> tambah buku</button>
        </th>
      </tr>
      
</thead>
</table>
<script src="js/bootstrap.bundle.js"></script>
</div>
<?php
include('footer.php');
?>
