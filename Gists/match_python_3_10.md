---
layout: default
title: Gist for - match_python_3_10.py
parent: Gist for fun
nav_order: 11
---

# Gist for:  match_python_3_10.py

# Source Code 
```  python
# the one and only Dev.E.L'Peer  https://github.com/develpeer

##
# Python 3.10 introduced a new match construct,
# which matches static values and supports tuple expansion
##
def http_error(status):
    """
    Simple Match Statement. Matches static values
    :param status:
    :return: Status String
    """
    match status:
        case 400:
            return "Bad request"
        case 401:
            return "Unauthorized"
        case 403:
            return "Forbidden"
        case 404:
            return "Not found"
        case _:
            return "Other error"


print(http_error(400))


def p1(*args):
    '''
    Match with expression (tuple or iterable)  unpacking
    :param args:
    :return:
    '''
    match args:
        case x, y:
            print(f"X={x}, Y={y}")
        # empty params will match empty tuple
        case ():
            print("==>()")
        case c:
            print("==>Not 2 args", c)

    match args:
        case [x, y]:
            print(f"LIST X={x}, Y={y}")
        # empty params will match empty list
        case []:
            print("LIST ==>[]")
        case _:
            print("LIST ==>Not 2 args")

    match args:
        case x, y:
            print(f"NONE X={x}, Y={y}")
        # empty params will not match None
        case None:
            print("NONE ==>[]")
        case (c, ):
            print("NONE ==>Not 2 args", c)


p1(401, 600)
p1()
p1(401)
p1(401, )
p1(401, None)
p1(None, 401)


class Point:
    """
    Simple calss with 2 attributes
    """

    def __init__(self, *args):
        if len(args):
            self.x = args[0]
        if len(args) > 1:
            self.y = args[1]

    x: int
    y: int


def match_with_classes(point):
    """
    Matching with classes
    :param point:
    :return:
    """
    match point:
        case Point(x=var, y=variable) if variable == 9:
            print("Match with a guard for y=9 ", var, variable)
        case Point(x=var, y=variable):
            print("match with 2 'capture variables'", var, variable)
        case Point():
            print("Empty Point")
        case _:
            print("Not a point")


match_with_classes(Point(0, 9))  # y = 9
match_with_classes(Point(0, 0))  # copture variables
match_with_classes(Point())  # empty point
match_with_classes("developer")  # not a point


def match_with_lists(*args):
    """
    Matching with dicts
    :param args:
    :return:
    """
    match args:
        case x,:
            print(f"X={x}")
        # the * will match all other variabels
        case x, y, z, *_:
            print(f"X={x}, Y={y}, Z={z}")
        case x, *_, y:
            print(f"X={x}, Y={y}")
        case ():
            print("==>()")
        case c:
            print("==>Not 2 args", c)


match_with_lists(0)
match_with_lists(0, 1)
match_with_lists(0, 1, 2, 3, 4)


def match_with_dicts(point):
    match point:
        case Point(x=0, y=o):
            return ("Matches Point(x:0,y:0)")
        case {"x": 0, "y": 0, **rest}:
            return ("Matches {x:0,y:0} ", rest, list(rest.keys()))
        case _:
            return ("No Match")


print(match_with_dicts(Point()))
print(match_with_dicts(Point(0, 0)))
print(match_with_dicts({"x": 0, "y": 0}))
print(match_with_dicts({"x": 0, "y": 0, "z": 89}))

##
## Enum Matching
##
from enum import Enum


class Color(Enum):
    RED = 'red'
    GREEN = 'green'
    BLUE = 'blue'


print(Color('red'))
try:
    print(Color('developer'))
except:
    print("Failed")

##
## Confusing example (the capture variable name "green" is arbitrary)
##
red = "red"


def x2(x):
    match x:
        case green:
            print("found", green)


x2(red)

```


# Output
After running the above code snippet, you will get this output

```
>>> Bad request
>>> X=401, Y=600
>>> LIST X=401, Y=600
>>> NONE X=401, Y=600
>>> ==>()
>>> LIST ==>[]
>>> ==>Not 2 args (401,)
>>> LIST ==>Not 2 args
>>> NONE ==>Not 2 args 401
>>> ==>Not 2 args (401,)
>>> LIST ==>Not 2 args
>>> NONE ==>Not 2 args 401
>>> X=401, Y=None
>>> LIST X=401, Y=None
>>> NONE X=401, Y=None
>>> X=None, Y=401
>>> LIST X=None, Y=401
>>> NONE X=None, Y=401
>>> Match with a guard for y=9 0 9
>>> match with 2 'capture variables' 0 0
>>> Empty Point
>>> Not a point
>>> X=0
>>> X=0, Y=1
>>> X=0, Y=1, Z=2
>>> No Match
>>> Matches Point(x:0,y:0)
>>> ('Matches {x:0,y:0} ', {}, [])
>>> ('Matches {x:0,y:0} ', {'z': 89}, ['z'])
>>> Color.RED
>>> Failed
>>> found red
```
