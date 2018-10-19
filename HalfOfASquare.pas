program HalfOfASquare;

begin
  for var row := 1 to 5 do
  begin
    for var hashNum := 1 to 6 - row do
    begin
      Write('#');
    end;
    WriteLn;
  end;   
end.