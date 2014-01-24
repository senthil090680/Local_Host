<?php
session_start();
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
if(isset($_GET['logout'])){
session_destroy();
header("Location:../index.php");
}

$result = mysql_query('SELECT startingvalue FROM master_code;');
while($row = mysql_fetch_array($result )){ 
$KD_Id = $row['mastercode'];
}
$user1=($KD_Id )+1;
if($user1>9999){
$zero_cnt =str_repeat("0",strlen($user1));
}
else {$zero_cnt = "0";}
//$KD_Code=$zero_cnt.$user1; 

EXTRACT($_POST);
$id=$_REQUEST['id'];
if($_GET['id']!=''){
if($_POST['submit']=='Save'){
$sel="select * from kd where KD_Name ='$KD_Name'";
$sel_query=mysql_query($sel);
if(mysql_num_rows($sel_query)=='0') {	
$Effective_date=date("Y-m-d",strtotime($Effective_date));	
$sql=("UPDATE kd SET 
          KD_Code= '$KD_Code', 
          KD_Name='$KD_Name', 
          Address_Line_1='$Address_Line_1',
		  Address_Line_2='$Address_Line_2',
		  Address_Line_3='$Address_Line_3',
		  City='$City',
		  Pin='$Pin',
		  Contact_Person='$Contact_Person',
		  Contact_Number='$Contact_Number',
		  Email_ID='$Email_ID',
		  Kd_category='$Kd_category'
		  WHERE id = $id");
mysql_query( $sql);
header("location:kd.php?no=2");
}
else{
header("location:kd.php?no=18");
}
}
}
elseif($_POST['submit']=='Save'){
//Check mandatory field is not empty
if($KD_Code=='' || $KD_Name=='' || $Address_Line_1=='' || $City=='' || $Pin==''|| $Contact_Person==''|| $Contact_Number=='')
{
header("location:kd.php?no=9");exit;
}
	if (strpos($Email_ID, "@")!== false)
		{
			// VALID
			if( !preg_match("/^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,3})$/i", $Email_ID) )
			{
					$Invalid = "Invalid email ID";
					header("location:kd.php?no=11");exit;
			}
   		}
else
{			
$sel="select * from kd where KD_Name ='$KD_Name'";
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
		$Effective_date=date("Y-m-d",strtotime($Effective_date));		
	echo	$sql="INSERT INTO `kd`(`KD_Code`,`KD_Name`, `Address_Line_1`,`Address_Line_2`,`Address_Line_3`,`City`,`Pin`,`Contact_Person`,`Contact_Number`,`Email_ID`,`Kd_category`)
values('$KD_Code','$KD_Name','$Address_Line_1','$Address_Line_2','$Address_Line_3','$City','$Pin','$Contact_Person','$Contact_Number','$Email_ID','$Kd_category')";
mysql_query( $sql);
        header("location:kd.php?no=1");
		}
		else {
		header("location:kd.php?no=18");
		}
   }
}
$id=$_GET['id'];
$list=mysql_query("select * from kd where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$KD_Code = $row['KD_Code'];
	$KD_Name = $row['KD_Name'];
	$Address_Line_1 = $row['Address_Line_1'];
	$Address_Line_2 = $row['Address_Line_2'];
	$Address_Line_3 = $row['Address_Line_3'];
	$City = $row['City'];
	$Pin = $row['Pin'];
	$Contact_Person = $row['Contact_Person'];
	$Contact_Number = $row['Contact_Number'];
	$Email_ID = $row['Email_ID'];
	$Kd_category = $row['Kd_category'];
	}

?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingsgr">Key Distributor</div>
<div id="mytableformgr" align="center">
<form action="" method="post" id="validation">
<table width="50%" align="left">
 <tr>
  <td>
 <fieldset class="alignment">
  <legend><strong>KD</strong></legend>
  <table>
  <tr height="25">
    <td width="110" class="pclr">KD Name*</td>
    <td><input type="text" name="KD_Name" size="30" value="<?php echo $KD_Name; ?>" autocomplete='off' maxlength="20"/></td>
    </tr>
    <tr  height="25">
    <td  width="110">KD Code</td>
    <td><input type="text" name="KD_Code" size="10" value="<?php echo $KD_Code; ?>" autocomplete='off' maxlength="10"/></td>
    </tr>
   </table>
 </fieldset>
 <fieldset class="alignment">
 
 <legend><strong>Contact</strong></legend>
  <table>
  <tr  height="25">
    <td width="110">Contact Person</td>
    <td><input type="text" name="Contact_Person" size="30" value="<?php echo $Contact_Person; ?>" autocomplete='off' maxlength="20"/></td>
    </tr>
    <tr  height="25">
    <td  width="110">Contact Number</td>
    <td><input type="text" name="Contact_Number" size="30" value="<?php echo $Contact_Number; ?>" autocomplete='off' maxlength="10"/></td>
    </tr>
    <tr  height="25">
    <td  width="110">Email ID</td>
    <td><input type="text" name="Email_ID" size="30" value="<?php echo $Email_ID; ?>" autocomplete='off' maxlength="20"/></td>
    </tr>
   </table>
 </fieldset>
</td>
</tr>
</table>

