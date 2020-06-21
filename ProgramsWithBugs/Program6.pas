program test(input,output);
// Two compiler errors 

var 
  Valuel, Value2: Real;

begin
  WriteLn('Enter two values :');
  ReadLn(Valuel, Value2);
  
  if (Value2 > Valuel) then
  begin
    Temp := Valuel;
    Valuel:=Value2;
    Value2:= Temp;
  end;
  
  WriteLn('Largest value is ', Valuel:B:2);
  WriteLn('Smallest value is ', Value2:8:2);
  
  ReadLn; // wait
end.
