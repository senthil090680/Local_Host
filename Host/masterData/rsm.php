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
$page=intval($_REQUEST['page']);
$id=$_REQUEST['id'];
if($_GET['id']!=''){
if($_POST['submit']=='Save'){
$sql=("UPDATE rsm_sp SET 
          KD_Code= '$KD_Code', 
          KD_Name='$KD_Name', 
          DSR_Code='$DSR_Code',
		  DSRName='$DSRName',
		  Contact_Number='$Contact_Number',
		  email_id='$email_id'
		  WHERE id = '$id'");
 
mysql_query( $sql);
header("location:rsm.php?no=2&page=$page");
}
}
elseif($_POST['submit']=='Save'){?>
<form action="" method="post" id="resubmitform">
<input type="hidden" name="KD_Code" value="<?php echo $KD_Code; ?>" />
<input type="hidden" name="KD_Name" value="<?php echo $KD_Name; ?>" />
<input type="hidden" name="DSR_Code" value="<?php echo $DSR_Code; ?>" />
<input type="hidden" name="DSRName" value="<?php echo $DSRName; ?>" />
<input type="hidden" name="Contact_Number" value="<?php echo $Contact_Number; ?>" />
<input type="hidden" name="email_id" value="<?php echo $email_id; ?>" />
<input type="hidden" name="no" value="9" />
 
</form>
<form action="" method="post" id="dataexists">
<input type="hidden" name="KD_Code" value="<?php echo $KD_Code; ?>" />
<input type="hidden" name="KD_Name" value="<?php echo $KD_Name; ?>" />
<input type="hidden" name="DSR_Code" value="<?php echo $DSR_Code; ?>" />
<input type="hidden" name="DSRName" value="<?php echo $DSRName; ?>" />
<input type="hidden" name="Contact_Number" value="<?php echo $Contact_Number; ?>" />
<input type="hidden" name="email_id" value="<?php echo $email_id; ?>" />
<input type="hidden" name="no" value="18" />
<input type="hidden" name="page" value="<?php echo $page; ?>" />
</form>

<form action="" method="post" id="email">
<input type="hidden" name="KD_Code" value="<?php echo $KD_Code; ?>" />
<input type="hidden" name="KD_Name" value="<?php echo $KD_Name; ?>" />
<input type="hidden" name="DSR_Code" value="<?php echo $DSR_Code; ?>" />
<input type="hidden" name="DSRName" value="<?php echo $DSRName; ?>" />
<input type="hidden" name="Contact_Number" value="<?php echo $Contact_Number; ?>" />
<input type="hidden" name="email_id" value="<?php echo $email_id; ?>" />
<input type="hidden" name="no" value="11" />
<input type="hidden" name="page" value="<?php echo $page; ?>" />
</form>

<?php	
if($KD_Name=='' || $DSRName==''  || $Contact_Number=='')
{?>

<script type="text/javascript">
document.forms['resubmitform'].submit();
</script>

<?php //header("location:SalesRep.php?no=9");exit;
}

else if(!filter_var($email_id, FILTER_VALIDATE_EMAIL))
{?>

<script type="text/javascript">
document.forms['email'].submit();
</script>

<?php //header("location:DSRName.php?no=11&page=$page");
}
else{
$sel="select * from rsm_sp where DSR_Code ='$DSR_Code'";
$sel_query=mysql_query($sel);
		if(mysql_num_rows($sel_query)=='0') {
        $sql="INSERT INTO `rsm_sp`(`KD_Code`,`KD_Name`,`DSR_Code`,`DSRName`,`Contact_Number`,`email_id`)
        values('$KD_Code','$KD_Name','$DSR_Code', '$DSRName','$Contact_Number','$email_id')";
		mysql_query( $sql);
	    header("location:rsm.php?no=1&page=$page");
		}
		else {?>
        <script type="text/javascript">
		document.forms['dataexists'].submit();
		</script>
        <?php
		//header("location:SalesRep.php?no=18&page=$page");
		}
    }

}
$id=$_GET['id'];
$list=mysql_query("select * from rsm_sp where id= '$id'"); 
while($row = mysql_fetch_array($list)){ 
	$KD_Code = $row['KD_Code'];
	$KD_Name = $row['KD_Name'];
	$DSR_Code = $row['DSR_Code'];
	$DSRName = $row['DSRName'];
	$Contact_Number	=$row['Contact_Number'];
	$email_id	=$row['email_id'];
	}

?>
<!------------------------------- Form -------------------------------------------------->
<script type="text/javascript">
function kdcode()
{
	var val=$('#KD_Name option:selected').text();
	 $.ajax({
            url: 'get_rsmkdname.php?val=' + val,
            success: function(data) {
				//alert(data);
				var value=$.trim(data);//To Remove White Space in string
				var value1=data.substring(0,value.length-1);//To return part of the string
				var list= value1.split("|"); 
				for (var i=0; i<list.length; i++) {
					var arr_i= list[i].split("^");
					//alert(arr_i[6]);
					//$("#kd_category").val(arr_i[0]);
					$("#KD_Code").val(arr_i[0]);
					selectcheck(arr_i[0]);
					
			}

			}
        });
}

</script>

<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingspr"  style="padding-right:10px;">RSM</div>
<div id="mytableproduct" align="center" style="padding-right:10px;">
<div class="mcf"></div>
<form action="" method="post">
<table>
    <tr>
    <td class="align">KD Name</td>
     <td>
		<?php 
        $list=mysql_query("select * from kd order by KD_Name  asc"); 
        ?>
        <select name="KD_Name" id="KD_Name" onChange="return kdcode();">
        <option value="">--- Select ---</option>
		<?php 		
		while($row_list=mysql_fetch_assoc($list)){ 
		$id=$row_list['KD_Name'];
		?>
        <option value="<?php echo $row_list['id']; ?>" <? if($row_list['id']==$KD_Name){ echo "selected"; } ?>><? echo $row_list['KD_Name']; ?></option>
        <?php  } ?>
        </select>         
          </td>
         <td class="align"></td>
         <td><input type="hidden" name="KD_Code" size="10" id="KD_Code" value="<?php echo $KD_Code; ?>" autocomplete='off' maxlength="10"/></td>
          
    </tr>      

    <tr height="30">
    <td class="pclr align" width="100">Name*</td>
    <td colspan="10"><input type="text" name="DSRName" size="80" value="<?php echo $DSRName; ?>" autocomplete='off' maxlength="20" /></td>
    </tr>
    
    <tr height="30">
    <td class="align" style="text-transform:uppercase">Code</td>
    	<?php
		 if(!isset($_GET[id]) && $_GET[id] == '') {
			$srid					=	"SELECT DSR_Code FROM rsm_sp ORDER BY id DESC";			
			$srold					=	mysql_query($srid) or die(mysql_error());
			$srcnt					=	mysql_num_rows($srold);
			//$srcnt					=	0; // comment if live
			if($srcnt > 0) {
				$row_sr					  =	 mysql_fetch_array($srold);
				$srnumber	  =	$row_sr['DSR_Code'];

				$getsrno						=	abs(str_replace("RSM",'',strstr($srnumber,"RSM")));
				$getsrno++;
				if($getsrno < 10) {
					$createdcode	=	"00".$getsrno;
				} else if($getsrno < 100) {
					$createdcode	=	"0".$getsrno;
				} else {
					$createdcode	=	$getsrno;
				}

				$DSR_Code				=	"RSM".$createdcode;
			} else {
				$DSR_Code				=	"RSM001";
			}
		}
	?>
    <td><input type="text" name="DSR_Code" size="10" value="<?php echo $DSR_Code; ?>"  maxlength="10" autocomplete='off'/></td>
    
    <td class="align" width="100">Contact Number</td>
    <td><input type="text" name="Contact_Number" size="15" value="<?php echo $Contact_Number; ?>" maxlength="10" autocomplete='off'/>
    </td>     
    </tr>
     
    <tr height="30">
    <td class="align">Email ID</td>
    <td colspan="10" width="100"><input type="text" name="email_id" size="80" value="<?php echo $email_id; ?>" maxlength="20" autocomplete='off'/>
    </td>
    </tr>

    <tr height="70px"align="center">
    <td colspan="10">
    <input type="submit" name="submit" id="submit" class="buttons" value="Save"/>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" name="reset"  class="buttons" value="Clear" id="clear" onclick="window.location='DSRName.php'" />&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='../include/empty.php'"/></td>
    </tr>
</table>
</form>
</div>
<div class="mcf"></div> 
<?php include("../include/error.php");?>
 <div id="search">
    <form action="" method="get">
    <input type="text" name="DSRName" value="<?php $_GET['DSRName']; ?>" autocomplete='off' placeholder="Search By Name"/>
    <input type="submit" name="submit" class="buttonsg" value="Go"/>
    </form>       
    </div>
<div class="mcf"></div>      
<div id="containerpr">
        <?php
		if($_GET['delID']!=''){
	    $id = $_GET['delID'];
		$cat_sql="select a.*,b.* from asm_sp as a,rsm_sp as b where a.Salesperson_id='$category1' AND b.id='$id'";
		$rescat=mysql_query($cat_sql);
		$cnt=mysql_num_rows($rescat);
		if($cnt=='1'){
        header("location:rsm.php?no=49&page=$page"); 
		  }
		}
		if($_GET['delID']!=''){
		$page=intval($_GET['page']);	
		if($_POST['submit']=='ConfirmDelete'){
		$id = $_GET['delID'];
		$query = "DELETE FROM rsm_sp WHERE id = $id";
        //Run the query
        $result = mysql_query($query) or die(mysql_error());
        header("location:rsm.php?no=3&page=$page");
		}
		 }
		 
		?> 
		<?php
		if($_GET['submit']!=='')
		{
		$var = @$_GET['DSRName'] ;
        $trimmed = trim($var);	
	    $qry="SELECT * FROM `rsm_sp` where DSRName like '%".$trimmed."%' order by DSRName asc";
		}
		else
		{ 
	    $qry="SELECT *  FROM `rsm_sp` order by DSRName asc"; 
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
        <th class="rounded">KD Name</th>
		<th class="rounded">Code
		<img src="../images/sort.png" width="13" height="13" /></th>
		<th>Name</th>
		<th>Email ID</th>
		<th>Contact Number</th>
        <th align="right">Edit/Del</th>
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
		$KD_Name=$fetch['KD_Name'];
		?>
		<tr>
        <td><?php 
		$kdname=mysql_query("select * from kd where id= '$KD_Name'"); 
        $row=mysql_fetch_array($kdname);
        $kdid=$row['id'];
		$kdn=$row['KD_Name'];
		if($KD_Name = $kdn){echo $kdn;}?>
    	</td>
		<td><?php echo $fetch['DSR_Code'];?></td>
		<td><?php echo $fetch['DSRName'];?></td>
		<td><?php echo $fetch['email_id'];?></td>
		<td><?php echo $fetch['Contact_Number'];?></td>
       	<td align="right" width="100"><a href="rsm.php?id=<?php echo $fetch['id'];?>&page=<?php echo intval($_GET['page']) ;?>"><img src="../images/user_edit.png" alt="" title="" width="11" height="11"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="rsm.php?id=<?php echo $fetch['id'];?>&delID=<?php echo $fetch['id'];?>&page=<?php echo intval($_GET['page']) ;?>"><img src="../images/trash.png" alt="" title="" width="11" height="11" /></a>
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
    <input type="button" name="cancel" value="Cancel" class="buttons" onclick="window.location='rsm.php'"/>
    </form>
    </div>         
   </div>
</div>

<?php include('../include/footer.php'); ?>