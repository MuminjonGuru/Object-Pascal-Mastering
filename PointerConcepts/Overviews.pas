// Demo: Pointers in Delphi / Object Pascal

var
  X, Y: Integer;  // Declare two integer variables
  P: ^Integer;    // Declare a pointer variable that can point to an Integer

begin
  X := 17;        // Assign value 17 to X
  P := @X;        // Set pointer P to point to the memory address of X
  Y := P^;        // Dereference P (get the value P points to), store it in Y
                  // Now Y = 17

  // Let's show how you can use the pointer to change the value of X
  P^ := 42;       // Set the value at the address P points to (which is X) to 42

  // Now X is 42, because P points to X and we changed its value through the pointer

  // Output values to see the result (works in console apps)
  Writeln('X = ', X);  // Should print: X = 42
  Writeln('Y = ', Y);  // Should print: Y = 17
  Writeln('P^ = ', P^); // Should print: P^ = 42 (same as X)
end.

