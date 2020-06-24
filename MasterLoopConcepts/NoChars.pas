function NoChars(Str: String; C: Char): Integer;
var
  NoOCC, I: Integer;
begin
  NoOCC := 0;
  for I := 1 to Length(Str) do
  begin
    if (C = Str[I]) then Inc(NoOCC);
  end;
  Result := NoOCC;
end;
