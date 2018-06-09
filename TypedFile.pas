Program M21_1ABCD;

Var
  F: File of Integer;
  K, I, N, A, B, C, D: Integer;
  
BEGIN
  Assign(F, 'data.dat');
  ReWrite(F);
  
  Write('N = ');  ReadLn(N);
  WriteLn('Fayl elementlarini kiriting');
  
  For I := 1 To N do
  begin
    ReadLn(K);
    Write(F, K);
  end;
  Close(F);
  
  A := 0;  B := 1;  C := 0;
  ReSet(F);
  
  While Not EoF(F) Do
  begin
    Read(F, K);
    A := A + K;
    B := B * K;
    C := C + Sqr(K);
    Write(K, ' ');
  end;
  
  D := K;
  WriteLn;
  
  WriteLn('Yig`indi : ', A);
  WriteLn('Ko`paytma : ', B);
  WriteLn('Kvadratlarining yig`indisi : ', C);
  WriteLn('Oxirgi element : ', D);
  
  Close(F);
  
END.  