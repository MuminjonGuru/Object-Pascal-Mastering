Program BubbleSort;

Var
  A: Array [1..100] of Integer;
  N, I, J, K: Integer;
  
Begin
  Write('N = ');  ReadLn(N);
  
  For I := 1 to N do
  begin
    A[I] := Random(200);  
    Write(A[I], ' ');
  end;
  
  For I := 1 to N-1 do
  For J := I+1 to N do
  if A[I] > A[J] then begin
                        K := A[I];
                        A[I] := A[J];
                        A[J] := K;
                      end;
                      
  WriteLn;
  
  For I := 1 to N do
    Write(A[I] ,' ');
  

  ReadLn;
End.  