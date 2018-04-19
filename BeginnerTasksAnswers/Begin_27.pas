Program Begin_27;

Var
  A: Real;
Begin
  Write('A = '); ReadLn(A);
  WriteLn('A^2 = ', Sqr(A):2:2);
  WriteLn('A^4 = ', Exp(4*Ln(A)):2:2);
  WriteLn('A^8 = ', Exp(8*Ln(A)):2:2);
  ReadLn;
End.