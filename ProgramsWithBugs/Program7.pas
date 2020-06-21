program test(input,output);
// Two compiler errors 
var 
  Valuel, Value2: Real;

Begin
  WriteLn('Enter two values :');
  ReadLn(Valuel, Value2);
  
  if (Value2 > Valuel) then
    Temp := Valuel;
    Valuel := Value2;
    Value2 := Temp; 
    
  WriteLn('Largest value is ', Value1:8:2);
  WriteLn('Smallest value is ', Value2:8:2);

  ReadLn; // Wait
End.
