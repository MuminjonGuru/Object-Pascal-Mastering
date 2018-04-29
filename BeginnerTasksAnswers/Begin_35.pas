Program Begin_35;

var
  T1, T2, V, U: Real;

Begin
  Write('V = '); ReadLn(V);
  Write('U = '); ReadLn(U);
  
  Write('T1 = '); ReadLn(T1);
  Write('T2 = '); ReadLn(T2);
  
  WriteLn('S = ', T1 * (V + U) + T2 * (V - U), ' km');
  
End.