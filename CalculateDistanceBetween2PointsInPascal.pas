// Calculate Distance Between 2 Points 

program DistanceBetween2Points;

function CalculateDistanceBetween2Points(x1: Double; y1: Double; x2: Double; y2: Double): Double;
begin
  Result := Sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
end;

Begin
  WriteLn(CalculateDistanceBetween2Points(2,3,5,6):2:4);
End.