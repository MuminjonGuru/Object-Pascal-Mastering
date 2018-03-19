// Har bir satrning eng katta qiymatini n+1 chi ustunga o'zlashtiruvchi dastur

program TwDmArray3;

var
  A: array [1..100, 1..100] of Integer;
  I, J, N, Max: Integer;

begin
  Write('N = ');  ReadLn(N);

  For I := 1 to N do
  For J := 1 to N do
  begin
    Write('A[',I,',',J,']=');
    Readln(A[I,J]);
  end;

  For I := 1 to N do
  begin
    Max := A[I,J];
    For J := 1 to N do
    begin
      If Max > A[I,J] then Max := A[I,J];
      Write(A[I,J]:3);
    end;
    A[I,N+1] := Max;
    WriteLn(Max:4);
  end;

  ReadLn;
end.
