<?php

//proses pencarian
$keyword=$_GET['keyword'];
if(!empty($keyword)) $x=" WHERE name LIKE '%$keyword%'";

//tampilkan perkatagori
$cat=$_GET['cat'];

if(!empty($cat)) $q=" WHERE categories_id =$cat";

//difinisikan query
$sql= "SELECT * FROM shoes$q $x ORDER BY id DESC ";
$rs = $dbh->query($sql);
?>
<h1> Products</h1>

<?php
foreach ($rs as $row) {
$rp=$row['price'];    
echo '<div class="product_box">
        <h3>'.$row['name'].'</h3>
     <a href="#"><img src="images/product/'.$row['picture'].'" width="100" /></a>
     <p class="product_price">Rp. '.number_format($rp,2,',','.');
echo '</p>
     <p> '.$row['comment'].'</p>';
        if(!empty($_SESSION['MEMBER'])){ //sesion start
        echo '<a href="index.php?hal=newproduct&idedit='.$row['id'].'">Edit</a>';
        } // sesion finish
echo '</div>';  
        

}
?>