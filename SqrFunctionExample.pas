Program Task;

Var
  A: Real;
  N: Integer;
  
Function Sqr(X: Real; K: Integer): Real;
begin
  if K = 0 then
  begin
    Sqr := 1;
    Exit;
  end;
  
  if K = 1 then Sqr := X
           else Sqr := Sqr(X, K-1) * X;
end; 

BEGIN
  Write('A = ');  ReadLn(A);
  Write('N = ');  ReadLn(N);
  WriteLn(Sqr(A, N):4:2);
END.