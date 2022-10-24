---
layout: default
title: Gist for - input_output.py
parent: Gist for fun
nav_order: 7
---

# Gist for:  input_output.py

# Source Code 
```  python
# the one and only Dev.E.L'Peer  https://github.com/develpeer
##
# A bunch of examples explaining i/o in python
##
# using a while loop with readline
# and also using the != expression which assigns value of intermediate expressions to variables (e.g) 
f = None
try:
    f =  open("README.md")
except FileNotFoundError as e:
    print("Failed to find readme file..Trying an alternate location")
    try:
        f =  open("../../gistAnotherRepo/README.md")
    except FileNotFoundError as e:    
            print("File not found at all. Give up completely")

if f:
    while l := f.readline():
        print(repr(l))

    


```


# Output
After running the above code snippet, you will get this output

```
>>> Failed to find readme file..Trying an alternate location
>>> '# gistAnotherRepon'
>>> 'Lots of Gistsn'
>>> 'n'
>>> '```rubyn'
>>> "require 'redcarpet'n"
>>> 'markdown = Redcarpet.new("Hello World!")n'
>>> 'puts markdown.to_htmln'
>>> '```n'
```
