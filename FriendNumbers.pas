Program FriendNumbers;

Var
  i, n, s, k, j: Integer;
  
Begin
  ReadLn(n);
  
  for i := 2 to n do
  begin
    s := 0;  k := 0;
    
    for j := 1 to i div 2 do
      if i mod j=0 then s := s+j;
    if i < s then
    begin
      for j := 1 to s div 2 do
        if s mod j=0 then k := k + j;
      if i = k then writeLn(i, ' ', s);  
    end;
    
  end;
  
End.  