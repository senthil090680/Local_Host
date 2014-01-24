<?php
//Connect to database from here
include "../include/config.php";
ob_Start();
EXTRACT($_POST);
$id=$_GET['id'];
$password=$_POST['password'];
if($_POST['password']!=""){
	    $sel="select editmasterpwd from parameters";
		$sel_query=mysql_query($sel);
		$row=mysql_fetch_array($sel_query);
		
		if($password==$row['editmasterpwd'])
		{
		header("location:../masterData/productMaster.php?id=$id");
		}
		else
		{ 
		header("location:passwordcheckpm.php");
		echo "Password Not Match"; 
	}
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
body{
	 background:#202020;
	
}

.editform{
background:#FFFFFF;
margin-top:10%;
padding-left:10px;
padding-top:50px;
width:300px;
height:80px;
margin-left:auto;
margin-right:auto;
border-radius:10px;
}
</style>
<title>HOST SYSTEM</title>
</head>
<body topmargin="0">
<h2 align="center" style="color:#FFF">Enter Password To Edit</h2>
<div class="editform">
       <form action="#" method="post" id="overlay_form">
        <input hidden="text" name="popid" value="<?php echo $_GET['id']; ?> "/>
        <input type="text" name="password" value=""/>
        <input type="submit" name="submit"  value="Go" class="buttons"/>
        </form>       
 </div>
 
                  
</body>
</html>


