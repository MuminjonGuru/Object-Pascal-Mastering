program TwDmArray;

var
  A: Array[1..3, 1..3] of Integer;
  I: Integer; // Satrlar indeksi
  J: Integer; // Ustunlar indeksi

begin
  WriteLn('Massiv elementlarini kiritish');
  For I := 1 to 3 do
  For J := 1 to 3 do
  begin
    Write('A[',I,',',J,']=');
    ReadLn(A[I,J]);
  end;

  WriteLn;  // new line

  WriteLn('Massiv elementlarini ekranga chiqarish');
  For I := 1 to 3 do
  begin
    For J := 1 to 3 do
      Write(A[I,J]: 3);
      WriteLn;  // new line
  end;

  ReadLn;
end.
