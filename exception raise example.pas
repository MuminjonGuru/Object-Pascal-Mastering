program Project1;

uses
  Classes, SysUtils;

var
  X: Integer;

begin
  Write('X = ');  ReadLn(X);
  try
    if (X < 1) or (X > 10) then
      raise exception.Create('out of range');
    WriteLn('X * 5 = ', X * 5);
  except
    on e: exception do
    begin
      WriteLn('Xatolik: ' + E.Message);
    end;
  end;

  ReadLn;
end.
