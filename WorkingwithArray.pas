Program WorkingwithArray;

var 
  a: array [1..100, 1..100] of integer;
  i, j, n: byte;
  
begin
  readln(n);
  for i := 1 to n do
  for j := 1 to n do
  begin
    write('a[',i,',',j,']=');
    readln(a[i,j]);
  end;
  
  for i := 1 to n do
  a[n+1, j] := a[1, j];
  for i := 1 to n+1 do
  begin
    for j := 1 to n do
    begin
      if a[n+1, j] < a[i,j] then a[n+1, j] := a[i, j];
      write(a[i, j]:3);
    end;
    writeln;
  end;
  
end.  
    
