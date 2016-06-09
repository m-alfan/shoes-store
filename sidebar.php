    <div id="templatemo_main">
    	<div id="sidebar" class="float_l">
            <div class="sidebar_box"><span class="bottom"></span>
            
        <!-- sesion start -->        
        <?php 
        if(empty($_SESSION['MEMBER'])){
         ?>
            	<h3>Login</h3>   
                <div class="content"> 
                    <form action="process_login.php" method="POST">
                        <label>Username</label><br/>
                            <input type="text" name="user" value="username" size="15" onFocus="this.value=''"/><br/>
                        <label>Password</label><br/>
                            <input type="password" name="pass" size="15" value="12345" onFocus="this.value=''"/><br/>
                            
                            <input type="submit" class="button" name="proses" value="Login"/>
                    </form>
                </div>
                
        <?php } ?>
        <!-- sesion finish -->
                
            </div> 
<?php
//proses
//tangkap request dari link edit (idedit)
$ideditcat = $_GET['ideditcat'];
if(!empty($ideditcat))//modus mengedit data lama  
{
        $ed = "SELECT * FROM categories WHERE id = ?";
        //PDO
        $ca = $dbh->prepare($ed);
        $ca->execute(array($ideditcat));
        $cat = $ca->fetch(); //ambil satu baris data
}
 else { //modus entry data baru from dalam keadaan kosong
     $cat = array(); //tidak ada data lama yang diedit
}


$sql= "SELECT * FROM categories ORDER BY name";
$rs = $dbh->query($sql);

?>
            
            <div class="sidebar_box"><span class="bottom"></span>
            	<h3>Categories</h3>   
                <div class="content"> 
                    <ul class="sidebar_list">
                        <?php
                        foreach ($rs as $ro) {
                        echo '<li><a href="index.php?hal=products&cat='.$ro['id'].'">'.$ro['name'].'</a> &nbsp; &nbsp; &nbsp;';
        
        if(!empty($_SESSION['MEMBER'])){
        echo
                        '<a href="index.php?ideditcat='.$ro['id'].'"><img src="images/edit.png" width="20"/></a>
                              </li>';
        
                        } // tutup sesion
                        }
                        ?>
                        <li class="last"></li>
                    </ul>
                </div>
            </div>
            <div class="sidebar_box"><span class="bottom"></span>
        <?php 
        if(!empty($_SESSION['MEMBER'])){
         ?>
            	<h3>Input Categories</h3>   
                <div class="content"> 
                     <form action="process_category.php" method="POST">			
                        <p>			
                        <label>Category</label>
                            <input name="name" value="<?php echo $cat['name'];?>" type="text" size="15" />
                            <br/><br/>	
                            
                            <?php
                            if(empty($ideditcat)){  //modus entry data baru
                            ?>
                            <input class="button" type="submit" name="proses" value="Input" />&nbsp;
                            <?php
                            } 
                            else { //modus data lama
                            ?>
                            <input class="button" type="submit" name="proses" value="Edit" />&nbsp;
                            <input class="button" type="submit" name="proses" value="Remove"/>
                            <input type="hidden" name="idcat" value="<?php echo $ideditcat;?>" />
                            <?php
                            }
                            ?>                
                            <input class="button" type="submit" name="proses" value="Cancel" />
                            
                            
                        </p>		
                    </form>	
                </div>
              <?php } ?>                
            </div>
        </div>
        