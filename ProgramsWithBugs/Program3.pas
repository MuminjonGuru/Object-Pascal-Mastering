program test(input,output);
// Two compiler errors

var value, result:real;

begin
  WriteLn('Enter a value >>');
  ReadLn(value);
  Result := Sqr(value);
  WriteLn('Square is ', Result:8:2);
end;
