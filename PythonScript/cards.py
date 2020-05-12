import random
import time
now = time.strftime("%H:%M:%S %p - %A, %B %d %Y", time.localtime())

print (now)
suits = ('hearts', 'diamond', 'clubs', 'spades')
values = range(1,14)

cards = []

for s in suits:
    for v in values:
        cards.append("{0} of {1} ".format(v,s))

random.shuffle(cards)
print (random.choice(cards))
