program ArrayMinMaxExample;

var
  Baholar: Array[1..10] of Integer;
  I: Integer;
  Min, Max: Integer;

begin

  For I := 1 to Length(Baholar) do
  begin
    Write('Talaba ID si: ', I, '; Baho: ');
    ReadLn(Baholar[I]);
  end;

  WriteLn;

  Min := Baholar[1];
  Max := Baholar[1];

  For I := 1 to Length(Baholar) do
  begin
    if Baholar[I] > Max then
      Max := Baholar[I];

    if Baholar[I] < Min then
      Min := Baholar[I];

    Write('Talaba ID si: ', I, '; Baho: ', Baholar[I]);
    if Baholar[I] >= 60 then
      WriteLn(' Passed.')
    else
      WriteLn(' Failed.');
  end;

  WriteLn('Max: ', Max);
  WriteLn('Min: ', Min);

  ReadLn;
end.
