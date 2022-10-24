---
layout: default
title: Gist for - module_exercises.py
parent: Gist for fun
nav_order: 10
---

# Gist for:  module_exercises.py

# Source Code 
```  python
from xxlimited import foo
import foobonacci
from foobonacci import *

# importing stuff in foobonacci properly
whoami()
fib2(10)
try:
    sub_foob.whoami()
except:
    print("Sub Foob will not be imported")

try:
    foobonacci.sub_foob.whoami()
except:
    print("sub_foob cannot be accessed by reference")

print("sub_foob has to be explicitly imported..and will be initialized ")
import foobonacci.sub_foob
foobonacci.sub_foob.whoami()

print("sub_foob can be imported again..but will not be re-initialized ")
import foobonacci.sub_foob as xyz
xyz.whoami()

##
# Private module variables are visible, underscore or not
##
print("==>",foobonacci.__test_param)

##
# Module symbols/attributes are modifiable outside the module. (stupid stupid python. math.get_screen_size() anyone?)
##
try:
    from foobonacci import x  
except Exception as e:
    print("Import error",e)

foobonacci.x  = 90
from foobonacci import x
print("You can introduce attributes into modules. x was not declared within the module foobonacci",x)
del foobonacci.x
try:
    from foobonacci import x  
except Exception as e:
    print(f"Attribute x has now been deleted: Importing will throw error '{e}'")


```


# Output
After running the above code snippet, you will get this output

```
>>> ++++++++++++++++++++++++++++++++++++++++
>>> Initializing foobonacci
>>> ++++++++++++++++++++++++++++++++++++++++
>>> Declaring fib1
>>> Declaring fib2
>>> I am: foobonacci
>>> fib2 31
>>> fib2 73
>>> fib2 87
>>> fib2 13
>>> fib2 94
>>> fib2 8
>>> fib2 13
>>> fib2 50
>>> fib2 26
>>> fib2 100
>>>
>>> Sub Foob will not be imported
>>> sub_foob cannot be accessed by reference
>>> sub_foob has to be explicitly imported..and will be initialized
>>> ++++++++++++++++++++++++++++++++++++++++
>>> Initializing sub_foob
>>> ++++++++++++++++++++++++++++++++++++++++
>>> I am: foobonacci.sub_foob
>>> sub_foob can be imported again..but will not be re-initialized
>>> I am: foobonacci.sub_foob
>>> ==> private value
>>> Import error cannot import name 'x' from 'foobonacci' (/Users/amit/PROJ/gistAnotherRepo/src/foobonacci/__init__.py)
>>> You can introduce attributes into modules. x was not declared within the module foobonacci 90
>>> Attribute x has now been deleted: Importing will throw error 'cannot import name 'x' from 'foobonacci' (/Users/amit/PROJ/gistAnotherRepo/src/foobonacci/__init__.py)'
```
