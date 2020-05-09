var
  A: Array [, ,] of Integer;  // 3 dimensional
  B: Array [,] of Integer;    // 2 dimensional

begin
  A := New(Array[1, 3, 5] of Integer);
  B := New(Array[,] of Integer, ((1, 2, 3), (4, 5, 6)));

  ReadLn;
end.


// .NET
