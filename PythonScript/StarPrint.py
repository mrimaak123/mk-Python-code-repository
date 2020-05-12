# Click the Run button
print("WELCOME TO PYTHON ESSENTIALS!")

n =  int(input("Inter length: "))
s = str(input("Enter Symbol: "))
#print(s)
i = n
j = 1
while i > 0:
    print(s * i)
    i = i - 1
#print("-------")
while j <= n:
    print(s * j)
    j = j + 1