<table width="50%" align="right">
 <tr>
  <td>
 
   <fieldset class="alignment">
  <legend><strong>Address</strong></legend>
  <table>
  <tr height="25">
     <td width="110">Line1</td>
     <td><input type="text" name="Address_Line_1" size="30" value="<?php echo $Address_Line_1; ?>" autocomplete='off' maxlength="20"/></td>
     </tr>
     <tr height="25">
     <td>Line2</td>
      <td><input type="text" name="Address_Line_2" size="30" value="<?php echo $Address_Line_2; ?>" autocomplete='off' maxlength="20"/></td>
      </tr>
      <tr height="25">
      <td>Line3</td>
     <td><input type="text" name="Address_Line_3" size="30" value="<?php echo $Address_Line_3; ?>" autocomplete='off' maxlength="20"/></td>
     </tr>
     <tr  height="25">
     <td>City</td>
     <td>
		<?php 
        include('../include/config.php');
	    $list=mysql_query("select * from city"); 
        // Show records by while loop. 
	    // End while loop. 
        ?>
        <select name="City">
        <option value="">--- Select ---</option>
		<?php 		
		while($row_list=mysql_fetch_assoc($list)){ 
		$id=$row_list['city'];
		?>
        <option value="<?php echo $row_list['city']; ?>" <? if($row_list['city']==$fetch['city']){ echo "selected"; } ?>><? echo $row_list['city']; ?></option>
        <?php  } ?>
        </select>         
          </td>
     <td width="100">PostCode</td>
    <td><input type="text" name="Pin" size="10" value="<?php echo $Pin; ?>" autocomplete='off' maxlength="10"/></td>
  </tr>
   </table>
 </fieldset>
 <fieldset class="alignment">
<legend><strong>Parameter</strong></legend>
  <table>
  <tr height="25">
     <td   width="110">KD Catgory</td>
     <td><select name="kd_Category">
        <option value="">--- Select ---</option>
        <?php 
        include('../include/config.php');
        // Get records from database (table "name_list"). 
        $list=mysql_query("select * from Kd_category"); 
        
        // Show records by while loop. 
        while($row_list=mysql_fetch_assoc($list)){ 
        ?>
        <option value="<? echo $row_list['kd_category']; ?>" <? if($row_list['kd_category']==$kd_category){ echo "selected"; } ?>><? echo $row_list['kd_category']; ?></option>
        <?php 
        // End while loop. 
        } 
        ?>
     </select></td>
    </tr>
   </table>
 </fieldset>
 
</td>
</tr>
</table>
<table width="50%" style="clear:both">
      <tr align="center" height="50px;">
      <td><input type="submit" name="submit" id="submit" class="buttons" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" name="reset" id="Clear"  class="buttons" value="Clear" onclick="return kd()";/>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/menu.php'"/></td>
      </tr>
 </table>     
</form>
</div>
<?php include("../include/error.php");?>
  <div id="search">
        <form action="" method="get">
        <input type="text" name="KD_Name" value="<?php $_GET['KD_Name']; ?>" autocomplete='off' placeholder='Search By Name'/>
        <input type="submit" name="submit" class="buttonsg" value="GO"/>
        </form>       
        </div>
<div class="mcf"></div>        
<div id="containerpr">
	   	 <?php
         //Check whether product is assigned to any masters
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		//Check kd is Assigned to kd product
		$p_sql="select a.*,b.* from kd as a,kd_product as b where a.KD_Code ='$KD_Code' AND b.KD_Code ='$id'";
		$resp=mysql_query($p_sql);
		$cnt=mysql_num_rows($resp);
		if($cnt=='1'){
        header("location:kd.php?no=46"); 
		}
		elseif($_GET['delID']!=''){
		//Check kd is Assigned to dsr
	$ps_sql="select c.*,d.* from kd as c,dsr as d where c.KD_Code='$KD_Code' AND d.KD_Code='$id'";
		$resps=mysql_query($ps_sql);
		$pnt=mysql_num_rows($resps);
		if($pnt=='1'){
        header("location:kd.php?no=47"); 
		  }
		//else{
	   //Check kd is Assigned to device
 //$pm_sql="select e.*,f.* from kd as e, dsr as f where e.KD_Code='$KD_Code' AND f.KD_Code='$id'";
		//$respm=mysql_query($pm_sql);
		//$snt=mysql_num_rows($respm);
		//if($snt=='1'){
       // header("location:kd.php?no=48"); 
		//  }
		 //  }
		 }
		}
		
		?> 
        <?php
		if($_GET['id']!=''){
		if($_POST['submit']=='ConfirmDelete'){
		$id = $_GET['id'];
		$query = "DELETE FROM `kd` WHERE id = $id";
        //Run the query
        $result = mysql_query($query) or die(mysql_error());
        header("location:kd.php?no=3");
		}
		 }
		 ?>
		<?php
		if($_GET['submit']!='')
		{
		$var = @$_GET['KD_Name'] ;
        $trimmed = trim($var);	
	    $qry="SELECT * FROM `kd` where KD_Name like '%".$trimmed."%' order by id asc";
		}
		else
		{ 
		$qry="SELECT *  FROM `kd` order by id asc"; 
		}
		$results=mysql_query($qry);
		$pager = new PS_Pagination($bd, $qry,5,5);
		$results = $pager->paginate();
		$num_rows= mysql_num_rows($results);			
		?>
        <div class="con">
        <table id="sort" class="tablesorter" width="100%">
		<thead>
		<tr>
		<th class="rounded">KD Name<img src="../images/sort.png" width="13" height="13" /></th>
		<th>Contact Person</th>
        <th>Contact Number</th>
        <th>KD Category</th>
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
      	<td><?php echo $fetch['KD_Name'];?></td>
	    <td><?php echo $fetch['Contact_Person'];?></td>
        <td><?php echo $fetch['Contact_Number'];?></td>
        <td><?php echo $fetch['Kd_category'];?></td>
       	<td align="right"><a href="kd.php?id=<?php echo $fetch['id'];?>" class="popup"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="kd.php?id=<?php echo $fetch['id'];?>&delID=<?php echo $fetch['KD_Code'];?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
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
<input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='kd.php'"/>
</form>
</div>    
   </div>
</div>
<?php include('../include/footer.php'); ?>