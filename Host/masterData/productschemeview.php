<?php
session_start();
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
if(isset($_GET['logout'])){
session_destroy();
header("Location:../index.php");
}

$id=$_GET['id'];
?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div><h2 align="center">Product Scheme</h2></div>
<div id="containerBD2">
<input type="button" name="kdproduct" value="Back" class="buttons" onclick="window.location='productscheme.php'">
        <div class="clearfix"></div>
		<?php
		if($_GET['del']!=''){
			if($_POST['submit']=='ConfirmDelete'){
				$id = $_GET['del'];
				$query = "DELETE FROM `product_scheme_master` WHERE id = $id";
				//Run the query
				$result = mysql_query($query) or die(mysql_error());
				header("location:productschemeview.php?no=3");
			}
		 }
		?> 
	    <?php
		if($_GET['submit']!='')
		{
			$var = @$_GET['Product_name'] ;
			$trimmed = trim($var);	
			$qry="SELECT * FROM `product_scheme_master` where Scheme_Description like '%".$trimmed."%' order by id asc";
		}
		else
		{ 
			$qry="SELECT *  FROM `product_scheme_master` order by Scheme_Description asc"; 
		}
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,5,5);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="conscroll">
        <table id="sort" class="tablesorter" width="100%">
		<thead>
		<tr>
		<th>Scheme_Description</th>
		<th nowrap="nowrap" class="rounded">Scheme_code<img src="../images/sort.png" width="13" height="13" /></th>
        <th nowrap="nowrap">Header Product</th>
    	<th nowrap="nowrap">Header Quantity</th>
        <th nowrap="nowrap">Line Product</th>
		<th nowrap="nowrap">Line Product Code</th>
        <th nowrap="nowrap">Line Quantity</th>
        <th nowrap="nowrap">Effective From</th>
        <th align="right">Edit/Del</th>
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
		<td><?php echo $fetch['Scheme_Description'];?></td>
		<td><?php echo $fetch['Scheme_code'];?></td>
	    <td><?php echo $fetch['Header_Product_description1'];?></td>
     	<td><?php echo $fetch['Header_Quantity'];?></td>
        <td><?php echo $fetch['line_Product_Name'];?></td>
        <td><?php echo $fetch['line_Product_Code'];?></td>
        <td><?php echo $fetch['line_Product_quantity'];?></td>
        <td><?php echo $fetch['Effective_from'];?></td>
        
       	<td align="right">
        <a href="productscheme.php?id=<?php echo $fetch['id'];?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="productschemeview.php?del=<?php echo $fetch['id'];?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
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
     <div class="msg" align="center" <?php if($_GET['del']!=''){?>style="display:block;"<?php }else{?>style="display:none;"<?php }?>>
     <form action="" method="post">
     <input type="submit" name="submit" id="submit" class="buttonsdel" value="ConfirmDelete" />&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='productschemeview.php'"/>
      </form>
     </div>    
        
<!--Messages-->
</div>
</div>
<?php include('../include/footer.php'); ?>