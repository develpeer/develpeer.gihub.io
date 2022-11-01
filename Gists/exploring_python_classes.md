---
layout: default
title: Gist for - exploring_python_classes.py
parent: Gist for fun
nav_order: 5
---

# Gist for:  exploring_python_classes.py

# Source Code 
```  python

class MY_FIRST_CLASS:
    """Should class names be camel case? 
    Who the fuck knows? And honestly how does it matter in a language 
    that actually uses white space for control flow. And  declarations 
    and semantics are implied by bullshit like __ and 3 quotes(which is idiotic) and stupid"""

    class_var = 100
    class_var_2 = class_var+100

    __private_var__ = 200

    def __init__(self, param):
        self.o_var_1 = 300
        self.o_var_2 = param

    def __repr__(self) -> str:
        # this here is a great example of the bulshitteryu that is python control flow 
        # If you want to remove leading spaces, you have to stick the lines to the left, which breaks 
        # the visual control flow bullshit that python developers love so much 
        return f"""
                classvar:{MY_FIRST_CLASS.class_var}, #class var accessed via class
                classvar_2:{self.class_var_2}, #class var accessed via class
                o_var_1:{getattr(self,"o_var_1","UNDEFINED")},
                o_var_2:{self.o_var_2},                
                """
                
        pass

    def f1(*args):
        for arg in args:
            print("I got me some args y'all, because python " 
            "uses an implicit invocation context to differentiate betwwen instance and class methods"
            "\n That is if this method is an object method, you must declare its firt arg as 'self', which fuck that ..i'm going to"
            "just call python_sucks..see next method"
            "\n Stupid stupid python", f"arg = {arg}")
        return "you get what you so.. do not deserve "

    def f2(this):
        return this.o_var_2 *100
        
class MY_DERIVED_CLASS(MY_FIRST_CLASS):
    pass

o = MY_FIRST_CLASS(3.14)
print(o)

print("-"*40,"\n","All the attribites of o:\n","\n * ".join(dir(o)))
print("-"*40,"\n","All the attribites of MyFirstClass:\n","\n * ".join(dir(MY_FIRST_CLASS)))

del o.o_var_1
try:
    print(o.o_var_1)
except AttributeError as ae:
    print(ae,("\n!!!!You can delete attributes of an object from outside the object.. WTF!!\n"
            "So much for encapsulation"))    

print(f"MY_FIRST_CLASS.f1 {MY_FIRST_CLASS.f1}")
print(f"MY_FIRST_CLASS.f1() {MY_FIRST_CLASS.f1()}")
print(f"o.f1 {o.f1}")
print(f"o.f1 {o.f1()}")
print(f"o.f2 {o.f2}")
print(f"o.f2 returned {o.f2()}")
try:
    MY_FIRST_CLASS.f2()
except:
    print("invoking the method at class level will cause a TypeError")

#binding 
of2 = o.f2
print("This should work just fine. 'of2' is bound to 'o': ",of2())        

print("Class variables can be accessed in one of two ways outside the class definition:", MY_FIRST_CLASS.class_var == o.class_var)

o3 = MY_DERIVED_CLASS(-200)
print(vars(o3),o3.class_var, o3.class_var_2,o3.f2())

```


# Output
After running the above code snippet, you will get this output

