---
layout: default
title: Gist for - module_declaration.py
parent: Gist for fun
nav_order: 9
---

# Gist for:  module_declaration.py

# Source Code 
```  python
# the one and only Dev.E.L'Peer  https://github.com/develpeer
##
# A bunch of examples explaining modules in python
##

print("<<< Only importing 'whoami'")
from foobonacci.sub_foob import whoami
whoami()
print(">>>import done, Entire chain of modules is initialized.")

print("<<< Only importing fib")
from foobonacci import fib1 as fib2,fib2 as fib1
print(">>>import done. Nothing gets re-initialized")
fib2(3)
print("We just flipped the names after import")
fib1(3)

import sys, site

print("Module names", sys.builtin_module_names)
# print("System path",sys.path)
# print("Prefixes:",site.PREFIXES)
# print("User site:",site.USER_SITE)

print("sys tiene",dir(sys))
print("global namespace",dir())
```


# Output
After running the above code snippet, you will get this output

```
>>> <<< Only importing 'whoami'
>>> ++++++++++++++++++++++++++++++++++++++++
>>> Initializing foobonacci
>>> ++++++++++++++++++++++++++++++++++++++++
>>> Declaring fib1
>>> Declaring fib2
>>> ++++++++++++++++++++++++++++++++++++++++
>>> Initializing sub_foob
>>> ++++++++++++++++++++++++++++++++++++++++
>>> I am: foobonacci.sub_foob
>>> >>>import done, Entire chain of modules is initialized.
>>> <<< Only importing fib
>>> >>>import done. Nothing gets re-initialized
>>> fib1 93
>>> fib1 97
>>> fib1 7
>>>
>>> We just flipped the names after import
>>> fib2 58
>>> fib2 35
>>> fib2 98
>>>
>>> Module names ('_abc', '_ast', '_codecs', '_collections', '_functools', '_imp', '_io', '_locale', '_operator', '_signal', '_sre', '_stat', '_string', '_symtable', '_thread', '_tracemalloc', '_warnings', '_weakref', 'atexit', 'builtins', 'errno', 'faulthandler', 'gc', 'itertools', 'marshal', 'posix', 'pwd', 'sys', 'time', 'xxsubtype')
>>> sys tiene ['__breakpointhook__', '__displayhook__', '__doc__', '__excepthook__', '__interactivehook__', '__loader__', '__name__', '__package__', '__spec__', '__stderr__', '__stdin__', '__stdout__', '__unraisablehook__', '_base_executable', '_clear_type_cache', '_current_exceptions', '_current_frames', '_deactivate_opcache', '_debugmallocstats', '_framework', '_getframe', '_git', '_home', '_xoptions', 'abiflags', 'addaudithook', 'api_version', 'argv', 'audit', 'base_exec_prefix', 'base_prefix', 'breakpointhook', 'builtin_module_names', 'byteorder', 'call_tracing', 'copyright', 'displayhook', 'dont_write_bytecode', 'exc_info', 'excepthook', 'exec_prefix', 'executable', 'exit', 'flags', 'float_info', 'float_repr_style', 'get_asyncgen_hooks', 'get_coroutine_origin_tracking_depth', 'getallocatedblocks', 'getdefaultencoding', 'getdlopenflags', 'getfilesystemencodeerrors', 'getfilesystemencoding', 'getprofile', 'getrecursionlimit', 'getrefcount', 'getsizeof', 'getswitchinterval', 'gettrace', 'hash_info', 'hexversion', 'implementation', 'int_info', 'intern', 'is_finalizing', 'maxsize', 'maxunicode', 'meta_path', 'modules', 'orig_argv', 'path', 'path_hooks', 'path_importer_cache', 'platform', 'platlibdir', 'prefix', 'pycache_prefix', 'set_asyncgen_hooks', 'set_coroutine_origin_tracking_depth', 'setdlopenflags', 'setprofile', 'setrecursionlimit', 'setswitchinterval', 'settrace', 'stderr', 'stdin', 'stdlib_module_names', 'stdout', 'thread_info', 'unraisablehook', 'version', 'version_info', 'warnoptions']
>>> global namespace ['__annotations__', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', 'fib1', 'fib2', 'site', 'sys', 'whoami']
```
