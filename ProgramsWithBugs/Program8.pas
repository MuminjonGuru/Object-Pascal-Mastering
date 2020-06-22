program test(input,output);

(* Two compiler errors *)

var
  Value: Real;

Begin

  repeat
    WriteLn('Enter a positive value: ');
    ReadLn(value);
  until (Value > O);
  
  writeln('Square root is', Sqrt(Value));

end.
