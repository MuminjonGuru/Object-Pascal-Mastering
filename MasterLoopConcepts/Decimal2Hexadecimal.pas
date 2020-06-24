program DecimalToHexadecimal;

var
  Value, Remainder: Integer;
  
Begin
  Write('Enter a decimal value: ');
  ReadLn(Value);
  Write('The value in hexadecimal is: ');
  
  repeat
    Remainder := Value MOD 16;
    if (Remainder < 10) then Write(Remainder);
    else if (Remainder = 10) then Write('A');
    else if (Remainder = 11) then Write('B');
    Value := Value DIV 16;
  until Value = 0;
  
  WriteLn;
  ReadLn;

End.
