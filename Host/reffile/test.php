<html>
<body>
<?php 
// connecting to the server
$conn = mysql_connect('localhost','root','') or die('Could not connect: ' . Mysql_error());
// selecting the database
mysql_select_db('host',$conn) or die("db error: ".mysql_error());
// is menu_id set?
if (isset($_GET['menu']) && intval($_GET['menu'])>0) {
    // if yes, then query the menu items
    $query = "select * from kd_product where id=".intval($_GET['menu']);
    $result = mysql_query($query, $conn) or die("SQL error: ".mysql_error());
    while ($row = mysql_fetch_assoc($result)) {
        // print the menu items
        print_r($row);
    }
}
// select the vendor combobox
$query = "select Kd_Category from  kd_product";
$result = mysql_query($query,$conn);

// If the vendor selection has changed then reload the page
?>
<select name="vendor" id="vendor" onchange="document.location='index.php?menu='+this.options[this.selectedIndex].value;">
<option value="Choose">Choose</option>
<?php
// loop through the results
while($fetch= mysql_fetch_assoc($query)){
echo "hi";
    echo "<option value=\"".$row['id']."\">".$row['Kd_Category']."</option>";
}
?>
</select>
</body>
</html>