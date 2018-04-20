Program Begin_30;

Const 
  PI = 3.14;

Var
  Alpha: Real;
  
Begin
  WriteLn('0 < a < 2*PI  (Radian)');
  ReadLn(Alpha);
  WriteLn('(Degrees) : ', Alpha * 180 / PI :2:2);
End.