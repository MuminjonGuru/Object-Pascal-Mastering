{*******************************************************}
{                                                       }
{           Abduraimov Mo'minjon @DelphiGuru            }
{                                                       }
{    Copyright(c) 2016-2017 Mo'minjon Abduraimov        }
{                      1.13.2017;                       }
{                                                       }
{ O'qing, O'rganing, Dasturlang va Dunyoni O'zgartiring!}
{                                                       }
{*******************************************************}


// Berilgan A butun son berilgan noldan farqli B butun songa qoldiqsiz
//  bo'linishi yoki bo'linmasligini aniqlovchi dastur tuzing!


program Qoldiqsiz_bulinmasligi;

uses
  System.SysUtils;

var
  a, b: Integer;

begin
  try
    Write('a = '); ReadLn(a);
    Write('b = '); ReadLn(b);
    if (a mod b = 0) then
      Write('Bo`linadi')
    else
      Write('Bo`linmaydi.');
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
