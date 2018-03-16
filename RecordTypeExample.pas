program YozuvlarBilanIshlash; 

type
  TCar = Record
    ModelName: String;
    Engine: Single;
    ModelYear: Integer;
  end;

var
  Car: TCar;

begin
  Write('Model Name: ');
  ReadLn(Car.ModelName);
  Write('Car Engine Size: ');
  ReadLn(Car.Engine);
  Write('Model Year: ');
  ReadLn(Car.ModelYear);

  WriteLn;

  WriteLn('Mashina Ma`lumotlari: ');
  WriteLn('Model Name: ', Car.ModelName);
  WriteLn('Car Engine Size: ', Car.Engine:2:2);
  WriteLn('Model Year: ', Car.ModelYear);

  ReadLn;

end.
