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

// Get records from database (table "name_list"). 
$list=mysql_query("select displaydateformat from  parameters"); 		
// Show records by while loop. 
$row_list=mysql_fetch_assoc($list);
$displaydateformat=$row_list['displaydateformat'];

$date=date($displaydateformat,strtotime($Effective_date));


$pi=mysql_query("select * from uom");	
while($row = mysql_fetch_array($pi)){ 
$UOM1=$row['UOM_code'];
}	

$pi2=mysql_query("select * from uom2");	
while($row = mysql_fetch_array($pi2)){ 
$UOM2=$row['UOM2'];
}

$pi3=mysql_query("select * from uom_conversion");	
while($row = mysql_fetch_array($pi3)){ 
$UOM_Conversion=$row['uom_conversion'];
}

$id=$_REQUEST['id'];
$page=intval($_REQUEST['page']);
if($_GET['id']!=''){
if($_POST['submit']=='Save'){
$Effective_date=date("Y-M-d",strtotime($Effective_date));	
$sql=("UPDATE product SET 
          Product_code= '$Product_code', 
          Product_description1='$Product_description1', 
          Product_description_length='$Product_description_length',
		  UOM1='$UOM1',
	      UOM2='$UOM2',
		  UOM_Conversion='$UOM_Conversion',
		  product_type='$product_type',
		  product_category='$product_category',
		  principal='$principal',
		  Focus='$Focus',
		  Effective_from='$Effective_from',
	      Effective_to='$Effective_to',
		  batch_ctrl='$batch_ctrl',
		  brand='$brand'
		  WHERE id = $id");
mysql_query( $sql);
header("location:productMaster.php?no=2&page=$page");
}
}
elseif($_POST['submit']=='Save'){?>
<form action="" method="post" id="resubmitform">
<input type="hidden" name="Product_code" value="<?php echo $Product_code; ?>" />
<input type="hidden" name="Product_description1" value="<?php echo $Product_description1; ?>" />
<input type="hidden" name="Product_description_length" value="<?php echo $Product_description_length; ?>" />
<input type="hidden" name="UOM1" value="<?php echo $UOM1; ?>" />
<input type="hidden" name="UOM2" value="<?php echo $UOM2; ?>" />
<input type="hidden" name="UOM_Conversion" value="<?php echo $UOM_Conversion; ?>" />
<input type="hidden" name="product_type" value="<?php echo $product_type; ?>" />
<input type="hidden" name="product_category" value="<?php echo $product_category; ?>" />
<input type="hidden" name="principal" value="<?php echo $principal; ?>" />
<input type="hidden" name="Focus" value="<?php echo $Focus; ?>" />
<input type="hidden" name="Effective_date" value="<?php echo $Effective_date; ?>" />
<input type="hidden" name="batch_ctrl" value="<?php echo $batch_ctrl; ?>" />
<input type="hidden" name="brand" value="<?php echo $brand; ?>" />
<input type="hidden" name="no" value="9" />
 
</form>
<form action="" method="post" id="dataexists">
<input type="hidden" name="Product_code" value="<?php echo $Product_code; ?>" />
<input type="hidden" name="Product_description1" value="<?php echo $Product_description1; ?>" />
<input type="hidden" name="Product_description_length" value="<?php echo $Product_description_length; ?>" />
<input type="hidden" name="UOM1" value="<?php echo $UOM1; ?>" />
<input type="hidden" name="UOM2" value="<?php echo $UOM2; ?>" />
<input type="hidden" name="UOM_Conversion" value="<?php echo $UOM_Conversion; ?>" />
<input type="hidden" name="product_type" value="<?php echo $product_type; ?>" />
<input type="hidden" name="product_category" value="<?php echo $product_category; ?>" />
<input type="hidden" name="principal" value="<?php echo $principal; ?>" />
<input type="hidden" name="Focus" value="<?php echo $Focus; ?>" />
<input type="hidden" name="Effective_date" value="<?php echo $Effective_date; ?>" />
<input type="hidden" name="batch_ctrl" value="<?php echo $batch_ctrl; ?>" />
<input type="hidden" name="brand" value="<?php echo $brand; ?>" />
<input type="hidden" name="no" value="18" />
<input type="hidden" name="page" value="<?php echo $page; ?>" />
</form>

<?php
if($Product_code=='' || $Product_description1==''  || $brand=='' || $product_type=='' || $Focus =='')
{?>

<script type="text/javascript">
document.forms['resubmitform'].submit();
</script>
<?php //header("location:productMaster.php?no=9");exit;
}
else{
$sel="select * from product where Product_code ='$Product_code'";
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
		$Effective_from= date("Y-m-d",strtotime($Effective_date));	
		$Effective_to = date("Y-m-d",strtotime($Effective_to));
	    $sql="INSERT IGNORE INTO `product`(`Product_code`,`Product_description1`,`Product_description_length`,`UOM1`,`UOM2`,`UOM_Conversion`,`product_type`,`product_category`,`principal`,`Focus`,`Effective_from`,`Effective_to`,`batch_ctrl`,`brand`)
values('$Product_code','$Product_description1','$Product_description_length','$UOM1','$UOM2','$UOM_Conversion','$product_type','$product_category','$principal','$Focus','$Effective_from','$Effective_to','$batch_ctrl','$brand')";
mysql_query($sql);
        header("location:productMaster.php?no=1&page=$page");
		}
		else {?>
         <script type="text/javascript">
		document.forms['dataexists'].submit();
		</script>
        <?php }
}
}
$id=$_GET['id'];
$list=mysql_query("select * from product where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$Product_code = $row['Product_code'];
	$Product_description1 = $row['Product_description1'];
	$Product_description_length = $row['Product_description_length'];
	$UOM1 = $row['UOM1'];
	$UOM2 = $row['UOM2'];
	$batch_ctrl = $row['batch_ctrl'];
	$Uom_conversion = $row['Uom_conversion'];
	$product_type = $row['product_type'];
	$product_category = $row['product_category'];
	$principle = $row['principle'];
	$Focus = $row['Focus'];
	$brand = $row['brand'];
	$Effective_date = $row['Effective_date'];
	$Effective_to = $row['Effective_to'];
	}

