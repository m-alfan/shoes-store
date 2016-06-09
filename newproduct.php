<?php
//proses
//tangkap request dari link edit (idedit)
$idedit = $_GET['idedit'];
$id[] = $idedit; //simpan data array
if(!empty($idedit))//modus mengedit data lama  
{
        $qe = "SELECT * FROM shoes WHERE id = ?";
        //PDO
        $ps = $dbh->prepare($qe);
        $ps->execute($id);
        $row = $ps->fetch(); //ambil satu baris data
}
 else { //modus entry data baru from dalam keadaan kosong
     $row = array(); //tidak ada data lama yang diedit
}
?>

<form method="POST" name="newproduct" action="process_newproduct.php">
    <table align="left" cellpadding="10" width="400">
        <thead>
            <tr><th colspan ="2" align="left"><h1>New Product</h1></th></tr>
        </thead>
        <tfoot>
            <tr><th colspan ="2" align="left">
                    
                <?php
                if(empty($idedit)){  //modus entry data baru
                ?>
                <input class="button" type="submit" name="proses" value="Save" />&nbsp;
                <?php
                } 
                else { //modus data lama
                ?>
                <input class="button" type="submit" name="proses" value="Edit" />&nbsp;
                <input class="button" type="submit" name="proses" value="Remove"
                       onclick ="return confirm ('Anda Yakin Ingin Menghapus Data ...??')"/>
                <input type="hidden" name="idx" value="<?php echo $idedit;?>" />
                <?php
                }
                ?>                
                <input class="button" type="submit" name="proses" value="Cancel" />
                
            </th></tr>
        </tfoot>
        <tbody>
            <tr>
                <td> Name </td>
                <td>
                    <input type="text" value="<?php echo $row['name'];?>" name="name" size="30" />
                </td>
            </tr>
            
            <tr>
                <td> Categories</td>
                <td>
                    
<?php
//tampilkan data katagori
$qd = "SELECT * FROM categories ORDER BY name";
//PDO mengeksekusi query dan mengambil seluruh baris hasil eksekusi query
$rd = $dbh->query($qd);

                        echo '<select name="categories">
                        <option value="">-- Select Category --</option>';
                        foreach ($rd as $data){
                        //edit divisi
                        if($data ['id'] == $row['categories_id']) $c = 'selected';
                        else $c ='';
                            echo '<option value="'.$data['id'].'"'.$c.'>'.$data['name'].'</option>';
                        }                        
                        ?>                    
                    </select>
                </td>
            </tr>
            
            <tr>
                <td> Price </td>
                <td>
                    <input type="text" value="<?php echo $row['price'];?>" name="price" size="30" />
                </td>
            </tr>
            
            <tr>
                <td> Picture </td>
                <td>
                    <input type="text" value="<?php echo $row['picture'];?>" name="picture" size="30" />                  
                </td>
            </tr>
            
            <tr>
                <td> Size </td>
                <td>
                    <input type="text" value="<?php echo $row['size'];?>" name="size" size="30" />
                </td>
            </tr>
            <tr>
                <td> Stock </td>
                <td>
                    <input type="text" value="<?php echo $row['stock'];?>" name="stock" size="30" />
                </td>
            </tr>
            
            <tr>
                <td valign="top"> Comment </td>
                <td>
                     <textarea name="comment" cols="30" row="7" ><?php echo $row['comment'];?></textarea>
                </td>
            </tr>
              
        </tbody>
    </table>
</form>
