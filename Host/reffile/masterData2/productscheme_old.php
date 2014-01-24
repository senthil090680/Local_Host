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
$sel="select * from kd_product where KD_Code ='$KD_Code'";
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
		$Effective_date=date("Y-m-d",strtotime($Effective_date));		
		$active='active';
		$sql="INSERT INTO `kd_product`(`KD_Code`,`Product_code`,`Status`)
              values('$KD_Code','$Product_code','$active')";
              mysql_query( $sql);
			  header("location:kdProduct.php?d=2");
		}
		else {
		header("location:kdProduct.php?d=1");
		}
}
if($_GET['id']!=''){
if($_POST['submit']=='Save'){
$Effective_date=date("Y-m-d",strtotime($Effective_date));	
$sql=("UPDATE kd_product SET 
          KD_Code= '$KD_Code', 
          Product_code='$Product_code'
		  WHERE id = '".$_POST['fetch_id']."'");
mysql_query( $sql);
header("location:kdProduct.php?d=3");
}
}
$id=$_GET['id'];
$list=mysql_query("select * from kd_product where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$KD_Code = $row['KD_Code'];
	$Product_code = $row['Product_code'];
	}


?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingskdp">Product Scheme</div>
<div class="mytable2">
<form action="#" method="post" id="validation">
<table width="100%">
  <tr height="70px">
    <td class="pclr align">KD Category*</td>
        <td>
      <select name="kd_category" class="required">
        <option value="">--- Select ---</option>
        <?php 
        include('../include/config.php');
        // Get records from database (table "name_list"). 
        $list=mysql_query("select * from kd_category"); 
        
        // Show records by while loop. 
        while($row_list=mysql_fetch_assoc($list)){ 
        ?>
        <option value="<? echo $row_list['kd_category']; ?>" <? if($row_list['kd_category']==$KD_Code){ echo "selected"; } ?>><? echo $row_list['kd_category']; ?></option>
        <?php 
        // End while loop. 
        } 
        ?>
     </select>
    </td>
  <td class="align">Effective From*</td>
    <td><input type="text" name="Effective_from"  class="required datepicker" size="10" value="<?php if($_REQUEST['id']!=''){ echo date("d-m-Y",strtotime($Effective_date));}?>"  autocomplete="off" /></td>  
    <td class="align">Effective To*</td>
    <td><input type="text" name="Effective_from"  class="required datepicker" size="10" value="<?php if($_REQUEST['id']!=''){ echo date("d-m-Y",strtotime($Effective_date));}?>"  autocomplete="off" /></td>   
    </tr>
    
    <tr>
    <td class="pclr align">Product</td>
        <td>
      <select name="kd_category" class="required">
        <option value="">--- Select ---</option>
        <?php 
        include('../include/config.php');
        // Get records from database (table "name_list"). 
        $list=mysql_query("select * from kd_category"); 
        
        // Show records by while loop. 
        while($row_list=mysql_fetch_assoc($list)){ 
        ?>
        <option value="<? echo $row_list['kd_category']; ?>" <? if($row_list['kd_category']==$KD_Code){ echo "selected"; } ?>><? echo $row_list['kd_category']; ?></option>
        <?php 
        // End while loop. 
        } 
        ?>
     </select>
    </td>
  <td class="align">Quantity</td>
    <td><input type="text" name="quantity"  class="required" size="5" value="" autocomplete="off" /></td>  
    <td>Pieces</td>  
  
 
</table>

<div class="clearfix"></div>
   	<?php
        if($_GET['d']=='4'){
        $id = $_GET['id'];
        //Set the query to return names of all employees
       	$query="update kd_product set Status='inactive' where id='$id'";
        //Run the query
        $result = mysql_query($query) or die(mysql_error());
       	 }
		     
		?> 
  <!--      <div id="search">
        <form action="#" method="get">
         <label class="labelstyle">Product Code</label>
        <input type="text" name="Product_code" value="<?php $_GET['Product_code']; ?>"/>
        <input type="submit" name="submit"  value="Go" class="buttons"/>
         </form>       
        </div> -->              
		<?php
		if($_GET['submit']!='')
		{
		$var = @$_GET['Product_code'] ;
        $trimmed = trim($var);
	    $qry="SELECT * FROM `kd_product` where Product_code like '%".$trimmed."%' order by id asc";
		}
		else
		{ 
		$qry="SELECT *  FROM `product` where Status='active' order by id desc"; 
		}
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,2,5);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <table id="rounded-cornerf" class="tablesorter">
		<thead>
		<tr>
      <!--  <th scope="col" class="rounded">SN</th>-->
		<th scope="col" class="rounded">Product Code</th>
        <th scope="col" class="rounded">UOM</th>
        <th scope="col" class="rounded">Quantity*</th>
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
       <!-- <td><input type="checkbox" name="select" value=""></td>-->
		<td><?php echo $fetch['Product_code'];?></td>
        <td><?php echo $fetch['UOM1'];?></td>
       <td><input type="text" name="quantity" value="" size=10></td>
	   	<td align="right"><a href="../pass/passwordcheckkdp.php?id=<?php echo $fetch['id'];?>" class="login-window"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="kdProduct.php?id=<?php echo $fetch['id'];?>&d=4" class="ask"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
        </td>
        </tr>
		<?php $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
        </table> 
        
		<table align="center" style="margin-left:auto;margin-right:auto;" >
        <tr align="center" height="70px;">
        <td width="100"><input type="submit" name="submit" id="submit" class="buttons" value="Save" /></td>
           <td width="100"><input type="reset" name="reset" id="reset"  class="buttons" value="Clear" /></td>
           <td width="100"><input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='kdProduct.php'"/></td>
            </tr> 
      </table> 
 </form>                
   </div>

<?php if($_GET['d']=='1'){ ?>
<div id="errormsg"><h3 align="center" class="myalign"><?php echo "<span class='hightlight'>Data Already Exists";$sec = "3";
header("Refresh: $sec; url=kdProduct.php");?></h3></div><?php }?>
<?php if($_GET['d']=='2'){ ?>
<div id="errormsg"><h3 align="center" class="myalign"><?php echo "<span class='hightlight'>Insert Record Successfully";$sec = "3";
header("Refresh: $sec; url=kdProduct.php");?></h3></div><?php }?>
<?php if($_GET['d']=='3'){ ?>
<div id="errormsg"><h3 align="center" class="myalign"><?php echo "<span class='hightlight'>Update Record Successfully";$sec = "3";
header("Refresh: $sec; url=kdProduct.php");?></h3></div><?php }?>
<?php if($_GET['d']=='4'){ ?>
<div id="errormsg"><h3 align="center" class="myalign"><?php echo "<span class='hightlight'>Delete Record Successfully";$sec = "3";
header("Refresh: $sec; url=kdProduct.php");?></h3></div><?php }?>

</div>
<?php include('../include/footer.php'); ?>