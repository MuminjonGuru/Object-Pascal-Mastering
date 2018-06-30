program DataTypes;

begin

  WriteLn('Byte: Xajmi = ', SizeOf(Byte),
    ', Min qiymat = ', Low(Byte), ', Max qiymat = ', High(Byte));

    WriteLn('Integer: Xajmi = ', SizeOf(Integer),
    ', Min qiymat = ', Low(Integer), ', Max qiymat = ', High(Integer));

      WriteLn('Real: Xajmi = ', SizeOf(Real),
    ', Min qiymat = ', Low(Round(Real)), ', Max qiymat = ', High(Round(Real)));

  ReadLn;
end.


