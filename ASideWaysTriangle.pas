// This program demonstrates how to draw a sideways triangle using Object Pascal.
program ASideWaysTriangle;

begin
  // Loop through rows from 1 to 7
  for var row := 1 to 7 do
  begin
    // This formula determines how many '#' to print in each row.
    // For the middle row (row 4), it will print the maximum number of '#' (i.e., 4).
    // As you move away from the middle row in either direction, 
    // the number of '#' decreases by 1 for each row.
    for var hashNum := 1 to 4 - Abs(4 - row) do
      Write('#');

    // Move to the next line after printing the required number of '#' for the current row.
    WriteLn;  
  end;
end.
