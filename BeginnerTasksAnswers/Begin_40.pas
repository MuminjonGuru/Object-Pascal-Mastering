Program Begin_40;

var
  x, y, a1, b1, c1, a2, b2, c2, d: Real;
  
Begin
  Write('a1 = '); ReadLn(a1);
  Write('b1 = '); ReadLn(b1);
  Write('c1 = '); ReadLn(c1);
  Write('a2 = '); ReadLn(a2);
  Write('b2 = '); ReadLn(b2);
  Write('c2 = '); ReadLn(c2);
  
  d := (a1 * b2 - a2 * b1);
  x := (c1 * b2 - c2 * b1) / d;
  y := (a1 * c2 - a2 * c1) / d;
  
  WriteLn('X = ', x, '; y = ', y);
  ReadLn;
  
End.  