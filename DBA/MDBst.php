<?php
echo "MONGODB Usage: ";
$output = shell_exec("python /var/www/html/Usages.py 2>&1");
echo $output;
?>
