Program Begin_26;

Var
  X: Real;
Begin
  Write('X = '); ReadLn(X);
  WriteLn('Natija : ', 4 * ((X-3)*(X-3)*(X-3)*(X-3)*(X-3)*(X-3)) - 7 * ((X-3)*(X-3)*(X-3)) + 2); 
End.  