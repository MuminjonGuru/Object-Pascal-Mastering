program CountingVowels;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  S: String;

function CountVowels(const S: String): Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := 1 to Length(S) do
    if UpCase(S[I]) in ['A', 'E', 'I', 'O', 'U'] then
      Inc(Result);
end;

begin
  try
    ReadLn(S);
    WriteLn(CountVowels(S));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
