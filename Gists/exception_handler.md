---
layout: default
title: Gist for - exception_handler.py
parent: Gist for fun
nav_order: 4
---

# Gist for:  exception_handler.py

# Source Code 
```  python
# the one and only Dev.E.L'Peer  https://github.com/develpeer
##
# A bunch of examples explaining exception handling in python
##
import sys
try:
    try:
        y = 1/0
    except NameError:
        #the above line will throw a ZeroDivisionError..so it should not come here..
        assert (True == False)
    finally:
        #That however means that the finaly block will not
        print('>'*4,"It come here even if the exception is not caught")
except ZeroDivisionError:
    #do nothing
    print("(*) Well caught in the deep")
finally:
    print("And finally...will come here")



##
# You can even catch syntax errors
##

try:
    eval("hello(:")
except SyntaxError as s:
    print("Caught the syntax error",s,file=sys.stderr)

class B(Exception):
    pass

class C(B):
    pass

class D(C):
    pass

##
# Except will only catch its own class or a parent class
##
for cls in [D, C, B]:
    try:
        raise cls()
    except C:
        print("C")
    except B:
        print("B")

```


# Output
After running the above code snippet, you will get this output

```
>>> >>>> It come here even if the exception is not caught
>>> (*) Well caught in the deep
>>> And finally...will come here
>>> C
>>> C
>>> B
```
