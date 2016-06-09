<?php

session_start(); //memulai session
include_once 'dbconection.php';

//1.tangkap request dari form login
$user = $_POST ['user'];
$pass = $_POST ['pass'];

//2. simpan ke array
$data[] = $user;
$data[] = $pass;

//3.definisikan query
$sql = "SELECT * FROM user WHERE
        username = ? AND pass = MD5(?)";

//4. validasi dengan PDO
$ps = $dbh->prepare($sql); //siapkan query
$ps->execute($data);
$jml = $ps->rowCount(); //hitung jumlah baris data query

//5.proses
if($jml > 0 ) {
    //sukses login
    $row = $ps->fetch(); //ambil 1 baris data
    $_SESSION['MEMBER'] = $row;
    header('location:index.php?hal=newproduct');
}
else{
    //gagal login
    echo '<script>
        alert("Maaf User / Password Anda Salah...");
        history.go(-1);
        </script>';    
}
?>
