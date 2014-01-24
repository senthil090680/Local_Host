<?php
session_start();
ob_start();
require_once ('../include/header.php');
require_once "../include/ps_pagination.php";
if(isset($_GET['logout'])){
	session_destroy();
	header("Location:../index.php");
}

error_reporting(0);
?>
<link type="text/css" rel="stylesheet" href="../css/popup.css" />
<style type="text/css">
#tablestr_dev {
	width:100%;
	margin-left:auto;
	margin-right:auto;
}

.con3_dev{
	width:100%;
	text-align:left;
	border-collapse:collapse;
	background:#a09e9e;
	margin-left:auto;
	margin-right:auto;
	border-radius:10px;
	overflow:scroll;
	overflow-y:hidden;
}
.con3_dev th {
	width:22%;
	padding:2px 5px 0 5px;
	font-weight:bold;
	font-size:13px;
	color:#000;
}
.con3_dev td  {
	padding:2px 3px 0 3px;
	background:#fff;
	border-collapse:collapse;
	color: #000;
	font-size:13px;
}
.con3_dev tbody tr:hover td {
	background: #c1c1c1;
}

.buttons_new{
	-webkit-box-shadow:rgba(0,0,0,0.2) 0 1px 0 0;
	-moz-box-shadow:rgba(0,0,0,0.2) 0 1px 0 0;
	box-shadow:rgba(0,0,0,0.2) 0 1px 0 0;
	border-bottom-color:#333;
	border:1px solid #686868;
	background-color:#31859C;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	color:#000;
	font-family:Calibri;
	font-size:12px;
	padding:3px;
	cursor:pointer;
	width:50px;
	height:25px;
}
.headerdevice {
	margin-left:auto;
	margin-right:auto;
	width:99%;
	height:70px;
	padding:10px 0px 10px 0px;
	border-radius:10px;
	background:#C1C1C1;
}
.statictabledev {
	width:100%;
	float:left;
	padding-top:10px;
}
.conitems {
	width:100%;
	text-align:left;
	border-collapse:collapse;
	background:#a09e9e;
	margin-left:auto;
	margin-right:auto;
	border-radius:10px;
}
.conitems th {
	width:22%;
	/*padding:2px 5px 0 5px;*/
	font-weight:bold;
	font-size:13px;
	color:#000;
}
.conitems td {
	/*padding:2px 5px 0 5px;*/
	background:#fff;
	border-collapse:collapse;
	color: #000;
	font-size:13px;
}
.conitems tbody tr:hover td {
	background: #c1c1c1;
}

.confirmFirstDeviceTrans {
	top:150px;
	left:180px;
	width:74%;
	height:500px;
	background:#EEEEEE;
	position:fixed;
	margin:0 auto;
	display:none;
	border-bottom:2px solid #A09E9E;
	z-index:100;
	border-radius:2px 2px 2px 2px;
	color:#fff;
}

.confirmFirstDeviceImage {
	margin:0 auto;
	display:none;
	background:#EEEEEE;
	color:#fff;
	width:400px;
	height:300px;
	position:fixed;
	left:750px;
	top:250px;
	border-bottom:2px solid #A09E9E;
	z-index:3;
	border-radius:2px 2px 2px 2px;
}
.confirmFirstDeviceSig {
	margin:0 auto;
	display:none;
	background:#EEEEEE;
	color:#fff;
	width:400px;
	height:300px;
	position:fixed;
	left:750px;
	top:250px;
	border-bottom:2px solid #A09E9E;
	z-index:3;
	border-radius:2px 2px 2px 2px;
}
.confirmFirstDeviceFeed {
	margin:0 auto;
	display:none;
	background:#EEEEEE;
	color:#fff;
	width:400px;
	height:75px;
	position:fixed;
	left:750px;
	top:250px;
	border-bottom:2px solid #A09E9E;
	z-index:3;
	border-radius:2px 2px 2px 2px;
}
.confirmBatchControl {
	margin:0 auto;
	display:none;
	background:#EEEEEE;
	color:#fff;
	width:400px;
	height:75px;
	position:fixed;
	left:150px;
	top:380px;
	border-bottom:2px solid #A09E9E;
	z-index:4;
	border-radius:2px 2px 2px 2px;
}
.myaligndev {
	padding-top:8px;
	margin:0 auto;
	color:#FF0000;
}

