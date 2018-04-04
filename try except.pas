program project1;

uses
  Classes, SysUtils;

var
  X, Y: Integer;
  Res: Double;

begin
  try
    Write('X = '); ReadLn(X);
    Write('Y = '); ReadLn(Y);

    Res := X / Y;

    WriteLn('X / Y = ', Res);
  except
    on E: Exception do
    begin
      WriteLn('Xatolik sodir bo`ldi: ', E.Message);
    end;
  end;

  Write('Chiqish uchun biror tugma bosing');
  ReadLn;
end.
