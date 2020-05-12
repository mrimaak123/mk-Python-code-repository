resp = 14
if resp % 7 == 0:
    print("Divisible by 7")


import re

pattern = r"gr(a|e)y"

match = re.match(pattern, "gray")
if match:
   print ("Match 1")

match = re.match(pattern, "grey")
if match:
   print ("Match 2")    

match = re.match(pattern, "griy")
if match:
    print ("Match 3")
    

pattern = r"([\w\.-]+)@([\w\.-]+)(\.[\w\.]+)"
str = "Please contact mrinmoy.mca04@gmail.com for assistance"

match = re.search(pattern, str)
if match:
   print(match.group())
else:
    print("invalid email is");