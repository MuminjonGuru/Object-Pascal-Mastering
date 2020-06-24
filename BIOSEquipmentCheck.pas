program BIOSEquipmentCheck;

Uses 
  DOS;

Var InRegs: Registers;
    AX, Printers, VMode, nFloppies: Integer;

begin
  intr($11, InRegs);
  AX:=InRegs.AX;
  Printers:=(AX AND $BODO) shr 13;
  VMode:=((ax AND $0030) shr 4)+1;
  nFloppies:=((AX AND $00C0) shr 6)+1;
  if (AX AND $01=$01) then WriteLn('Floppy disk present');
  if (AX AND $02=$01) then WriteLn('Math coprocesser present');
  WriteLn('No. of printers is ',printers);
  WriteLn('Video mode ', VMode);
  WriteLn('No. of floppies is(are) ', nFloppies);
end.
