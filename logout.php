<?php

session_start();
//session_destroy(); menghapus semua session secara keseluruhan
unset($_SESSION['MEMBER']);
header('location:index.php?hal=home')

?>
