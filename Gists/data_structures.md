---
layout: default
title: Gist for - data_structures.py
parent: Gist for fun
nav_order: 1
---

# Gist for:  data_structures.py

# Source Code 
```  python
##
# List prepend test
##

import math

list_1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print(f"Before prepend list_1 : {list_1}")
list_1[:0] = [666]
print(f"After prepend list_1 : {list_1}")
list_1 = [665] + list_1
print(f"After prepend list_1 : {list_1}")
list_1[:] = 664, *list_1
print(f"After prepend list_1 : {list_1}")
list_1.insert(0, 663)
print(f"After prepend list_1 : {list_1}")
list_1.insert(2, 664.5)
print(f"After insert list_1 : {list_1}")
list_1[4:4] = 655.5,
print(f"After insert list_1 : {list_1}")

print("-=-" * 25)
# Square all digits using a generator
print([x ** 2 for x in range(10)])
# Square all even digits
print([(x, x ** 2) for x in range(10) if not x % 2])
# this expression is a generator
gee = (x * 2 for x in range(10))
print(next(gee))  # first element
print(next(gee))  # second element
print(*gee)  # remaining elements

t = ("hello", None)
print(t)
u = ("hello",)
v = ("hello",)

print(t == v, u == v)
a = set('tyler')
b = set('nol')
print("Set Diff:", a - b)
print("Set Union:", a | b)
print("Set intersection:", a & b)
print("Set XOR", (a | b) - (a & b))
print("Set XOR", a ^ b)

# zip joins two lists sequentially
q = ['name', 'quest', 'favorite color']
a = ['lancelot', 'the holy grail', 'blue']
for k, v in zip(q, a):
    print(k, v)
print(dict(zip(q, a)))

# filtering a list using agenrator
raw_data = [56.2, float('NaN'), 51.7, 55.3, 52.5, float('NaN'), 47.8]
filtered_data = [(k + 1) for k in raw_data if not math.isnan(k)]
print("Filtered data is ", filtered_data)

# are sets usable as dicts?
s = {"a", "b"}
print(s, type(s))
try:
    print(s.keys(), s.items())
except:
    print("calling .keys() or .items() will fail")
    try:
        s["a"] = 0
    except:
        print("assigning values to a set will also fail")

print(s, type(s))

try:
    print (None < "b")
except TypeError:
    print ("Comparing objects of different types with < or > is legal provided that the objects have appropriate comparison methods")

```


# Output
After running the above code snippet, you will get this output

```
>>> Before prepend list_1 : [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> After prepend list_1 : [666, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> After prepend list_1 : [665, 666, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> After prepend list_1 : [664, 665, 666, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> After prepend list_1 : [663, 664, 665, 666, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> After insert list_1 : [663, 664, 664.5, 665, 666, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> After insert list_1 : [663, 664, 664.5, 665, 655.5, 666, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> -=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=--=-
>>> [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
>>> [(0, 0), (2, 4), (4, 16), (6, 36), (8, 64)]
>>> 0
>>> 2
>>> 4 6 8 10 12 14 16 18
>>> ('hello', None)
>>> False True
>>> Set Diff: {'y', 't', 'e', 'r'}
>>> Set Union: {'l', 'o', 'r', 'e', 'y', 'n', 't'}
>>> Set intersection: {'l'}
>>> Set XOR {'o', 'y', 't', 'r', 'e', 'n'}
>>> Set XOR {'o', 'y', 't', 'r', 'e', 'n'}
>>> name lancelot
>>> quest the holy grail
>>> favorite color blue
>>> {'name': 'lancelot', 'quest': 'the holy grail', 'favorite color': 'blue'}
>>> Filtered data is [57.2, 52.7, 56.3, 53.5, 48.8]
>>> {'b', 'a'} <class 'set'>
>>> calling .keys() or .items() will fail
>>> assigning values to a set will also fail
>>> {'b', 'a'} <class 'set'>
>>> Comparing objects of different types with < or > is legal provided that the objects have appropriate comparison methods
```
