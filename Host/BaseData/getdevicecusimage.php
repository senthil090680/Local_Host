<?php
session_start();
ob_start();
require_once "../include/config.php";
require_once "../include/ajax_pagination.php";
if(isset($_GET['logout'])){
	session_destroy();
	header("Location:../index.php");
}
extract($_REQUEST);
$params=$transno."&".$KDCode;

if(isset($_REQUEST[transno]) && $_REQUEST[transno] !='') {
	$nextrecval		=	"WHERE Transaction_Number = '$transno' AND KD_Code = '$KDCode'";	
} else {
	echo "Invalid Query"; exit(0);
}
$where		=	"$nextrecval";

if(isset($_REQUEST) && $_REQUEST !='')
{
	$qry="SELECT * FROM `transaction_hdr` $where";
}
else
{ 
	echo "Invalid Query";
	exit;
}
$results_dsr=mysql_query($qry) or die(mysql_error());
//$pager = new PS_Pagination($bd, $qry,5,5);
//$results = $pager->paginate();
$num_rows= mysql_num_rows($results_dsr) or die(mysql_error());
//$row_dsr= mysql_fetch_array($results_dsr); 



/********************************pagination start***********************************/
$strPage = $_REQUEST[page];
//$params = $_REQUEST[params];

//if($_REQUEST[mode]=="Listing"){
//$Num_Rows = mysql_num_rows ($res_search);

########### pagins

$Per_Page = 3;   // Records Per Page

$Page = $strPage;
if(!$strPage)
{
$Page=1;
}

$Prev_Page = $Page-1;
$Next_Page = $Page+1;

$Page_Start = (($Per_Page*$Page)-$Per_Page);
if($num_rows<=$Per_Page)
{
$Num_Pages =1;
}
else if(($num_rows % $Per_Page)==0)
{
$Num_Pages =($num_rows/$Per_Page) ;
}
else
{
$Num_Pages =($num_rows/$Per_Page)+1;
$Num_Pages = (int)$Num_Pages;
}
//echo $qry;
$qry.="  LIMIT $Page_Start , $Per_Page";
$results_dsr = mysql_query($qry) or die(mysql_error());
/********************************pagination***********************************/

?>
<div class="conitems">
	<table id="sort" class="tablesorter" width="100%">
	<thead>
	<tr>
	<th align="center" colspan="2"><h2>Customer Image</h2></th>
	</tr>
	</thead>
	<tbody>
	<?php
	if(!empty($num_rows)){
	$c=0;$cc=1;$totalval=0;
	while($fetch = mysql_fetch_array($results_dsr)) {
	if($c % 2 == 0){ $cls =""; } else{ $cls =" class='odd'"; }
	$id= $fetch['id'];
	?>
	<tr>
		<td align="center"><img width="300" width="280" src="../../signs/<?php echo $fetch['Shop_Image'];?>" /></td>	
	</tr>
	<?php $c++; $cc++; }		 
	}else{  ?>	
		<tr>
			<td align='center' colspan='1'><b>No records found</b></td>
		</tr>
	<?php } ?>
	</tbody>
	</table>
</div>   
<div class="paginationfile" align="center">
	<table>
		<tr>
			<th class="pagination" scope="col">          
				<?php 				
			if(!empty($num_rows)){									
				/*
				//Display the link to first page: First
				echo $pager->renderFirst()."&nbsp; ";
				//Display the link to previous page: <<
				echo $pager->renderPrev();
				//Display page links: 1 2 3
				echo $pager->renderNav();
				//Display the link to next page: >>
				echo $pager->renderNext()."&nbsp; ";
				//Display the link to last page: Last
				echo $pager->renderLast(); } else{ echo "&nbsp;"; */				
				rend_pag_stock($Num_Pages,$Page,$Prev_Page,$Next_Page,$params);
			}				
			?>      
			</th>
		</tr>
	</table>
</div>
<?php //print_r($row_dsr);
exit(0); ?>