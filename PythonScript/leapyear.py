
year = int(input("Enter a year: "))

#
# Put your code here.
#
if year < 1580:
    print("Not within the Gregorian calendar period")
elif (year % 4) != 0:
    print("It's a common year")
elif (year % 100) != 0:
    print("It's leap year")
elif (year % 400) != 0:
    print("It's a common year")
else:
     print("It's leap year")
