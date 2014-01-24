<?php
include "../include/config.php";
$sql="select * from  kd  where kd_category='". mysql_real_escape_string($_GET["val"])."'";
$results=mysql_query($sql);
$cnt=mysql_num_rows($results);
while($rs = mysql_fetch_array($results)) {
echo $rs['KD_Code'].'|';
//echo $rs['kd_category'].'^'.$rs['KD_Code'].'|';
}

?>
		   
          