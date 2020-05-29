procedure GetReal(Msg: String; Min, Max: Real; var Value: Real);
var
  InStr: String;
  Code: Integer;
  OK: Boolean;
begin
  Repeat
    Write(Msg);
    ReadLn(InStr);
    Val(InStr, Value, Code);
    if(Code <> 0) then
    begin
      OK := False;
      WriteLn('Invalid input: ', InStr);
    end
    else
      OK := True;
      
  Until (OK=True)
end;
