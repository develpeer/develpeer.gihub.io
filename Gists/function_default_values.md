---
layout: default
title: Gist for - function_default_values.py
parent: Gist for fun
nav_order: 7
---

# Gist for:  function_default_values.py

# Source Code 
```  python
from random import randint


def standard_arg(arg):
    print(arg)


def pos_only_arg(arg, /):
    print(arg)


def kwd_only_arg(*, x):
    print(x)


def combined_example(pos_only, /, standard, *, kwd_only):
    print(f"pos_only:{pos_only}, standard:{standard}, kwd_only:{kwd_only}")


try:
    pos_only_arg(x=7)
except Exception as e:
    print(f"This should not work, since anything preceeding / is a positional argument[{e}]")

try:
    kwd_only_arg(7, x=7)
except Exception as e:
    print(f"This should not work, since anything following * is a kwarg [{e}]")

# either of these work
combined_example(1, 2, kwd_only=3)
combined_example(1, standard=2, kwd_only=3)

try:
    combined_example(pos_only=1, standard=2, kwd_only=3)
except Exception as e:
    print(f"This should not work: [{e}]")


def name_collision(name, **kwds):
    print(f"Value of name is '{name}'")
    print(f"Value of name in kwds is '{kwds.get('name')}'")


name_collision("Dev")
name_collision(name="Loper")
try:
    name_collision("Dev", name="Loper")
except Exception as e:
    print(f"If the name occurs in both pos and kwarg, that will throw an error:[{e}]")


# workaround for above
def duplicate_arguments_2(name, /, **kwds):
    print(f"Value of name is '{name}'")
    print(f"Value of name in kwds is '{kwds.get('name')}'")


duplicate_arguments_2("Dev", **{'name': "ELoper"})
# or..
duplicate_arguments_2("Dev", name="ELoper")


def is_the_last_argument_a_positional_argument(p1, *pos_args, p2):
    for p in pos_args:
        print(f"Arg:{p}")
    print("pos_arg:", p2)


try:
    is_the_last_argument_a_positional_argument(1, 2)
except Exception as e:
    print(f"Python will treat anything after 'variadic' as keyword args:[{e}]")

# however this should work
is_the_last_argument_a_positional_argument(1, 2, p2="200")

# "one" expresion can be nested etc..But wont allow match, if statements (except ternaries)
f = lambda x, y, z: x + y if (True if z else randint(0, 1)) else x * y
print(f(1, 2, True))
print(f(1, 2, False))


```


# Output
After running the above code snippet, you will get this output

```
>>> This should not work, since anything preceeding / is a positional argument[pos_only_arg() got an unexpected keyword argument 'x']
>>> This should not work, since anything following copyGists.sh rebuild.sh is a kwarg [kwd_only_arg() takes 0 positional arguments but 1 positional argument (and 1 keyword-only argument) were given]
>>> pos_only:1, standard:2, kwd_only:3
>>> pos_only:1, standard:2, kwd_only:3
>>> This should not work: [combined_example() got some positional-only arguments passed as keyword arguments: 'pos_only']
>>> Value of name is 'Dev'
>>> Value of name in kwds is 'None'
>>> Value of name is 'Loper'
>>> Value of name in kwds is 'None'
>>> If the name occurs in both pos and kwarg, that will throw an error:[name_collision() got multiple values for argument 'name']
>>> Value of name is 'Dev'
>>> Value of name in kwds is 'ELoper'
>>> Value of name is 'Dev'
>>> Value of name in kwds is 'ELoper'
>>> Python will treat anything after 'variadic' as keyword args:[is_the_last_argument_a_positional_argument() missing 1 required keyword-only argument: 'p2']
>>> Arg:2
>>> pos_arg: 200
>>> 3
>>> 2
```
