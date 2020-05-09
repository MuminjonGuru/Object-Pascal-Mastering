function Calc(X, Y: Integer): Integer;
begin
  // your code goes here
end;

type 
  TFunction = function(X, Y: Integer): Integer;
  
const 
  MYFUNCTION: TFunction = Calc;
