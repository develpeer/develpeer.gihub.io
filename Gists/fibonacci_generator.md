---
layout: default
title: Gist for - fibonacci_generator.py
parent: Gist for fun
nav_order: 7
---

# Gist for:  fibonacci_generator.py

# Source Code 
```  python
# the one and only Dev.E.L'Peer  https://github.com/develpeer
##
# A bunch of examples explaining the use of generators in python
##

import types


def fibonacci_using_generators(num_elements = -1):
    """
    generates fibonacci series, upto N elements passed in as an argument, or infinitely
    :param args:
    :return:
    """
    x, y, n = 1, 1, 1
    yield x
    while n < num_elements or num_elements < 0:
        x, y = y, x + y
        yield x
        n += 1


max_elements = 10
print(f"Generating a fibonacci list with {max_elements} elements",list(fibonacci_using_generators(max_elements)))

## Notice that this genetrator can be reused, because
## the values get re-initialized every time you call
fib_gen = fibonacci_using_generators()
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
>>> Generating a fibonacci list with 10 elements [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
>>> Good, The fib function is a generator.
>>> [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
```
