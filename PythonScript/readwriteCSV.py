import csv
with open('users.csv','w') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['id', 'email', 'name'])
    writer.writerow(['1', 'mrinmoykarmakar@quickenloans.com', 'Mrinmoy'])
    writer.writerow(['2', 'vk@quickenloans', 'VK, aka "Venky"'])
    writer.writerow(['3', 'sw@quickenloans', 'Stacy, "Lead" '])

with open('users.csv','r') as inputfiles:
    for line in inputfiles:
        line=line.strip()
        print(line)
        
    
    
