{
  This program identifies the positions of the first three occurrences 
  of a character from string B.
}

program WorkingWithString;

begin
  // Variable to hold the character user wants to search for.
  var A: Char;
  Write('Type something for A: ');  ReadLn(A);

  // String variable to hold the input where the character will be searched.
  var B: String;
  Write('Type something for B: ');  ReadLn(B);

  // Finding the position of the first occurrence of character A in string B.
  var Place1: Byte;
  Place1 := Pos(A, B);   // Pos returns the position of the first occurrence.
  Delete(B, Pos(A, B), 1);   // Delete the character A from its first occurrence in B.

  // Finding the position of the second occurrence of character A in string B.
  var Place2: Byte;
  Place2 := Pos(A, B) + 1;  // Add 1 because the string is now one character shorter.
  Delete(B, Pos(A, B), 1);  // Delete the character A from its second occurrence in B.

  // Finding the position of the third occurrence of character A in string B.
  var Place3: Byte;
  Place3 := Pos(A, B) + 2;  // Add 2 because the string is now two characters shorter.

  // Print the results to the console.
  WriteLn(A, ' letter ', Place1, ', ', Place2, ', ', Place3, ' index');

  ReadLn;  // Wait for user input to prevent the program from closing immediately.
end.

// Sample Input and Output: 
//** Type something for A: m
//** Type something for B: mamlakatimiz
//** m letter 1, 3, 10 index
