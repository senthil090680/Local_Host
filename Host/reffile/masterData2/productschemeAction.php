<?php 
ob_start();
session_start();
include "../include/config.php";
EXTRACT($_POST);	

//Check Mandatory Fields
if($Kd_category=='')
{
header("location:productscheme.php?no=9");
} 
else
{
	if($submit=='Save')
	{
	
		    $sql="INSERT INTO `product_scheme_master`(`Kd_category`, `Scheme_code`, `Product_code`,`add_productcode`, `Quantity`, `UOM`, `Effective_from`, `Effective_to`, `Status`) 
			VALUES ('$Kd_category', '$Scheme_code', '$Product_code','$add_productcode', '$Quantity', '$UOM', '$Effective_date_from', '$Effective_date_to', 'Active')"; 
			mysql_query($sql); 
			header("location:productscheme.php?no=1&Kd_category=$Kd_category&Product_code=$Product_code");
	}

}

?>
