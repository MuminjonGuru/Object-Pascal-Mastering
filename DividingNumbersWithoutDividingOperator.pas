program DividingNumbersWithoutDividingOperator;

var
  n, m, b: Real;  // Declare three variables of type Real: n, m, and b.

Begin
  // Prompt the user to enter values for n and m.
  Write('n va m ni kiriting: ');  
  ReadLn(n, m);  // Read the values for n and m from the user.
  
  b := 0;  // Initialize b to 0. This will store the quotient of the division.

  // As long as n is greater than or equal to m, keep subtracting m from n.
  while n >= m do
  begin 
    b := b + 1;  // Increment the quotient (b) by 1.
    n := n - m;  // Subtract m from n. This simulates the division process.
  end;
  
  // Display the results.
  // b now contains the quotient (whole part of the division).
  // n now contains the remainder (fractional part of the division).
  WriteLn('Butun qismi: ', b, '; Qoldiq qismi: ', n);

End.
