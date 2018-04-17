Program Begin_23;

Var
  A, B, C: Real;
  
Begin
  Write('A = '); ReadLn(A);
  Write('B = '); ReadLn(B);
  Write('C = '); ReadLn(C);
  
  A := A + B; 
  B := A - B; 
  A := A - B;
  A := A + C;
  C := A - C;
  A := A - C;
  
  WriteLn;
  WriteLn('A = ', A);
  WriteLn('B = ', B);
  Write('C = ', C);
  ReadLn;
End.  