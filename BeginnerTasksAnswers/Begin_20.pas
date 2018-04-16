Program Begin_20;

Var
  X1, X2, Y1, Y2: Real;
  
Begin
  WriteLn('X1, Y1)');
  Write('X1 = '); ReadLn(X1);
  Write('Y1 = '); ReadLn(Y1);

  WriteLn('X2, Y2)');
  Write('X2 = '); ReadLn(X2);
  Write('Y2 = '); ReadLn(Y2);

  Write('L = ');
  WriteLn(Sqrt((X2 - X1) * (X2 - X1) + (Y2 - Y1) * (Y2 - Y1)));
  ReadLn;
End.