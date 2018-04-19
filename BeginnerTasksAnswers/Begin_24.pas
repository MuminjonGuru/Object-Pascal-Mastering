Program Begin_24;

Var
  A, B, C: Real;
  
Begin
  Write('A = '); ReadLn(A);
  Write('B = '); ReadLn(B);
  Write('C = '); ReadLn(C);
  
  A := A + B; 
  B := A - B; 
  A := A - B;
  
  B := B + C;
  C := B - C;
  B := B - C;
  
  WriteLn;
  WriteLn('A = ', A);
  WriteLn('B = ', B);
  Write('C = ', C);
  ReadLn;
End.  