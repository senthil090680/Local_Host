<?php 
session_start();
include "../include/config.php";
if($_GET['no']!=''){
$error_sql="select * from  error_message where id=".$_GET['no'];
$error_exec=mysql_query($error_sql);
$error_fetch=mysql_fetch_array($error_exec);
}
//echo $error_fetch[1].'<br>'.$error_fetch[2].'<br>';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Host System</title>
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/menu.css" type="text/css" />
<link rel="stylesheet" href="../css/facebox.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="../css/jquery-ui.css" />
<link rel="stylesheet" href="../css/editbox.css" type="text/css" />
<script type="text/javascript" src="../js/jquery1.js"></script>
<script type="text/javascript" src="../js/jquery2.js"></script>
<script type="text/javascript" src="../js/facebox.js"></script>
<script type="text/javascript" src="../js/jquery.validate.min.js"></script>
<script type="text/javascript" src="../js/validator.js"></script>
<script type="text/javascript" src="../js/jquery.tablesorter.js"></script> 
<script type="text/javascript" src="../js/jconfirmaction.jquery.js"></script>
</head>

<body>
<div id="wrapper">
 <!------------------------------- Header Start ---------------------------------------->
 <div id="header">
    <div id="logo">
      <div class="left"><img src="../images/logo_fmcl.png" width=60 height="70"/></div>
      <div class="left">
      <h1 align="center">RETAIL OPERATIONS</h1>
      <h2 align="center">Host System</h2></div>
      <div class="left"><img src="../images/logo_tts.png" width="79" height="87" style="padding-left:230px;"/></div> 
      </div>
      <div id="menuleft">
<li><a href="#">Master Data</a>
       <ul>
           <li><a href="#">Value Sets </a>
          <ul>
            <li><a href="../valueSets/province.php">Province</a></li>
            <li><a href="../valueSets/state.php">State</a></li>
            <li><a href="../valueSets/city.php">City</a></li>
            <li><a href="../valueSets/lga.php">LGA</a></li>
            <li><a href="../valueSets/location.php">Location</a></li>
            <li><a href="../valueSets/kdCategory.php">KD Category</a></li>
            <li><a href="../valueSets/customerCategory1.php">Customer Category1</a></li>
            <li><a href="../valueSets/customerCategory2.php">Customer Category2</a></li>
            <li><a href="../valueSets/customerCategory3.php">Customer Category3</a></li>
            <li><a href="../valueSets/feedbackType.php">Feedback Type</a></li>
            <li><a href="../valueSets/productType.php">Product Type</a></li>
            <li><a href="../valueSets/currency.php">Currency</a></li>
            <li><a href="../valueSets/CustomerType.php">Customer Type</a></li>
          </ul>
        </li>
	    <li><a href="../masterData/uomMaster.php" title="">UOM</a></li>
      <!--  <li><a href="../masterData/uomConversion.php" title="">UOM Conversion</a></li>-->
        <li><a href="../masterData/productMaster.php" title="">Product</a></li>
        <li><a href="../masterData/SalesRep.php" title="">Sales Representative</a></li>
        <li><a href="../masterData/kd.php" title="">KD</a></li>
        <li><a href="../masterData/kdProduct.php" title="">KD-Product</a></li>
        <li><a href="../masterData/price.php" title="">Price</a></li>
        <li><a href="../masterData/scheme.php" title="">Scheme</a></li>
        <li><a href="../masterData/productscheme.php" title="">Product Scheme</a></li>
		</ul>
</li>

  
 <li><a href="#">Base Data</a>
     <ul>
					<li><a href="#" title="" class="sub1">Masters</a>
                      <ul>
                           <li><a href="../BaseData/deviceMaster.php">Device</a></li>
                             <li><a href="../BaseData/routeMaster.php">Route</a></li>
                               <li><a href="../BaseData/vehicleMaster.php">Vehicle</a></li>
                                 <li><a href="../BaseData/DSRMaster.php">DSR</a></li>
                                 <li><a href="../BaseData/customerMaster.php">Customer</a></li>
                              </ul>
                                </li>
                    <li><a href="../BaseData/productStock.php">Stock</a></li>
					<li><a href="../BaseData/deviceTransactions.php">Device Transactions</a></li>
					<li><a href="../BaseData/device.php">Device Dashboard</a></li>
				</ul>
  
  </li>
                  <!--   <li><a href="uploadcp.php">Upload to CP</a></li>  --> 
					<li><a href="#">Reports</a>
					<ul>
					<li><a href="../Reports/customerMasterReport.php" title="">New Customer Added</a></li>
					<li><a href="../Reports/DSRMasterReport.php" title="">New DSR Added</a></li>
					<li><a href="../Reports/customerStockReport.php" title="">Customer Stock </a></li>
                    <li><a href="../Reports/customerComplaintsReport.php" title="">Customer Complaints </a></li>
                    <li><a href="#" title="">Sale Summary</a></li>
                    <li><a href="#" title="">Sale Return</a></li>
                    <li><a href="../Reports/DSRRemarksReport.php" title="">DSR Remarks</a></li>
                    <li><a href="../Reports/kdStockReport.php" title="">KD Stock</a></li>
                    <li><a href="../Reports/receiptsReport.php" title="">Receipts</a></li>
					</ul>
					</li>
                    
             <li style="float:right"><a href="../index.php?logout=logout">Logout</a></li>  
                    <?php 		
					$UN=strtolower($_SESSION['username']); 
					if($UN=='admin'){ ?>
					<li style="float:right"><a href="#">Admin</a>
					<ul>
					<li style="float:right"><a href="../admin/userchangePassword.php">User Administration</a></li>
					<li style="float:right">System Administration
					<ul>
					<li><a href="../admin/setupParam.php?id=1">Setup Parameters</a></li>
					<li><a href="../admin/DUConfig.php">Download/ Upload Config</a></li>
					<li><a href="../admin/DUStatus.php">Download/ Upload Status</a></li>
					</ul>
					</li>
					</ul>
					</li>
					<?php }else{?>
					<li style="float:right"><a href="../admin/changePassword.php">Change Password</a> </li>
					<?php }?> 
					</ul>
				 
                   
                   

</div>

