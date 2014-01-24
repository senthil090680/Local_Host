<?php
//Connect to database from here
include "../include/config.php";
ob_Start();
EXTRACT($_POST);
$id=$_GET['id'];
$_POST['popid'];
	$sel="select editmasterpwd from parameters";
		$sel_query=mysql_query($sel);
		$row=mysql_fetch_array($sel_query);
		//echo $row['editmasterpwd'];
		if($_POST['submit']!=''){
		//echo $password; exit;
		if($password==$row['editmasterpwd'])
		{
		//echo "HKK"; exit;
	    header("location:../masterData/CustomerType.php?id=$id");
		}
		else
		{ 
		echo "Password Not Match"; 
		header("location:passwordcheckucty.php");
	}
	}
?>

<title>Host System</title>
</head>
<body topmargin="0">
<h2 align="center">Enter Password To Edit</h2>
       <form action="../masterData/uomConversion.php?id=<?php echo $_GET['id']; ?> " method="post">
        <input type="hidden" name="popid" value="<?php echo $_GET['id']; ?> "/>
        <input type="text" name="password" value=""/>
        <input type="submit" name="submit"  value="Go" class="buttons"/>
    </form>       
              
</body>
</html>


