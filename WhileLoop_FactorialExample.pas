program FactorialExample;

var
  Fac, N, I: Integer;

begin

  Write('Birorta son kiriting : ');
  ReadLn(N);

  Fac := 1;
  I := N;

  While I > 1 do
  begin
    Fac := Fac * I;
    Dec(I);
  end;
  WriteLn(N, ' sonining faktoriali : ', Fac);

  ReadLn;

end.