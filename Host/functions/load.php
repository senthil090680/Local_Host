<?php
set_time_limit ( 0 );
error_reporting (0 );

include "../include/config.php";
$remIp = $_GET['remip'];   // Specifies Remote Host Ip.
$table = $_GET['table'];  //Specifies Table Name 
$path = $_GET['path']; // Specifies Remote path.
$kdCode = $_GET['kdCode'];
$tableName = explode("@", $table);
$remIp = str_replace("_", "/", $remIp);
include 'cfg.php';
//echo "<br>";
//echo $tableName;

$path = str_replace("_", "/", $path);

// DB Connection



if ($fp = fopen("http://" . $remIp .  $path . "/" . $table . ".csv", 'r')) {
    $content = '';
    // keep reading until there's nothing left 
    while ($line = fread($fp, 1024)) {
        $content .= $line;
    }
    $filePath = "Tabledownload\\" . $kdCode;
    //echo $filePath;
    if (!is_dir("..\\..\\Host\\functions\\" . $filePath . "\\" . date("Y-m-d"))) {
        mkdir("..\\..\\Host\\functions\\" . $filePath . "\\" . date("Y-m-d"));
    }
    $filePath = $filePath . "\\" . date("Y-m-d");


    writeCsv("..\\..\\Host\\functions\\" . $filePath . "\\" . $table . ".csv", $content);

    $content_lines = explode("\n", $content);


    
    $redo = explode(", ",$content_lines[0]);
   
           $query = "select * from " . $tableName[0] . " where KD_Code='" . $redo[1] . "' ";
        $resultredo = mysql_query($query);
         
    if (mysql_num_rows($resultredo) != 0)
    {
         $query = "delete from " . $tableName[0] . " where KD_Code='" . $redo[1] . "' ";
         $return=   mysql_query($query);
          if($return == false)
          {
             // echo "delete Error " . $tableName[0] . " ";
          }
    }
    
    

    foreach ($content_lines as $line) {
        // echo $line;
        //echo "<br>";
        $contentDatas = explode(", ", $line);
   $firstRecord = "";
        $queryData = "'','";
        $flag = false;
        $idcount =0;
        $kd_Code="";
        foreach ($contentDatas as $contentData) {
            if($idcount == 1)
            {
                $kd_Code=$contentData;
            }
            if ($flag == false ) {
                  $firstRecord = $contentData;
                $flag = true;
            } else {
                $queryData .= $contentData;
                $queryData .= "','";
            }
            $idcount++;
        }
         if ($firstRecord) {
        $queryData = substr($queryData, 0, -3);

        $query = "select * from " . $tableName[0] . " where KD_Code='" . $kd_Code . "' ";
        $result = mysql_query($query);
         
        
        if (mysql_num_rows($result) == 0) {
            $queryData = substr($queryData, 0, -3);
            $query = "Insert into " . $tableName[0] . " values(" . $queryData . "')";
          $return=  mysql_query($query);
          if($return == false)
          {
            //  echo $query;
             // echo "Insert Error " . $tableName[0] . " ";
          }
            // echo $query;
        } else {
            
          
         
         $queryData = substr($queryData, 3, -3);
            
          
            $queryData = "''," . $queryData;
           
            $query = "Insert into " . $tableName[0] . " values(" . $queryData . "')";
           $return = mysql_query($query);
            if($return == false)
          {
            //  echo "Insert2 Error" . $tableName[0] . " ";
          }
           //  echo $query;
            
        }
    }
    }
}

function writeCsv($fname, $content) {
                      
    $fp = fopen($fname, 'w+');
    $write = fputs($fp, $content);
    fclose($fp);
}

?>