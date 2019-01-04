// Har bir satrning eng katta qiymatini n+1 chi ustunga o'zlashtiruvchi dastur

program TwDmArray3;

var
  A: array [1..100, 1..100] of Integer;
  N: Integer;

begin
  Write('N = ');  ReadLn(N);

  For var I: Integer := 1 to N do
  For var J: Integer := 1 to N do
  begin
    Write('A[',I,',',J,']=');
    Readln(A[I,J]);
  end;

  For var I: Integer := 1 to N do
  begin
    var Max: Integer := 0;
    Max := A[I,J];
    For var J: Integer := 1 to N do
    begin
      If Max > A[I,J] then Max := A[I,J];
      Write(A[I,J]:3);
    end;
    A[I,N+1] := Max;
    WriteLn(Max:4);
  end;

  ReadLn;
end.
