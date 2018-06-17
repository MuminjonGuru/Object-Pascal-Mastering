{
 Approach : The approach is to start printing the pattern from the
            end of each row. After the completion of last column of
            each row, start from the second last column of the second
            row and so on.

 Main Source: https://www.geeksforgeeks.org/program-print-numeric-pattern/
 Object Pascal implementation: https://delphi.uz/pascal-programming-language/algorithms-program-to-print-numeric-pattern-with-object-pascal/
}

program NumericPattern;

procedure Pattern(N: Integer);
var
  P, K, I, J: Integer;
begin
  P := 1;
  K := 1;

  // Outer for loop for number of rows
  for I := 1 to N do
  begin
    // set the value of p as k
    P := K;

    // Inner for loop for number of colums
    for J := 1 to I do
    begin
      // print the values
      Write(P, ' ');

      // change in value of p for
      // every elements after the first
      // element of each row
      P := P - (N + J - I);
    end;
    WriteLn;

    // value of k for first element of every row
    K := K + 1 + N - I;
  end;
end;

var
 N: Integer;

begin
  Write('N = ');  ReadLn(N);

  Pattern(N);

  ReadLn;
end.
