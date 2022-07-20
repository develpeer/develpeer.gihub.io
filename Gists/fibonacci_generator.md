---
layout: default
title: Gist for - fibonacci_generator.py
parent: Gist for fun
nav_order: 3
---

# Gist for:  fibonacci_generator.py

# Source Code 
```  python
# the one and only Dev.E.L'Peer  https://github.com/develpeer
##
# A bunch of examples explaining the use of generators in python
##

import types


def fib(*args):
    """
    generates fibonacci series, upto N elements passed in as an argument, or infinitely
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


# Output
After running the above code snippet, you will get this output

```
>>> [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
>>> Good, The fib function is a generator.
>>> [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
```
