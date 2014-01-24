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
//Check Uniqueness same data not updated
$sel="select * from city where city ='$city' And state_id=$state_id";
$sel_query=mysql_query($sel);
        if(mysql_num_rows($sel_query)=='0') {
        $sql =("UPDATE city SET 
        city='$city',
		state_id='$state_id'
	   	WHERE id = '$id'");
		mysql_query( $sql);
header("location:city.php?no=2");
}
else{
header("location:city.php?no=18");
}
}
}
//Insert Data
elseif($_POST['submit']=='Save'){
//Check mandatory field is not empty
if($city=='' || $state_id=='')
{
header("location:city.php?no=9");exit;
}
else{
$sel="select * from city where city ='$city' And  state_id='$state_id'"; 
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
		$sql="INSERT INTO `city`(`city`,`state_id`)values('$city','$state_id')";
		mysql_query( $sql);
        header("location:city.php?no=1");
		}
		else {
		header("location:city.php?no=18");
		}
}
 }
$id=$_GET['id'];
$list=mysql_query("select * from  city where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$city = $row['city'];
	$state_id = $row['state_id'];
	} 

?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headings">City</div>
<div id="mytable" align="center">
<form action="#" method="post" id="validation">
<table>
  <tr height="50px">
  <td>State*</td>
    <td>
       <?php 
        include('../include/config.php');
		$list=mysql_query("select * from state"); 
        // Show records by while loop. 
	   // End while loop. 
        ?>
       <select name="state_id">
        <option value="">--- Select ---</option>
		<?php 		
		while($row_list=mysql_fetch_assoc($list)){ 
		?>
       <option value="<?php echo $row_list['state']; ?>" <? if($row_list['state']==$state_id){ echo "selected"; } ?>><? echo $row_list['state']; ?></option>
       <?php  } ?>
        </select>         
          </td>
           </tr>
       <tr>
    <td class="pclr" width="50">City*</td>
    <td><input type="text" name="city" value="<?php echo $city; ?>"  autocomplete='off' id="city" size="15" maxlength="20"/></td>
     </tr>      
   <tr align="center" height="100px;">
    <td colspan="10"><input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" name="reset" id="reset"  class="buttons" value="Clear" onclick="return cityClear()";/>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/menu.php'"/></td>
      </tr>
</table>
</form>
</div>
<?php include("../include/error.php");?>
<div id="search">
<form action="#" method="get">
<input type="text" name="city" value="<?php $_GET['city']; ?>" autocomplete='off' placeholder='Search By City'/>
<input type="submit" name="submit" class="buttonsg" value="GO"/>
</form>       
</div>  
<div class="mcf"></div>
<div id="container">
      	<?php
		//Delete city and check when is assigned to lga
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		$city_sql="select a.*,b.* from lga as a,city as b where a.city_id='$id' AND b.city='$id'";
		$rescity=mysql_query($city_sql);
		$cnt=mysql_num_rows($rescity);
		if($cnt=='1'){
        header("location:city.php?no=21&lga=ass&id2=$id"); 
		  }
		}
		if($_POST['submit']=='ConfirmDelete'){
	    $id = $_GET['id2'];
		//exit;
		$sql1="select city from city where id='$id';";
		$res_sql=mysql_query($sql1);
		$row1=mysql_fetch_array($res_sql);
		$cit=$row1['city'];
		//Check state_id is equal to state id field
		$query1="update lga set city_id='Undefined' where city_id='$cit'"; 
		mysql_query($query1);
	    //Run the query
        $resultd = mysql_query($query);
	    $query = "DELETE FROM city WHERE id = $id";
		mysql_query($query) or die(mysql_error());
	
        header("location:city.php?no=3");
		}
		
		//Check whether City is assigned to any masters
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		//Check city is Assigned to customer
		$cityc="select a.*,b.* from customer as a,city as b where a.city='$city' AND b.city='$id'";
		$resProvince=mysql_query($cityc);
		$cnt=mysql_num_rows($resProvince);
		if($cnt=='1'){
        header("location:city.php?no=26"); 
		  }
		elseif($_GET['delID']!=''){
		//Check kd_product is Assigned to kd_category
		$cityd="select a.*,b.* from dsr as a,city as b where a.city='$city' AND b.city='$id'";
		$dsr=mysql_query($cityd);
		$cnt=mysql_num_rows($dsr);
		if($cnt=='1'){
        header("location:city.php?no=27"); 
		  }
		else{
		//Check price_master is Assigned to kd_category
	    $citykd="select a.*,b.* from kd as a,city as b where a.city='$city' AND b.city='$id'";
		$dsr=mysql_query($citykd);
		$cnt=mysql_num_rows($dsr);
		if($cnt=='1'){
        header("location:city.php?no=28"); 
		  }
		   }
		 }
		}
	
		?> 
		<?php
		if($_GET['submit']!='')
		{
		$var = @$_GET['city'] ;
        $trimmed = trim($var);	
	    $qry="SELECT * FROM `city` where city like '%".$trimmed."%' order by id asc";
		}
		else
		{
		$qry="SELECT * FROM `city` order by id asc";  
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
        <th>State</th>
		<th class="rounded">City*<img src="../images/sort.png" width="13" height="13" /></th>
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
		<td><?php echo $fetch['state_id'];?></td>
        <td><?php echo $fetch['city'];?></td>
		<td align="right">
        <a href="city.php?id=<?php echo $fetch['id'];?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="city.php?id=<?php echo $fetch['id'];?>&delID=<?php echo $fetch['city'];?>&id2=<?php echo $fetch['id'];?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
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
     <div class="msg" align="center" <?php if($_GET['delID']!=''||$_GET['lga']=='ass'){?>style="display:block;"<?php }else{?>style="display:none;"<?php }?>>
     <form action="" method="post">
     <a href="city.php?id2=<?php echo $fetch['id'];?>"><input type="submit" name="submit" id="submit" class="buttonsdel" value="ConfirmDelete" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='city.php'"/>
        </form>
     </div>       
    </div>
</div>
<?php include('../include/footer.php'); ?>