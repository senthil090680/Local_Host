<?php
session_start();
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
if(isset($_GET['logout'])){
session_destroy();
header("Location:../index.php");
}

EXTRACT($_POST);
$id=$_REQUEST['id'];
if($_GET['id']!=''){
if($_POST['submit']=='Save'){
$sql  =  ("UPDATE uom_conversion SET 
          uom= '$uom', 
          uom2='$uom2',
		  uom_conversion='$uom_conversion'
		  WHERE id='$id'");
mysql_query($sql);
header("location:uomConversion.php?no=2");
}
}
elseif($_POST['submit']=='Save'){
$sel="select * from uom_conversion where uom_conversion ='$uom_conversion'";
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
    	$active='active';
		$sql="INSERT IGNORE INTO `uom_conversion`(`uom`,`uom2`,`uom_conversion`)
        values('$uom','$uom2','$uom_conversion')";
        mysql_query( $sql);
        header("location:uomConversion.php?no=1");
		}
		else {
		header("location:uomConversion.php?no=18");
		}
}
$id=$_GET['id'];
$list=mysql_query("select * from uom where id=1"); 
while($row = mysql_fetch_array($list)){ 
	$UOM_code = $row['UOM_code'];
	$UOM_description = $row['UOM_description'];
	} 


$list=mysql_query("select * from uom2 where id=1"); 
while($row = mysql_fetch_array($list)){ 
	$UOM2 = $row['UOM2'];
	$UOM2_Description = $row['UOM2_Description'];
	} 


$list=mysql_query("select * from uom_conversion where id=1"); 
while($row = mysql_fetch_array($list)){ 
    $uom = $row['uom'];
	$uom2 = $row['uom2'];
	$uom_conversion = $row['uom_conversion'];
	} 


?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingscon">UOM Conversion</div>
<div id="mytableconver" align="center">
<form action="#" method="post" id="validation">
<table>
  <tr height="50px">
    <td  class="align">UOM1</td>
    <td><input type="text"  name="uom" id="uom" size="10" value="<?php echo $uom ?> " readonly="readonly"/></td>
    <td  class="align">UOM2</td>
    <td><input type="text"  name="uom2" id="uom2" size="10" value="<?php echo $uom2 ?> " readonly="readonly"/></td>
    <td  class="align">UOM CONVERSION</td>
    <td><input type="text" name="uom_conversion" id="uom_conversion" size="10" value="<?php echo $uom_conversion ?> " readonly="readonly"/></td>
   </tr>

   <tr height="100px;" align="center">
        <td colspan="10">
        <input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="reset" id="reset"  class="buttons" value="Clear" />&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/empty.php'"/></td>
        </tr>
</table>
</form>
</div>
<?php include("../include/error.php");?>
<div class="mcf"></div>    
<div id="container">
	    <?php
		$qry="SELECT * FROM `uom_conversion` order by id asc"; 
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,5,5);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="con2">
        <table id="sort" class="tablesorter" align="center">
     	<thead>
		<tr>
		<th>UOM1</th>
		<th>UOM2</th>
        <th>UOM Conversion</th>
     	</tr>
		</tr>
		</thead>
        <tbody>
		<?php
		if(!empty($num_rows)){
		$c=0;$cc=1;
		while($fetch = mysql_fetch_array($results)) {
		if($c % 2 == 0){ $cls =""; } else{ $cls ="class='odd'"; }
		$id= $fetch['id'];
		?>
		<tr>
		<td><?php echo $fetch['uom'];?></td>
	    <td><?php echo $fetch['uom2'];?></td>
        <td><?php echo $fetch['uom_conversion'];?></td>
        </tr>
		<?php $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
		</table>
        </div>
<!--Pagination  -->      
        <div class="paginationfile" align="center">
        <table>
     	<tr>
		<th class="pagination">  
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
      	</th>
		</tr>
        </table>    
		</div>   
	</div>       
</div>
<?php include('../include/footer.php'); ?>