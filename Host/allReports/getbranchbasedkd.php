<?php
session_start();
ob_start();
require_once "../include/config.php";
require_once "../include/ajax_pagination.php";
//require_once "../include/ps_pagination.php";
if(isset($_GET['logout'])){
	session_destroy();
	header("Location:../index.php");
}
extract($_GET);
//pre($_GET);

$kdstrval								=	getdbstr('KD_Code','kd');

// THIS IS WHEN THE SELECT BOX IS EMPTY WITHOUT ANY SELECTED OPTIONS, IT IS EITHER ARRAY WITH EMPTY VALUE IN O INDEX OR NULL VALUE STARTS HERE

//pre($_GET[codeval]);
//exit;
$arrsize		=	count($_GET[codeval]);
$arrvalue		=	1;
if($arrsize == '1') {
	//echo $arrsize;
	$arrvalue	=	$_GET[codeval][0];
}
//echo $arrvalue;
//exit;
if($arrvalue == '') {
	//echo "ldkd";
	//exit;

	$query_kd 							=	"SELECT id,KD_Name,KD_Code FROM kd";
	$res_kd								=	mysql_query($query_kd) or die(mysql_error());
	?>
	<select class="dsrname" name="kdcode" id="kdcode" multiple <?php if($srval == 'SRNOT') { ?> onChange="getKDspecific();" <?php } else if($srval == 'SRIN') { ?> onChange="getKDspecificwithsr();" <?php } ?>  >
		<option value="">---KD---</option>

		<option value="<?php echo $kdstrval; ?>" <?php if(strstr($KD_Codestr,$kdstrval)) { echo "selected"; } ?> > ALL</option>

		<?php while($info_kd = mysql_fetch_assoc($res_kd)) { ?>
		<option value="<?php echo  $info_kd['KD_Code']; ?>" <?php if(!strstr($KD_Codestr,$kdstrval)) { if(strstr($KD_Codestr,$info_kd['KD_Code'])) { echo "selected"; } } if($kdcode == $info_kd['KD_Code']) { echo "selected"; } ?> > <?php echo  upperstate($info_kd['KD_Name']); ?></option>
		<?php } ?> 
	</select>  
	<?php exit(0);
}

if($_GET[codeval] == 'null') {
	//echo "goodfd";
	//exit;
	$query_kd 							=	"SELECT id,KD_Name,KD_Code FROM kd";
	$res_kd								=	mysql_query($query_kd) or die(mysql_error());
	?>
	<select class="dsrname" name="kdcode" id="kdcode" multiple <?php if($srval == 'SRNOT') { ?> onChange="getKDspecific();" <?php } else if($srval == 'SRIN') { ?> onChange="getKDspecificwithsr();" <?php } ?>  >
		<option value="">---KD---</option>

		<option value="<?php echo $kdstrval; ?>" <?php if(strstr($KD_Codestr,$kdstrval)) { echo "selected"; } ?> > ALL</option>

		<?php while($info_kd = mysql_fetch_assoc($res_kd)) { ?>
		<option value="<?php echo  $info_kd['KD_Code']; ?>" <?php if(!strstr($KD_Codestr,$kdstrval)) { if(strstr($KD_Codestr,$info_kd['KD_Code'])) { echo "selected"; } } if($kdcode == $info_kd['KD_Code']) { echo "selected"; } ?> > <?php echo  upperstate($info_kd['KD_Name']); ?></option>
		<?php } ?> 
	</select>  
	<?php exit(0);
}

// THIS IS WHEN THE SELECT BOX IS EMPTY WITHOUT ANY SELECTED OPTIONS, IT IS EITHER ARRAY WITH EMPTY VALUE IN O INDEX OR NULL VALUE ENDS HERE


$params=$kdcode;
if(isset($_GET[codeval]) && $_GET[codeval] !='') {
	$srcodestr		=	implode("','",$codeval);
	if($srcodestr != '') {
		$nextrecval		=	"WHERE branch_id IN ('".$srcodestr."')";	
	} else {
		$nextrecval		=	"";	
	}
} else {
	$nextrecval		=	"";
}
$where		=	"$nextrecval";

if(isset($_GET) && $_GET !='')
{
	$qry="SELECT * FROM `rsm_sp` $where";
}
else
{ 
	echo "Invalid Query";
	exit;
}
$results_dsr		=	mysql_query($qry) or die(mysql_error());
$num_rows			=	mysql_num_rows($results_dsr);			

while($info = mysql_fetch_assoc($results_dsr)) {
	$rsmid[]		=	$info[id];
}

$rsmiduni								=	array_unique($rsmid);
$rsmidstr								=	implode("','",$rsmiduni);

$qry		=	"SELECT * FROM `dsr` WHERE RSM IN ('".$rsmidstr."')";

$results_dsr		=	mysql_query($qry) or die(mysql_error());
$num_rows			=	mysql_num_rows($results_dsr);			

while($info = mysql_fetch_assoc($results_dsr)) {
	$kdcode[]		=	$info[KD_Code];
}

$kdcodeuni								=	array_unique($kdcode);
$KD_Codestr								=	implode("','",$kdcodeuni);
//$query_kdnam 							=	"SELECT id,KD_Code,KD_Name FROM kd WHERE KD_Code IN ('".$KD_Codestr."')";
$query_kdnam 							=	"SELECT id,KD_Code,KD_Name FROM kd";
$res_kdnam 								=	mysql_query($query_kdnam) or die(mysql_error());
$rowcnt_kdnam							=	mysql_num_rows($res_kdnam);

?>
<select class="dsrname" name="kdcode" id="kdcode" multiple <?php if($srval == 'SRNOT') { ?> onChange="getKDspecific();" <?php } elseif($srval == 'SRIN') { ?> onChange="getKDspecificwithsr();" <?php } elseif($srval == 'SRTRANS') { ?> onChange="getKDspecifictranslist();" <?php } ?> >
	<option value="">---KD---</option>

	<option value="<?php echo $kdstrval; ?>" <?php if(strstr($KD_Codestr,$kdstrval)) { echo "selected"; } ?> > ALL</option>

	<?php while($info = mysql_fetch_assoc($res_kdnam)){ ?>
	<option value="<?php echo  $info['KD_Code']; ?>" <?php if(!strstr($KD_Codestr,$kdstrval)) { if(strstr($KD_Codestr,$info['KD_Code'])) { echo "selected"; }  }  if($kdcode == $info['KD_Code']) { echo "selected"; } ?> > <?php echo  upperstate($info['KD_Name']); ?></option>
	<?php }?> 
</select>
<?php exit(0);?>