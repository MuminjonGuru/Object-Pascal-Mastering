program CaseRestaurantExample;

var
  Ovqat: Byte;

begin

  WriteLn('$$$$$ - Pascal-Guru Restoraniga Xush Kelibsiz! - $$$$$');
  WriteLn('*****  Buyurtma berishingiz mumkin!  *****');
  WriteLn;
  WriteLn('1 - Tovuq         8,000 so`m');
  WriteLn('2 - Baliq        11,000 so`m');
  WriteLn('3 - Sharbat       4,000 so`m');
  WriteLn('4 - Osh          25,000 so`m');
  WriteLn;
  WriteLn('*****  Iltimos, tanlagan ovqatingiz sonini kiriting!  *****');
  ReadLn(Ovqat);

  Case Ovqat of
    1: WriteLn('15 daqiqada tayyor bo`ladi.');
    2: WriteLn('15 daqiqada tayyor bo`ladi.');
    3: WriteLn('2 daqiqada tayyor bo`ladi.');
    4: WriteLn('30 daqiqada tayyor bo`ladi.');
  else
    WriteLn('Siz menyuda bo`lmagan taomni nomerini kiritdingiz.');
  end;

  ReadLn;

end.