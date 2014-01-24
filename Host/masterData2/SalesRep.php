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
$sql=("UPDATE sales_representative SET 
          Salesperson_id= '$Salesperson_id', 
          salesperson_name='$salesperson_name', 
          salesperson_email_id='$salesperson_email_id',
		  salesperson_cont_num='$salesperson_cont_num',
		  DSR_mapped='$DSR_mapped'
		  WHERE id = $id");
 
mysql_query( $sql);
header("location:SalesRep.php?no=2&page=$page");
}
}
elseif($_POST['submit']=='Save'){	
if($salesperson_name=='' || $Salesperson_id==''  || $salesperson_cont_num=='' || $salesperson_email_id=='')
{
header("location:SalesRep.php?no=9");exit;
}
$sel="select * from sales_representative where Salesperson_id ='$Salesperson_id'";
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
		$sql="INSERT INTO `sales_representative`(`Salesperson_id`,`salesperson_name`,`salesperson_email_id`,`salesperson_cont_num`,`DSR_mapped`)
        values('$Salesperson_id','$salesperson_name','$salesperson_email_id', '$salesperson_cont_num','$DSR_mapped')";
		mysql_query( $sql);
        header("location:SalesRep.php?no=1&page=$page");
		}
		else {
		header("location:SalesRep.php?no=18&page=$page");
		}
    }

$id=$_GET['id'];
$list=mysql_query("select * from sales_representative where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$Salesperson_id = $row['Salesperson_id'];
	$salesperson_name = $row['salesperson_name'];
	$salesperson_email_id = $row['salesperson_email_id'];
	$salesperson_cont_num = $row['salesperson_cont_num'];
	$DSR_mapped	=$row['DSR_mapped'];
	}

?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingspr">Sales Personnel</div>
<div id="mytableproduct" align="center">
<form action="" method="post" id="validation">
<table>
    <tr height="30">
    <td class="pclr align" width="100">Name</td>
    <td colspan="10"><input type="text" name="salesperson_name" size="80" value="<?php echo $salesperson_name; ?>" autocomplete='off' maxlength="20" /></td>
    </tr>
    
    <tr height="30">
    <td class="align">Code</td>
    <td><input type="text" name="Salesperson_id" size="10" value="<?php echo $Salesperson_id; ?>"  maxlength="10" autocomplete='off'/></td>
    <td class="align" width="100">Contact Number</td>
    <td><input type="text" name="salesperson_cont_num" size="15" value="<?php echo $salesperson_cont_num; ?>" maxlength="10" autocomplete='off'/>
    </td>     
    </tr>
     
    <tr height="30">
    <td class="align">Email ID</td>
    <td colspan="10" width="100"><input type="text" name="salesperson_email_id" size="80" value="<?php echo $salesperson_email_id; ?>" maxlength="20" autocomplete='off'/>
    </td>
    </tr>
    
    
    <tr height="30">
    <td class="align">DSR Mapped</td>
    <td width="100">
    <select name="DSR_mapped">
    <option value="">---Select----</option>
    <option value="Yes" <?php if ($DSR_mapped==Yes) echo 'selected="selected"';?>>Yes</options>
    <option value="No" <?php if ($DSR_mapped==No) echo 'selected="selected"';?>>No</options>
     </select></td>
    <td><a href="viewDSR.php" class="link" rel="facebox">Show DSR</a></td>
     </tr>

    <tr height="70px"align="center">
    <td colspan="10">
    <input type="submit" name="submit" id="submit" class="buttons" value="Save"/>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" name="reset"  class="buttons" value="Clear" id="clear" onclick="return sr();" />&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/empty.php'"/></td>
    </tr>
</table>
</form>
</div>
<?php include("../include/error.php");?>
 <div id="search">
    <form action="" method="get">
    <input type="text" name="salesperson_name" value="<?php $_GET['salesperson_name']; ?>" autocomplete='off' placeholder="Search By Name"/>
    <input type="submit" name="submit" class="buttonsg" value="Go"/>
    </form>       
    </div>
<div class="mcf"></div>      
<div id="containerpr">
        <?php
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		$cat_sql="select a.*,b.* from dsr as a,sales_representative as b where a.Salesperson_id='$category1' AND b.id='$id'";
		$rescat=mysql_query($cat_sql);
		$cnt=mysql_num_rows($rescat);
		if($cnt=='1'){
        header("location:SalesRep.php?no=49&page=$page"); 
		  }
		}
		if($_GET['delID']!=''){
		$page=intval($_GET['page']);	
		if($_POST['submit']=='ConfirmDelete'){
		$id = $_GET['delID'];
		$query = "DELETE FROM sales_representative WHERE id = $id";
        //Run the query
        $result = mysql_query($query) or die(mysql_error());
        header("location:SalesRep.php?no=3&page=$page");
		}
		 }
		 
		?> 
		<?php
		if($_GET['submit']!=='')
		{
		$var = @$_GET['salesperson_name'] ;
        $trimmed = trim($var);	
	    $qry="SELECT * FROM `sales_representative` where salesperson_name like '%".$trimmed."%' order by salesperson_name asc";
		}
		else
		{ 
	    $qry="SELECT *  FROM `sales_representative` order by salesperson_name asc"; 
		}
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,6,6);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="con">
        <table id="sort" class="tablesorter" width="100%">
		<thead>
		<tr>
		<th class="rounded">Code
		<img src="../images/sort.png" width="13" height="13" /></th>
		<th>Name</th>
		<th>Email ID</th>
		<th>Contact Number</th>
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
		<td><?php echo $fetch['Salesperson_id'];?></td>
		<td><?php echo $fetch['salesperson_name'];?></td>
		<td><?php echo $fetch['salesperson_email_id'];?></td>
		<td><?php echo $fetch['salesperson_cont_num'];?></td>
       	<td align="right" width="100"><a href="SalesRep.php?id=<?php echo $fetch['id'];?>&page=<?php echo intval($_GET['page']) ;?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="SalesRep.php?id=<?php echo $fetch['id'];?>&delID=<?php echo $fetch['id'];?>&page=<?php echo intval($_GET['page']) ;?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
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
      <div class="msg" align="center" <?php if($_GET['delID']!=''){?>style="display:block;"<?php }else{?>style="display:none;"<?php }?>>
    <form action="" method="post">
    <input type="submit" name="submit" id="submit" class="buttonsdel" value="ConfirmDelete" />&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='SalesRep.php'"/>
    </form>
    </div>         
   </div>
</div>
<?php include('../include/footer.php'); ?>