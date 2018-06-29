program FloydsTriangle;

procedure PrintFloydTriangle(N: Integer);
var
  I, J, Val: Integer;
begin
  Val := 1;
  for I := 1 to N do
  begin
    for J := 1 to I do
    begin
      Write(Val, ' ');
      Inc(Val);
    end;
    WriteLn;
  end;
end;

begin
  PrintFloydTriangle(6);

  ReadLn;
end.
