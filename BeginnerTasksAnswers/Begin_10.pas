Program Begin_10;

var
  a, b: real;
 
begin
  writeLn('input a, b'); readln(a,b);
  writeLn(sqr(a) + sqr(b));
  writeLn(sqr(a) * sqr(b));
  WriteLn();
  writeLn(sqr(a) - sqr(b));
  writeLn(sqr(a) / sqr(b));
  readln;
end.