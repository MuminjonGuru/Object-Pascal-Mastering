{*******************************************************}
{                                                       }
{           Abduraimov Mo'minjon @DelphiGuru            }
{                                                       }
{    Copyright(c) 2016-2017 Mo'minjon Abduraimov        }
{              1.13.2017;   1:40PM                      }
{                                                       }
{ O'qing, O'rganing, Dasturlang va Dunyoni O'zgartiring!}
{                                                       }
{*******************************************************}


// Uzunliklari berilgan uchta kesmadan uchburchak hosil qilish mumkin yoki
//  mumkin emasligini aniqlovchi dastur tuzing!


program UchtaKesma_Uchburchak;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  a, b, c: Real;

begin
  try
    Write('a = ');  ReadLn(a);
    Write('b = ');  ReadLn(b);
    Write('c = ');  ReadLn(c);

    if (a+c>c) AND (a+c>b) AND (b+c>a) then
      WriteLn('Uchburchak hosil bo`ladi')
    else
      WriteLn('Uchburchak hosil bo`laolmaydi');
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.