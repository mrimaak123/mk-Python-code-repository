# Click the Run button
print("WELCOME TO PYTHON Numerics!")

n =  int(input("Inter length: "))
#s = str(input("Enter Symbol: "))
#print(s)
i = n
j = 0
while i > 0:
    spc = j*4 + 1
    print(*range(i), end="*" * spc )
    print(*range(i-1,-1,-1)) 
    i = i - 1
    j = j + 1

#print (*range(-10))
i=n
j=0
while i > 0:
    spc = (i-1)*4 + 1
    print(*range(j+1), end="*" * spc )
    print(*range(j,-1,-1)) 
    i = i - 1
    j = j + 1

#alternate way easy way: print function with multiple parameter comma seperated
print()
print("print function with multiple parameter comma seperated")
i = n
j = 0
while i > 0:
    spc = j*4 + 1
    print(*range(i), "*" * spc , *range(i-1,-1,-1) )
    i = i - 1
    j = j + 1

i=n
j=0
while i > 0:
    spc = (i-1)*4 + 1
    print(*range(j+1), "*" * spc, *range(j,-1,-1) ) 
    i = i - 1
    j = j + 1

