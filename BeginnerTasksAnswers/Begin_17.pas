Program Begin_17;

Var
  A, B, C: Real;
  
Begin
  WriteLn('A, B, C'); ReadLn(A, B, C);
  
  WriteLn('AC = ', Abs(C - A));
  WriteLn('BC = ', Abs(C - B));

  WriteLn('AC + BC = ', Abs(C - A) + Abs(C - B));
  ReadLn;
End.  