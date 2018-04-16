Program Begin_18;

Var
  A, B, C: Real;
  
Begin
  WriteLn('A, C, B'); ReadLn(A, C, B);
  
  WriteLn('AC = ', Abs(C - A));
  WriteLn('BC = ', Abs(B - C));
  
  WriteLn('AC * BC = ', Abs(C - A) * Abs(C - B));
  ReadLn;
End.  