words = input ("Enter a word to Palyndrom check: ")
reverseword = ''.join(reversed(words))
if words.upper() == reverseword.upper():
    print("This is a Palyndrom!!")
else:
    print("This is not a Palyndrom!!")
