---
layout: default
title: Gist for - function_variables.py
parent: Gist for fun
nav_order: 6
---

# Gist for:  function_variables.py

# Source Code 
```  python
# the one and only Dev.E.L'Peer  https://github.com/develpeer
##
# This gist explores how function invocations affect variable scopes
##
from copy import copy, deepcopy

x = 10


def func_in_func():
    outer_var = 99
    print(f"Are outer variables accessible? [outer_var = {x}]")

    def inner_func():
        print(f"Are outer variables accessible? [outer_var = {outer_var}]")
        print(f"Are outer variables accessible? [outer_var = {x}]")

    inner_func()


func_in_func()


def name_collision_variable_hoisting():
    try:
        # this will throw an error because the name collides with
        # global namespace and the var havsnt been initialsed yet
        print(f" During execution:x :{x}")
    except Exception as e:
        print(f"Attempting to use the variable 'x' will throw the error:[{e}]")
    x = 11
    print(f"During execution:x :{x}")


print(f"\n{'=' * 25}\nBefore execution: x :{x}")  # global
name_collision_variable_hoisting()  # local
print(f"After execution: x :{x}")  # global

#
# Do functions get called by value or called by reference
#
print(f"\n{'== ' * 25}\nSimple Dict pass by reference\n{'== ' * 25}")
d1 = {"dev": 1, "eloper": 2}


def modify_reference(d):
    d["dev"] = "this is modifiable"
    if d.get("d1"):
        d["d1"]["dev"] = "Does modifying this work?"


print(f"Value of 'd1' before invocation is:{d1}")
modify_reference(d1)
print(f"Value of 'd1' after invocation is:{d1}")

##
# How does pass by reference impact primitives
##
x = 100
def modify_param(y):
    y=1000
    return y

print("Does pass by reference mess things up for primitives? Of course not",x,modify_param(x),x)

##
# How does pass by reference impact objects
##
z = [100]
def modify_object(y):
    z[0] = 1000
    return z
print("Does pass by reference mess things up for objects? Of course YES!!",x,modify_object(z),z)



##
# Make a deep copy to prevent modification
##
print(f"\n{'== ' * 25}\nSimple Dict pass shallow copy\n{'== ' * 25}")
d2 = {"dev": 1, "eloper": 2}
print(f"Value of 'd2' before invocation is:{d2}")
modify_reference(copy(d2))
print(f"Value of 'd2' after invocation is:{d2}")

print(f"\n{'== ' * 25}\nObject with internal object\n{'== ' * 25}")
d2["d1"] = {"dev": 1, "eloper": 2}
print(f"Value of 'd2' before invocation is:{d2}")
modify_reference(copy(d2))
print(f"Value of 'd2' after invocation is:{d2}")

print(f"\n{'== ' * 25}\nObject with internal object -> do a deep copy\n{'== ' * 25}")
d2["d1"] = {"dev": 1, "eloper": 2}
print(f"Value of 'd2' before invocation is:{d2}")
modify_reference(deepcopy(d2))
print(f"Value of 'd2' after invocation is:{d2}")

##
# local and gloabl "namespaces".. "honking great idea" - my a$$
##
def test_locals():
    inner_var = 10
    print("Globals===>",globals(),"\n"+"===="*20,)
    l = locals()
    print("Locals",l)

    inner_var_2 = 90
    print("Locals and  will now contain 'inner_var_2', So will l. \nlocals()=",locals(),"\nl=", l)

    l["inner_var"],l["inner_var_2"]=0.1,0.9
    print("Can modify values in l:", l["inner_var"],l["inner_var_2"])
    print("But not local variables", inner_var, inner_var_2 )
    
    
test_locals()
```


# Output
After running the above code snippet, you will get this output

```
>>> Are outer variables accessible? [outer_var = 10]
>>> Are outer variables accessible? [outer_var = 99]
>>> Are outer variables accessible? [outer_var = 10]
>>>
>>> =========================
>>> Before execution: x :10
>>> Attempting to use the variable 'x' will throw the error:[local variable 'x' referenced before assignment]
>>> During execution:x :11
>>> After execution: x :10
>>>
>>> == == == == == == == == == == == == == == == == == == == == == == == == ==
>>> Simple Dict pass by reference
>>> == == == == == == == == == == == == == == == == == == == == == == == == ==
>>> Value of 'd1' before invocation is:{'dev': 1, 'eloper': 2}
>>> Value of 'd1' after invocation is:{'dev': 'this is modifiable', 'eloper': 2}
>>> Does pass by reference mess things up for primitives? Of course not 100 1000 100
>>> Does pass by reference mess things up for objects? Of course YES!! 100 [1000] [1000]
>>>
>>> == == == == == == == == == == == == == == == == == == == == == == == == ==
>>> Simple Dict pass shallow copy
>>> == == == == == == == == == == == == == == == == == == == == == == == == ==
>>> Value of 'd2' before invocation is:{'dev': 1, 'eloper': 2}
>>> Value of 'd2' after invocation is:{'dev': 1, 'eloper': 2}
>>>
>>> == == == == == == == == == == == == == == == == == == == == == == == == ==
>>> Object with internal object
>>> == == == == == == == == == == == == == == == == == == == == == == == == ==
>>> Value of 'd2' before invocation is:{'dev': 1, 'eloper': 2, 'd1': {'dev': 1, 'eloper': 2}}
>>> Value of 'd2' after invocation is:{'dev': 1, 'eloper': 2, 'd1': {'dev': 'Does modifying this work?', 'eloper': 2}}
>>>
>>> == == == == == == == == == == == == == == == == == == == == == == == == ==
>>> Object with internal object -> do a deep copy
>>> == == == == == == == == == == == == == == == == == == == == == == == == ==
>>> Value of 'd2' before invocation is:{'dev': 1, 'eloper': 2, 'd1': {'dev': 1, 'eloper': 2}}
>>> Value of 'd2' after invocation is:{'dev': 1, 'eloper': 2, 'd1': {'dev': 1, 'eloper': 2}}
>>> Globals===> {'__name__': '__main__', '__doc__': None, '__package__': None, '__loader__': <_frozen_importlib_external.SourceFileLoader object at 0x100f54c40>, '__spec__': None, '__annotations__': {}, '__builtins__': <module 'builtins' (built-in)>, '__file__': '/Users/amit/PROJ/pub/bin/../../gistAnotherRepo/src/function_variables.py', '__cached__': None, 'copy': <function copy at 0x100fb69e0>, 'deepcopy': <function deepcopy at 0x100fe3e20>, 'x': 100, 'func_in_func': <function func_in_func at 0x100fb68c0>, 'name_collision_variable_hoisting': <function name_collision_variable_hoisting at 0x100ff4310>, 'd1': {'dev': 'this is modifiable', 'eloper': 2}, 'modify_reference': <function modify_reference at 0x100ff43a0>, 'modify_param': <function modify_param at 0x100ff4430>, 'z': [1000], 'modify_object': <function modify_object at 0x100ff44c0>, 'd2': {'dev': 1, 'eloper': 2, 'd1': {'dev': 1, 'eloper': 2}}, 'test_locals': <function test_locals at 0x100ff4700>}
>>> ================================================================================
>>> Locals {'inner_var': 10}
>>> Locals and will now contain 'inner_var_2', So will l.
>>> locals()= {'inner_var': 10, 'l': {...}, 'inner_var_2': 90}
>>> l= {'inner_var': 10, 'l': {...}, 'inner_var_2': 90}
>>> Can modify values in l: 0.1 0.9
>>> But not local variables 10 90
```
