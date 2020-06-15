function Sum(List: Array of Integer; I, Items: Integer) : Integer;
begin
  If I = Items then
    Sum := List[I]
  Else
    Sum := List{I} + Sum(List, I + 1, Items);   
end;  
