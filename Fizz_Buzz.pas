procedure Fizz_Buzz(Max: Integer);
begin
  for var I := 1 to Max do
  begin
    if ((I mod 4 = 0) OR (I mod 6 = 0)) AND Not((I mod 4 = 0) AND (I mod 6 = 0)) then
      Write(I, ' ');
  end;  
  WriteLn; // new line
end;


begin
  Fizz_Buzz(20);  // 4, 6, 8, 16, 18
  Fizz_Buzz(15);  // 4, 6, 8
end.
