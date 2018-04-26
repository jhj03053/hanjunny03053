<?php

$Mongo = shell_exec("mongo --quiet --eval \"db.serverStatus().uptime\"");

$mongoUptime = gmdate("H:i:s", $Mongo);

echo "Mongo Uptime - ". $mongoUptime;


?>