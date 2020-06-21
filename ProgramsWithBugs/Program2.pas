program test(input,output);
(* Two compiler errors *)

var value:real;

begin
  Writeln('Enter a value : ');
  Readln(value);
  Result := Sqrt(value);
  Writeln('Square root is ',result:8:2);
end;
