<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
function random_string($length) {
    $key = '';
    $keys = array( RC , 01);

    for ($i = 0; $i < $length; $i++) {
		
		
        $key .= $keys[($keys)];
    }

    return $key;
}

echo random_string(50);

?>
</body>
</html>