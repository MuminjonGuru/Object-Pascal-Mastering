Program Begin_29;

Const 
  PI = 3.14;

Var
  Alpha: Real;
  
Begin
  WriteLn('0 < a < 360');
  ReadLn(Alpha);
  WriteLn('Radian : ', Alpha * PI / 180 :2:2);
End.