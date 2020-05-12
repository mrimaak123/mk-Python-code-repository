import turtle

    
vForward = 200 #int(input("Forward value: "))
vLeft = 170 #int(input("Left value: "))
gogol = turtle.Turtle()

gogol.color ('blue','red')
gogol.begin_fill()
while True:
    gogol.forward(vForward)
    gogol.left(vLeft)
    if abs(gogol.pos()) < 1:
        break
gogol.end_fill()

turtle.bgcolor("green")
running = True
def f():
    if running:
        turtle.forward(50)
        turtle.left(60)
        turtle.ontimer(f, 250)

turtle.left(180)
turtle.forward(100)
f()


turtle.done()
