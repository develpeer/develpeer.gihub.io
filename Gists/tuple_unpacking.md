---
layout: default
title: Gist for - tuple_unpacking.py
parent: Gist for fun
nav_order: 13
---

# Gist for:  tuple_unpacking.py

# Source Code 
```  python
# the one and only Dev.E.L'Peer  https://github.com/develpeer

##
# Tuple (or iterable) expansion, one of the most loved/hated features of python
##
(a, b) = 0, 1
print(f"a {a},b {b}")

a, b = (a + 100, b + 100)
print(f"a {a},b {b}")

a, b = [a + 100, b + 100]
print(f"a {a},b {b}")

(a, b) = [a + 100, b + 100]
print(f"a {a},b {b}")

(a, b) = range(2)
print(f"a {a},b {b}")

# following examples from https://stackabuse.com/unpacking-in-python-beyond-parallel-assignment/
a, b, c = '123'
print(f"a:{a},b:{b},c:{c}")

my_dict = {'k1': 1, 'k2': 2, 'k3': 3}
a, b, c = my_dict
print(f"a:{a},b:{b},c:{c}")

a, b, c = my_dict.values()
print(f"a:{a},b:{b},c:{c}")

a, b, c = my_dict.items()
print(f"a:{a},b:{b},c:{c}")

# Unpacking generators
a, b, c = (i ** 2 for i in range(3))
print(f"a:{a},b:{b},c:{c}")
generator_object_1 = (i ** 2 for i in range(3))
generator_object_2 = (i for i in range(3))
generator_object_3 = range(3)

print("generators:", generator_object_1, generator_object_2, generator_object_3)
print("After iteration into lists", list(generator_object_1), list(generator_object_2), list(generator_object_3))
print("Only range works a second time...!", list(generator_object_1), list(generator_object_2),
      list(generator_object_3))

```


# Output
After running the above code snippet, you will get this output

```
>>> a 0,b 1
>>> a 100,b 101
>>> a 200,b 201
>>> a 300,b 301
>>> a 0,b 1
>>> a:1,b:2,c:3
>>> a:k1,b:k2,c:k3
>>> a:1,b:2,c:3
>>> a:('k1', 1),b:('k2', 2),c:('k3', 3)
>>> a:0,b:1,c:4
>>> generators: <generator object <genexpr> at 0x1101884a0> <generator object <genexpr> at 0x11018a260> range(0, 3)
>>> After iteration into lists [0, 1, 4] [0, 1, 2] [0, 1, 2]
>>> Only range works a second time...! [] [] [0, 1, 2]
```
