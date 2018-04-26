<?php

$db = mysqli_connect('192.168.50.15','jhj03053','whgkswns123')
 or die('Error connecting to MySQL server.');


if($db)
$sql = "SHOW GLOBAL STATUS LIKE 'Uptime' ";
$results = mysqli_query($db, $sql);


if ($results->num_rows > 0){ 
while($row = $results->fetch_assoc()) {

$seconds = $row["Value"];
echo "Mysql Uptime - ".gmdate("H:i:s", $seconds);
        
    }
}


?>