#errormsgdev{
	width:40%;
	height:30px;
	background:#c1c1c1;
	margin-left:auto;
	margin-right:auto;
	border-radius:10px;
	padding-top:0px;
	-moz-border-radius:10px;
	-webkit-border-radius:10px;
	-ms-border-radius:10px;
	-o-border-radius:10px;
	text-align:center;
}
</style>
<div id="mainarea">
<div class="mcf"></div>
<div><h2 align="center">Device Transactions</h2></div>
  <div class="headerdevice">
  <table width="100%">
  <tr>
    <td class="align">KD Name</td>
	<td>
	<select  name="kd_id" id="kd_id" autocomplete="off" autofocus onChange="getalldsrtokd(this.value,'dsr_id','required','DSRSPANID');">
	<option value="">--- Select ---</option>
	<?php $sel_kd		=	"SELECT id,KD_Name,KD_Code from kd GROUP BY KD_Name";
	$res_kd			=	mysql_query($sel_kd) or die(mysql_error());	
	while($row_kd	= mysql_fetch_array($res_kd)){
	$kdcode= $row_kd[KD_Code];
	?>
	<option value="<?php echo $row_kd[id]; ?>" <?php if($kd_id == $row_kd[id]) { echo "selected"; } ?> ><?php echo ucwords(strtolower($row_kd[KD_Name])); ?></option>
	<?php } ?>
	</select>
	</td>
     <td>DSR Name</td>
	 <td><span id="DSRSPANID">
		<select name="dsr_id" id="dsr_id" class="required">
            <option value="">--- Select ---</option>
		</select>
		
		<!--<select name="dsr_id" id="dsr_id" class="required">
            <option value="">--- Select ---</option>
        			<?php $DSR_Main_Qry	=	"select id,DSR_Code,DSRName FROM dsr";
        			$DSR_qry		=	mysql_query($DSR_Main_Qry);
        			while($res_DSR = mysql_fetch_array($DSR_qry)){ ?>
        			<option value="<?php echo $res_DSR['id']?>" <?php if($res_DSR['DSR_Code']==$fetch['id']){?>selected <?php } ?>><?php echo $res_DSR['DSRName'];?></option>
        			<?php } ?>
        		</select> -->
			</span>	
            &nbsp;&nbsp;
	
	<input type="button" value="GO" onclick="javascript:return getdevtrans();" class="buttons_new">
	
	<!--<a href="javascript:void(0);" onclick="javascript:return getdevtrans();"><img src="../images/go2.png" /></a>-->
	
	</td>
  </tr>
  <tr>
    <td class="align">FROM</td>
	<td><input type="text" name="fromdate" id="fromdate" class="datepicker" onChange="changeDateFormat(this.value,'fromdate')" value="<?php echo date('Y-m-d'); ?>" maxlength="10" autocomplete="off"></td>
  </tr>
  <tr>
    <td class="align">TO</td>
	<td><input type="text" name="todate" id="todate" onChange="changeDateFormat(this.value,'todate')" value="<?php echo date('Y-m-d'); ?>" maxlength="10" autocomplete="off" class="datepicker"></td>

  </tr>
</table>

</div>

<!--  Header End  -->
<div id="tablestr_dev">
        
<div class="clearfix"></div>
  
<div class="tablebut" align="center">
<table>
   <tr height="100px;" align="center">
        <td colspan="10">&nbsp;
        </tr>
  </table>      
</div>
	<!--Pagination  -->
		<?php 
		if($num_rows > 10){?>     
        <div class="paginationfile" align="center">
	    <?php 
		if(!empty($num_rows)){
		//Display the link to first page: First
		echo $pager->renderFirst()."&nbsp; ";
		//Display the link to previous page: <<
		echo $pager->renderPrev();
		//Display page links: 1 2 3
		echo $pager->renderNav();
		//Display the link to next page: >>
		echo $pager->renderNext()."&nbsp; ";
		//Display the link to last page: Last
		echo $pager->renderLast(); } else{ echo "&nbsp;"; } ?>      
		</div>   
		<?php } else{ echo "&nbsp;"; }?>

<span style="padding-left:500px;padding-top:20px;"><input type="button" value="Close" class="buttons" onclick="window.location='../include/empty.php'"></span>
</div>	
<div id="errormsgdev" style="display:none;"><h3 align="center" class="myaligndev"></h3><button id="closebutton">Close</button></div>
<div class="clearfix"></div>

 <div class="clearfix"></div>
 </div>
</div>
<div id="backgroundChatPopup" ></div>
<?php require_once('../include/footer.php'); ?>