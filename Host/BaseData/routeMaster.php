<?php
session_start();
ob_start();
include('../include/header.php');
include "../include/ps_pagination.php";
if(isset($_GET['logout'])){
session_destroy();
header("Location:../index.php");
}
?>
<!------------------------------- Form -------------------------------------------------->
<div id="mainarea">
<div class="mcf"></div>
<div><h2 align="center">Route Master</h2></div>
<div id="search" style="margin-right:70px;">
<form action="" method="get" name="rou_master" id="rou_master">
<input type="text" name="location" value="<?php echo $_GET['location']; ?>"  autocomplete='off' placeholder='Search By Location'/>
<input type="submit" name="submit" value="Go" class="buttonsg"/>
</form>  
</div>
<div id="containerBD">
 <div class="clearfix"></div>
		<?php
		if($_GET['Location']!='')
		{
	    $qry="SELECT *  FROM `route_master` where location LIKE '%".$_GET['location']."%'  order by route_desc asc";
		}
		else
		{ 
		$qry="SELECT *  FROM `route_master` order by route_desc asc";
		}
		$results=mysql_query($qry);
		$num_rows= mysql_num_rows($results);
		$pager = new PS_Pagination($bd, $qry,15,15);
		$results = $pager->paginate();
		?>
        <div class="con3">
        <table id="sort" class="tablesorter" align="center" width="100%">
		<thead>
		<tr>
		<th>KD Name</th>
		<th class="rounded">Description<img src="../images/sort.png" width="13" height="13" /></th>
   		<th>Code</th>
		<th>Location</th>
		</tr>
		</thead>
		<tbody>
		<?php
		if(!empty($num_rows)){
		$c=0;$cc=1;
		while($fetch = mysql_fetch_array($results)) {
		if($c % 2 == 0){ $cls =""; } else{ $cls ="class='odd'"; }
		?>		
		<tr>
		<td><?php echo $fetch['KD_Name'];?></td>
		<td><?php echo $fetch['route_desc'];?></td>
		<td><?php echo $fetch['route_code'];?></td>
		<td><?php echo $fetch['location'];?></td>
        </tr>
		<?php $c++; $cc++; }		 
		}else{  echo "<tr><td align='center' colspan='13'><b>No records found</b></td></tr>";}  ?>
		</tbody>
		</table>
        </div>
<!--Pagination  -->
		<?php 
		if($num_rows > 10){?>     
        <div class="paginationfile" align="center">
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
		</div>   
		<?php } else{ echo "&nbsp;"; }?>
	</div>   
 
<!--Messages-->
</div>
<?php include('../include/footer.php'); ?>