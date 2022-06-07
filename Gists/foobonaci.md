---
layout: default
title: Gist for: foobonaci.py
parent: Gist for fun
nav_order: 1
---

# Gist for:  foobonaci.py
```  python
import random
# Foobonacci numbers module
print(f"{'++'*20}\nStuff outside declaration of FIB \n{'++'*20}")
def fib1(n):    # write Fibonacci series up to n
    a=0
    while a < n:
        print("fib1",random.randint(1,100))
        a+=1
    print()


print(f"{'++'*20}\nStuff outside declaration for FIB2\n{'++'*20}")

# write Fibonacci series up to n
def fib2(n):
    a=0
    while a < n:
        print("fib2",random.randint(1,100))
        a+=1
    print()

import sys
if __name__ == "__main__":
    fib1(int(sys.argv[1]))
```