?>
<!------------------------------- Form -------------------------------------------------->
<script type="text/javascript">
$(function(){
     $('#Focus').change(function(){
							 
     if($(this).val()==0) {
		// alert("Hi");	
	 $('.datepicker').attr('disabled','disabled');  
	 }		
   else if($(this).val()==1) {
	  //  alert("Hi");
	 $(".datepicker").removeAttr("disabled");
    }
 });
});	
</script>

<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingspro">Product</div>
<div id="mytableproduc_pro" align="center">

<form action="" method="post">
<table  width="100%">
  <tr height="28px">
    <td class="pclr align" >Code*</td>
    <td><input type="text" name="Product_code" size="30" value="<?php echo $Product_code;?>" maxlength="25"  autocomplete='off'/></td>
    <td class="align">UOM</td>
    <td><input type="text" name="UOM1" size="10" value="<?php echo $UOM1;?>" readonly="readonly" maxlength="10" autocomplete='off'/></td>
    <td class="align">UOM2</td>
    <td><input type="text" name="UOM2" size="10" value="<?php echo $UOM2;?>" readonly="readonly" maxlength="10" autocomplete='off'/></td>
    <td class="align">Conversion</td>
    <td><input type="text" name="UOM_Conversion" size="10" value="<?php echo $UOM_Conversion;?>" readonly="readonly" maxlength="10" autocomplete='off'/></td>
     </tr>
  </table>
  
  <table  width="100%">
  <tr height="28px" style="clear:both">  
      <td class="align">Description</td> 
    <td colspan="5"><input type="text" name="Product_description1" size="50" maxlength="50" value="<?php echo $Product_description1; ?>"  autocomplete='off'/></td>
     <td>Product Desc Length</td>
   <td colspan="5"><input type="text" name="Product_description_length" size="35" maxlength="29" value="<?php echo $Product_description_length; ?>"  autocomplete='off'/></td>  
    </tr>
    </table>
    
    <table  width="100%">
    <tr height="28px">
    <td class="align">Brand</td>
     <td>
      <select name="brand">
        <option value="">--- Select ---</option>
        <?php 
        // Get records from database (table "name_list"). 
        $list=mysql_query("select * from brand order by  brand asc"); 
        
        // Show records by while loop. 
        while($row_list=mysql_fetch_assoc($list)){ 
        ?>
        <option value="<? echo $row_list['id']; ?>" <? if($row_list['id']==$brand){ echo "selected"; } ?>><? echo $row_list['brand']; ?></option>
        <?php 
        // End while loop. 
        } 
        ?>
        </select>
   
    </td>
    
    
    
    <td class="align">Product Type</td> 
    <td width=100>
    <select name="product_type">
      
        <?php 
        // Get records from database (table "name_list"). 
        $list=mysql_query("select * from  product_type"); 
        
        // Show records by while loop. 
        while($row_list=mysql_fetch_assoc($list)){ 
        ?>
        <option value="<? echo $row_list['id']; ?>" <? if($row_list['id']==$product_type){ echo "selected"; } ?>><? echo $row_list['product_type']; ?></option>
        <?php 
        // End while loop. 
        } 
        ?>
        </select></td>
        
  
    <td class="align">Product Category</td> 
    <td width=100>
    <select name="product_category">
        <?php 
        // Get records from database (table "name_list"). 
        $list=mysql_query("select * from  product_category"); 
        
        // Show records by while loop. 
        while($row_list=mysql_fetch_assoc($list)){ 
        ?>
        <option value="<? echo $row_list['id']; ?>" <? if($row_list['id']==$product_category){ echo "selected"; } ?>><? echo $row_list['product_category']; ?></option>
        <?php 
        // End while loop. 
        } 
        ?>
        </select>
        </td>
        
    <td class="align">Principal</td> 
    <td width=100>
    <select name="principal">
      
        <?php 
        // Get records from database (table "name_list"). 
        $list=mysql_query("select * from  principal"); 
        
        // Show records by while loop. 
        while($row_list=mysql_fetch_assoc($list)){ 
        ?>
        <option value="<? echo $row_list['id']; ?>" <? if($row_list['id']==$principal){ echo "selected"; } ?>><? echo $row_list['principal']; ?></option>
        <?php 
        // End while loop. 
        } 
        ?>
        </select></td>
   
  </tr>
  </table>
  
  <table  width="100%">
  <tr height="28px">  
   <td class="align">Batch Control</td> 
    <td>
	<?php 
		// Get records from database (table "name_list"). 
		$list=mysql_query("select batchctrl from  parameters"); 		
		// Show records by while loop. 
		$row_list=mysql_fetch_assoc($list);
		$batch_cntrl		=	$row_list['batchctrl'];
	?>

    <select name="batch_ctrl" 
	<?php 
	if($batch_cntrl == "ON-ALL") { 
			echo "readonly";
		} elseif($batch_cntrl == "ON-SELECT") { 
			echo "";
		} elseif($batch_cntrl == "OFF") { 
			echo "readonly";
		}
	?> >
      
        <option value="<? echo $batch_cntrl; ?>" <? if($batch_cntrl==$batch_ctrl){ echo "selected"; } 
		if($batch_cntrl == "ON-ALL") { 
			echo "selected";
		} elseif($batch_cntrl == "ON-SELECT") { 
			echo "selected";
		} elseif($batch_cntrl == "OFF") { 
			echo "selected";
		} 
		
		
		?>><?php 
		if($batch_cntrl == "ON-ALL") { 
			echo "Yes";
		} elseif($batch_cntrl == "ON-SELECT") { 
			echo "No";
		} elseif($batch_cntrl == "OFF") { 
			echo "No";
		} ?></option>
        <?php 
        // End while loop. 
        //} 
        if($batch_cntrl == "ON-SELECT") { 
		?>
		<option value="<? echo $batch_cntrl; ?>" ><?php 
		if($batch_cntrl == "ON-SELECT") { 
			echo "Yes";
		} ?></option>
		<?php } ?>
		</select>
        </td>
 
     <td class="align">Focus</td>
     <td>
     <select name="Focus" id="Focus">
     <option value="select">--Select--</option>
     <option value="1" <?php if($Focus==1){ echo 'selected';}?>>Yes</option>
     <option value="0" <?php if($Focus==0){ echo 'selected';}?> selected="selected">No</option>
     </select>
    </td>
    
     <td class="date align">Effective From</td>
     <td width=100>
    <input type="text" name="Effective_from" class="datepicker" size="10" value="<?php if($_REQUEST['id']!=''){ echo date('d-m-Y',strtotime($Effective_date));}?>"  autocomplete="off" /></td>
    
   <td class="date align">Effective To</td>
   <td width=100>
     <input type="text" name="Effective_to"  class="datepicker" size="10" value="<?php if($_REQUEST['id']!=''){ echo date('d-m-Y',strtotime($Effective_date));}?>"  autocomplete="off" /></td>
