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

?>
<!------------------------------- Form -------------------------------------------------->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Product Scheme</title>
<SCRIPT language="javascript">
function pdt()
{
$('.show_pdt').toggle();
return false;
}
</SCRIPT>
</head>

<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingspr">Product Scheme</div>
<div id="mytableproduct" align="center">
<form action="productschemeAction.php" method="post" id="validation">
<table >
  <tr height="28px">
    <td>KD Category
    <td>
    <select name="Kd_category" class="Kd_category" id="Kd_category"  autocomplete="off" style="width:100%;" value="" onChange="return categorypdtscheme();">
			<option value="">--- Select ---</option>
			<?php 
			$list=mysql_query("select * from  kd_category"); 
			while($row=mysql_fetch_assoc($list)){
			?>
			<option value='<?php echo $row['kd_category']; ?>'<?php if($row['kd_category']==$fet_scheme['kd_category']){ echo 'selected' ; }?>
			><?php echo $row['kd_category']; ?></option>
			<?php 
			// End while loop. 
			} 
			?>
			</select>
    </td>
    <td class="align">Effective From</td>
    <td><input type="text"  name="Effective_date_from"  value="<?php echo $fet_scheme['Effective_date_from'];?>" class="datepickerkdpdt Effective_from" autocomplete="off" size="20" maxlength="20">
	</td>
  </tr>
  <tr height="28px">
    <td>Product*
    <td>
    <select name="Product_code" class="Product_code" id="Product_code"  autocomplete="off" style="width:100%;" value="" >
			<option value="">--- Select ---</option>
			<?php 
			$list=mysql_query("select DISTINCT Product_code from kd_product"); 
			while($row=mysql_fetch_assoc($list)){
			?>
			<option value='<?php echo $row['Product_code']; ?>'<?php if($row['Product_code']==$fet_scheme['Product_code']){ echo 'selected' ; }?>
			><?php echo $row['Product_code']; ?></option>
			<?php 
			// End while loop. 
			} 
			?>
			</select>
    </td>
<td class="align">Effective To</td>
    <td><input type="text"  name="Effective_date_to"  value="<?php echo $fet_scheme['Effective_date_to'];?>" class="datepickerkdpdt Effective_to" autocomplete="off" size="20" maxlength="20">
	</td>  </tr>
  <tr height="28px">
    <td>Quantity</td>
    <td><input type="text"  name="Quantity" class="Quantity"  value="<?php echo $fet_scheme['Quantity'];?>" autocomplete="off" size="20" maxlength="20" >
	</td> 
    <td class="align">Scheme*
    <td>
    <select name="Scheme_code" class="Scheme_code" id="Scheme_code"  autocomplete="off" style="width:100%;" value="" >
			<option value="">--- Select ---</option>
			<?php 
			$list=mysql_query("select * from  scheme_master"); 
			while($row=mysql_fetch_assoc($list)){
			?>
			<option value='<?php echo $row['Scheme_code']; ?>'<?php if($row['Scheme_Description']==$fet_scheme['Scheme_Description']){ echo 'selected' ; }?>
			><?php echo $row['Scheme_Description']; ?></option>
			<?php 
			// End while loop. 
			} 
			?>
			</select>
    </td>
	<tr><td>UOM</td><td><input type="text" name="UOM" value="Pieces" readonly></td><td class="align show_pdt" style="display:none;">Add Product</td>
	<td style="display:none;" class="show_pdt">    
	<select name="add_productcode" class="add_productcode" id="add_productcode"  autocomplete="off" style="width:100%;" value="" >
			<option value="">--- Select ---</option>
			<?php 
			$list=mysql_query("select DISTINCT Product_code from  product"); 
			while($row=mysql_fetch_assoc($list)){
			?>
			<option value='<?php echo $row['Product_code']; ?>'<?php if($row['Product_code']==$_GET['data']){ echo 'selected' ; }?>
			><?php echo $row['Product_code']; ?></option>
			<?php 
			// End while loop. 
			} 
			?>
			</select>
	</td>
	</tr>
  </tr>
     <tr height="60px;" align="center">
       <td colspan="10">
       <input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="reset" name="reset" id="reset"  class="buttons" value="Clear"  onclick="return productScheme()";/>&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/menu.php'"/>&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="button" name="cancel" value="Add" class="buttons" onclick="return pdt();"/>
	    &nbsp;&nbsp;&nbsp;&nbsp;
       </td>
      </tr>
	  
</table>
</form>
</div>
<!--Error Message -->  
<?php include("../include/error.php");?>
    <div id="search">
    <form action="" method="get" autocomplete='off'>
    <input type="text" name="add_productcode" value="<?php $_GET['add_productcode']; ?>" autocomplete='off' placeholder='Search By Product'/>
    <input type="submit" name="submit" class="buttonsg" value="GO"/>
    </form>       
    </div>
<div class="mcf"></div>
<div id="containerpr">
		<?php
		if($_POST['submit']=='ConfirmDelete'){
	    $id = $_GET['delID'];
	    //Run the query
        $resultd = mysql_query($query);
	    $query = "DELETE FROM product_scheme_master WHERE id = $id";
		mysql_query($query) or die(mysql_error());
        header("location:productscheme.php?no=3");
		}
		?>  
		<?php
		if($_GET['submit']!=='')
		{
		$var = @$_GET['add_productcode'] ;
        $trimmed = trim($var);		
	    $qry="SELECT * FROM `product_scheme_master` where add_productcode like '%".$trimmed."%' order by id asc";
		}
		else
		{ 
    	$qry="SELECT * FROM `product_scheme_master` where Status='Active' order by id asc";  
		}
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd,$qry,5,5);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
		<div class="con2">
		<table id="sort" class="tablesorter" align="center" width="100%">
		<thead>
		<tr>
		<th class="rounded">Product Code 
		<input type="hidden" name="pdt_code" value="<?php echo $cnt;?>" class="provinceID"><img src="../images/sort.png" width="13" height="13" /></th>
		<th>UOM</th>
		<th>Quantity</th>
		<th align="right">Mod/Del</th>
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
		<td><?php echo $fetch['add_productcode'];?></td>
		<td><?php echo $fetch['UOM'];?></td>
		<td><?php echo $fetch['Quantity'];?></td>
		<td align="right">
		<a href="productscheme.php?id=<?php echo $fetch['id'];?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="productscheme.php?delID=<?php echo $fetch['id'];?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
        </td>
        </tr>
		<?php $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
		</table>
		        </div>   
   <div class="msg" align="center" <?php if($_GET['delID']!=''|| $_GET['sta']=='ass'){?>style="display:block;"<?php }else{?>style="display:none;"<?php }?>>
     <form action="" method="post">
     <a href="productscheme.php?delID=<?php echo $_GET['delID'];?>"><input type="submit" name="submit" id="submit" class="buttonsdel" value="ConfirmDelete" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='productscheme.php'"/>
       </form>
     </div>
</div>
</div>
<?php include('../include/footer.php'); ?>