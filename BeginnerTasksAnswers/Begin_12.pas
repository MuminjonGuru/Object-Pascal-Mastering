Program Begin_12;

var
  a, b, c, p: Real;
  
Begin
  Write('a = '); ReadLn(a);
  Write('b = '); ReadLn(b);

  c := Sqrt(Sqr(a) + Sqr(b));
  p := a + b + c;
  
  WriteLn('c = ', c:2:2);
  WriteLn('p = ', p:2:2);
  ReadLn;
End.  