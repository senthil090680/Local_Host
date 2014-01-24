<?php
session_start();
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
if(isset($_GET['logout'])){
session_destroy();
header("Location:../index.php");
}
include 'cfg.php';
include "config2.php";

$tbName= $_GET['tb'];
mysql_connect("localhost","root","");
$query= "SHOW TABLES FROM host";
$result= mysql_query($query);

	
	$query= "select * from data_transfer_table";
	$transferTables= mysql_query($query);
	
	if(!$tbName)
	$query= "select * from data_transfer_table LIMIT 0,1";
	else
	
	$query="select * from data_transfer_table where TABLE_NAME='" . $tbName . "'";
	$transferTable= mysql_query($query);	
	$row = mysql_fetch_assoc($transferTable);
	
	if($row['TRANSFER_NAME']=="upload")
	$updateTransfer="ub";
	else
	$updateTransfer="db";
	
	
	
	
?>
<div id="mainarea">
<style>
fieldset{
margin:3px;
padding:10px;
}

td{
padding:5px;
}

.buttons{

width:90px;

}

</style>
<div id="mainarea">
<div class="mcf"></div>
<div align="center" class="headingskdp">Add Table For Upload/Download</div>
<div class="mytable3">
	<fieldset>
	<legend> Add New Table </legend>
	<select id="tableName">
	<?php
	
	while($data = mysql_fetch_row($result))
	{
		echo '<option value="' .$data[0] .  '">' . $data[0] . '</option>'	;
	}
	?>
	</select>
	<span style="padding-left:10px;"> KD specific : </span>
	<input type="checkbox" id="kdSpecific" />
	<span style="padding-left:10px;"> Active : </span>
	<input type="checkbox" id="aod" />
	
	<span style="padding-left:10px;"> Access :</span>
	<select id="access">
		<option value="full">Full</option>
		<option value="update">Update </option>
		<option value="insert">Insert </option>
	</select>
	<span style="padding-left:10px;"> Upload/Download :</span>
	<select id="transfer">
		<option value="db">Download to base</option>
		<option value="ub">Upload from Base </option>
	</select>
	
	<input style="margin-left:10px; padding:5px; width:80px;" class="buttons" type="button" value="Add" onclick="load()" />
	</fieldset>
	
	<br />
	<fieldset>
		<legend>Update Table</legend>
			<select id="updatetableName" onchange = "reload()">
	<?php
	
		while($table = mysql_fetch_array($transferTables))
			echo '<option value="' .$table['TABLE_NAME'] .  '">' . $table['TABLE_NAME'] . '</option>'	;
		

	?>
	</select>

	<span style="padding-left:10px;" > KD specific : </span>
	
	<input type="checkbox" id="updatekdSpecific" <?php if($row['KD_SPECIFIC'] == "Y") echo "checked"; ?>/>
	<span style="padding-left:10px;"> Active : </span>
	<input type="checkbox" id="updateaod" <?php if($row['ACTIVE_FLAG'] == "Y") echo "checked"; ?>/>
	
	<span style="padding-left:10px;"> Access :</span>
	<select id="updateaccess">
		<option value="full">Full</option>
		<option value="update">Update </option>
		<option value="insert">Insert </option>
	</select>
	<span style="padding-left:10px;"> Upload/Download :</span>
	<select id="updatetransfer">
		<option value="db">Download to base</option>
		<option value="ub">Upload from Base </option>
	</select>
		
		<script>
	$('#updatetableName').val('<?php echo $row['TABLE_NAME']?>');
	$('#updateaccess').val('<?php echo $row['TYPE']?>');
	$('#updatetransfer').val('<?php echo $updateTransfer ?>');
	</script>
	
	<input type="button" value="Update" class ="buttons" onclick="update()" />
	<input type="button" value="Delete"  class="buttons" onclick="tabledelete()"/>
	<br />
	

	<div class="con3" style="width:300px;margin-top:20px;padding:2px;" >
	<table id="sort" style="width:300px;">
		<?php 
		
			
		$query="DESCRIBE host.". $row['TABLE_NAME'];
		$columns=mysql_query($query);
		while($column = mysql_fetch_array($columns)) {?>
	
		<tr>
			<td>
			<?php echo $column["Field"]; ?>
			</td>
			
			<td>
			<input type="checkbox"  value ="<?php echo $column["Field"]; ?>" name="checkboxlist"/>
			</td>
	
		</tr>
	<?php } ?>
	</table>
	</div>
	
	</fieldset>
	
</div> 
</div>	
	
	
	<script type="text/javascript" >
	
			function load()
		{
		var	transfer= $("#transfer").val();
		var access = $("#access").val()
		
		if ($("#aod").is(':checked') == false) {
                  var aod = "false";
           } else {
                    var aod = "true";
           }
		if ($("#kdSpecific").is(':checked') == false) {
                  var kdSpecific = "false";
           } else {
                    var kdSpecific = "true";
           }		   
		   
		   
		
		var tableName = $("#tableName").val()
				
			var posting = $.post( "transfertablesave.php", { transfer : transfer, access : access, aod : aod, tableName : tableName, kdSpecific : kdSpecific } );
		
			posting.done(function( data ) {
					alert(data);
					window.location.href = "http://localhost/Host/functions/tableconfig.php";
			});
			
		}
		
		function tabledelete()
		{
	
		var tableName=$("#updatetableName").val();
		
		var action = $.post("tabledelete.php",{tableName:tableName});
		
		action.done(function (data) {
		
			alert(data);
			window.location.href = "http://localhost/Host/functions/tableconfig.php";
		});
		
		}
		function reload()
		
		{
		window.location.href = "http://localhost/Host/functions/tableconfig.php?tb=" + $("#updatetableName").val();
		}
		
		function update()
		{
		
					var	transfer= $("#updatetransfer").val();
					var access = $("#updateaccess").val()
		
			if ($("#updateaod").is(':checked') == false) {
                  var aod = "false";
			} 
			else {
                    var aod = "true";
			}	
			
			if ($("#updatekdSpecific").is(':checked') == false) {
                  var kdSpecific = "false";
           }
		   else {
                    var kdSpecific = "true";
           }		   
		   
		   
		
			var tableName = $("#updatetableName").val()
				
			var list = $('input[name=checkboxlist]:checked').map(function() {
				return $(this).val();
			}).get();
			list=list.join(",");
			list=list.split(',').join('*');
		
			var action = $.post( "tableupdate.php", { transfer : transfer, access : access, aod : aod, tableName : tableName, kdSpecific : kdSpecific, list:list } );
			action.done(function (data) {
			alert(data);
			window.location.href = "http://localhost/Host/functions/tableconfig.php";
			});
		
		}

	
	</script>
		
	</div>
<?php include('../include/footer.php'); ?>