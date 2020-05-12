str= input("Enter a word: ") # initial string
stringlength=len(str) # calculate length of the list
slicedString=str[stringlength::-1] # slicing
if str == slicedString:
    print (":-) its a Palindrome") # print the reversed string
else:
     print (":-( Not a Palindrome") 

