---
layout: default
title: Gist for: fibonacci_generator.py
parent: Gists
nav_order: 1
---

# Gist for:  fibonacci_generator.py
```  python
# the one and only Dev.E.L'Peer  https://github.com/develpeer
##
# A bunch of examples explaining the use of generators in python
##

import types


def fib(*args):
    """
    generates fibonacci series, upto N alements apssed in as an argument, or infinitely
    :param args:
    :return:
    """
    if (len(args)):
        num_elements = args[0]
    else:
        num_elements = -1
    x, y, n = 1, 1, 1
    yield x
    while n < num_elements or num_elements < 0:
        x, y = y, x + y
        yield x
        n += 1


max_elements = 10
print(list(fib(max_elements)))

## Notice that this genetrator can be reused, because
## the values get re-initialized every time you call
fib_gen = fib()
if type(fib_gen) == types.GeneratorType:
    print("Good, The fib function is a generator.")
    counter, l = 0, []
    while counter < max_elements:
        l.append(next(fib_gen))
        counter += 1
    print(l)
```
