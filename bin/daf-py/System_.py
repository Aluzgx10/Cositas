import sys
from typing import Callable, Any, TypeVar, NamedTuple
from math import floor

import module_
import _dafny

assert "System_" == __name__
System_ = sys.modules[__name__]

class nat:
    @staticmethod
    def default():
        return int(0)
