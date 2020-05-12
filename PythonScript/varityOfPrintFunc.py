#diffrent type of Print:
print("My name is", "Python.", end=" ")
print("Monty Python.")
print("My", "name", "is", "Monty", "Python.", sep="-")
print("My", "name", "is", sep="_", end="*")
print("Monty", "Python.", sep="*", end="*\n")
print("Programming","Essentials","in", sep="***", end="...")
print("Python")

print("    *","   * *","  *   *"," *     *","***   ***","  *   *","  *   *","  *****",sep="\n"*2,end=" "*2)
print()
name = input('What is your name? ')
fav_color = input ('What is your favorite color? ')
print(name + ' likes ' + fav_color)


import datetime

current_date = datetime.date.today()
current_year = current_date.year # Extract current year only
current_month = current_date.month # Extract current month only
current_day = current_date.day # Extract current day only

bYear = int(input ("Enter Birth Year: "))

age= current_year - bYear
print("Your current age is ", age)
print(name[0],name[1],name[2],name[3],name[4])
print(name[0:])



