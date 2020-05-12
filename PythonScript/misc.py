# x = float(input("Enter value for x: "))

# put your code here
# y = 1 / (x + (1/(x + 1 / (x + 1/x))))
# print("y =", y)

hour = int(input("Starting time (hours): "))
mins = int(input("Starting time (minutes): "))
dura = int(input("Event duration (minutes): "))


mins = mins + dura

if mins > 59:
    hour = hour + (mins // 60)
    mins = mins%60
else:
    hour = hour + (mins // 60)
if hour > 23:
    hour = hour%24
print("End Time: ", hour, ":", mins)
