var
  A: Array of Array of String;
  I, J: Integer;
  
begin
  SetLength(A, 10);
  For I := Low(A) to High(A) do
  begin
    SetLength(A[I], I);
    For J := Low(A[I]) to High(A[I]) do
      A[I, J] := IntToStr(I) + ',' + IntToStr(J) + ' ';
  end;
end.
