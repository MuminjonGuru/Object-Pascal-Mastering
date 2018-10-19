program ASideWaysTriangle;

begin
  for var row := 1 to 7 do
  begin
    for var hashNum := 1 to 4 - Abs(4 - row) do
      Write('#');
    WriteLn;  
  end;

end.