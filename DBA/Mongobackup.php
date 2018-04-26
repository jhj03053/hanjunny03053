<?php
echo "Mysqlbackup Usage: ";
$output = shell_exec("python /var/www/html/Mongobackup.py 2>&1");
echo $output;
?>