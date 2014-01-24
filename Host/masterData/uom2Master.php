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
$sql  =  ("UPDATE uom2 SET 
          UOM2= '$UOM2', 
          UOM2_Description='$UOM2_Description'
      	  WHERE id=$id ");
mysql_query($sql);
header("location:uom2Master.php?no=2");
}
}
elseif($_POST['submit']=='Save'){
$sel="select * from uom2 where UOM2 ='$UOM2'";
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
    	$active='active';
		$sql="INSERT IGNORE INTO `uom`(`UOM2`,`UOM2_Description`)
        values('$UOM2','$UOM2_Description')";
        mysql_query( $sql);
        header("location:uom2Master.php?no=1");
		}
		else {
		header("location:uom2Master.php?no=18");
		}
}
$id=$_GET['id'];
$list=mysql_query("select * from uom2 where id=1"); 
while($row = mysql_fetch_array($list)){ 
	$UOM2 = $row['UOM2'];
	$UOM2_Description = $row['UOM2_Description'];
	} 

?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headings">UOM2</div>
<div id="mytable" align="center">
<form action="#" method="post" id="validation">
<table>
  <tr height="50px">
     <td  class="pclr align">UOM2*</td>
     <td><input type="text" class="required" name="UOM2" id="UOM2" size="10" value="<?php echo $UOM2 ?> " readonly="readonly"/></td>
   </tr>
   
  <tr>
    <td  class="align">UOM2 Description*</td>
    <td><input type="text" class="required" name="UOM2_Description" id="UOM2_Description" size="10" value="<?php echo $UOM2_Description ?> " readonly="readonly"/></td>
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
<!--    <div id="search">
    <form action="#" method="get" autocomplete=off>
    <input type="text" name="UOM2" value="<?php $_GET['UOM2']; ?>"/>
    <input type="submit" name="submit" class="buttonsg" value=""/>
    </form>       
    </div> -->
<div class="mcf"></div>    
<div id="container">
	    <?php
		if($_GET['submit']=="")
		{
		$var = @$_GET['UOM2'] ;
        $trimmed = trim($var);	
	    $qry="SELECT * FROM `uom2` where UOM2 like '%".$trimmed."%' order by id asc";
		}
		else
		{ 
		$qry="SELECT * FROM `uom2` order by id asc"; 
		}
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,5,5);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="con2">
        <table id="sort" class="tablesorter" align="center">
     	<thead>
		<tr>
		<th class="rounded">UOM2<img src="../images/sort.png" width="13" height="13" /></th>
		<th>UOM2 Description</th>
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
		<td><?php echo $fetch['UOM2'];?></td>
	    <td><?php echo $fetch['UOM2_Description'];?></td>
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