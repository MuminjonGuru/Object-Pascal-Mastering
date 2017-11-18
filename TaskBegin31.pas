Program TaskBegin31;

var
  T: Real;
  
Begin
  Write('T = '); 
  ReadLn(T);
  
  WriteLn('T selsiyda :', (T - 32) * 5 / 9 :2:2);
  
  ReadLn;
End.  