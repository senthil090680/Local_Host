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
$page=intval($_GET['page']);
$id=$_REQUEST['id'];
if($_GET['id']!=''){
if($_POST['submit']=='Save'){
        $sql =("UPDATE host_information SET 
        Host_IP='$Host_IP',
		Host_Url='$Host_Url'
	   	WHERE id = 1");
		mysql_query( $sql);
header("location:hostsetup.php?no=2$page=$page");
}
}
//Insert Data
elseif($_POST['submit']=='Save'){ ?>
<form action="" method="post" id="resubmitform">
<input type="hidden" name="Host_IP" value="<?php echo $Host_IP; ?>" />
<input type="hidden" name="Host_Url" value="<?php echo $Host_Url; ?>" />
<input type="hidden" name="no" value="9" />
</form>

<form action="" method="post" id="dataexists">
<input type="hidden" name="Host_IP" value="<?php echo $Host_IP; ?>" />
<input type="hidden" name="Host_Url" value="<?php echo $Host_Url; ?>" />
<input type="hidden" name="no" value="18" />
<input type="hidden" name="page" value="<?php echo $page; ?>" />
</form>

<?php
//Check mandatory field is not empty
if($lga=='' || $city_id=='')
{ ?>
<script type="text/javascript">
document.forms['resubmitform'].submit();
</script>
<?php //header("location:lga.php?no=9");exit;
}
else{
$sel="select * from host_information where Host_Url ='$Host_Url'"; 
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)==0) {
		$sql="INSERT INTO `host_information`(`Host_IP`,`Host_Url`)values('$Host_IP','$Host_Url')";
		mysql_query( $sql);
        header("location:hostsetup.php?no=1$page=$page");
		}
		else { ?>
        <script type="text/javascript">
		document.forms['dataexists'].submit();
		</script> <?php //header("location:lga.php?no=18$page=$page");
		
		}
}
 }

$id=$_GET['id'];
$list=mysql_query("select * from host_information where id='1'"); 
while($row = mysql_fetch_array($list)){ 
	$Host_IP = $row['Host_IP'];
	$Host_Url = $row['Host_Url'];
	
	} 
?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headings">Host Setup</div>
<div id="mytable" align="center">
<form action="" method="post" id="validation">
<table>
 <tr height="60px">
  
  <td>Host IP*</td>
   <td><input type="text" name="Host_IP" value="<?php echo $Host_IP; ?>" id="Host_IP" size="15" autocomplete='off' maxlength="20"/></td></tr>
  <tr>
    <td>Host Url*</td>
     <td><input type="text" name="Host_Url" value="<?php echo $Host_Url; ?>" id="Host_Url" size="15" autocomplete='off' maxlength="30"/></td>
    </tr>
 
   <tr align="center" height="70px;">
    <td colspan="10">
    <input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" name="reset" id="Clear"  class="buttons" value="Clear"/>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/empty.php'"/></td>
      </tr>
</table>
</form>
</div>
<?php include("../include/error.php");?>
<div class="mcf"></div>
<div id="container">
       	<?php
	    $qry="SELECT * FROM `host_information`";  
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,5,5);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="con2">
        <table id="sort" class="tablesorter" align="center" width="100%">
       	<thead>
		<tr>
        <th>HOST IP<img src="../images/sort.png" width="13" height="13" /></th>
		<th class="rounded">Host URL<img src="../images/sort.png" width="13" height="13" /></th>
       	<th align="right">Edit</th>
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
        <td><?php echo $fetch['Host_IP'];?></td>
     	<td><?php echo $fetch['Host_Url'];?></td>
       	<td align="right">
        <a href="hostsetup.php?id=<?php echo $fetch['id'];?>&page=<?php echo intval($_GET['page']);?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
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
     </div>
</div>
<?php include('../include/footer.php'); ?>