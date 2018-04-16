Program Begin_21;

Var
  X1, X2, X3, Y1, Y2, Y3, A, B, C, P, S: Real;
  
Begin
  WriteLn('X1, Y1');
  Write('X1 = '); ReadLn(X1);
  Write('Y1 = '); ReadLn(Y1);

  WriteLn('X2, Y2');
  Write('X2 = '); ReadLn(X2);
  Write('Y2 = '); ReadLn(Y2);

  WriteLn('X3, Y3');
  Write('X3 = '); ReadLn(X3);
  Write('Y3 = '); ReadLn(Y3);
  
  A := Sqrt(Sqr(X2 - X1) + Sqr(Y2 - Y1));
  B := Sqrt(Sqr(X3 - X1) + Sqr(Y3 - Y1));
  C := Sqrt(Abs(X3 - X2) * Abs(X3 - X2) + Abs(Y3 - Y2) * Abs(Y3 - Y2));
  P := (A + B + C);
  WriteLn('P = ', P:2:2);
  
  P /= 2; 
  S := Sqrt(P*(P-A)*(P-B)*(P-C));
  
  WriteLn('S = ', S:2:2);

  ReadLn;
End.