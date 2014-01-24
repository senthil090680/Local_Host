<?php 
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
EXTRACT($_POST);	
//Insert Query

$Product_code = $_POST['Product_code'];
$page=intval($_GET['page']);
if($_POST['submit']=='Save')
{
			if($kd_category==''||$Price=='' || $Effective_date=='')
			{
			 header("location:price.php?no=9"); 
			}
			else
			{	
			  	$Effective_date=date("Y-m-d",strtotime($Effective_date));	
				$sel1="select * from price_master where kd_category='$kd_category'"; 
				$sel_query1=mysql_query($sel1);
				$row=mysql_num_rows($sel_query1);
				for($i=0;$i<sizeof($Product_code);$i++){
				if($row === 0) {
				$query=mysql_query("INSERT INTO price_master(KD_Code,kd_category,Product_code, Product_description1, UOM1,Price,Effective_date)
				VALUES('".$KD_Code."','".$kd_category."','".$Product_code[$i]."', 
				'".$Product_description1[$i]."', '".$UOM1."','".$Price[$i]."','".$Effective_date."')");
				header("location:priceview.php?no=1&page=$page");
                 }
				else
				{ 
				header("location:price.php?no=18&page=$page");exit;
				}
		}
			}
		}

$id=$_GET['id'];
$list=mysql_query("select * from price_master where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
    $kd_category = $row['kd_category']; 
	$Product_code = $row['Product_code'];
	$Product_description1 = $row['Product_description1'];
	$UOM1 = $row['UOM1'];
	$Price = $row['Price'];
	$Effective_date = $row['Effective_date'];

	}

	
?>

<!------------------------------- Form -------------------------------------------------->
<script type="text/javascript">
				logProgress(Product_code);
				function logProgress(Product_code)
				{
					//alert(Product_code); 
					var process = $("#kd_category").val();
			    	var posting = $.post("log.php", {process: process,"Product_code" : Product_code});

					posting.done(function(data) {
						$("#log").html(data);
						//$('#kd_category')[0].selectedIndex = 0;
					});
					
					
			var val=$('#kd_category option:selected').text();
	        $.ajax({
            url: 'get_kdcodeproduct.php?val=' + val,
            success: function(data) {
				//alert(data);
				var value=$.trim(data);//To Remove White Space in string
				var value1=data.substring(0,value.length-1);//To return part of the string
				var list= value1.split("|"); 
				for (var i=0; i<list.length; i++) {
					var arr_i= list[i].split("^");
					//alert(arr_i[6]);
					$("#KD_Code").val(arr_i[0]);
					$("#Product_Code").val(arr_i[1]);
					
			}

			}
        });
				}
				

		

</script>
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingskdp">Price</div>
<div class="mytable3">
<div class="mcf"></div>
<form method="post">
<div class="headfile" align="center">
<table width="60%" align="center">
  <tr>
    <td width="100">KD Category*
	<td width="121">
   
    <select name="kd_category" class="kd_category" id="kd_category"  autocomplete="off"  value="" onchange="logProgress()"; > 
			<option value="">--- Select ---</option>
			<?php 
			$list=mysql_query("select * from  kd_category order by  kd_category asc"); 
			while($row=mysql_fetch_assoc($list)){
			?>
			<option value='<?php echo $row['kd_category']; ?>'<?php if($row['kd_category']==$kd_category){ echo 'selected' ; }?>
			><?php echo $row['kd_category']; ?></option>
			<?php 
			// End while loop. 
			} 
			?>
			</select>
        <input type="hidden" name="KD_Code" id="KD_Code" value="" />  
        <input type="hidden" name="Product_Code" id="Product_Code" value="" />     
    </td>
     <td>Effective Date</td>
    <td width=100><input type="text" name="Effective_date" class="datepicker" size="10" value="<?php if($_REQUEST['id']!=''){ echo date('d-M-Y',strtotime($Effective_date));}?>"  autocomplete="off" /></td>
  </tr>
</table>
</div>
<?php

if($_GET['submit']!=='')
		{
		$var = @$_GET['Product_description1'] ;
        $trimmed = trim($var);	
	    $qry="SELECT * FROM `kd_product` where Product_description1 like '%".$trimmed."%' order by Product_description1 asc";
		}  
		$results=mysql_query($qry);
		$num_rows= mysql_num_rows($results);			
		$pager = new PS_Pagination($bd, $qry,8,8);
		$results = $pager->paginate();
		?>
        
        
   <div id="log"> </div>    
   
    
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
<td colspan="10">
<input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="clear" value="Clear" id="clear" class="buttons" onclick="return priclr();" />&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/empty.php'"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="view" value="View" class="buttons" onclick="window.location='priceview.php'"/>
</td>
</tr>
</table>   
<?php include("../include/error.php");?>
</form>
</div>
<div class="clearfix"></div>
</div>
<?php include('../include/footer.php'); ?>