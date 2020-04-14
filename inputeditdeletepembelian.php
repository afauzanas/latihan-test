<?php
//bagian halaman selanjutnya setelah penginputan
if(isset($_POST['input']))
{
echo "Hasil Input Anda <br>";
$NP=$_POST{"no_persetujuan"};
$NS=$_POST{"no_surat"};
$TD=$_POST{"tgl_disetujui"};
$JBD=$_POST{"jumlah_brg_disetujui"};

$link= mysqli_connect("localhost", "root", "", "2cd4_2_4");
//Di sini memeriksa data yang diinput sudah atau belum
$cari= "SELECT * from data_barang_disetujui WHERE no_persetujuan='$NP'";
$periksa=mysqli_query($link, $cari);
if (mysqli_num_rows($periksa)===0)
	{
$tambah= "INSERT INTO data_barang_disetujui(no_persetujuan, no_surat, tgl_disetujui, jumlah_brg_disetujui)
		VALUES('$NP', '$NS', '$TD', '$JBD')";
mysqli_query($link, $tambah);
	}
ELSE 	{
	ECHO "Data Tersebut Sudah Ada atau Salah Tempat Input. Jadi tidak disimpan";
		}
}
//Batas
if(isset($_POST['edit']))
{
echo "Hasil Edit Anda <br>";
$NP=$_POST{"no_persetujuan"};
$NS=$_POST{"no_surat"};
$TD=$_POST{"tgl_disetujui"};
$JBS=$_POST{"jumlah_brg_sebenarnya"};

$link= mysqli_connect("localhost", "root", "", "2cd4_2_4");
//Di sini memeriksa data yang mau diedit ada atau tidak ada
$cari2= "SELECT * from data_barang_disetujui WHERE no_persetujuan='$NP'";
$periksa2=mysqli_query($link, $cari2);
if (mysqli_num_rows($periksa2)!=0)
	{
$editdata= "UPDATE data_barang_disetujui set jumlah_brg_disetujui= '$JBS' WHERE no_persetujuan= '$NP' and no_surat= '$NS'";
mysqli_query($link, $editdata);
	}
ELSE 	{
	ECHO "Data Tersebut Tidak Ada atau Salah Tempat Input. Jadi tidak disimpan";
		}
}
//Batas
if(isset($_POST['delete']))
{
echo "Hasil Hapus Anda <br>";
$NP=$_POST{"no_persetujuan"};
$NS=$_POST{"no_surat"};
$TD=$_POST{"tgl_disetujui"};
$JBD=$_POST{"jumlah_brg_disetujui"};

$link= mysqli_connect("localhost", "root", "", "2cd4_2_4");
//Di sini memeriksa data yang mau dihapus ada atau tidak ada
$cari3= "SELECT * from data_barang_disetujui WHERE no_persetujuan='$NP'";
$periksa3=mysqli_query($link, $cari3);
if (mysqli_num_rows($periksa3)!=0)
	{
$hapusdata= "DELETE FROM data_barang_disetujui where no_persetujuan= '$NP' and no_surat= '$NS'";
mysqli_query($link, $hapusdata);
	}
ELSE {
	echo "Data Tersebut Tidak Ada atau Salah Tempat Input. Jadi tidak disimpan";
	}
}
?>

<html>
	<head>
		<title> MENGINPUT MENGEDIT DAN MENGHAPUS DATA </title>
	</head>
	<body>
		<form action = "inputeditdeletepembelian.php" method = "post">
			<table>
				<tr>
					<td>Masukkan Nomor Persetujuan</td>
					<td> : </td>
					<td><input type= "INT" name= "no_persetujuan"></td>
				</tr>
				<tr>
					<td> Masukkan Nomor Surat </td>
					<td> : </td>
					<td><input type= "INT" name= "no_surat"></td>
				</tr>
				<tr>
					<td> Masukkan Tanggal Disetujui </td>
					<td> : </td>
					<td><input type="date" name="tgl_disetujui"></td>
				</tr>
				<tr>
					<td> Masukkan Jumlah Barang Disetujui </td>
					<td> : </td>
					<td><input type="INT" name= "jumlah_brg_disetujui"></td>
				</tr>
				<tr>
					<td> Masukkan Jumlah Barang Sebenarnya </td>
					<td> : </td>
					<td><input type="INT" name= "jumlah_brg_sebenarnya"></td>
				</tr>
			</table>
			<input type= "submit" name= "input" value= "simpan">
			<input type= "submit" name= "edit" value= "edit">
			<input type= "submit" name= "delete" value= "delete">
		</form>
		<?php
			$link2=mysqli_connect("localhost", "root", "", "2cd4_2_4");
			$table=mysqli_query($link2, "SELECT * FROM data_barang_disetujui");
			echo "Data Barang Disetujui";
		?>
		<table border= "1">
			<tr>
				<td> No Persetujuan </td>
				<td> No Surat </td>
				<td> Tanggal Disetujui </td>
				<td> Jumlah Barang Disetujui </td>
			</tr>
			<?php
				while($baris= mysqli_fetch_array($table))
				{
			?>
			<tr>
				<td><?php echo $baris{"no_persetujuan"};?></td>
				<td><?php echo $baris{"no_surat"};?></td>
				<td><?php echo $baris{"tgl_disetujui"};?></td>
				<td><?php echo $baris{"jumlah_brg_disetujui"};?></td>
			</tr>
			<?php	
				}
			?>
		</table
	</body>
</html>	