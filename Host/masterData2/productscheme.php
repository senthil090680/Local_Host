<?php 
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
EXTRACT($_POST);	
$id=$_REQUEST['id'];
if($_REQUEST['id']!=''){
	if($_POST['submit']=='Save'){
		if($Scheme_Description=='' || $Header_Product_description1==''  || $Header_Quantity	=='')
		{
			header("location:productscheme.php?no=9&id=$id");exit;
		}
		else{
	
			for($k=1; $k <= $procnt; $k++) { 

				$line_Product_Name			=	$_POST["line_Product_Name_".$k];
				$line_Product_Code			=	$_POST["line_Product_Code_".$k];
				$line_Product_UOM1		    =	$_POST["line_Product_UOM1_".$k];
				$line_Product_quantity		=	$_POST["line_Product_quantity_".$k];

				if($line_Product_quantity=='')
				{
					header("location:productschemeview.php?no=9&id=$id");exit;
				}
				$sql=	"UPDATE product_scheme_master SET Scheme_Description='$Scheme_Description',Scheme_code= '$Scheme_code', Header_Product_description1='$Header_Product_description1',Header_Product_code='$Header_Product_code',Header_UOM='$Header_UOM',Header_Quantity='$Header_Quantity',line_Product_Name='$line_Product_Name',line_Product_Code='$line_Product_Code',line_Product_UOM1='$line_Product_UOM1',Effective_from='$Effective_from',Effective_to='$Effective_to' WHERE id = '$id'";
			}				
			mysql_query( $sql) or die(mysql_error());
			header("location:productscheme.php?no=2");
		}
	}
}
elseif($_POST['submit']=='Save'){
	if($Scheme_Description=='' || $Header_Product_description1==''  || $Header_Quantity	=='' )
	{
		//exit;
		header("location:productscheme.php?no=9");exit;
	}
	else{
		$sel="select * from  product_scheme_master where Scheme_code ='$Scheme_code'";
		$sel_query=mysql_query($sel) or die(mysql_error());
		if(mysql_num_rows($sel_query)=='0') {
			
			$KD_Code="KD001";
			$ins_val	=	'';
			for($k=1; $k <= $procnt; $k++) { 

				$line_Product_Name			=	$_POST["line_Product_Name_".$k];
				$line_Product_Code			=	$_POST["line_Product_Code_".$k];
				$line_Product_UOM1		    =	$_POST["line_Product_UOM1_".$k];
				$line_Product_quantity		=	$_POST["line_Product_quantity_".$k];
						
				if($line_Product_quantity=='')
				{
					header("location:productschemeview.php?no=9&id=$id");exit;
				}

				if($k == $procnt) {
					$ins_val	.=	"('$Scheme_Description','$Scheme_code','$Header_Product_description1','$Header_Product_code','$Header_UOM','$Header_Quantity','$line_Product_Name','$line_Product_Code','$line_Product_UOM1','$line_Product_quantity','$Effective_from','$Effective_to')";
				} else {
					$ins_val	.=	"('$Scheme_Description','$Scheme_code','$Header_Product_description1','$Header_Product_code','$Header_UOM','$Header_Quantity','$line_Product_Name','$line_Product_Code','$line_Product_UOM1','$line_Product_quantity','$Effective_from','$Effective_to'),";
				}
			}
			//echo $ins_val;
			//exit;

			echo $sql="INSERT INTO `product_scheme_master`(`Scheme_Description`,`Scheme_code`,`Header_Product_description1`,`Header_Product_code`,`Header_UOM`,`Header_Quantity`,`line_Product_Name`,`line_Product_Code`,`line_Product_UOM1`,`line_Product_quantity`,`Effective_from`,`Effective_to`) values $ins_val";
			mysql_query($sql) or die(mysql_error());
			header("location:productschemeview.php?no=1&id='$id'");
		}
		else {
			header("location:productscheme.php?no=18");
		}
	}
}

$id=$_REQUEST['id'];
$list=mysql_query("select * from  product_scheme_master where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
    $Scheme_Description = $row['Scheme_Description'];
	$Scheme_code = $row['Scheme_code'];
	$Header_Product_description1 = $row['Header_Product_description1'];
	$Header_Product_code = $row['Header_Product_code'];
	$Header_UOM = $row['Header_UOM'];
	$Header_Quantity = $row['Header_Quantity'];
	$line_Product_Name = $row['line_Product_Name'];
	$line_Product_Code = $row['line_Product_Code'];
	$line_Product_UOM1 = $row['line_Product_UOM1'];
	$line_Product_quantity = $row['line_Product_quantity'];
	$Effective_from = $row['Effective_from'];
	$Effective_to = $row['Effective_to'];
}


?>

