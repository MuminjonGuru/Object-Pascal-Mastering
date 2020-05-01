program mchr;

var
  I: Byte;
  C: Char;
begin
  For C:= 'a' to 'z' do
  Write(C, '=>', ORD(C),' ');
    
  ReadLn;
end.
