Program Begin_25;

Var
  X: Real;  
  
Begin
  Write('X = '); ReadLn(X);
  
  Write('3*x^6-6*x^2-7; y = ');
  WriteLn(3 * (Sqr(x)*Sqr(x)*Sqr(x)) - 6*Sqr(x)-7);
  ReadLn; 
  
End.  