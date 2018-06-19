Program M13_5D;

Var
  a: array [1..100] of real;
  i, n: integer;
  min: real;
  
Begin
  ReadLn(n);  
  
  for i := 1 to n do
  begin
    write('a[',i,']=');
    readln(a[i]);
  end;
  
  min := a[1];
  
  for i := 1 to n do
    if (i mod 2=1) and (min>=a[i]) then min := a[i];
  writeln(min:2:2);  
  
End.  