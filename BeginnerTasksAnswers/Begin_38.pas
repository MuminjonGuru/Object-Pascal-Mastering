Program Begin_38;

Var
  a, b, x: Real;
  
Begin
  WriteLn('a, b');
  ReadLn(a, b);
  
  x := -b / a;
  
  WriteLn('a*x + b = 0; x = ', x);
  
End.  