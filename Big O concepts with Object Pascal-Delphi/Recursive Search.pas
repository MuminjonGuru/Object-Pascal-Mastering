Function Search (List: Array of Integer; I, MaxList, Val: Integer) : Boolean;
begin
  if List[I] = Val then
    Search := True
  Else
    if I = MaxList then
        Search := False
    Else
        Search := Search(List, I + 1, MaxList, Val);      
end;
