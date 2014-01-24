<?php 
include "../include/config.php";
EXTRACT($_POST);
//Submit Action
if($submit=='Submit')
{
//Check Mandatory Fields
		if($uploaddownload==''||$invoicedesc=='' || $specialchar==''|| $displaydateformat==''|| $editmasterpwd==''|| $priceauth=='')
		{
			header("location:setupParam.php?user=empty&id=1");exit;
		}
		else
		{
		//Left Logo
		if($_FILES["leftlogo"]["name"]!=''){
		$_file_name = $_FILES["leftlogo"]["name"]; 
		}
		else
		{
		$_file_name =$leftlogo_hid;
		}
		//Right Logo
		if($_FILES["rightlogo"]["name"]!=''){
		$_file_name1 = $_FILES["rightlogo"]["name"]; 
		}
		else
		{
		$_file_name1 =$rightlogo_hid;
		}
			$displaydateformat=date('Y-m-d',strtotime($displaydateformat));
			//Else For Mandatory Fields
			//echo "UPDATE parameters set `invoicedesc`='$invoicedesc',`specialchar`='$specialchar',`mastercode`='$mastercode',`displaydateformat`='$displaydateformat',`editmasterpwd`='$editmasterpwd',`priceauth`='$priceauth',`leftlogo`='$leftlogo',`rightlogo`='$rightlogo',`static`='$static',`currency`='$currency',`uploaddownload`='$uploaddownload' where id='1'"; exit;
			mysql_query("UPDATE parameters set `invoicedesc`='$invoicedesc',`specialchar`='$specialchar',`displaydateformat`='$displaydateformat',`editmasterpwd`='$editmasterpwd',`priceauth`='$priceauth',`leftlogo`='$_file_name',`rightlogo`='$_file_name1',`static`='$static',`currency`='$currency',`uploaddownload`='$uploaddownload' where id='1'");	
			if($masterName=='Product'){
			mysql_query("UPDATE master_code set `masterName`='$masterName',`masterCode`='$Product1' where id='1'");	
			}
			else if($masterName=='Scheme')
			{
			//echo "KLOPPP"; exit;
			//echo "UPDATE master_code set `masterName`='$masterName',`masterCode`='$Scheme1' where id='2'"; exit;
			mysql_query("UPDATE master_code set `masterName`='$masterName',`masterCode`='$Scheme1' where id='2'");	
			}
			else if($masterName=='KD'){
			//echo "UPDATE master_code set `masterName`='$masterName',`masterCode`='$KD1' where id='3'"; exit;
			mysql_query("UPDATE master_code set `masterName`='$masterName',`masterCode`='$KD1' where id='3'");	
			}
			
		}
header("location:setupParam.php?d=3&id=1");
}
?>