---
layout: default
title: Gist for: module_declaration.py
parent: Gist for fun
nav_order: 1
---

# Gist for:  module_declaration.py
```  python
print("<<< Only importing fib")
from foobonaci import fib1 as fib2,fib2 as fib1

print(">>>import done")
fib2(3)
print("We just flipped the names after import")
fib1(3)

import sys, site

print("Module names", sys.builtin_module_names)
print("System path",sys.path)
print("Prefixes:",site.PREFIXES)
print("User site:",site.USER_SITE)

print("sys tiene",dir(sys))
print("global namespace",dir())```
