#Calculate circumference radius of a circle by its radius
import math
vpi = math.pi
r = float(input ("Enter the radius of the circle: "))

circm = 2*vpi*r

radius = vpi*(r**2)

print ("Circumference: " + str (circm))
print ("Radius: "  + str (radius))
