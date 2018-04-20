Program Begin_28;

Var
  A: Real;  
Begin
  Write('A = '); ReadLn(A);
  
  WriteLn('A^2 : ', Sqr(A):2:2);
  WriteLn('A^3 : ', Sqr(A)*A:2:2);
  WriteLn('A^5 : ', Exp(5*Ln(A)):2:2);
  WriteLn('A^10 : ', Exp(10*Ln(A)):2:2);
  WriteLn('A^15 : ', Exp(15*Ln(A)):2:2);
  ReadLn;
End.  