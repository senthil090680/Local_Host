<?php 
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
EXTRACT($_POST);	
//Insert Query
if($submit=='Save')
{
			if($customer_type=='')
			{
			//echo "Enter Mandatory Fields";
			header("location:customertypeproduct.php?no=9"); 
			}
			else
			{				
				$cnt=count($_POST['Product_code']);
		        for($j=0;$j<$cnt;$j++){
				$Product_code=$_POST['Product_code'][$j];
				$sel1="select * from customertype_product where Product_code ='$Product_code' AND customertype_product='$customertype_product'"; 
				$sel_query1=mysql_query($sel1);
				$row=mysql_num_rows($sel_query1);
				if($row=='0') {
			    mysql_query("INSERT INTO customertype_product(customer_type,UOM1,Product_code,Product_description1)VALUES('$customer_type','$UOM1','$Product_code','$Product_description1')");
				header("location:customertypeproductCategory.php?no=1");
				}
				else
				{
				header("location:customertypeproduct.php?no=51");exit;
				}
		}
			}
		}
	
?>
<!------------------------------- Form -------------------------------------------------->
<SCRIPT language="javascript">
$(document).ready(function() {
$(function(){
    // add multiple select / deselect functionality
    $("#selectall").click(function () {
    //alert("selectall");
      $('.Product_code').attr('checked', this.checked);
		
    });
 	$(".Product_code").click(function(){

		if($(".Product_code").length == $(".Product_code:checked").length) {
			$("#selectall").attr("checked", "checked");
		} else {
			$("#selectall").removeAttr("checked");
		}

	});

});

});
</SCRIPT>
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingskdp">Customer Type Product</div>
<div class="mytable3">
<div class="mcf"></div>
  <div id="search">
        <form action="" method="get">
        <input type="text" name="Product_description1" value="<?php $_GET['Product_description1']; ?>" autocomplete='off' placeholder='Search By Product'/>
        <input type="submit" name="submit" class="buttonsg" value="Go"/>
        </form>       
        </div>
<form method="post" action="" name="register">
<div class="headfile" align="center">
<table width="50%" align="center">
  <tr>
    <td width="50">Customer Type*
	<td width="121">
    <select name="customer_type" id="customer_type"  autocomplete="off"  value="">
			<option value="">--- Select ---</option>
			<?php 
			$list=mysql_query("select * from  customer_type"); 
			while($row=mysql_fetch_assoc($list)){
			?>
			<option value='<?php echo $row['customer_type']; ?>'<?php if($row['customer_type']==$_GET['data']){ echo 'selected' ; }?>
			><?php echo $row['customer_type']; ?></option>
			<?php 
			// End while loop. 
			} 
			?>
			</select>
    </td>
  </tr>
</table>
</div>
<?php

if($_GET['submit']!=='')
		{
		$var = @$_GET['Product_description1'] ;
        $trimmed = trim($var);	
	    $qry="SELECT * FROM `product` where Product_description1 like '%".$trimmed."%' order by  Product_description1 asc";
		}  
		else{
		$qry="SELECT  * FROM `product` order by  Product_description1 asc";
		}
		$results=mysql_query($qry);
		$num_rows= mysql_num_rows($results);			
		$pager = new PS_Pagination($bd, $qry,8,8);
		$results = $pager->paginate();
		?>
        <div class="con">
        <table id="sort" class="tablesorter" align="center" width="100%">
		<thead>
		<tr>
 		<th><input type="checkbox" name="selectall" value="" id="selectall">&nbsp;&nbsp;Select</th>
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
		<td>
        
	<input type="checkbox" id="prd_code_<?php echo $cc; ?>" onClick="inputcheck(<?php echo $cc; ?>);" name="Product_code[]" value="<?php echo $fetch['Product_code'];?>" class="Product_code" <?php if($_GET['no']=='1' || $hid_cat!=''){echo $fetch['Status'];}else{ echo 'UnChecked';}?>></td>
    
		<td><input type="hidden" name="Product_description1" value="<?php echo $fetch['Product_description1'];?>"><?php echo $fetch['Product_description1'];?></td>
		<td><input type="hidden" name="UOM1" value="<?php echo $fetch['UOM1']?>" autocomplete="off" size="20" maxlength="20"><?php echo $fetch['UOM1'];?></td>
		</tr>
		<?php $i++; $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
		</table>
        </div>
<!--Pagination  -->
 
		<?php 
		if($num_rows > 10){?>     
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
<td colspan="10"><input type="submit" name="submit" id="submit" class="buttons Effective_date_update_submit" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="clear" value="Clear" id="clear" class="buttons" onclick="return custTypeclr();" />&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/menu.php'"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="view" value="View" class="buttons" onclick="window.location='customertypeproductCategory.php'"/>
</td>
</tr>
</table>   
<?php include("../include/error.php");?>
     
</form>
</div>
<div class="clearfix"></div>

<?php include('../include/footer.php'); ?>