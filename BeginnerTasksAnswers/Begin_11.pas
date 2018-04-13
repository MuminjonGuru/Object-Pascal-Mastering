Program Begin_11;

var
  a, b: real;
  
begin
  writeLn('input a, b'); readln(a,b);
  writeLn(abs(a) + abs(b));
  writeLn(abs(a) * abs(b));
  
  WriteLn();

  writeLn(abs(a) - abs(b));
  writeLn(abs(a) / abs(b));
  readln;
end.  