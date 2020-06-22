program test(input,output);
(* Two compiler errors *)
var 
  Value: Real;
 
begin
  Repeat
    writeln('Enter a value between 0 and 100: ');
    readln(value);
  until (O<value>lOO);
  
  WriteLn('Square root is ', Sqrt(Value));

  ReadLn;
end.
