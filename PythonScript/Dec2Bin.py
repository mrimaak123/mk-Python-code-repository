dec1 = int(input ("Input a Decimal Number: "))

bin1 = bin(dec1).replace("0b", "")
print("Binary Equivalent is: ", bin1)

oct1 = oct(dec1).replace("0o", "")
print("Octa Equivalent is: ", oct1)

hex1 = hex(dec1).replace("0x", "")
print("Hexa Equivalent is: ", hex1)
