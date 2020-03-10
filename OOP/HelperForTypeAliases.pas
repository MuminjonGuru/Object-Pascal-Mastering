type
  MyInt = type Integer;
  
type
  TMyIntHelper = record helper for MyInt
    function AsString: string;
  end;
  
function MyIntHelper.AsString: string;
begin
  Result := IntToStr(self);
end;

var
  MyI: MyInt;
begin
  MyI := 10;
  WriteLn(MyI.AsString);
  // ToString does not work
  WriteLn(Integer(MyI).ToString);
end.
