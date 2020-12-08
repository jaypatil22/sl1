<?php

include("connection.php");

$vid = $_GET['vid'];
$data2 = mysqli_query($conn,"UPDATE VEHICLES SET v_test = 2 WHERE v_id='$vid'");
// $result2 = mysqli_fetch_array($data2);
// $query = "DELETE FROM VEHICLES WHERE v_id='$vid'";
// $data = mysqli_query($conn,$query);

if($data2){
	
	?>
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost:8080/VSMS/1/index.php?vid=<?php echo $vid; ?>#portfolio">
	<?php
	
}else{
	echo "<font color='red'>Sorry, Delete process failed";
}