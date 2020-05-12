import random
import time
from zipfile import ZipFile
now = time.strftime("%H:%M:%S %p - %A, %B %d %Y", time.localtime())

print (now)

with ZipFile ('C:\\MrinmoyLearning\\PythonScript\\files\\SRC.zip') as files:
    print(files.namelist())
    files.extractall('C:\\MrinmoyLearning\\PythonScript\\files\\')
    
    
