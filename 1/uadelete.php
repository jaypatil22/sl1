<?php

include("connection.php");

$vid = $_GET['vid'];
$data2 = mysqli_query($conn,"select * from vehicles where v_id='$vid'");
$result2 = mysqli_fetch_array($data2);
$tuid=$result2['v_uid'];
$query = "UPDATE VEHICLES SET v_test = 3 WHERE v_id='$vid'";
$data = mysqli_query($conn,$query);
// $query3 = "update users set t_status='1' where u_id='$tuid'";
// $data3= mysqli_query($conn,$query3);

if($data){
	
	
	
	?>
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost:8080/VSMS/1/index.php?vuid=<?php echo $result2['v_uid']; ?>#resume">
	<?php
	
}else{
	echo "<font color='red'>Sorry, Delete process failed";
}