program profileImageChecker;

function main:integer;
var
  i, i : integer;
begin
  int l,w[1000],h[1000],n;
  Readln(l);
  Readln(n);
  for i := 0 to n-1 do 
  begin 
    Readln(&w[i],&h[i]);
  end; 
  for i := 0 to n-1 do 
  begin 
    if w[i]>l  and  h[i]>l  and  w[i]<>h[i] then  or  (w[i]>l  and  h[i]=l)  or  (w[i]=l  and  h[i]>l) then 
      Writeln('CROP IT');
    else if(w[i]<l  or  h[i]<l  or  (w[i]>l  and  h[i]<l)  or  (w[i]<l  and  h[i]>l))
      Writeln('UPLOAD ANOTHER');
    else if((w[i]=l  and  h[i]=l)  or  w[i]=h[i]  or  (w[i]>l  and  h[i] >l  and  w[i]=h[i]))
      Writeln('ACCEPTED');
  end; 
  
  Result := 0;
end;

Begin
  try
    Main;
  except
    on e:Exception do
      WriteLn(e.Message);
  end;
End.
