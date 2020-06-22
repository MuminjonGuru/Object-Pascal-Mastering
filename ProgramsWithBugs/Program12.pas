program test;

// one compiler error

var
  Value1, Value2, Result: Integer;
  
function add_values(A: Integer): Integer;
begin
  add_values := A + B;
end;

begin
  WriteLn('Enter 2 values: ');
  ReadLn(Value1, Value2);
  
  Result := add_values(Value1, Value2);
  WriteLn('Added the result is ', Result);

  ReadLn;
end.
