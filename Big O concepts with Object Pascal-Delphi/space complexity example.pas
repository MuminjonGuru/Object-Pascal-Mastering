{
    There will be roughly O(N) calls to PairSum. However, those calls do not exist
    simultaneously on the call stack, so you only need O(1) space.
}


function PairSum(A: Integer; B: Integer): Integer;
begin
  Result := A + B;
end;

function PairSumSequence(N:integer): Integer;
begin
  var Sum: Integer := 0;
  for var I := 0 to N do
  begin
    Sum := Sum + PairSum(I, I + 1);
  end;
  Result := Sum;
end;

begin
  WriteLn(PairSumSequence(5));  // just a test - it must show "36"
  ReadLn;
end.
