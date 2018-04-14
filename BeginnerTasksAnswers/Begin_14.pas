program Begin_14;

var
  L, R: Real;

begin
  Write('L = ');  ReadLn(L);
  R := L / (2 * PI);
  WriteLn('R = ', R:2:2, '; S = ', PI * R * R);
  ReadLn;
end.