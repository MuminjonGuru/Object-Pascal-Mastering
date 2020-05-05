type
  TIntProc = reference to procedure (N: Integer);
begin
  var anIntProc: TIntProc;

  anIntProc :=
    procedure(N: Integer)
    begin
      Memo1.Lines.Add(IntToStr(N));
    end;
  anIntProc(22);
end;
