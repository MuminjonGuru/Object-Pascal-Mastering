program test;

// two compiler errors

var
  InValue: Real;
  
procedure get_real(Min, Max: Real; Var Val);
begin
  Repeat
    WriteLn('Enter a value: ');
    ReadLn(Val);
    if((Val < 0) or (Val > Max)) then
      WriteLn('InValid');
  Until((Val > Min) and (Val < Max));
end;

begin
  get_real(0, 100, InValue);
  WriteLn(InValue);

  ReadLn;
end.