<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingspr">Product Scheme</div>
<div id="mytablescproduct" align="center">
<form action="" method="post">
 <table bgcolor="#CCCCCC" width="100%" style="padding:10px 0 10px 0px">
  <tr height="28px">
     <td class="align">Scheme</td>
    <td>
    <select name="Scheme_Description" class="Scheme_Description" id="Scheme_Description"  autocomplete="off" style="width:100%;" value="" onChange="return scheme();" >
			<option value="">--- Select ---</option>
			<?php 
			$list=mysql_query("select * from  scheme_master"); 
			while($row=mysql_fetch_assoc($list)){
			?>
			<option value='<?php echo $row['Scheme_Description']; ?>'<?php if($row['Scheme_Description']==$Scheme_Description){ echo 'selected' ; }?>><?php echo $row['Scheme_Description']; ?></option>
			<?php 
			// End while loop. 
			} 
			?>
			</select>
    </td>
    
   <td class="align">Scheme Code</td>
    <td><input type="text"  name="Scheme_code"  value="<?php echo $Scheme_code;?>" class="Scheme_code" autocomplete="off" size="20" maxlength="20">
	</td>   
  </tr>
  
  
  
  <tr height="28px">
    <td class="align">Effective From</td>
    <td><input type="text"  name="Effective_from"  value="<?php echo $Effective_from;?>" class="Effective_from" autocomplete="off" size="20" maxlength="20">
	</td>
    <td class="align">Effective To</td>
    <td><input type="text"  name="Effective_to"  value="<?php echo $Effective_to;?>" class="Effective_to" autocomplete="off" size="20" maxlength="20">
	</td>
   </tr>
   
   
   
   
  <tr height="28px">
  <td class="align">Product*</td>
    <td colspan="10">
    <select name="Header_Product_description1" class="Product_description1" id="Product_description1"  autocomplete="off" value="<?php echo $Header_Product_description1; ?>" style="width:100%" onChange="return productcode();">
			<option value="">--- Select ---</option>
			<?php 
			$list=mysql_query("select DISTINCT Product_description1 from product"); 
			while($row=mysql_fetch_assoc($list)){
			?>
			<option value='<?php echo $row['Product_description1']; ?>'<?php if($row['Product_description1']==$Header_Product_description1 ){ echo 'selected' ; }?>
			><?php echo $row['Product_description1']; ?></option>
			<?php 
			// End while loop. 
			} 
			?>
			</select>
    </td>
    </tr>
 	<tr height="28px">
    <td class="align">Product Code</td>
    <td><input type="text"  name="Header_Product_code"  value="<?php echo $Header_Product_code;?>" class="Product_code" autocomplete="off" size="10" maxlength="20">
	</td>   
      <td class="align">Quantity</td>
    <td>
    <input type="text"  name="Header_Quantity"  value="<?php echo $Header_Quantity;?>" class="Quantity" autocomplete="off" size="10" maxlength="20">
     Pieces<input type="hidden"  name="Header_UOM"  value="Pieces">
	</td>   
  </tr>
</table>
<div class="clearfix"></div>

<table width="50%">
 <tr>
  <td>
  <table>
    <tr  height="20">
    <td>Product</td>
    <td  width="120"><select <?php if(isset($_GET[id]) && $_GET[id] != '') { echo "enabled"; } ?> name="line_Product_Name" id="Product_names" >
	<option value="" >--Select Product--</option>
	<?php $sel_supp		=	"select * from product";
	$res_supp			=	mysql_query($sel_supp) or die(mysql_error());	
	while($row_supp	= mysql_fetch_array($res_supp)){ 
	$line_Product_code = $row_supp[Product_code];
	$line_Product_UOM1 = $row_supp[UOM1];
	?>
    <option value="<?php echo $row_supp[Product_code]; ?>" <?php if($line_Product_Name == $row_supp[Product_description1]) { echo "selected"; } ?> ><?php echo $row_supp[Product_description1]; ?></option>
     <?php } ?>
    
    </select>
    	
    </td>
     <td>
 &nbsp; &nbsp; &nbsp;<button class="buttons" <?php if(isset($_GET[id]) && $_GET[id] != '') { echo "disabled"; } ?> onClick="return addquantity('<?php echo $line_Product_UOM1;?>');">Add</button></td>
    </tr>
	<tr>
		<td><span id="showerr" style="display:none;color:#FF0000;">Choose Product</span><input type="hidden" value="<?php if(isset($_GET[id]) && $_GET[id] != '') { ?> 1 <?php } ?>" name="procnt" id="procnt" /></td>
	</tr>
   </table>
 </fieldset>
   </td>
 </tr>
</table>

<!----------------------------------------------- last Table End -------------------------------------->

<table width="100%" align="left" id="proadd" <?php if(!isset($_GET[id]) && $_GET[id] == '') { ?> style="display:none" <?php }?>>
 <tr>
  <td>
  <div class="con">
  <table>
  <thead><tr><th class='rounded' align='center'>Product Name</th><th align='center'>Product Code</th><th align='center'>UOM</th><th align='center'>Quantity</th></tr></thead>  
  <tbody id="addpro">
	<?php $t = 1; if(isset($_GET[id]) && $_GET[id] != '') { ?> 
		<tr><td align='center'><input type='hidden' value='<?php echo $line_Product_Name; ?>' name='line_Product_Name_<?php echo $t; ?>' /><?php echo $line_Product_Name; ?></td><td align='center'><input type='hidden' value='<?php echo $line_Product_Code; ?>' name='line_Product_code_<?php echo $t; ?>' /><?php echo $line_Product_Code; ?></td><td align='center'><input type='text' value='<?php echo $line_Product_UOM1; ?>' name='line_Product_UOM1_<?php echo $t; ?>' /></td><td align='center'><input type='text' value='<?php echo $line_Product_quantity; ?>' name='line_Product_quantity_<?php echo $t; ?>' autocomplete'off' /></td></tr>
	<?php } ?>
  </tbody>
   </table>
   </div>
   </td>
 </tr>
</table>

<div class="clearfix"></div>
<tr align="center" height="50px;">
<td colspan="10"><!-- KD Category -->
<input type="submit" name="submit" id="submit" class="buttons " value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="clear" value="Clear" id="clear" class="buttons" onclick="return productScheme();" />&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="cancel" id="cancel"  class="buttons" value="Cancel" onclick="window.location='../include/empty.php'"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="view" id="view"  class="buttons" value="View" onclick="window.location='productschemeview.php'"/>
</td>
</tr>
</table>
</form>
</div>

<div class="clearfix"></div>

<div class="clearfix"></div>
 <?php include("../include/error.php");?>
</div>
<?php include('../include/footer.php'); ?>
