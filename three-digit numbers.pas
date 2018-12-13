{
 Mission:
        Find all three-digit numbers that are the same as the natural
        number given in the sum of the numbers.
}

Program OlympiadTask;

Var
   N, A, P, B, S: Integer;

Begin
  Write('28 dan kichik bo`lgan natural son kiriting '); Readln(A);
  B := 100;
  WriteLn('Raqamlar yig`indisi A ga teng bo`lgan uch xonali sonlar: ');
  Write(A);
  While B < 1000 do
  begin
    S := 0; N := B;
    while N <> 0 do
    begin
      P := N mod 10;
      S := S + P;
      N := N div 10
  end;
   if S = A then Write(B, ', ');
   B := B + 1
  end;

  Readln;
End.
