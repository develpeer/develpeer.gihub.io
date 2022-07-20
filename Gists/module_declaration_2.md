---
layout: default
title: Gist for - module_declaration_2.py
parent: Gist for fun
nav_order: 8
---

# Gist for:  module_declaration_2.py

# Source Code 
```  python
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


print("==>",foobonacci.__test_param)







```


# Output
After running the above code snippet, you will get this output

```
>>> ++++++++++++++++++++++++++++++++++++++++
>>> Stuff outside declaration of FIB
>>> ++++++++++++++++++++++++++++++++++++++++
>>> ++++++++++++++++++++++++++++++++++++++++
>>> Stuff outside declaration for FIB2
>>> ++++++++++++++++++++++++++++++++++++++++
>>> I am: foobonacci
>>> fib2 93
>>> fib2 67
>>> fib2 51
>>> fib2 23
>>> fib2 49
>>> fib2 9
>>> fib2 65
>>> fib2 98
>>> fib2 43
>>> fib2 2
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
```
