program Variables;

var
 // X, Y: Integer;

  C: Char;

  //X: Single;

  X, Y: Integer;
  Result: Single;

begin

  X := 5;
  WriteLn(X * 2);

   X := 10;
   Y := 5;
   WriteLn(X + Y);

  C := '@';
  WriteLn('Mening ismimning bosh harfi: ', C);

  X := 1.5;
  WriteLn(X:1:3);


  Write('X = ');  ReadLn(X);
  Write('Y = ');  ReadLn(Y);
  Result:=X / Y;
  WriteLn(X, ' / ', Y, ' = ', Result:2:2);


  WriteLn('Dasturni tugatish uchun biror tugmani bosing!');
  ReadLn;

end.
