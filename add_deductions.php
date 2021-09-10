<?php
	
		require("db.php");
		
		@$id 			= $_POST['deduction_id'];
		@$none1         = $_POST['none1'];
		@$philhealth 	= $_POST['philhealth'];
		@$bir 			= $_POST['bir'];
		@$gsis 			= $_POST['gsis'];
		@$love 			= $_POST['pag_ibig'];
		@$loans 		= $_POST['loans'];


		$sql = mysqli_query($connection,"UPDATE deductions SET bir='$bir', gsis='$gsis', pag_ibig='$love', loans='$loans', philhealth='$philhealth', none1='$none1' WHERE deduction_id='1'");

		if($sql)
		{
			?>
		        <script>
		            alert('Deductions successfully updated...');
		            window.location.href='home_deductions.php';
		        </script>
		    <?php 
		}
		else {
			echo "Not Successfull!"; 
		}
 ?>