</tr>
</table>

<table>
  <tr height="60px;" align="center">
        <td colspan="10"><input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="reset" id="Clear"  class="buttons" value="Clear" onclick="return pro()";/>&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/empty.php'"/></td>
        </td>
      </tr>
</table>
</form>

</div>
<?php include("../include/error.php");?>
    <div id="search">
    <form action="#" method="get">
    <input type="text" name="Product_code" value="<?php $_GET['Product_code']; ?>" autocomplete='off' placeholder='Search By Product'/>
    <input type="submit" name="submit" class="buttonsg" value="GO"/>
    </form>       
    </div>  
<div class="mcf"></div>    
<div id="containerpr">
        <?php
		$page=intval($_GET['page']);
         //Check whether product is assigned to any masters
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		//Check product is Assigned to kd product
		$p_sql="select a.*,b.* from product as a,kd_product as b where a.Product_code ='$Product_code' AND b.Product_code ='$id'";
		$resp=mysql_query($p_sql);
		$cnt=mysql_num_rows($resp);
		if($cnt=='1'){
        header("location:productMaster.php?no=43&page=$page"); 
		}
		elseif($_GET['delID']!=''){
		//Check product is Assigned to product scheme master
	$ps_sql="select c.*,d.* from product as c,product_scheme_master as d where c.Product_code='$Product_code' AND d.Header_Product_code='$id'";
		$resps=mysql_query($ps_sql);
		$pnt=mysql_num_rows($resps);
		if($pnt=='1'){
        header("location:productMaster.php?no=44&page=$page"); 
		  }
		else{
	   //Check product is Assigned to price master
 $pm_sql="select e.*,f.* from product as e, price_master as f where e.Product_code='$Product_code' AND f.Product_code='$id'";
		$respm=mysql_query($pm_sql);
		$snt=mysql_num_rows($respm);
		if($snt=='1'){
        header("location:productMaster.php?no=45&page=$page"); 
		  }
		   }
		 }
		}		
		?> 

        <?php
		if($_GET['id']!=''){
		if($_POST['submit']=='ConfirmDelete'){
		$id = $_GET['id'];
		$query = "DELETE FROM `product` WHERE id = $id";
        //Run the query
        $result = mysql_query($query) or die(mysql_error());
        header("location:productMaster.php?no=3&page=$page");
		}
		 }
		?> 
		<?php
		if($_GET['submit']!=='')
		{
		$var = @$_GET['Product_code'] ;
        $trimmed = trim($var);	
	    $qry="SELECT * FROM `product` where Product_code like '%".$trimmed."%' order by Product_description1 asc";
		}
		else
		{ 
		$qry="SELECT * FROM `product` order by Product_description1 asc";
		}
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,4,4);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="conscroll">
        <table class="tablesorter" id="sort" width="100%">
        <thead>
		<tr>
		<th class="rounded">Code<img src="../images/sort.png" width="13" height="13" /></th>
		<th>Description</th>
		<th>Product Type</th>
        <th>Brand</th>
       	<th>Batch Control</th>
        <th>Focus</th>
        <th align="right">Edit/Del</th>
		</tr>
        </thead>
        <tbody>
		<?php
		if(!empty($num_rows)){
		$c=0;$cc=1;
		while($fetch = mysql_fetch_array($results)) {
		if($c % 2 == 0){ $cls =""; } else{ $cls =" class='odd'"; }
		$id= $fetch['id'];
		$Focus=$fetch['Focus'];
		$brand=$fetch['brand'];
		?>
		<tr>
		<td><?php echo $fetch['Product_code'];?></td>
		<td><?php echo $fetch['Product_description1'];?></td>
		<td><?php echo $fetch['product_type'];?></td>
        <td><?php 
		$sambr=mysql_query("select * from  brand where id= '$brand'"); 
        $row=mysql_fetch_array($sambr);
        $branid=$row['id'];
		$brandv=$row['brand'];
		if($brand=$brandv){echo $brandv;}?>
        </td>
       	<td><?php echo $fetch['batch_ctrl'];?></td>
       	<td><?php if($Focus ==1) { echo "Yes";} elseif($Focus == 0) {echo "No";}?></td>
        <td align="right"  width='100'><a href="productMaster.php?id=<?php echo $fetch['id'];?>&page=<?php echo intval($_GET['page']);?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="productMaster.php?id=<?php echo $fetch['id'];?>&delID=<?php echo $fetch['Product_code'];?>&page=<?php echo intval($_GET['page']);?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
        </td>
        </tr>
		<?php $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
		</table>
        </div>
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
     <div class="msg" align="center" <?php if($_GET['delID']!=''){?>style="display:block;"<?php }else{?>style="display:none;"<?php }?>>
     <form action="" method="post">
     <input type="submit" name="submit" id="submit" class="buttonsdel" value="ConfirmDelete" />&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='productMaster.php'"/>
        </form>
     </div>           
     </div>
</div>
<?php include('../include/footer.php'); ?>