program GenericsSamples;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Generics.Collections;

var
  List: TList<Integer>;

begin
  List := TList<Integer>.Create;

  try
    List.Add(2020);
    List.Add(2021);
    List.Add(2022);

    WriteLn(List.Count);
    WriteLn(List.Remove(2020));;

    ReadLn; // wait

    List.Free;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
