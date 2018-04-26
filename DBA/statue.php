<?php
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
</p>
<p>



<?php

$Mongo = shell_exec("mongo --quiet --eval \"db.serverStatus().uptime\"");

$mongoUptime = gmdate("H:i:s", $Mongo);

echo "Mongo Uptime - ". $mongoUptime;


?>