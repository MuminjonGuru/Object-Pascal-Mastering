type
  TAnimal = class
  public 
    function Voice: string; virtual;
    
  TDog = class(TAnimal)
  public 
    function Voice: string; override;
    
////////

function TAnimal.Voice: string
begin
  Result := 'Animal Voice';
end;

function TDog.Voice: string;
begin
  Result := 'Arfarf';
end;
