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
$sql=("UPDATE  province SET 
       province='$province'
       WHERE id =$id"); 
     
mysql_query( $sql);
header("location:province.php?no=2&page=$page");
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
        header("location:province.php?no=1&page=$page");
		}
		else {
		header("location:province.php?no=18&page=$page");
		}
}		
}
$id=$_GET['id'];
$list=mysql_query("select * from  province where id='$id'"); 
while($row = mysql_fetch_array($list)){ 
	$province = $row['province'];
	} 

?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headings">Zone</div>
<div id="mytable" align="center">
<form action="" method="post" id="validation">
<table>
  <tr height="60px">
     <td class="pclr" width="100">Zone*</td>
     <td><input type="text" name="province" value="<?php echo $province; ?>" id="province" maxlength="20" autocomplete='off'/></td>
   </tr>
   <tr align="center" height="130px;">
       <td colspan="10">
       <input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="reset" name="reset" class="buttons" value="Clear" id="clear" onclick="return provinceClear();"/>&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/empty.php'"/>
       </td>
      </tr>
</table>
</form>
</div>
<div id="box">
<?php include("../include/error.php");?>
</div>
    <div id="search">
    <form action="" method="get" autocomplete='off'>
    <input type="text" name="province" value="<?php $_GET['province']; ?>" autocomplete='off' placeholder='Search By Zone'/>
    <input type="submit" name="submit" class="buttonsg" value="GO"/>
    </form>       
    </div>
<div class="mcf"></div>
<div id="container">
	   	<?php
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		$cus_sql="select a.*,b.* from customer as a,province as b where a.province='$province' AND b.province='$id'";
		$resProvince=mysql_query($cus_sql);
		$cnt=mysql_num_rows($resProvince);
		if($cnt=='1'){
        header("location:province.php?no=23&page=$page"); 
		  }
		}
	    //Check Province is assigned to state	
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		$id1 = $_GET['id'];
		$state_sql="select a.*,b.* from state as a,province as b where a.province_id='$id' AND b.province='$id'";
		$resProvince=mysql_query($state_sql);
		$cnt=mysql_num_rows($resProvince);
		if($cnt=='1'){
	     header("location:province.php?no=19&sta=ass&id=$id1&page=$page"); 
	    }
    	}	
		if($_POST['submit']=='ConfirmDelete'){
		$query1 =mysql_query("DELETE FROM province WHERE province ='$province'");
		$query=mysql_query("update state set province_id='Undefined' where province_id='$province'"); 
		header("location:province.php?no=3&page=$page");
		}
		?>  
        
        
		<?php
		if($_GET['submit']!=='')
		{
		$var = @$_GET['province'] ;
        $trimmed = trim($var);		
	    $qry="SELECT * FROM `province` where province like '%".$trimmed."%' order by  province asc";
		}
		else
		{ 
    	$qry="SELECT * FROM `province` order by province asc";  
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
		<th class="rounded">Zone<img src="../images/sort.png" width="13" height="13" /></th>
		<th align="right">Edit</th>
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
		<a href="province.php?id=<?php echo $fetch['id'];?>&page=<?php echo intval($_GET['page']) ;?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>
       <!-- <a href="province.php?id=<?php echo $fetch['id'];?>&delID=<?php echo $fetch['province'];?>&page=<?php echo intval($_GET['page']) ;?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>-->
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
    <a href="province.php?delID=<?php echo $_GET['delID'];?>"><input type="submit" name="submit" id="submit" class="buttonsdel" value="ConfirmDelete" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='province.php'"/>
    </form>
     </div>
</div>
</div>
<?php include('../include/footer.php'); ?>
