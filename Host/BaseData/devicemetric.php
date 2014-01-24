<?php
/*+++++++++++++++++++++++++++++++++++++++++
This file is not in use
+++++++++++++++++++++++++++++++++++++++++++*/

/****************************************************************
Project Name  : JOBTARDIS									
Module Name	: job search result page
Code Name	: job_search_result.php 					
Database Used : 								
Tables Used	: 							
Calling codes	: 
Code Function : To get the resuls of the pages
Created ON	: 

Developer 	: J. P. Senthil Kumar							        
****************************************************************
Last Modified : 30-07-2012									
****************************************************************/

require_once('../include/header.php'); 
require_once('../include/config.php');
require_once("../include/ps_pagination.php");
if(isset($_GET['logout'])){
	session_destroy();
	header("Location:../index.php");
}
$qry="SELECT * FROM `device_data_view`";
$results=mysql_query($qry);
?>
<link type="text/css" rel="stylesheet" href="../css/popup.css" />
<style type="text/css">

#totaltable{
	width:100%;
	height:400px;
}

.mis {
	width:100%;
	margin-left:5px;
	margin-right:auto;
}
.lefttable {
	width:95%;
	clear:both;
	float:left;
    padding:15px 5px 0px 5px;
	margin: 0 auto;
		
}
.center {
 width:50px;
 padding-left:30px;
 float:left; 
}
.righttable {
		float:right;
	
}
.tl1 {
	width:100%;
	height:150px;
	overflow:scroll;
	overflow-x:hidden;
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
/*.scrollmagic {
    height: 130px;
    overflow-x: hidden;
    overflow-y: scroll;
    width: 100%;
}*/
.confirmFirstDeviceFeed {
	margin:0 auto;
	display:none;
	background:#EEEEEE;
	color:#fff;
	width:400px;
	height:200px;
	position:fixed;
	left:500px;
	top:250px;
	border-bottom:2px solid #A09E9E;
	z-index:3;
	border-radius:2px 2px 2px 2px;
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
	padding:2px 5px 0 5px;
	font-weight:bold;
	font-size:13px;
	color:#000;
}
.conitems td {
	padding:2px 5px 0 5px;
	background:#fff;
	border-collapse:collapse;
	color: #000;
	font-size:13px;
}
.conitems tbody tr:hover td {
	background: #c1c1c1;
}
.headerdev_chgd {
	margin-left:auto;
	margin-right:auto;
	width:99%;
	height:80px;
	padding:10px 0px 10px 0px;
	border-radius:10px;
	background:#C1C1C1;
}

.wrap {
    width: 100%;
	padding-left:10px;
}

.wrap table {
    width: 100%;
    table-layout: fixed;
	
}

.wrap table tr td {
  	border-collapse:inherit;
    border: 1px solid #666;
    width: 100%;
	background:#FFF;
    word-wrap: break-word;
}

.wrap table{
	border-collapse:collapse;
}
.wrap  table.head tr td {
    background:#999;
    font-weight:bold;
	font-size:12px;
}

.inner_table {
    height: 100px;
    overflow-y: auto;
}


</style>

<div id="mainareadash">
<div><h2 align="center">Device Dashboard</h2></div>

<div id="cont">
<div class="headerdev_chgd">   
    <table width="100%">
      <tr>
        <td class="align">KD Name</td>
        <td><select  name="kd_id" id="kd_id" autocomplete="off" autofocus>
            <option value="">--- Select ---</option>
			<?php $sel_kd		=	"SELECT id,KD_Name,KD_Code from kd GROUP BY KD_Name";
			      $res_kd	    =	mysql_query($sel_kd) or die(mysql_error());	
		          while($row_kd	= mysql_fetch_array($res_kd)){ ?>
			<option value="<?php echo $row_kd[id]; ?>"><?php echo ucwords(strtolower($row_kd[KD_Name])); ?></option>
			<?php } ?>
          </select>
        </td>
        <td>DSR Name</td>
        <td><select name="dsr_id" id="dsr_id" class="required">
            <option value="">--- Select ---</option>
			<?php $DSR_Main_Qry	=	"select id,DSR_Code,DSRName FROM dsr";
			$DSR_qry		=	mysql_query($DSR_Main_Qry);
			while($res_DSR = mysql_fetch_array($DSR_qry)){ ?>
			<option value="<?php echo $res_DSR['id']?>" <?php if($res_DSR['DSR_Code']==$fetch['id']){?>selected <?php } ?>><?php echo $res_DSR['DSRName'];?></option>
			<?php } ?>
		</select>&nbsp;&nbsp;
		
		<!-- <a href="javascript:void(0);" onclick="javascript:return getdevdash();">GO</a> -->

		<input type="button" value="GO" onclick="javascript:return getdevdash();" class="buttons_new">

        </td>
      </tr>
      <tr>
        <td class="align">FROM</td>
        <td><input type="text" name="fromdate" id="fromdate" onChange="changeDateFormat(this.value,'fromdate')" class="datepicker fromdate" value="<?php echo date('Y-m-d')?>" maxlength="10" autocomplete="off"></td>
        
		<!-- <td>SalesRepresentative Code</td>
		        <td><select name="Salesperson_id" id="Salesperson_id" value="" class="required">
		            <option value="">--- Select ---</option>
			<?php $sales_qry=mysql_query("select Salesperson_id,salesperson_name from sales_representative");?>
			<?php while($res_sales = mysql_fetch_array($sales_qry)){ ?>
			<option value="<?php echo $res_sales['Salesperson_id']; ?>" <?php if($res_sales['Salesperson_id']==$fetch['Salesperson_id']){?>selected <?php } ?> ><?php echo $res_sales['salesperson_name']; ?></option>
			<?php }?>
		</select></td> -->
      </tr>
      <tr>
        <td class="align">TO</td>
        <td><input type="text" name="todate" id="todate" onChange="changeDateFormat(this.value,'todate')" value="<?php echo date('Y-m-d')?>" maxlength="10" autocomplete="off" class="datepicker todate" /></td>
        <!-- <td>Device ID</td>
        <td ><select name="KDCode" id="KDCode" value="" class="required">
            <option value="">--- Select ---</option>
        			<?php $dev_qry=mysql_query("select device_id,device_desc from device_master");
        			while($res_dev = mysql_fetch_array($dev_qry)){ ?>
        			<option value="<?php echo $res_dev['device_id']; ?>" <?php if($res_dev['device_id']==$fetch['device_id']){?>selected <?php } ?> ><?php echo $res_dev['device_desc']; ?></option>
        			<?php }?>
        		</select> -->
      </tr>
    </table>
  </div>
</div>  <!--cont end-->
<div id="totaltable">
<div class="lefttable">
<div class="wrap">
       	<table class="head">
       	<thead>
        <tr>
			<td align="center" width="150px"><strong>Productivity Visits</strong></td>
            <td align="center"><strong>Actual Visits</strong></td>
            <td align="center"><strong>Sale Visits</strong></td>
            <td align="center"><strong>Productivity %</strong>
            <table><tr><td align="center">Target</td><td align="center">Actual</td></tr></table>
            </td>
            <td align="center"><strong>Unique Sales</strong></td>
            <td align="center"><strong>Coverage %</strong>
              <table><tr><td align="center">Target</td><td align="center">Actual</td></tr></table>
            </td>
		</tr>
        </thead>
	</table>
     <div class="inner_table">
        <table> 
      
		<?php
        $result=mysql_query($qry);
		$num_rows= mysql_num_rows($result);
		$p					=	0;
		if(!empty($num_rows)) {   // FIRST IF LOOP
			$c=0;$cc=1;
			while($row = mysql_fetch_array($result)) {  // FIRST WHILE LOOP
				if($c % 2 == 0){ $cls =""; } else{ $cls =" class='odd'"; }
					$Transaction_Number		=	$row[Transaction_Number];
					$sel_lincnt		=	"SELECT * FROM `transaction_line` WHERE (Transaction_Number = '$Transaction_Number' AND Transaction_type = '2' AND KD_Code = '$KDCodeVal' AND DSR_Code = '$DSR_CodeVal')";
					$results_lincnt	=	mysql_query($sel_lincnt);
					$rowcnt_lincnt	=	mysql_num_rows($results_lincnt);					
				if($rowcnt_lincnt > 0) { // SECOND IF LOOP 
					while($row_lincnt	=	mysql_fetch_array($results_lincnt)) {   // SECOND WHILE LOOP
						$p				=	1;
						?>    
                   			
						<tr>
							<td align="center" width="150px" style="font-weight:bold"><?php echo finddbval("('".$row_lincnt['Product_code']."')",'Product_description1','Product_code','product'); ?></td> 
							<td align="center" style="font-weight:bold"><?php echo $row_lincnt['Sold_quantity'];?></td>
							<td align="center" style="font-weight:bold"><?php echo number_format(trim($row_lincnt['Price']));?></td>
							<td align="center" style="font-weight:bold"><?php echo $row_lincnt['Value'];?></td>
                    	</tr>
					<?php } // SECOND WHILE LOOP
				} // SECOND IF LOOP ?>

				<?php $c++; $cc++; 
			} 	// FIRST WHILE LOOP
		} // FIRST IF LOOP
		else {	if($p != 0) { ?> 
				<tr>
					<td align='center' colspan='5'><b>No records found</b></td>
					<td style="display:none;" >Cust Name</td>
					<td style="display:none;" >Add Line1</td>
					<td style="display:none;" >Add Line1</td>
					<td style="display:none;" >Add Line2</td>
				</tr>
				<?php } 
			} if($p == 0) { ?>
				<tr>
					<td align='center' colspan='5'><b>No records found</b></td>
					<td style="display:none;" >Cust Name</td>
					<td style="display:none;" >Add Line1</td>
					<td style="display:none;" >Add Line1</td>
					<td style="display:none;" >Add Line2</td>
				</tr>
			 <?php } ?>
           
		</table>        
   </div>
 </div>
 
 
 
 
 

<div class="wrap">
<table class="head">
<thead>
      <tr>
            <td align="center" width="150px"><strong>Invoice</strong></td>
            <td align="center"><strong>Lines</strong></td>
            <td align="center"><strong>Sale value</strong></td>
            <td align="center"><strong>Dropsize</strong></td>
            <td align="center"><strong>Basket Size</strong></td>
        </tr>
        </thead>
        </table>
      <div class="inner_table">
        <table>	
        <tbody>
		<?php
		//$qry="SELECT * FROM `device_data_view` $where"; 
        $result=mysql_query($qry);
		$num_rows= mysql_num_rows($result);
		$q		=	0;
		if(!empty($num_rows)){
			$c=0;$cc=1;
			while($row = mysql_fetch_array($result)) {  // FIRST WHILE LOOP
				if($c % 2 == 0){ $cls =""; } else{ $cls =" class='odd'"; }
					$Transaction_Number		=	$row[Transaction_Number];
					$sel_lincnt		=	"SELECT * FROM `transaction_line` WHERE (Transaction_Number = '$Transaction_Number' AND Transaction_type = '3' AND KD_Code = '$KDCodeVal' AND DSR_Code = '$DSR_CodeVal')";
					$results_lincnt	=	mysql_query($sel_lincnt);
					$rowcnt_lincnt	=	mysql_num_rows($results_lincnt);					
				if($rowcnt_lincnt > 0) { // SECOND IF LOOP 
					$q		=	1;
					while($row_lincnt	=	mysql_fetch_array($results_lincnt)) {   // SECOND WHILE LOOP
						?>     
            				<tr>
							<td align="center" width="150px" style="font-weight:bold"><?php echo finddbval("('".$row_lincnt['Product_code']."')",'Product_description1','Product_code','product'); ?></td> 
							<td align="center" style="font-weight:bold"><?php echo $row_lincnt['Sold_quantity'];?></td>
							<td align="center" style="font-weight:bold"><?php echo $row_lincnt['Price'];?></td>
							<td align="center" style="font-weight:bold"><?php echo $row_lincnt['Value'];?></td>
						</tr>
					<?php } // SECOND WHILE LOOP
				} // SECOND IF LOOP ?>

				<?php $c++; $cc++; 
			} 	// FIRST WHILE LOOP
		} else{ if($q != 0) { ?>
			<tr>
				<td align='center' colspan='5'><b>No records found</b></td>
				<td style="display:none;" >Cust Name</td>
				<td style="display:none;" >Add Line1</td>
				<td style="display:none;" >Add Line1</td>
				<td style="display:none;" >Add Line2</td>
			</tr>
			<?php } 
		 } if($q == 0) { ?>
				<tr>
					<td align='center' colspan='5'><b>No records found</b></td>
					<td style="display:none;" >Cust Name</td>
					<td style="display:none;" >Add Line1</td>
					<td style="display:none;" >Add Line1</td>
					<td style="display:none;" >Add Line2</td>
				</tr>
			 <?php } ?>	
             </tbody>	 		 
		</table>
   </div>
</div> 
  
  
  

<div class="wrap">
     <table class="head">
    <thead>
        <tr>
            <td align="center" width="150px"><strong>Effective Incentive</strong></td>
            <td align="center"><strong>Brand Incentive</strong></td>
            <td align="center"><strong>Productive Incentive</strong></td>
              </tr>
        </thead>
    </table>
      <div class="inner_table">
        <table>
        <tbody>
		<?php
		//$qry="SELECT * FROM `device_data_view` $where"; 
        $result=mysql_query($qry);
		$num_rows= mysql_num_rows($result);
		$r				=	0;
		if(!empty($num_rows)){
			$c=0;$cc=1;
			while($row = mysql_fetch_array($result)) {  // FIRST WHILE LOOP
				if($c % 2 == 0){ $cls =""; } else{ $cls =" class='odd'"; }
					$Transaction_Number		=	$row[Transaction_Number];
					//$sel_lincnt		=	"SELECT * FROM `transaction_line` WHERE (Transaction_Number = '$Transaction_Number' AND Transaction_type = '4' AND KD_Code = '$KDCodeVal' AND DSR_Code = '$DSR_CodeVal')";
					$sel_lincnt		=	"SELECT * FROM `transaction_return_line` WHERE (Transaction_Number = '$Transaction_Number' AND KD_Code = '$KDCodeVal' AND DSR_Code = '$DSR_CodeVal')";
					$results_lincnt	=	mysql_query($sel_lincnt);
					$rowcnt_lincnt	=	mysql_num_rows($results_lincnt);
					
				if($rowcnt_lincnt > 0) { // SECOND IF LOOP 
					while($row_lincnt	=	mysql_fetch_array($results_lincnt)) {   // SECOND WHILE LOOP
						$r = 1;
						?>     			
                    <tr>
                    <td align="center" width="150px" style="font-weight:bold"><?php echo finddbval("('".$row_lincnt['Product_code']."')",'Product_description1','Product_code','product'); ?></td> 
                    <td align="center" style="font-weight:bold"><?php echo $row_lincnt['Reurn_quantity']; ?></td>
                    <td align="center" style="font-weight:bold"><?php echo $row_lincnt['Price']; ?></td>
                    <td align="center" style="font-weight:bold"><?php echo $row_lincnt['Value']; ?></td>
                    </tr>
					<?php } // SECOND WHILE LOOP
				} // SECOND IF LOOP 				
				$c++; $cc++; 
			} 	// FIRST WHILE LOOP
		} else {if($r != 0) { ?>
			<tr>
				<td align='center' colspan='5'><b>No records found</b></td>
				<td style="display:none;" >Cust Name</td>
				<td style="display:none;" >Add Line1</td>
				<td style="display:none;" >Add Line1</td>
				<td style="display:none;" >Add Line2</td>
			</tr>
			<?php } 
		   } 
		 if($r == 0) { ?>
				<tr>
					<td align='center' colspan='5'><b>No records found</b></td>
					<td style="display:none;" >Cust Name</td>
					<td style="display:none;" >Add Line1</td>
					<td style="display:none;" >Add Line1</td>
					<td style="display:none;" >Add Line2</td>
				</tr>
			 <?php } ?>
           </tbody>  		 
	    </table>
      </div>
   </div>    
</div>


<!-- Left End  -->

</div>


</div>  <!--mainareadash-->


<div style="clear:both;"></div>
<div id="errormsgdev" style="display:none;"><h3 align="center" class="myaligndev"></h3><button id="closebutton">Close</button></div>
</div>
<div id="backgroundChatPopup" ></div>
<?php require_once('../include/footer.php'); ?>