```
>>>
>>> classvar:100, #class var accessed via class
>>> classvar_2:200, #class var accessed via class
>>> o_var_1:300,
>>> o_var_2:3.14,
>>>
>>> ----------------------------------------
>>> All the attribites of o:
>>> __class__
>>> copyGists.sh rebuild.sh __delattr__
>>> copyGists.sh rebuild.sh __dict__
>>> copyGists.sh rebuild.sh __dir__
>>> copyGists.sh rebuild.sh __doc__
>>> copyGists.sh rebuild.sh __eq__
>>> copyGists.sh rebuild.sh __format__
>>> copyGists.sh rebuild.sh __ge__
>>> copyGists.sh rebuild.sh __getattribute__
>>> copyGists.sh rebuild.sh __gt__
>>> copyGists.sh rebuild.sh __hash__
>>> copyGists.sh rebuild.sh __init__
>>> copyGists.sh rebuild.sh __init_subclass__
>>> copyGists.sh rebuild.sh __le__
>>> copyGists.sh rebuild.sh __lt__
>>> copyGists.sh rebuild.sh __module__
>>> copyGists.sh rebuild.sh __ne__
>>> copyGists.sh rebuild.sh __new__
>>> copyGists.sh rebuild.sh __private_var__
>>> copyGists.sh rebuild.sh __reduce__
>>> copyGists.sh rebuild.sh __reduce_ex__
>>> copyGists.sh rebuild.sh __repr__
>>> copyGists.sh rebuild.sh __setattr__
>>> copyGists.sh rebuild.sh __sizeof__
>>> copyGists.sh rebuild.sh __str__
>>> copyGists.sh rebuild.sh __subclasshook__
>>> copyGists.sh rebuild.sh __weakref__
>>> copyGists.sh rebuild.sh class_var
>>> copyGists.sh rebuild.sh class_var_2
>>> copyGists.sh rebuild.sh f1
>>> copyGists.sh rebuild.sh f2
>>> copyGists.sh rebuild.sh o_var_1
>>> copyGists.sh rebuild.sh o_var_2
>>> ----------------------------------------
>>> All the attribites of MyFirstClass:
>>> __class__
>>> copyGists.sh rebuild.sh __delattr__
>>> copyGists.sh rebuild.sh __dict__
>>> copyGists.sh rebuild.sh __dir__
>>> copyGists.sh rebuild.sh __doc__
>>> copyGists.sh rebuild.sh __eq__
>>> copyGists.sh rebuild.sh __format__
>>> copyGists.sh rebuild.sh __ge__
>>> copyGists.sh rebuild.sh __getattribute__
>>> copyGists.sh rebuild.sh __gt__
>>> copyGists.sh rebuild.sh __hash__
>>> copyGists.sh rebuild.sh __init__
>>> copyGists.sh rebuild.sh __init_subclass__
>>> copyGists.sh rebuild.sh __le__
>>> copyGists.sh rebuild.sh __lt__
>>> copyGists.sh rebuild.sh __module__
>>> copyGists.sh rebuild.sh __ne__
>>> copyGists.sh rebuild.sh __new__
>>> copyGists.sh rebuild.sh __private_var__
>>> copyGists.sh rebuild.sh __reduce__
>>> copyGists.sh rebuild.sh __reduce_ex__
>>> copyGists.sh rebuild.sh __repr__
>>> copyGists.sh rebuild.sh __setattr__
>>> copyGists.sh rebuild.sh __sizeof__
>>> copyGists.sh rebuild.sh __str__
>>> copyGists.sh rebuild.sh __subclasshook__
>>> copyGists.sh rebuild.sh __weakref__
>>> copyGists.sh rebuild.sh class_var
>>> copyGists.sh rebuild.sh class_var_2
>>> copyGists.sh rebuild.sh f1
>>> copyGists.sh rebuild.sh f2
>>> 'MY_FIRST_CLASS' object has no attribute 'o_var_1'
>>> !!!!You can delete attributes of an object from outside the object.. WTF!!
>>> So much for encapsulation
>>> MY_FIRST_CLASS.f1 <function MY_FIRST_CLASS.f1 at 0x1059f2830>
>>> MY_FIRST_CLASS.f1() you get what you so.. do not deserve
>>> o.f1 <bound method MY_FIRST_CLASS.f1 of
>>> classvar:100, #class var accessed via class
>>> classvar_2:200, #class var accessed via class
>>> o_var_1:UNDEFINED,
>>> o_var_2:3.14,
>>> >
>>> I got me some args y'all, because python uses an implicit invocation context to differentiate betwwen instance and class methods
>>> That is if this method is an object method, you must declare its firt arg as 'self', which fuck that ..i'm going tojust call python_sucks..see next method
>>> Stupid stupid python arg =
>>> classvar:100, #class var accessed via class
>>> classvar_2:200, #class var accessed via class
>>> o_var_1:UNDEFINED,
>>> o_var_2:3.14,
>>>
>>> o.f1 you get what you so.. do not deserve
>>> o.f2 <bound method MY_FIRST_CLASS.f2 of
>>> classvar:100, #class var accessed via class
>>> classvar_2:200, #class var accessed via class
>>> o_var_1:UNDEFINED,
>>> o_var_2:3.14,
>>> >
>>> o.f2 returned 314.0
>>> invoking the method at class level will cause a TypeError
>>> This should work just fine. 'of2' is bound to 'o': 314.0
>>> Class variables can be accessed in one of two ways outside the class definition: True
>>> {'o_var_1': 300, 'o_var_2': -200} 100 200 -20000
```
