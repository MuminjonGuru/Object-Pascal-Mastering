{
  Bojxona postidan o'tkazilayotgan har A tonna yukning B foizi noqonuniy
  ekanligi ma'lum bo'lsa, M tonna yukdan noqonuniy hisoblanadigan qismi
  og'irligi S ni toping
}

program Task5;

var
  B, M, S: Real;
  
begin
  // A = 10 tonna yuk
  B := 2;  // har 10 tonna yukning 2 foizi noqonuniy
  // bu yerda 200 kg yoki 0.2 tonna yuk noqonuniy
  // M tonna yukdan noqonuniy hisoblanadigan qismi og'irligi S ni toping
  Write('M = ');  ReadLn(M);
  S := M * B / 100;
  
  WriteLn(M,' tonna yukdan ', S:2:2, ' tonna yuk noqonuniy');

end.  