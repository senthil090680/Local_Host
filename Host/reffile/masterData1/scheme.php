<?php
session_start();
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
if(isset($_GET['logout'])){
session_destroy();
header("Location:../index.php");
}


$string = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
$code = "";
for($i=0; $i<5; $i++){
$y = rand(0,strlen($string)-1);
$Scheme_code .= $string[$y];
}
//echo $Scheme_code;


EXTRACT($_POST);
$id=$_REQUEST['id'];
if($_GET['id']!=''){
if($_POST['submit']=='Save'){
$sel="select * from scheme_master where Scheme_code ='$Scheme_code'";
$sel_query=mysql_query($sel);
if(mysql_num_rows($sel_query)=='0') {
$Effective_from=date("Y-m-d",strtotime($Effective_from));	
$Effective_to=date("Y-m-d",strtotime($Effective_to));	
$sql = ("UPDATE scheme_master SET 
          Scheme_code= '$Scheme_code', 
          Scheme_Description='$Scheme_Description', 
		  Effective_from='$Effective_from',
          Effective_to='$Effective_to'
		  WHERE id = $id");
mysql_query( $sql);
header("location:scheme.php?no=2");
}
else{
header("location:scheme.php?no=18");
}
}
}
elseif($_POST['submit']=='Save'){
//Check mandatory field is not empty
if($Scheme_code=='' || $Scheme_Description=='' || $Effective_from=='' || $Effective_to=='')
{
header("location:scheme.php?no=9");exit;
}
$sel="select * from scheme_master where Scheme_code ='$Scheme_code'";
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
		$Effective_from=date("Y-m-d",strtotime($Effective_from));	
        $Effective_to=date("Y-m-d",strtotime($Effective_to));			
		$sql="INSERT INTO `scheme_master`(`Scheme_code`,`Scheme_Description`,`Effective_from`,`Effective_to`)
		values('$Scheme_code','$Scheme_Description','$Effective_from','$Effective_to')";
		mysql_query( $sql);
		header("location:scheme.php?no=1");
		}
		else {
		header("location:scheme.php?no=18");
		}
}
$id=$_GET['id'];
$list=mysql_query("select * from scheme_master where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$Scheme_code = $row['Scheme_code'];
	$Scheme_Description = $row['Scheme_Description'];
	$Effective_from = $row['Effective_from'];
	$Effective_to = $row['Effective_to'];
	} 

?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingsc">Scheme</div>
<div id="mytablescheme">
<form action="	" method="post" id="validation">
<table>
    <tr height="30px">
    <td class="pclr align">Scheme*</td>
    <td colspan="4"><input type="text"  name="Scheme_Description" id="Scheme_Description" size="60" value="<?php echo $Scheme_Description; ?>"/></td>
     </tr>
   
    <tr  height="30px;">
    <td class="align">Scheme Code</td>
    <td><input type="text"  name="Scheme_code" size="10" value="<?php echo $Scheme_code; ?>"/></td>  
    <td class="align">Effective From*</td>
    <td><input type="text" name="Effective_from"  class="datepicker" size="10" value="<?php if($_REQUEST['id']!=''){ echo date("d-m-Y",strtotime($Effective_from));}?>"  autocomplete="off" /></td>
      </tr>
    
 <tr  height="30px;">
 <td class="align"></td>
 <td></td>
 <td class="align">Effective To*</td>
    <td><input type="text" name="Effective_to"  class="datepicker" size="10" value="<?php if($_REQUEST['id']!=''){ echo date("d-m-Y",strtotime($Effective_to));}?>"  autocomplete="off" /></td>
     </tr>
    
     
    <tr height="50px;" align="center">
        <td colspan="10">
      <input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" name="reset"  class="buttons" value="Clear" id="clear" onclick="return sch();" />&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/menu.php'"/></td> 
           
    </tr>
</table>
</form>
</div>
<?php include("../include/error.php");?>
  <div id="search">
        <form action="" method="get">
        <input type="text" name="Scheme_code" value="<?php $_GET['Scheme_code']; ?>" autocomplete='off' placeholder='Search By Scheme'/>
        <input type="submit" name="submit" class="buttonsg" value="Go"/>
        </form>       
        </div>
<div class="mcf"></div>        
<div id="container">
	     <?php
		if($_GET['delID']!=''){
		if($_POST['submit']=='ConfirmDelete'){
		$id = $_GET['delID'];
		$query = "DELETE FROM `scheme_master` WHERE id = $id";
        //Run the query
        $result = mysql_query($query) or die(mysql_error());
        header("location:scheme.php?no=3");
		}
		 }
		?> 
		<?php
		if($_GET['submit']!=='')
		{
		$var = @$_GET['Scheme_code'] ;
        $trimmed = trim($var);	
	    $qry="SELECT * FROM `scheme_master` where Scheme_code like '%".$trimmed."%' order by id asc";
		}
		else
		{ 
		$qry="SELECT * FROM `scheme_master` order by id asc";
		}
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd,$qry,4,4);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="con">
        <table id="sort" class="tablesorter" width="100%">
		<thead>
		<tr>
		<th class="rounded">Scheme Code<img src="../images/sort.png" width="13" height="13" /></th>
		<th>Scheme Description</th>
        <th>Effective From</th>
        <th>Effective From</th>
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
		<td><?php echo $fetch['Scheme_code'];?></td>
		<td><?php echo $fetch['Scheme_Description'];?></td>
        <td><?php echo $fetch['Effective_from'];?></td>
        <td><?php echo $fetch['Effective_to'];?></td>
       	<td align="right">
        <a href="scheme.php?id=<?php echo $fetch['id'];?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="scheme.php?id=<?php echo $fetch['id'];?>&delID=<?php echo $fetch['id'];?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
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
    <div class="msg" align="center" <?php if($_GET['delID']!=''){?>style="display:block;"<?php }else{?>style="display:none;"<?php }?>>
    <form action="" method="post">
    <input type="submit" name="submit" id="submit" class="buttonsdel" value="ConfirmDelete" />&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='scheme.php'"/>
    </form>
    </div>         
   </div>
</div>
<?php include('../include/footer.php'); ?>