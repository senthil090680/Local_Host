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
$id = $_GET['id'];
if($_GET['id']!=''){
if($_POST['submit']=='Save'){
$sql =("UPDATE product_type SET 
        product_type='$product_type'
        WHERE id =$id");
mysql_query( $sql);
header("location:ProductType.php?d=3");
}
}
elseif($_POST['submit']=='Save'){
$sel="select * from product_type where product_type ='$product_type'";
$sel_query=mysql_query($sel);
if(mysql_num_rows($sel_query=='0')){
		$active='active';
		$sql="INSERT INTO `product_type`(`product_type`,`Status`)values('$product_type','$active')";
		mysql_query($sql);
		header("location:ProductType.php?no=1");
		} 
		else {
		header("location:ProductType.php?no=18");
		}
}
$id=$_GET['id'];
$list=mysql_query("select * from product_type where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$product_type = $row['product_type'];
	$id=$row['id'];
	} 

?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headings">Product Type</div>
<div id="mytable" align="center">
<form action="#" method="post" id="validation">
<table>
  <tr height="50px">
    <td class="pclr">Product Type*</td>
    <td>
<?php 
        include('../include/config.php');
		//echo "select a.*,b.*,a.id as row_id ,b.state_id as state_id from state a,city b where a.id=b.state_id AND b.id= '$id'";
       $list=mysql_query("select * from product_type"); 
        // Show records by while loop. 
	// End while loop. 
        ?>
       <select name="product_type">
        <option value="">--- Select ---</option>
		<?php 		
		while($row_list=mysql_fetch_assoc($list)){ 
		$id=$row_list['id'];
		$product_type=$row_list['product_type'];
		?>
        <option value="<?php echo $row_list['id']; ?>" <? if($row_list['id']==$product_type){ echo "selected"; } ?>><? echo $row_list['product_type']; ?></option>
        <?php  } ?>
        </select>
   </td>
   </tr>
  <tr align="center" height="70px;">
        <td colspan="10">
       <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/menu.php'"/></td>
      </tr>
</table>
</form>
</div>
<?php include("../include/error.php");?>
<div id="container">
    	<?php
        if($_GET['d']=='4'){
        $id = $_GET['id'];
        //Set the query to return names of all employees
       	$query="update product_type set Status='inactive' where id='$id'";
        //Run the query
        $result = mysql_query($query) or die(mysql_error());
       	 }
		     
		?> 
       
		<?php
		$qry="SELECT * FROM `product_type` where Status='active' order by id desc"; 
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,5,5);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="con2">
        <table id="sort" class="tablesorter">
		<thead>
		<tr>
		<th class="rounded">Product Type<img src="../images/sort.png" width="13" height="13" /></th>
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
		<td><?php echo $fetch['product_type'];?></td>
		</tr>
		<?php $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
		</table>
         </div> 
         <div class="paginationfile" align="center">
         <table>
		<tr>
		<th class="pagination" scope="col">          
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