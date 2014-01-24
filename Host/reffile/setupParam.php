<?php
session_start();
ob_start();
include('../include/header.php');
if(isset($_GET['logout'])){
session_destroy();
header("Location:../index.php");
}
//echo "select * from  parameters where id='".$_GET['id']."'";
$param=mysql_query("select * from  parameters where id='".$_GET['id']."'"); 
$row=mysql_fetch_array($param);
$master_sch=mysql_query("select * from  master_code where document='Scheme'"); 
$row_master_sch=mysql_fetch_array($master_sch);
//echo "select * from  master_code where document='KD'";
$master_KD=mysql_query("select * from  master_code where document='KD'"); 
$row_master_KD=mysql_fetch_array($master_KD);
?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainareasystemParam">
<div class="mcf"></div>
   
<div align="center" class="headingsparam">System Parameters</div>
<div class="mytableformsetup" align="center">
  <form method="post" action="setupParamAction.php" name="register" enctype="multipart/form-data">
<table border="0" width="100%">
  <tr>
    <td valign="top" width="80px"><fieldset class="alignmentregFormat"><legend><strong>Data Format</strong></legend>
	<table width="400px">
	<!-- <tr height="30">
	<td>Exclude Special Characters*</td>
	<td><input type="text" name="specialchar" value="<?php echo $row['specialchar']; ?>" maxlength="10" autocomplete="off" ></td>
	</tr> -->
	<tr  height="30">
	<td>Date Format *</td>
    <select name="displaydateformat" id="currency" class="required">
			<option value="">--- Select ---</option>
			<option value="DDMMYY" <?php if($row['displaydateformat']=='DDMMYY'){ echo 'selected' ; }?> >DDMMYY</option>
			<option value="MMDDYY" <?php if($row['displaydateformat']=='MMDDYY'){ echo 'selected' ; }?>>MMDDYY</option>
            <option value="DDMMMYY" <?php if($row['displaydateformat']=='DDMMMYY'){ echo 'selected' ; }?>>DDMMMYY</option>
            <option value="MMMDD" <?php if($row['displaydateformat']=='MMMDD'){ echo 'selected' ; }?>>MMMDD</option>
			</select>
    
	<td><input name="displaydateformat" type="radio" value="Y-m-d" <?php if($row['displaydateformat']==Y-m-d){ echo 'checked' ; }?>>&nbsp;Y-m-d &nbsp;<input name="displaydateformat" type="radio" value="d-m-Y" <?php if($row['displaydateformat']==d-m-Y){ echo 'checked' ; }?>>&nbsp;d-m-Y<!-- <input type="text" name="displaydateformat" value="<?php echo $row['displaydateformat']; ?>" autocomplete="off"> --></td>
	</tr>
	<tr height="30">
	<td>Currency *</td>
	<td><select name="currency" id="currency" class="required">
			<option value="">--- Select ---</option>
			<option value="Naira" <?php if($row['currency']=='Naira'){ echo 'selected' ; }?> >Naira</option>
			<option value="Dollar" <?php if($row['currency']=='Dollar'){ echo 'selected' ; }?>>Dollar</option>
			</select>&nbsp;<img src="../images/currency.gif" width="15" height="15"></td>
	</tr>
	<tr height="30"> <td>Header</td><td><input type="text" name="header" value="<?php echo $row['header']; ?>" autocomplete="off"></td></tr>
	</table>
	</fieldset>
	</td>
    <td><fieldset class="alignmentregFormat"><legend><strong>Device Print Format</strong></legend>
	<table width="400">
	<tr height="30" >
	<td>Invoice(SKU) Description Length*</td>
	<td><input type="text" name="invoicedesc" value="<?php echo $row['invoicedesc']; ?>" autocomplete="off" maxlength="2"></td>
	</tr>
    
	<tr  height="30">
	<td>Batch Control*</td>
	<td><select name="batchctrl" id="batchctrl" class="required">
			<option value="">--- Select ---</option>
			<option value="OFF" <?php if($row['batchctrl']=='OFF'){ echo 'selected' ; }?> >OFF</option>
			<option value="ON-ALL" <?php if($row['batchctrl']=='ON-ALL'){ echo 'selected' ; }?>>ON-ALL</option>
			<option value="ON-SELECT" <?php if($row['batchctrl']=='ON-SELECT'){ echo 'selected' ; }?>>ON-SELECT</option>
			</select></td>
	</tr>
    
	<tr height="30">
	<td>Edit Password*</td>
	<td><input type="text" name="editmasterpwd" value="<?php echo $row['editmasterpwd']; ?>" maxlength="5" autocomplete="off"></td>
	</tr> 

	</table></fieldset>
	</td>
  </tr>
  <tr>
    <td><fieldset class="alignmentregDF"><legend><strong>Left Logo</strong></legend>
	<table width="450px">
	<tr height="30">
	<td width="210px">Existing</td>
	<td><input type="text" name="leftlogo_hid" value="<?php echo substr($row['leftlogo'],11); ?>" autocomplete="off" readonly>&nbsp;
	<a href="../paramImages/<?php echo $row['leftlogo']; ?>" target="_blank" class="link">View</a>
	</td></tr>
	<tr>
	<td >New*</td>
	<td><input type="file" name="leftlogo" value="" autocomplete="off" >
   </td>
	</tr>
	</table>
	</fieldset></td>
    <td><fieldset class="alignmentregDF"><legend><strong>Right Logo</strong></legend>
	<table width="450px">
	<tr height="30">
	<td width="210px">Existing*</td>
	<td><input type="text" name="rightlogo_hid" value="<?php echo substr($row['rightlogo'],11); ?>" autocomplete="off" readonly>&nbsp;
	<a href="../paramImages/<?php echo $row['rightlogo']; ?>" target="_blank" class="link">View</a>
	</td></tr>
	<tr>
	<td >New*</td>
	<td><input type="file" name="rightlogo" value="" autocomplete="off">
   </td>
	</tr>
	</table>
	</fieldset></td>
  </tr>
  <tr>
    <td colspan="2">
	<fieldset class="alignmentregSC"><legend><strong>Scheme Code</strong></legend>
