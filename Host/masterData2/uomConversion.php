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
$_POST['popid'];
if($_POST['submit']=='Save'){
$sel="select * from uom_conversion where UOM1 ='$UOM1'";
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
		$Effective_date=date("Y-m-d",strtotime($Effective_date));		
		$active='active';
		$sql="INSERT IGNORE INTO `uom_conversion`(`UOM1`,`UOM2`,`Uom_conversion`,`Status`)
        values('$UOM1','$UOM2','$Uom_conversion','$active')";
        mysql_query( $sql);
        header("location:uomConversion.php?d=2");
		}
		else {
		header("location:uomConversion.php?d=1");
		}
}
if($_GET['id']!=''){
if($_POST['submit']=='Save'){
$Effective_date=date("Y-m-d",strtotime($Effective_date));	
$sql =   ("UPDATE uom_conversion SET 
          UOM1= '$UOM1', 
          UOM2='$UOM2', 
          Uom_conversion='$Uom_conversion'
		  WHERE id = '".$_POST['fetch_id']."'");
mysql_query( $sql);
header("location:uomConversion.php?d=3");
}
}
$id=$_GET['id'];
$list=mysql_query("select * from uom_conversion where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$UOM1 = $row['UOM1'];
	$UOM2 = $row['UOM2'];
	$Uom_conversion = $row['Uom_conversion'];
	} 

?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div class="formdata" align="center">
<h3 align="center">UOM Conversion</h3>
<form action="#" method="post" id="validation">
<table style="padding:0px 10px 0px 10px;">
  <tr style="background:#54c0eb">
    <td>UOM1</td>
    <td>UOM2</td>
    <td>UOM Conversion</td>
   </tr>
  <tr class="tbg" id="validate">
    <td><input type="text" class="required" name="UOM1" id="UOM1" size="10" value="<?php echo $UOM1; ?>"/></td>
    <td><input type="text" class="required" name="UOM2" id="UOM2" size="10" value="<?php echo $UOM2; ?>"/></td>
    <td><input type="text" class="required" name="Uom_conversion" id="Uom_conversion" size="10" value="<?php echo $Uom_conversion; ?>"/></td>
    </tr>
   <tr align="center" height="50px;">
        <td colspan="10" align="center">
            <input type="submit" name="submit" id="submit" class="buttons" value="Save" />
            <input type="reset" name="reset" id="reset"  class="buttons" value="Clear" />
            <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='uomConversion.php'"/>
            </td>
      </tr>
</table>
</form>
</div>
<div id="container">
<div class="right_content">
	   	<?php
        if($_GET['d']=='4'){
        $id = $_GET['id'];
        //Set the query to return names of all employees
       	$query="update uom_conversion set Status='inactive' where id='$id'";
        //Run the query
        $result = mysql_query($query) or die(mysql_error());
       	 }
		     
		?>  
        <div id="search">
        <form action="#" method="get">
        <label class="labelstyle">UOM1</label>
        <input type="text" name="UOM1" value="<?php $_GET['UOM1']; ?>"/>
        <input type="submit" name="submit"  value="Go" class="buttons"/>
        </form>       
        </div>              
		<?php
		if($_GET['submit']!='')
		{
		$var = @$_GET['UOM1'] ;
        $trimmed = trim($var);
	    $qry="SELECT * FROM `uom_conversion` where UOM1 like '%".$trimmed."%' AND  Status='active' order by id asc";
		}
		else
		{ 
		$qry="SELECT * FROM `uom_conversion` where Status='active' order by id asc"; 
		}
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,2,6);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="clearfix"></div>
        <table id="rounded-corner" class="tablesorter">
		<thead>
		<tr>
		<th scope="col" class="rounded">UOM1<br /><img src="../images/sort.png" width="13" height="13" /></th>
		<th scope="col" class="rounded">UOM2</th>
        <th scope="col" class="rounded">UOM Conversion</th>
      	<th scope="col" class="rounded" align="right">Edit/Delete</th>
		</tr>
		</tr>
		</thead>
		
		<tbody>
		<?php
		
		if(!empty($num_rows)){
		$c=0;$cc=1;
		while($fetch = mysql_fetch_array($results)) {
		if($c % 2 == 0){ $cls =""; } else{ $cls =" class='odd'"; }
		$id= $fetch['id'];
		?>
		<tr>
		<td><?php echo $fetch['UOM1'];?></td>
		<td><?php echo $fetch['UOM2'];?></td>
        <td><?php echo $fetch['Uom_conversion'];?></td>
       	<td align="right">
        <a href="../pass/passwordcheckuc.php?id=<?php echo $fetch['id'];?>" class="link" rel="facebox"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="uomConversion.php?id=<?php echo $fetch['id'];?>&d=4" class="ask"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
        </td>
        </tr>
		<?php $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
		</table>
         <div class="paginationfile">
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
 
   </div>



<?php if($_GET['d']=='1'){ ?>
<div id="errormsg"><h3 align="center" class="myalign"><?php echo "<span class='hightlight'>Data Already Exists";$sec = "3";
header("Refresh: $sec; url=uomConversion.php");?></h3></div><?php }?>
<?php if($_GET['d']=='2'){ ?>
<div id="errormsg"><h3 align="center" class="myalign"><?php echo "<span class='hightlight'>Insert Record Successfully";$sec = "3";
header("Refresh: $sec; url=uomConversion.php");?></h3></div><?php }?>
<?php if($_GET['d']=='3'){ ?>
<div id="errormsg"><h3 align="center" class="myalign"><?php echo "<span class='hightlight'>Update Record Successfully";$sec = "3";
header("Refresh: $sec; url=uomConversion.php");?></h3></div><?php }?>
<?php if($_GET['d']=='4'){ ?>
<div id="errormsg"><h3 align="center" class="myalign"><?php echo "<span class='hightlight'>Delete Record Successfully";$sec = "3";
header("Refresh: $sec; url=uomConversion.php");?></h3></div><?php }?>
</div>
</div>
<?php include('../include/footer.php'); ?>