//Programas en dafny Vol. 1

method ray (b : int, a : int) returns (c : int)
 // requires a > 0 && b > 0
  ensures c == a*b
  {
    return a*b;
} 

method troyan (x : int) returns (z : int)
  ensures z == x + 2
{
  return x + 2;
}

method Abs (x: int ) returns (x': int )
 ensures x' >= 0
 ensures (x < 0 && x' == -1*x) || (x' ==x)
 {
 x' := x;
 if(x' < 0) { x' := x' * -1; }
 }

