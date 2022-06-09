import sys
from typing import Callable, Any, TypeVar, NamedTuple
from math import floor

import module_
import _dafny
import System_

assert "module_" == __name__
module_ = sys.modules[__name__]

class default__:
    @staticmethod
    def ray(b, a):
        c: int = int(0)
        c = (a) * (b)
        return c
        return c

    @staticmethod
    def troyan(x):
        z: int = int(0)
        z = (x) + (2)
        return z
        return z

    @staticmethod
    def Abs(x):
        x_k: int = int(0)
        x_k = x
        if (x_k) < (0):
            x_k = (x_k) * (-1)
        return x_k

