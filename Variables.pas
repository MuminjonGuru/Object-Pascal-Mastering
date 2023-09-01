program Variables;

// Declare global variables
var
  X, Y: Integer;   // Variables to store integer values
  Z: Single;       // Variable to store floating point value
  Result: Single;  // Variable to store the result of division
  C: Char;         // Variable to store character value

begin
  // Demonstrate simple arithmetic
  X := 5;
  WriteLn('X * 2 = ', X * 2);

  // Demonstrate addition with two variables
  X := 10;
  Y := 5;
  WriteLn('X + Y = ', X + Y);

  // Display a character
  C := '@';
  WriteLn('The first letter of my name is: ', C);

  // Assign a float value to a variable of type Single and display it
  Z := 1.5;
  WriteLn('Value of Z (with 3 decimal places) = ', Z:1:3);

  // Read values from user and perform division
  Write('Enter value for X: ');  
  ReadLn(X);
  Write('Enter value for Y: ');  
  ReadLn(Y);
  // Ensure Y is not zero to prevent division by zero error
  if Y <> 0 then 
  begin
    Result := X / Y;
    WriteLn(X, ' divided by ', Y, ' equals ', Result:2:2);
  end
  else
  begin
    WriteLn('Y cannot be zero.');
  end;

  // Wait for user input before exiting
  WriteLn('Press any key to exit the program...');
  ReadLn;
end.
