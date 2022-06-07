---
layout: default
title: Gist for: function_variables.py
parent: Gists
nav_order: 1
---

# Gist for:  function_variables.py
```  python
# the one and only Dev.E.L'Peer  https://github.com/develpeer
##
# This gist explores how function invocations affect variablke scopes
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

```
