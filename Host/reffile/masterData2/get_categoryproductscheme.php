<?php
include "../include/config.php";
$sql="select * from  product_scheme_master where Kd_category='". mysql_real_escape_string($_GET["val"])."'";
$results=mysql_query($sql);
$cnt=mysql_num_rows($results);
while($rs = mysql_fetch_array($results)) {
//echo $rs['Status_kd_product'].'|';
echo $rs['Kd_category'].'^'.$rs['Scheme_code'].'^'.$rs['Product_code'].'^'.$rs['add_productcode'].'^'.$rs['Quantity'].'^'.$rs['Effective_from'].'^'.$rs['Effective_to'].'|';
}

?>
		   
          