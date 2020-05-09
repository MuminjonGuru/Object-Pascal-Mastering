var
  X, Y: Integer;
  P: ^Integer;

begin
  X := 17;
  P := @X;
  Y := P^;
  
end.  
