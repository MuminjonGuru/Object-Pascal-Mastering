Program Begin_22;

Var
  A, B: Real;
  
Begin
  Write('A = '); ReadLn(A);
  Write('B = '); ReadLn(B);
  
  A := A + B; 
  B := A - B; 
  A := A - B;
  
  WriteLn('A = ', A);
  Write('B = ', B);
  ReadLn;
End.  