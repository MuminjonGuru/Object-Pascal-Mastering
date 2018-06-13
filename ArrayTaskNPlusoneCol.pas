Program ArrayTaskNPlusOne;

// assigning max values to a n+1 column 


var 
  a: array [1..100, 1..100] of integer;
  i, j, n, max: byte;
  
begin
  readln(n);
  for i := 1 to n do
  for j := 1 to n do
  begin
    write('a[',i,',',j,']=');
    readln(a[i,j]);
  end;
  
  for i := 1 to n do
  begin
    max := a[i,1];
    for j := 1 to n do
    begin
      if max>a[i,j] then max := a[i, j];
      write(a[i,j]:3);
    end;
    a[i, n+1] := max;
    writeln(max:4);
  end;
  
end.  
  