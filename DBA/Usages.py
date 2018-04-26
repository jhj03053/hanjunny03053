#/usr/bin/env python    

import sys
from pymongo import MongoClient

Client = MongoClient('localhost',27017)
db = Client['shopping']
print (db.command("dbstats"))