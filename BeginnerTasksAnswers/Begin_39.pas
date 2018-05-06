Program Begin_39;

var
  x1, x2, a, b, c, D: Real;
  
Begin
  Write('(a not equals 0): a = '); ReadLn(a);
  Write('b = '); ReadLn(b);
  Write('c = '); ReadLn(c);
  
  d := Sqr(b) - 4 * a * c;
  
  x1 := ((-b - sqrt(d)) / (2 * a));
  x2 := ((-b + sqrt(d)) / (2 * a));
  
  WriteLn;
  Write('x1 = ', x1, '; x2 = ', x2);
  
End.  