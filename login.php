<?php
	session_start();

	// jika sudah login, alihkan ke halaman list
	if (isset($_SESSION['user'])) 
	{
		header('Location: home.php');
		exit();
	}
?>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Login Petugas</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
	<form method="post" name="form_login" id="form_login" action="proses-login.php" style="margin-top: 120px;">
		<table class="form">
			<tr>
				<td colspan="2">
					<h1 align="center">Login Petugas</h1>
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center"> 	
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
				</td>

				<!-- <td>

					<?php 
					// Check message ada atau tidak
					if(isset($_GET['pesan'])) 
					{
						echo $_GET['pesan']; //menampilkan pesan 
						unset($_GET['pesan']); //menghapus pesan setelah refresh
					}
					?>
				</td> -->
			</tr>
			
			<tr>
				<td>Username</td>
				<td>
					<input type="text" name="username" id="username" required/>
				</td>
			</tr>
			<tr>
				<td>Password</td>
				<td>
					<input type="password" name="password" id="password" required/>
				</td>
			</tr>
			<tr style="height:10px"></tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" name="login" id="login" value="Login" class="btn btn-submit" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
