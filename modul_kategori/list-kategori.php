<?php
    // ... ambil data dari database
    include 'proses-list-kategori.php';
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Daftar Kategori</title>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>
    <div class="container clearfix">
        <h1>Perpustakaan Lima5atu</h1>

        <?php include '../sidebar.php' ?>
		
		<?php 

		if(isset($_GET['pesan']))
		{
				if($_GET['pesan'] == "gagal")
			{
				echo "Login gagal! </br> username atau password salah! </p>";
			}else if($_GET['pesan'] == "logout")
				{
					echo "Anda telah berhasil logout </p>";
				}else if($_GET['pesan'] == "belum_login")
					{
						echo "Anda harus login untuk mengakses halaman admin";
					}
						//unset($_GET['pesan']);
						
		}

		?>
						
						

        <div class="content">
            <h1>Daftar Kategori</h1>
			<?php  
            // Check message ada atau tidak
            if(!empty($_SESSION['messages'])) 
            {
                echo $_SESSION['messages']; //menampilkan pesan 
                unset($_SESSION['messages']); //menghapus pesan setelah refresh
            }
            ?>
			
			
            <div class="btn-tambah-div">
                <a href="tambah-kategori.php"><button class="btn btn-tambah">Tambah Data</button></a>
            </div>
            <?php if (empty($data_kategori)) : ?>
            Tidak ada data.;<div p=""></div>
            <?php else : ?>
            <table class="data">
                
                <tr>
                    <th>Kategori</th>
                    <th width="20%">Pilihan</th>
                </tr>

                <?php foreach ($data_kategori as $kategori) : ?>
                <tr>
                    <td><?php echo $kategori['kategori_nama'] ?></td>
                    <td>
                        <a href="edit-kategori.php?id_kategori=<?php echo $kategori['kategori_id']; ?>" 
                        class="btn btn-edit">Edit</a>
                        <a href="delete-kategori.php?id_kategori=<?php echo $kategori['kategori_id']; ?>" 
                        class="btn btn-hapus" onclick="return confirm('anda yakin akan menghapus data?');">Hapus
                        </a>
                    </td>
                </tr>
                <?php  endforeach ?>
                
            </table>
            <?php endif ?>
        </div>

    </div>
</body>
</html>
