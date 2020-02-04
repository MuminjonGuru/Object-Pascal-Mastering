program DontCatchException;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var Num1 : Real := 2.76;
    var Num2 : Real := 0;

    WriteLn(Format('%d / %d = %d;', [Num1, Num2, Num1 / Num2]));

  except
    on E: EMathError do
      WriteLn('EMathError');
    on E: EZeroDivide do
      WriteLn('EZeroDivide')
  end;

  ReadLn;
end.
