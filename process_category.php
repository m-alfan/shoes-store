<?php

include_once 'dbconection.php';

//tangkap request dari form (name element formnya)
//simpan ke variabel
$name = $_POST['name'];

//simpan ke data array
$data[] = $name; // ?

//proses
$tombol = $_POST['proses'];
        if($tombol == 'Input'){
         // jika diklik tombol simpan
        $sql="INSERT INTO categories (name) VALUES (?)";

        }
        elseif ($tombol == 'Edit'){
         //tangkap hidden field idcat
         $data[] = $_POST['idcat']; 
            
         //jika diklik tombol ubah
            $sql = "UPDATE categories SET
            name=? WHERE id=?";
        }
        elseif ($tombol == 'Remove'){
         //hapus
         unset($data);
         //tangkap hidden field idcat
         $data[] = $_POST['idcat']; // ? u/ id
         //jika diklik tombol hapus
            $sql = "DELETE FROM categories WHERE id=?";
        }
        else{
         //batal proses dan kembalikan ke halaman pertama
         header('location:index.php?hal=home');
        }

//PDO
//prepare statement query
$ps = $dbh->prepare($sql); //siapkan query
$ps->execute($data);

//setelah selesai proses kembalikan ke halaman katagori
header('location:index.php');
?>