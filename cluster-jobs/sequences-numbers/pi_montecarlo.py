from decimal import Decimal, getcontext
import random

getcontext().prec = 1000  # number of digits

def monte_carlo(n):
    inside = 0
    for _ in range(n):
        x = Decimal(random.random())
        y = Decimal(random.random())
        if x*x + y*y <= 1:
            inside += 1
    return inside

total = 10_000_000
# simple single-threaded version for high precision
inside = monte_carlo(total)
pi = Decimal(4) * Decimal(inside) / Decimal(total)
print(f"Estimated π = {pi}")