<table width="100%"  border="0">
  <tr height="30">
    <td>Length</td>
    <td><input type="text" name="length" value="<?php echo $row_master_sch['length'];?>" autocomplete="off" maxlength="5"></td>
    <td>Entry</td>
    <td><select name="entry" id="Entry" class="required">
	<option value="">--- Select ---</option>
	<option value="Manual" <?php if($row_master_sch['entry']=='Manual'){ echo 'selected' ; }?> >Manual</option>
	<option value="Automatic" <?php if($row_master_sch['entry']=='Automatic'){ echo 'selected' ; }?>>Automatic</option>
	</select></td>
  </tr>
  <tr>
    <td>Type</td>
    <td><select name="type" id="type" class="required">
			<option value="">--- Select ---</option>
			<option value="Numeric" <?php if($row_master_sch['type']=='Numeric'){ echo 'selected' ; }?> >Numeric</option>
			<option value="AlphaNumeric" <?php if($row_master_sch['type']=='AlphaNumeric'){ echo 'selected' ; }?>>AlphaNumeric</option>
			</select></td>
    <td>Format</td>
    <td><select name="alpha" id="alpha" class="required">
			<option value="">--- Select ---</option>
			<?php	for($i=A;$i<Z;$i++){?>
			<option value="<?php echo $i;?>" <?php if($row_master_sch['alpha']==$i){ echo 'selected' ; }?> ><?php echo $i;?></option>
			<?php }?>
			<option value="Z" <?php if($row_master_sch['alpha']=='Z'){ echo 'selected' ; }?> >Z</option>
			</select>&nbsp;&nbsp;<select name="numeric" id="numeric" class="required">
			<option value="">--- Select ---</option>
			<?php	for($j=1;$j<=10;$j++){?>
			<option value="<?php echo $j;?>" <?php if($row_master_sch['numeric']==$j){ echo 'selected' ; }?> ><?php echo $j;?></option>
			<?php }?>
			</select>&nbsp;&nbsp;<input type="text" name="format" value="<?php echo $row_master_sch['format'];?>" autocomplete="off" maxlength="5" readonly></td>
  </tr>
  <tr>
    <td>Starting Value</td>
    <td colspan="2"><input type="text" name="startingvalue" value="<?php echo $row_master_sch['startingvalue'];?>" autocomplete="off" maxlength="5"></td>
  </tr>
