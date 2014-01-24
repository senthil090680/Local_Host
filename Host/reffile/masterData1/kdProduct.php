<?php 
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
EXTRACT($_POST);	
//Insert Query
if($submit=='Save')
{
			if($Kd_Category=='')
			{
			//echo "Enter Mandatory Fields";
			header("location:kdProduct.php?no=9"); 
			}
			else
			{				
				$Effective_date=date("Y-m-d");	
				$cnt=count($_POST['Product_code']);
		for($j=0;$j<$cnt;$j++){
				$Product_code=$_POST['Product_code'][$j];
				$sel1="select * from kd_product where Product_code ='$Product_code' AND Kd_Category='$Kd_Category'"; 
				$sel_query1=mysql_query($sel1);
				$row=mysql_num_rows($sel_query1);
				if($row=='0') {
			    mysql_query("INSERT INTO kd_product(Kd_Category,UOM1,Product_code,Effective_date,product_type,Status_kd_product)VALUES('$Kd_Category','$UOM1','$Product_code','$Effective_date','ALL','Checked')");
				mysql_query("UPDATE product SET 
					  Status='Checked'
					  WHERE Product_code = '$Product_code'"); 
  				header("location:kdProduct.php?no=1");
				}
				else
				{
				header("location:kdProduct.php?no=51");exit;
				}
		}
			}
		}

	
?>
<!------------------------------- Form -------------------------------------------------->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>KD Product</title>
<SCRIPT language="javascript">
$(document).ready(function() {
//For check Box
$(function(){
    // add multiple select / deselect functionality
    $("#selectall").click(function () {
	 alert("selectall");

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

</SCRIPT>
</head>

<body>
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingskdp">KD Product</div>
<div class="mytable3">
<form method="post" action="" name="register">
<div class="headfile" align="center">
<table width="100%" align="center">
  <tr>
    <td width="50">KD Category*
	<!-- For Multiple Effective Date -->
	<input type="hidden" name="update_date" value="" autocomplete="off" id="hdnData" readonly></td>
    <td width="121">
    <select name="Kd_Category" class="Kd_Category" id="Kd_Category"  autocomplete="off"  value="" onChange="ajaxcategory();">
			<option value="">--- Select ---</option>
			<?php 
			$list=mysql_query("select * from  kd_category"); 
			while($row=mysql_fetch_assoc($list)){
			?>
			<option value='<?php echo $row['kd_category']; ?>'<?php if($row['kd_category']==$_GET['data']){ echo 'selected' ; }?>
			><?php echo $row['kd_category']; ?></option>
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
		$qry="SELECT  * FROM `product` order by  Product_code asc";
		$results=mysql_query($qry);
		$num_rows= mysql_num_rows($results);			
		$pager = new PS_Pagination($bd, $qry,10,10);
		$results = $pager->paginate();
		?>
        <div class="con">
        <table id="sort" class="tablesorter" align="center" width="100%">
		<thead>
		<tr>
 		<th><input type="checkbox" name="selectall" value="" id="selectall">&nbsp;&nbsp;Select</th>
  		<th>Product<img src="../images/sort.png" width="13" height="13" /></th>
		<th>UOM</th>
		<!--<th>Mod</th>-->
		
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
  <?php /*?><input type="checkbox" id="prd_code_<?php echo $cc; ?>" onClick="inputcheck(<?php echo $cc; ?>);" name="Product_code[]" value="<?php echo $fetch['Product_code'];?>" class="Product_code" <?php if($_GET['no']=='1' || $hid_cat!='' ||$_GET['data']!=''){echo $fetch['Status'];}else{ echo 'Checked';}?>></td><?php */?>
        
	<input type="checkbox" id="prd_code_<?php echo $cc; ?>" onClick="inputcheck(<?php echo $cc; ?>);" name="Product_code[]" value="<?php echo $fetch['Product_code'];?>" class="Product_code" <?php if($_GET['no']=='1' || $hid_cat!=''){echo $fetch['Status'];}else{ echo 'UnChecked';}?>></td>
    
		<td><?php echo $fetch['Product_description1'];?></td>
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
<input type="button" name="clear" value="Clear" id="clear" class="buttons" onclick="return kdpdt();" />&nbsp;&nbsp;&nbsp;&nbsp;
<a href="../include/menu.php" style="text-decoration:none"><input type="button" name="cancel" id="cancel"  class="buttons" value="Cancel"/></a></td>
</tr>
</table>   
        <?php include("../include/error.php");?>
     
</form>
</div>
<div class="clearfix"></div>

<?php include('../include/footer.php'); ?>