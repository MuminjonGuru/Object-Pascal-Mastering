Program Begin_6;

var
  a, b, c, v, s: real;
  
Begin
  WriteLn('Input datas for a, b, c');
  ReadLn(a, b, c);

  v := a * b * c;
  s := 2 * (a*b + b*c + a*c);
  
  writeLn('V = ', v, '; ', 'S = ', s);
  readln;
End.  