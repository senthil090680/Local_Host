<?php 
ob_start();
include('../include/config.php');
include "../include/ps_pagination.php";
EXTRACT($_REQUEST);
//Insert Query
//print_r($_REQUEST);
$page=intval($_GET['page']);
if($submit=='Save')
{
			if($kd_category=='')
			{
			//echo "Enter Mandatory Fields";
			header("location:kdProduct.php?no=9"); 
			}
			else
			{				
				echo $cnt=count($_POST['checkbox']);
				/*echo "<pre>";
				print_r($_REQUEST);
				echo "</pre>";
				exit;*/
		        for($j=0;$j<$cnt;$j++){
				
				/*if($_POST['Product_code'][$j] == $_POST['checkbox'][$j]) {
				 echo $_POST['Product_code'][$j]."<br/>";				
				}*/
				echo $checkbox=$_POST['checkbox'][$j];
				$sel1="select * from kd_product where Product_code ='$checkbox' AND kd_category='$kd_category'"; 
				$sel_query1=mysql_query($sel1);
				$row=mysql_num_rows($sel_query1);
				if($row=='0') {
			    $list=mysql_query("select * from  product where Product_code ='$checkbox'");
				$res=mysql_fetch_array($list);
			    $Product_description1=$res['Product_description1'];
				$UOM=$res['UOM1'];
				mysql_query("INSERT INTO kd_product(KD_Code,kd_category,UOM1,Product_code,Product_description1)VALUES('$KD_Code','$kd_category','$UOM','$checkbox','$Product_description1')");
		

				header("location:kdProductCategory.php?no=1&page=$page");
				}
				else
				{
				header("location:kdProduct.php?no=51&page=$page");exit;
				}
		} //for loop 
		exit;
			} //else 
		}
	
?>
<!------------------------------- Form -------------------------------------------------->
<SCRIPT language="javascript">
$(function(){
 
    // add multiple select / deselect functionality
    $("#selectall").click(function () {
          $('.case').attr('checked', this.checked);
    });
 
    // if all checkbox are selected, check the selectall checkbox
    // and viceversa
    $(".case").click(function(){
 
        if($(".case").length == $(".case:checked").length) {
            $("#selectall").attr("checked", "checked");
        } else {
            $("#selectall").removeAttr("checked");
        }
 
    });
});
</SCRIPT>

		<?php
		$qry="SELECT * FROM `product` order by  Product_description1 asc";
		$results=mysql_query($qry);
		$num_rows=mysql_num_rows($results);			
		$pager = new PS_Pagination($bd, $qry,10,10);
		$results = $pager->paginate();
		

		if(!empty($num_rows)){
		$i=1;
		$c=0;$cc=1;
		while($fetch = mysql_fetch_array($results)) {
			
			$qry_kdspecific 		= 	"SELECT * FROM `kd_product` where KD_Code = '$KD_Code'";
			$res_kdspecific 		= 	mysql_query($qry_kdspecific);
			$rowcnt_kdspecific 		= 	mysql_num_rows($res_kdspecific);
			if($rowcnt_kdspecific > 0) {
				while($row_kdspecific		=	mysql_fetch_array($res_kdspecific)) {
					$kdspecific_prod[]	=	$row_kdspecific[Product_code];
				}
			}
			//echo "dere";
			//print_r($kdspecific_prod);
			$kdspecific_prodstr		=	implode(",",$kdspecific_prod);
			//exit;
			
		if($c % 2 == 0){ $cls =""; } else{ $cls ="class='odd'"; }
		?>	
        	
        <table width="100%">
       	<tr>
        <td width="5%"><input type="checkbox" <?php //echo $fetch[Product_code]; echo "_".$kdspecific_prodstr;
		if(strstr($kdspecific_prodstr,$fetch[Product_code])) {
				echo "checked";
		} //else { echo "not"; }
			?> name="checkbox[]" value="<?php echo $fetch['Product_code'];?>" class="case"></td>
        <td width="25%"><input type="hidden" name="Product_code[]" value="<?php echo $fetch['Product_code'];?>"><?php echo $fetch['Product_code'];?></td>
		<td width="30%"><input type="hidden" name="Product_description1[]" value="<?php echo $fetch['Product_description1'];?>"><?php echo $fetch['Product_description1'];?></td>
		<td width="10%"><input type="hidden" name="UOM1[]" value="<?php echo $fetch['UOM1']?>" autocomplete="off" size="20" maxlength="20"><?php echo $fetch['UOM1'];?></td>
		</tr>
        
        
		<?php $i++; $c++; $cc++; }		 
		}else{echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
        </table>
       
      
<?php exit; ?>