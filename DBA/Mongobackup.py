#/usr/bin/env python    

import os
import shutil

shutil.rmtree("/var/www/html")
os.system('mongodump -d shopping -o /var/www/')