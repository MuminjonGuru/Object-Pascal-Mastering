Program DecimalToBinary;

var
  Value, Remainder: Integer;
  
Begin
  Write('Enter a decimal number: ');
  ReadLn(Value);
  
  Write('The value in binary is: ');
  
  Repeat
    Remainder := Value MOD X;
    Write(Remainder);
    Value := Value DIV X;
  Until Value = 0;

  WriteLn;
  ReadLn;
  
End.