</table>

	</fieldset>

	</td>
	<!-- Scheme Code End  -->   

  </tr>
  <tr><td colspan="2"><fieldset class="alignmentregSC"><legend><strong>KD Code</strong></legend>
		<table width="100%"  border="0">
  <tr height="30">
    <td>Length</td>
    <td><input type="text" name="length_KD" value="<?php echo $row_master_sch['length'];?>" autocomplete="off" maxlength="5"></td>
    <td>Entry</td>
    <td><select name="entry_KD" id="Entry" class="required">
			<option value="">--- Select ---</option>
			<option value="Manual" <?php if($row_master_KD['entry']=='Manual'){ echo 'selected' ; }?> >Manual</option>
			<option value="Automatic" <?php if($row_master_KD['entry']=='Automatic'){ echo 'selected' ; }?>>Automatic</option>
			</select>
	</td>
  </tr>
  <tr>
    <td>Type</td>
    <td><select name="type_KD" id="type" class="required">
			<option value="">--- Select ---</option>
			<option value="Numeric" <?php if($row_master_KD['type']=='Numeric'){ echo 'selected' ; }?> >Numeric</option>
			<option value="AlphaNumeric" <?php if($row_master_KD['type']=='AlphaNumeric'){ echo 'selected' ; }?>>AlphaNumeric</option>
			</select></td>
    <td>Format</td>
    <td><select name="alpha_KD" id="alpha_KD" class="required">
			<option value="">--- Select ---</option>
			<?php	for($i=A;$i<Z;$i++){?>
			<option value="<?php echo $i;?>" <?php if($row_master_KD['alpha']==$i){ echo 'selected' ; }?> ><?php echo $i;?></option>
			<?php }?>
			<option value="Z" <?php if($row_master_KD['alpha']=='Z'){ echo 'selected' ; }?> >Z</option>
			</select>&nbsp;&nbsp;<select name="numeric_KD" id="numeric_KD" class="required">
			<option value="">--- Select ---</option>
			<?php	for($j=1;$j<=10;$j++){?>
			<option value="<?php echo $j;?>" <?php if($row_master_KD['numeric']==$j){ echo 'selected' ; }?> ><?php echo $j;?></option>
			<?php }?>
			</select>&nbsp;&nbsp;<input type="text" name="format_KD" value="<?php echo $row_master_KD['format'];?>" autocomplete="off" maxlength="5" readonly></td>
  </tr>
  <tr>
    <td>Starting Value</td>
    <td colspan="2"><input type="text" name="startingvalue_KD" value="<?php echo $row_master_KD['startingvalue'];?>" autocomplete="off" maxlength="5"></td>
  </tr>
</table></fieldset></td></tr>
</table>
<table width="50%" style="clear:both">
<tr align="center" height="39px;">
<td>
<input type="submit" name="submit" id="submit" class="buttons" value="Submit" />
<input type="button" name="clear" value="Clear" id="clear" class="buttons" onClick="return systemParam();" />
<a href="../include/menu.php" style="text-decoration:none"><input type="button" name="cancel" id="cancel"  class="buttons" value="Cancel"/></a>
</td>
</tr>
</table> 

</form>
</div>
<div class="clearfix"></div>
<?php include("../include/error.php");?>

</div>
<?php include("../include/footer.php");?>
