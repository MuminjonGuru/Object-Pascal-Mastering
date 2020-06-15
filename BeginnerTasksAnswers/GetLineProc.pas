procedure GetLine(var Data: Text; var Line: String; var Error: Boolean);
var
  Pos: Integer;
  Ch : Char;

begin
  // initialize
  Pos := 0;

  // fetch and store characters until EOLN or max stored
  While Not EOLN(Data) And (Pos < MaxLength>) do
  begin
    Inc(Pos);
    Read(Data, Ch);
    Line.Chars[Pos] := Ch
  end;

  Line.Length := Pos;  // set line length

  // pad rest of the Line with blanks
  For Pos := Pos + 1 to MaxLength do
    Line.Chars[Pos] := ' ';
  Error := Not EOLN(Data);
  ReadLn(Data);  

end;   
