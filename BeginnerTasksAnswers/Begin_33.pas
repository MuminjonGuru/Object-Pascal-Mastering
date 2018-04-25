Program Begin_33;

var
  X, Y, A: Real;
  
Begin
  Write('X = '); ReadLn(X);
  Write('A = '); ReadLn(A);
  
  WriteLn('1 kg=', A / X, ' so`m bo`ladi');
  Write('Y = '); ReadLn(Y);
  
  WriteLn(Y, 'kg ', Y * A / X);
  
End.