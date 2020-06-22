program test(input,output);
// Two compiler errors 

var 
  I:integer;
begin
 
  for I=1 to 10 do
  begin
    x:=10*I;
    y:=4*x+1;
    WriteLn(x:8:2, y:8:2);
  end;

  ReadLn;
end.
