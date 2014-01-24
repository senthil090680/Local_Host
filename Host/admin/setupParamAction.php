<?php 
include "../include/config.php";
EXTRACT($_POST);
//Submit Action
if($submit=='Save')
{
//echo $displaydateformat; exit;
$_data="";$_file="";
//$_file = fopen($_FILES["leftlogo"]["tmp_name"],"rb");
//$_data = fread($_file,filesize["leftlogo"]["tmp_name"]);
//fclose($_file);
$timestamp= time();
//Check Mandatory Fields
		if($displaydateformat==''|| $batchctrl==''|| $currency=='')
		{
			header("location:setupParam.php?no=9&id=1");exit;
		}
		else
		{
		mysql_query("UPDATE parameters set `displaydateformat`='$displaydateformat' ,`currency`='$currency',`Transfer_Frequency`='$Transfer_Frequency',`Start_time`='$Start_time',`End_time`='$End_time',`batchctrl`='$batchctrl',`Focus_item_stock`='$Focus_item_stock',`Customer_Sign`='$Customer_Sign',`Permit_Return`='$Permit_Return',`Trans_Reprint`='$Trans_Reprint',`Tran_copies`='$Tran_copies',`Data_Transfer`='$Data_Transfer' where id='1'");	
		
		mysql_query("UPDATE master_code set `document`='$kd',`method`='$method_kd',`type`='$type_kd',`alpha`='$alpha_kd',`numeric`='$numeric_kd',`startingvalue`='$startingvalue_kd' where master_id='1'");
		
	    mysql_query("UPDATE master_code set `document`='$Scheme',`method`='$method_sc',`type`='$type_sc',`alpha`='$alpha_sc',`numeric`='$numeric_sc',`startingvalue`='$startingvalue_sc' where master_id='2'");
		
			
	    mysql_query("UPDATE master_code set `document`='$SR',`method`='$method_sr',`type`='$type_sr',`alpha`='$alpha_sr',`numeric`='$numeric_sr',`startingvalue`='$startingvalue_sr' where master_id='3'");
			
		}
header("location:setupParam.php?no=2&id=1");
}
?>