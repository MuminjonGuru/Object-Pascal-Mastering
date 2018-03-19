// Masala: Har bir satr yig'indisini n+1 chi ustunga hisoblovchi dastur tuzing.

program TwoDimensionalArray2;

var
  A: Array[1..100, 1..100] of Integer;
  I, J: Integer; // Satr va ustun
  N: Integer; // input from user

begin
  Write('N = ');  ReadLn(N);
  For I := 1 to N do
  For J := 1 to N do
  begin
    Write('A[',I,',',J,']=');
    ReadLn(A[I,J]);

    A[I,N+1] := A[I,N+1] + A[I,J];
  end;

  For I := 1 to N do
  begin
    For J := 1 to N+1 do
      Write(A[I,J]:3);
    WriteLn;
  end;

  ReadLn;
end.
