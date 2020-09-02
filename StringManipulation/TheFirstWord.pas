function TheFirstWord(Text: String): String;
begin
  ReplaceStr(Text, '-', ' ');
  ReplaceStr(Text, '-', ' ');

  if Pos(' ', Text) = 0 then
    Result := Text
  else
    Result:= Copy(Text, 1, Pos(' ', Text)-1);
end;
