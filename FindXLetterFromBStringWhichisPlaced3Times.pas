{
  Find A Letter From B String Which is Occured 3 Times
}

program WorkingWithString;
begin
  var A: Char;
  Write('Type something for A: ');  ReadLn(A);
  var B: String;
  Write('Type something for B: ');  ReadLn(B);
  
  var Place1: Byte;
  Place1 := Pos(A, B);
  Delete(B, Pos(A, B), 1);
  
  var Place2: Byte;
  Place2 := Pos(A, B)+1;
  Delete(B, Pos(A, B), 1);
  
  var Place3: Byte;
  Place3 := Pos(A, B)+2;
  
  WriteLn(A, ' letter ', Place1, ', ', Place2, ', ', Place3, ' index');
  
  ReadLn;
end.


// Input and Output: 
//** Type something for A: m
//** Type something for B: mamlakatimiz
//** m letter 1, 3, 10 index
