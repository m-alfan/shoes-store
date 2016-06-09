
   <div id="content" class="float_r">
        <?php
        //tangkap request dari url yang berasal dari menu dan sidebar
        $hal = $_GET['hal'];
	if(!empty($hal)){
        //ditampilkan request halmannya di main
        include_once $link[$hal];
	}
	else {
	//ditampilkan request index
        include_once $link['home'];
	}
        ?>

    </div> 
    <div class="cleaner"></div>
</div> <!-- END of templatemo_main -->
