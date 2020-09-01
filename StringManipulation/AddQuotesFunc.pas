function AddQuotes(S: String): String;
begin
  if S = '' then Exit;
  if(S[1] = '"') AND (S[Length(S)] = '"') then
    Result := S
  else
    Result := '"' + ReplaceStr(S, '"', '''''') + '"';
end;
