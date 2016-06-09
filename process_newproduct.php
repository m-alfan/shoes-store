<?php

include_once 'dbconection.php';

//tangkap request dari form (name element formnya)
//simpan ke variabel
$name = $_POST['name'];
$categories= $_POST['categories'];
$price = $_POST['price'];
$picture = $_POST['picture'];
$size = $_POST['size'];
$stock = $_POST['stock'];
$comment  = $_POST['comment'];

//simpan ke data array
$data[] = $name; // ? 1
$data[] = $categories; // ? 2
$data[] = $price; // ? 3
$data[] = $picture; // ? 4
$data[] = $size; // ? 5
$data[] = $stock; // ? 6
$data[] = $comment; // ? 7

//proses
$tombol = $_POST['proses'];
        if($tombol == 'Save'){
         // jika diklik tombol simpan
         $sql="INSERT INTO shoes (name, categories_id, price, picture, size, stock, comment)
             VALUES (?,?,?,?,?,?,?)";
        }
        elseif ($tombol == 'Edit'){
         //tangkap hidden field idx
         $data[] = $_POST['idx']; // ? ke -7 u/ id
            
         //jika diklik tombol ubah
            $sql = "UPDATE shoes SET
            name=?,categories_id=?,price=?,picture=?,
            size=?,stock=?,comment=?
            WHERE id=?";
        }
        elseif ($tombol == 'Remove'){
         //hapus ke 11 ? di atas
         unset($data);
         //tangkap hidden field idx
         $data[] = $_POST['idx']; // ? ke -1 u/ id
         //jika diklik tombol hapus
            $sql = "DELETE FROM shoes WHERE id=?";
        }
        else{
         //batal proses dan kembalikan ke halaman pertama
         header('location:index.php?hal=home');
        }
        
                 
            //PDO
            //prepare statement query
            $ps = $dbh->prepare($sql); //siapkan query
            $ps->execute($data);

            //setelah selesai proses kembalikan ke halaman pegawai
            header('location:index.php?hal=products');
?>