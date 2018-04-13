Program Begin_9;

var
  a, b, solution: real;
  
begin
  WriteLn('Input a, b'); readln(a,b);
  solution := Sqrt(a*b);
  WriteLn('Solution = ', solution:2:2);
  readln;
end.  