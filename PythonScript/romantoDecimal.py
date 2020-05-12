def to_val(letter):
    num = {"I":1, "V": 5, "X":10, "L":50, "C":100, "M":1000}
    return num.get(letter.upper())
    #if letter.upper() == "I": return 1
    #elif letter.upper() == "V": return 5
    #elif letter.upper() == "X": return 10
    #elif letter.upper() == "L": return 50
    #elif letter.upper() == "C": return 100
    #elif letter.upper() == "M": return 1000
    #return 0

def numurus(roman):
    total = 0; prev = 0

    for l in roman:
        cur = to_val(l)
        if prev < cur:
            total -= prev
            cur -= prev
        total += cur
        prev = cur

    return total


rom = input("Enter Roman value: ")
print (numurus(rom))

    
    
