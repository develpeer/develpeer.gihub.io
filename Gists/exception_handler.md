---
layout: default
title: Gist for - exception_handler.py
parent: Gists
---

# Gist for:  exception_handler.py
```  python
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
```
