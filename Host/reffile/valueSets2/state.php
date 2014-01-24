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
//Check Uniqueness same data not update
$sel="select * from state where state ='$state' And  province_id='$province_id'"; 
$sel_query=mysql_query($sel);
if(mysql_num_rows($sel_query)=='0') {
//update state master
$sql =("UPDATE state SET 
        state='$state',
		province_id='$province_id'
       	WHERE id = $id");
mysql_query( $sql);
header("location:state.php?no=2");
}
else{
header("location:state.php?no=18");
}
}
}
elseif($_POST['submit']=='Save'){
//Check mandatory field is not empty
if($state==''||$province_id=='')
{
header("location:state.php?no=9");exit;
}
else{
$sel="select * from state where state ='$state' And  province_id='$province_id'"; 
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
		$sql="INSERT INTO `state`(`state`,`province_id`)values('$state','$province_id')";
        mysql_query( $sql);
        header("location:state.php?no=1");
		}
		else {
		header("location:state.php?no=18");
		}
}
 }

$id=$_GET['id'];
$list=mysql_query("select * from  state where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$state = $row['state'];
	$province_id = $row['province_id'];
	} 
?>

<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headings">State</div>
<div id="mytable" align="center">
<form action="" method="post" id="validation">
<table>
  <tr height="50px">
  <td>Province*</td>
     <td>
       <?php 
        include('../include/config.php');
		$list=mysql_query("select * from province"); 
        // Show records by while loop. 
	   // End while loop. 
        ?>
       <select name="province_id">
        <option value="">--- Select ---</option>
		<?php 		
		while($row_list=mysql_fetch_assoc($list)){ 
		?>
        <!--<option value="<?php echo $row_list['province']; ?>" ><? echo $row_list['province']; ?> </option>-->
        <option value="<?php echo $row_list['province']; ?>" <? if($row_list['province']==$province_id){ echo "selected"; } ?>><? echo $row_list['province']; ?></option>
       
        <?php  } ?>
        </select>         
          </td>
           </tr>
       <tr>
    <td class="pclr" width="50">State*</td>
    <td><input type="text" name="state" autocomplete='off' value="<?php echo $state; ?>" size="15" maxlength="20"/></td>
     </tr>      
   <tr align="center" height="100px;">
    <td colspan="10"><input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" name="reset" class="buttons" value="Clear"  id="clear" onclick='return stateClear();'/>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/menu.php'"/></td>
      </tr>
</table>
</form>

</div>
<?php include("../include/error.php");?>
    <div id="search">
    <form action="#" method="get">
    <input type="text" name="state" value="<?php $_GET['state']; ?>" autocomplete='off' placeholder='Search By State'/>
    <input type="submit" name="submit" class="buttonsg" value="GO"/>
    </form>       
    </div> 
<div class="mcf"></div>
<div id="container">
       <?php
	    //Check State is Assigned to Customer
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		$state_sql="select a.*,b.* from customer as a,state as b where a.state='$state' AND b.state='$id'";
		$resProvince=mysql_query($state_sql);
		$cnt=mysql_num_rows($resProvince);
		if($cnt=='1'){
        header("location:state.php?no=24"); 
		  }
		else{
		//Check State is Assigned to DSR
		$statedsr="select a.*,b.* from dsr as a,state as b where a.state='$state' AND b.state='$id'";
		$dsr=mysql_query($statedsr);
		$cnt=mysql_num_rows($dsr);
		if($cnt=='1'){
        header("location:state.php?no=25"); 
		  }
		 } 
		}
		//Delete state and check when is assigned to city
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		$state_sql="select a.*,b.* from city as a,state as b where a.state_id='$id' AND b.id ='$id'";
		$resProvince=mysql_query($state_sql);
		$cnt=mysql_num_rows($resProvince);
		if($cnt=='1'){
        header("location:state.php?no=20&city=ass&id2=$id"); 
		  }
		}
		if($_POST['submit']=='ConfirmDelete'){
	    $id = $_GET['id2'];
		//exit;
		$sql1="select state from state where id='$id';";
		$res_sql=mysql_query($sql1);
		$row1=mysql_fetch_array($res_sql);
		$sta=$row1['state'];
		//Check state_id is equal to stste id field
		$query1="update city set state_id='Undefined' where state_id='$sta'"; 
		mysql_query($query1);
	    //Run the query
        $resultd = mysql_query($query);
	    $query = "DELETE FROM state WHERE id = $id";
		mysql_query($query) or die(mysql_error());
	
        header("location:state.php?no=3");
		}
		?> 
		<?php
		if($_GET['submit']!='')
		{
		$var = @$_GET['state'] ;
        $trimmed = trim($var);
	    $qry="SELECT * FROM `state` where state like '%".$trimmed."%'  order by id asc";
		}
		else
		{ 
        $qry="select * FROM state order by id asc";	
 		}
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,5,5);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="con2">
        <table id="sort" class="tablesorter" align="center" width="100%">
        <thead>
		<tr>
	    <th>Province</th>
       	<th scope="col" class="rounded">State<img src="../images/sort.png" width="13" height="13" /></th>
		<th align="right">Mod/Del</th>
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
		<td><?php echo $fetch['province_id'];?></td>
        <td><?php echo $fetch['state'];?></td>
		<td align="right">
        <a href="state.php?id=<?php echo $fetch['id'];?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="state.php?id=<?php echo $fetch['id'];?>&delID=<?php echo $fetch['state'];?>&id2=<?php echo $fetch['id'];?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
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
<!--   Confirm Delete Box   -->
     <div class="msg" align="center" <?php if($_GET['delID']!=''||$_GET['city']=='ass'){?>style="display:block;"<?php }else{?>style="display:none;"<?php }?>>
     <form action="" method="post">
     <a href="state.php?id2=<?php echo $fetch['id'];?>"><input type="submit" name="submit" id="submit" class="buttonsdel" value="ConfirmDelete" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='state.php'"/>
        </form>
     </div>
   </div>
</div>
<?php include('../include/footer.php'); ?>