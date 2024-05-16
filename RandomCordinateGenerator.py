import random

def cordrange(number):
    for _ in range(number):
        x = str(random.randint(1720367, 1726613))
        y = str(random.randint(1126916, 1135235))
        print(x + ", " + y)
    
cordrange(1)