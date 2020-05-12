def find_roots(a, b, c):
    x1 = int((-b + (((b**2) - 4*a*c))**0.5 ) /( a * 2))
    x2 = int((-b - (((b**2) - 4*a*c))**0.5 ) /( a * 2))
    y1 = "(" + str(x1) + ","+ str(x2)+ ")"
    y2 = "(" + str(x2) + ","+ str(x1)+ ")"
    root = y1 + " or " + y2
    return root
print(find_roots(2, 10, 8));
