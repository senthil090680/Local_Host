<?php 
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
EXTRACT($_POST);	
if(isset($_POST['Delete'])){
for($i=0;$i<count($_POST['checkbox']);$i++){
$del_id=$_POST['checkbox'][$i];
$sql = "DELETE FROM customertype_product WHERE id='$del_id'";
$result = mysql_query($sql);
}
}
?>
<!------------------------------- Form -------------------------------------------------->
<script type="text/javascript" src="jquery.js"></script>
<script>
jQuery(function($) {
 $("form input[id='check_all']").click(function() { // triggred check

   var inputs = $("form input[type='checkbox']"); // get the checkbox

   for(var i = 0; i < inputs.length; i++) { // count input tag in the form
   var type = inputs[i].getAttribute("type"); //  get the type attribute
    if(type == "checkbox") {
     if(this.checked) {
      inputs[i].checked = true; // checked
     } else {
      inputs[i].checked = false; // unchecked
       }
    }
  }
 });

  $("form input[id='delete']").click(function() {  // triggred submit

   var count_checked = $("[name='checkbox[]']:checked").length; // count the checked
  if(count_checked == 0) {
   alert("Please select a product(s) to delete.");
   return false;
  }
  if(count_checked == 1) {
   return confirm("Are you sure you want to delete these product?");
  } else {
   return confirm("Are you sure you want to delete these products?");
    }
 });
}); // jquery end
</script>

<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingskdp">KD Category</div>
<div class="mytable3">
<div class="clearfix"></div>
<input type="button" name="custproduct" value="Add KdProduct" class="buttonsbig" onclick="window.location='customertypeproduct.php'">
  <div id="search" style="padding-right:100px;">
        <form action="" method="get">
        <input type="text" name="customer_type" value="<?php $_GET['customer_type']; ?>" autocomplete='off' placeholder='Search By CustType'/>
        <input type="submit" name="submit" class="buttonsg" value="Go"/>
        </form>       
        </div>
<div class="clearfix"></div>
<form method="post" action="" name="register">
<?php

if($_GET['submit']!=='')
		{
		$var = @$_GET['customer_type'] ;
        $trimmed = trim($var);	
	    $qry="SELECT * FROM `customertype_product` where customer_type like '%".$trimmed."%' order by customer_type asc";
		}
		else{
		$qry="SELECT  * FROM `customertype_product` order by customer_type asc";
		}
		$results=mysql_query($qry);
		$num_rows= mysql_num_rows($results);			
		$pager = new PS_Pagination($bd, $qry,8,8);
		$results = $pager->paginate();
		?>
        <div class="con2">
        <table id="sort" class="tablesorter" align="center" width="100%">
		<thead>
		<tr>
 		<th align="center">Select</th>
        <th>KD Category</th>
  		<th>Product<img src="../images/sort.png" width="13" height="13" /></th>
		<th>UOM</th>
				
 </tr>
		</thead>
		<tbody>
		<?php
		if(!empty($num_rows)){
		$i=1;
		$c=0;$cc=1;
		while($fetch = mysql_fetch_array($results)) {
		if($c % 2 == 0){ $cls =""; } else{ $cls ="class='odd'"; }
		?>		
		<tr>
    
       <td width="5" align="center"><input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $fetch['id']; ?>"></td>
	   <td><input type="hidden" name="customer_type" value="<?php echo $fetch['customer_type'];?>"><?php echo $fetch['customer_type'];?></td>
         
		<td><input type="hidden" name="Product_code" value="<?php echo $fetch['Product_code'];?>"><?php echo $fetch['Product_code'];?></td>
		<td><input type="hidden" name="UOM1" value="<?php echo $fetch['UOM1']?>" autocomplete="off" size="20" maxlength="20"><?php echo $fetch['UOM1'];?></td>
		</tr>
		<?php $i++; $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
		</table>
        </div>
<!--Pagination  -->
 
		<?php 
		if($num_rows > 8){?>     
        <div class="paginationfile" align="center">
	    <?php 
		//Display the link to first page: First
		echo $pager->renderFirst()."&nbsp; ";
		//Display the link to previous page: <<
		echo $pager->renderPrev();
		//Display page links: 1 2 3
		echo $pager->renderNav();
		//Display the link to next page: >>
		echo $pager->renderNext()."&nbsp; ";
		//Display the link to last page: Last
		echo $pager->renderLast();  ?>      
		</div>   
		<?php } else{ echo "&nbsp;"; }?>
        
        
<table width="100%" style="clear:both" align="center">
<tr align="center" height="50px;">
<td colspan="10">
<input type="submit" name="Delete" id="Delete" class="buttons" value="Delete" />&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="clear" value="Clear" id="clear" class="buttons" onclick="return custclr();" />&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='customertypeproduct.php'"/>

</td>
</tr>
</table>   
<?php include("../include/error.php");?>
     
</form>
</div>
<div class="clearfix"></div>

<?php include('../include/footer.php'); ?>