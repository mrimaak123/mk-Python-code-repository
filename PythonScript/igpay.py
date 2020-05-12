def igpay(a_word):
    vowels ="aeiou"
    if a_word[0].upper() in vowels.upper():
        return a_word + "way"
    else:
        return a_word[1:] + a_word[0] + "ay"

in_word = input("Enter a word ")
print(igpay(in_word))    
