<?php
//Connect to database from here
include "../include/config.php";
include "../include/ps_pagination.php";

EXTRACT($_POST);
$sel="SELECT *  FROM `dsr` order by dsr asc";
$sel_query=mysql_query($sel);
$fetch=mysql_fetch_array($sel_query);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin.css" rel="stylesheet" type="text/css" />
<title>Host </title>
</head>
<body topmargin="0">
<h2 align="center">DSR Master </h2>
	<?php
	
	$qry="SELECT *  FROM `dsr` order by dsr asc";
	
	$results=mysql_query($qry);
	$num_rows= mysql_num_rows($results);			
	$pager = new PS_Pagination($bd, $qry,15,15);
	$results = $pager->paginate();
	?>
	<div class="con3">
 <table id="sort" class="tablesorter" align="center" width="100%">
		<thead>
		<tr>
   		<th class="rounded">DSR Name<img src="../images/sort.png" width="13" height="13" /></th>
  		<th>Code</th>
		<th>KD Name</th>
   		<th>SalesRepresentative Name</th>
<!-- 		<th>Contact Number</th>
		<th>Address</th> -->
		<th>City</th>
		<!-- <th>State</th>
		<th>Code</th> -->
		</tr>
		</thead>
		<tbody>
		<?php
		if(!empty($num_rows)){
		$c=0;$cc=1;
		while($fetch = mysql_fetch_array($results)) {
		if($c % 2 == 0){ $cls =""; } else{ $cls ="class='odd'"; }
		?>		
		<tr>
		<td><?php echo $fetch['DSRName'];?></td>
		<td><?php echo $fetch['DSR_id'];?></td>
		<td><?php echo $fetch['KDName'];?></td>
		<td><?php echo $fetch['Salesrep_name'];?></td>
<!-- 		<td><?php echo $fetch['Salesrep_contact_num'];?></td>
		<td><?php echo $fetch['Salesrep_addr_line1'].$fetch['Salesrep_addr_line2'].$fetch['Salesrep_addr_line3'];?></td>
 -->	<td><?php echo $fetch['city'];?></td>
<!-- 		<td><?php echo $fetch['state'];?></td>
		<td><?php echo $fetch['Salesperson_id'];?></td>
 -->        </tr>
		<?php $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
		</table>
</div>
<!--Pagination  -->
 
		<?php 
		if($num_rows > 10){?>     
        <div class="paginationfile" align="center">
		<?php //Display the link to first page: First
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
</body>
</html>


