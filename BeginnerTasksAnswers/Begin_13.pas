Program Begin_13;

const 
  PI = 3.14;

var
  R1, R2, S1, S2, S3: Real;
  
Begin
  WriteLn('Input data for R1 and R2');
  ReadLn(R1, R2);

  S1 := PI * Sqr(R1);
  S2 := PI * Sqr(R2);
  S3 := S1 - S2;
  
  WriteLn('S1 = ', S1);
  WriteLn('S2 = ', S2);
  WriteLn('S3 = ', S3);
  ReadLn;
End.  