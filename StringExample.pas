program StringExample;

var
  Satr: String;
  I: Integer;

begin

  Write('Satr kiriting : ');
  ReadLn(Satr);

  if Pos('a', Satr) > 0 then
    WriteLn('a harfi mavjud.')
  else
    WriteLn('a harfi mavjud emas.');


  Write('Satr kiriting : ');
  ReadLn(Satr);

  if Pos('a', LowerCase(Satr)) > 0 then
    begin
      WriteLn('Satr a harfi mavjud');
      WriteLn('a harfi pozitsiyasi : ', Pos('a', LowerCase(Satr)));
    end
  else
    WriteLn('a harfi mavud emas.');

  ReadLn(Satr);
  WriteLn('Satrda ', Length(Satr), ' ta belgi mavjud');
  WriteLn('Satrdagi birinchi va oxirgi belgi, ', Satr[1], ' ', Satr[Length(Satr)]);

  Readln(Satr);
  for I := 1 To Length(Satr) do
    WriteLn(Satr[I]);

  ReadLn;
end.
