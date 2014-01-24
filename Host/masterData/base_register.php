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
$sql=("UPDATE base_information SET 
          KD_Code= '$KD_Code', 
          KD_Name='$KD_Name', 
          Base_IP='$Base_IP',
		  Base_Url='$Base_Url'
		  WHERE id = '$id'");
mysql_query( $sql);
header("location:base_register.php?no=2&page=$page");
}
}
elseif($_POST['submit']=='Save'){?>
<form action="" method="post" id="resubmitform">
<input type="hidden" name="KD_Code" value="<?php echo $KD_Code; ?>" />
<input type="hidden" name="KD_Name" value="<?php echo $KD_Name; ?>" />
<input type="hidden" name="Base_IP" value="<?php echo $Base_IP; ?>" />
<input type="hidden" name="Base_Url" value="<?php echo $Base_Url; ?>" />
<input type="hidden" name="no" value="9" />
 
</form>
<form action="" method="post" id="dataexists">
<input type="hidden" name="KD_Code" value="<?php echo $KD_Code; ?>" />
<input type="hidden" name="KD_Name" value="<?php echo $KD_Name; ?>" />
<input type="hidden" name="Base_IP" value="<?php echo $Base_IP; ?>" />
<input type="hidden" name="Base_Url" value="<?php echo $Base_Url; ?>" />
<input type="hidden" name="no" value="18" />
<input type="hidden" name="page" value="<?php echo $page; ?>" />
</form>
<?php
	
if($KD_Name=='' || $KD_Code==''  || $Base_IP=='' || $Base_Url=='')
{?>
<script type="text/javascript">
document.forms['resubmitform'].submit();
</script>
<?php }
else{
$sql="INSERT INTO `base_information`(`KD_Code`,`KD_Name`, `Base_IP`,`Base_Url`)
values('$KD_Code','$KD_Name','$Base_IP','$Base_Url')";
mysql_query( $sql);
        header("location:base_register.php?no=1&page=$page");
		}?>
		<script type="text/javascript">
		document.forms['dataexists'].submit();
		</script>
		
  <?php  }
   
$id=$_GET['id'];
$list=mysql_query("select * from base_information where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$KD_Code = $row['KD_Code'];
	$KD_Name = $row['KD_Name'];
	$Base_IP = $row['Base_IP'];
	$Base_Url = $row['Base_Url'];
  }
?>


<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingsc">Base Information</div>
<div id="mytablescheme">
<form action="	" method="post" id="validation">
<table>
    <tr height="30px">
    <td class="pclr align">KD Code*</td>
    <td class="align">
         <select name="KD_Code" id="KD_Code" onchange="return kdselect()">
        <option value="">--- Select ---</option>
        <?php 
        // Get records from database (table "name_list"). 
        $list=mysql_query("select * from  kd  order by  KD_Code  asc"); 
        
        // Show records by while loop. 
        while($row_list=mysql_fetch_assoc($list)){ 
        ?>
        <option value="<? echo $row_list['KD_Code']; ?>" <? if($row_list['KD_Code']==$KD_Code){ echo "selected"; } ?>><? echo $row_list['KD_Code']; ?></option>
        <?php 
        // End while loop. 
        } 
        ?>
        </select>
      </td>
      <td class="align">KD Name</td>
      <td class="align"><input type="text"  name="KD_Name"  id="KD_Name" size="30" value="<?php echo $KD_Name; ?>" autocomplete='off'/></td>  
      </tr>
    
     <tr  height="30px;">
     <td class="align">IP*</td>
     <td class="align"><input type="text" name="Base_IP"  size="10" value="<?php echo $Base_IP; ?>"  autocomplete="off" /></td>



     <td class="align">URL*</td>
    <td  class="align"><input type="text" name="Base_Url"  size="30" value="<?php echo $Base_Url; ?>"  autocomplete="off" /></td>
    </tr>
    
     
    <tr height="50px;" align="center">
        <td colspan="10">
     <input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="reset" name="reset"  class="buttons" value="Clear" id="clear" onclick="return baseinfclr();" />&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/empty.php'"/></td> 
           
    </tr>
</table>
</form>
</div>
<?php include("../include/error.php");?>
<div class="mcf"></div>        
<div id="container">
	     <?php
		if($_GET['delID']!=''){
		if($_POST['submit']=='ConfirmDelete'){
		$id = $_GET['delID'];
		$query = "DELETE FROM `scheme_master` WHERE id = $id";
        //Run the query
        $result = mysql_query($query) or die(mysql_error());
        header("location:scheme.php?no=3&page=$page");
		}
		 }
		?> 
		<?php
		$qry="SELECT * FROM `base_information` order by KD_Name asc";
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd,$qry,4,4);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="con">
        <table id="sort" class="tablesorter" width="100%">
		<thead>
		<tr>
		<th class="rounded">KD Code<img src="../images/sort.png" width="13" height="13" /></th>
		<th>KD Name</th>
        <th>IP Address</th>
        <th>URL</th>
      	<th align="right">Mod</th>
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
		<td><?php echo $fetch['KD_Code'];?></td>
		<td><?php echo $fetch['KD_Name'];?></td>
        <td><?php echo $fetch['Base_IP'];?></td>
        <td><?php echo $fetch['Base_Url'];?></td>
       	<td align="right">
        <a href="base_register.php?id=<?php echo $fetch['id'];?>&page=<?php echo intval($_GET['page']);?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
         </td>
        </tr>
		<?php $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td><td style='display:none' align='center' colspan='13'><b>No records found</b></td><td style='display:none' align='center' colspan='13'><b>No records found</b></td><td style='display:none' align='center' colspan='13'><b>No records found</b></td><td style='display:none' align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
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
   </div>
</div>
<?php include('../include/footer.php'); ?>