n = int(input("Enter range: "))
num = int(input("Enter the number for which power need to calculate: "))
pow = 1
for exp in range(n + 1):
    print(num," to the power of", exp, "is", pow)
    pow *= num
