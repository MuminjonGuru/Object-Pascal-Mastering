program DividingNumbersWithoutDividingOperator;

var
  n, m, b: Real;
  
Begin
  Write('n va m ni kiriting: ');  ReadLn(n, m);
  
  b := 0; // initsializatsiya
  
  while n >= m do
  begin 
    b := b + 1; 
    n := n - m;
  end;
  
  WriteLn('Butun qismi: ', b, '; Qoldiq qismi: ', n);

End.  