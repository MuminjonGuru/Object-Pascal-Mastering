Program palindromeString;

Var
  I: Integer;
  S, C: String;
  
Begin
  ReadLn(S);  C := '';
  for I := 1 to Length(S) do
    C := S[I] + C;
  WriteLn(C);  
  
  if S = C then WriteLn('palindrome')
           else WriteLn('not palindrome');
  
End.  