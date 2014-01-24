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
if($_GET['id']!=''){
if($_POST['submit']=='Save'){
$sel="select * from province where province ='$province'";
$sel_query=mysql_query($sel);
if(mysql_num_rows($sel_query)=='0') {
$sql=("UPDATE  province SET 
       province='$province'
       WHERE id =$id");
mysql_query( $sql);
header("location:province.php?no=2");
}
else{
header("location:province.php?no=18");
}
}
}

elseif($_POST['submit']=='Save'){
if($province=='')
{
header("location:province.php?no=9");exit;
}
else{
$sel="select * from province where province ='$province'";
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
		$sql="INSERT INTO `province`(`province`)values('$province')";
        mysql_query( $sql);
        header("location:province.php?no=1");
		}
		else {
		header("location:province.php?no=18");
		}
}		
}
$id=$_GET['id'];
$list=mysql_query("select * from  province where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$province = $row['province'];
	} 

?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headings">Province</div>
<div id="mytable" align="center">
<form action="" method="post" id="validation">
<table>
  <tr height="60px">
     <td class="pclr" width="100">Province*</td>
     <td><input type="text" name="province" value="<?php  if($_GET['id']!=''){ echo $province;}?>" id="province" maxlength="20" autocomplete='off'/></td>
   </tr>
   <tr align="center" height="130px;">
       <td colspan="10">
       <input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="reset" name="reset" id="reset"  class="buttons" value="Clear" id="clear" onclick="return provinceClear()";/>&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/menu.php'"/>
       </td>
      </tr>
</table>
</form>
</div>
<?php include("../include/error.php");?>
    <div id="search">
    <form action="" method="get" autocomplete='off'>
    <input type="text" name="province" value="<?php $_GET['province']; ?>" autocomplete='off' placeholder='Search By Province'/>
    <input type="submit" name="submit" class="buttonsg" value="GO"/>
    </form>       
    </div>
<div class="mcf"></div>
<div id="container">
	   	<?php
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		$state_sql="select a.*,b.* from customer as a,province as b where a.province='$province' AND b.province='$id'";
		$resProvince=mysql_query($state_sql);
		$cnt=mysql_num_rows($resProvince);
		if($cnt=='1'){
        header("location:province.php?no=23"); 
		  }
		}
		
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		$state_sql="select a.*,b.* from state as a,province as b where a.province_id='$id' AND b.province='$id'";
		$resProvince=mysql_query($state_sql);
		$cnt=mysql_num_rows($resProvince);
		if($cnt=='1'){
	     header("location:province.php?no=19&sta=ass&id2=$id"); 
		  }
		  
		}
		if($_POST['submit']=='ConfirmDelete'){
	    $id = $_GET['id2'];
		//exit;
		$sql1="select province from province where  id='$id';";
		$res_sql=mysql_query($sql1);
		$row1=mysql_fetch_array($res_sql);
		$pro=$row1['province'];
		$query1="update state set province_id='Undefined' where province_id='$pro'"; 
		mysql_query($query1);
	    //Run the query
        $resultd = mysql_query($query);
	    $query = "DELETE FROM province WHERE id = $id";
		mysql_query($query) or die(mysql_error());
	
        header("location:province.php?no=3");
		}
	
		?>  
		<?php
		if($_GET['submit']!=='')
		{
		$var = @$_GET['province'] ;
        $trimmed = trim($var);		
	    $qry="SELECT * FROM `province` where province like '%".$trimmed."%' order by id asc";
		}
		else
		{ 
    	$qry="SELECT * FROM `province` where Status!='undefined' order by id asc";  
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
		<th class="rounded">Province <input type="hidden" name="provinceID" value="<?php echo $cnt;?>" class="provinceID"><img src="../images/sort.png" width="13" height="13" /></th>
		<th align="right">Mod/Del</th>
		</tr>
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
		<td><?php echo $fetch['province'];?></td>
		<td align="right">
		<a href="province.php?id=<?php echo $fetch['id'];?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="province.php?id=<?php echo $fetch['id'];?>&delID=<?php echo $fetch['province'];?>&id2=<?php echo $fetch['id'];?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
        </td>
        </tr>
		<?php $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
		</table>
        </div>
        <div class="paginationfile" align="center">
        <table align="center">
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
   <div class="msg" align="center" <?php if($_GET['delID']!=''|| $_GET['sta']=='ass'){?>style="display:block;"<?php }else{?>style="display:none;"<?php }?>>
     <form action="" method="post">
     <a href="province.php?id2=<?php echo $fetch['id'];?>"><input type="submit" name="submit" id="submit" class="buttonsdel" value="ConfirmDelete" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='province.php'"/>
        </form>
     </div>
</div>
</div>
<?php include('../include/footer.php'); ?>