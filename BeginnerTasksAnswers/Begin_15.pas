Program Begin_15;

var
  S, D, R: Real;
  
Begin
  Write('S = ');  ReadLn(S);
  R := Sqrt(S / 3.14);
  D := 2 * Sqrt(S / 3.14);
  WriteLn('Aylana radiusi R = ', R:2:2);
  WriteLn('Aylana diametri D = ', D:2:2);
  ReadLn;
End.  