Program Begin_34;

var
  X, Y, A, B: Real;
  
Begin
  Write('X = '); ReadLn(X);
  Write('A = '); ReadLn(A);
  Write('Y = '); ReadLn(Y);
  Write('B = '); ReadLn(B);
  
  WriteLn('1 kg chocolate 1 kg = ', A / X, ' $');
  WriteLn('1 kg candy 1 kg = ', B / Y, ' $ ');
  WriteLn('1 kg chocolate 1 kg candy ', A / X - B / Y, ' expensive');
  
End.