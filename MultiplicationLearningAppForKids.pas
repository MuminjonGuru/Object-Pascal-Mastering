program MultiplicationLearningAppForKids;
uses
  Crt;
var
  A, B, S: Real;
  M: Byte;
  N, T: Byte;  // N noto'g'ri uchun T to'g'ri uchun  
Begin
  Repeat
    B := Random(10);
    S := Random(10);
    A := B * S;
    Write(B, '*', S,'=');
    Read(A);
    If A = B * S then 
    begin
      Writeln('To`g`ri!');
      Inc(T);  // to'g'rilar soni oshyabdi
      WriteLn('Yana ishlash uchun 1 ni chiqish uchun 0 ni bosing');
      Read(M);
    end
    else
    begin
      Writeln('Noto`g`ri');
      Inc(N);  // noto'g'rilar soni oshyabdi
      WriteLn('Yana ishlash uchun 1 ni chiqish uchun 0 ni bosing');
      Read(M);
    end;  
  Until M = 0;               
  // Endi Noto'g'rilar va to'g'rilar nisbati tekshiriladi va shunga mos ravishda
  // so'ngi xabar chiqariladi.
  If T > N then WriteLn('Barakalla siz yaxshi natija ko`rsatdingiz')
           else WriteLn('Siz ikkichisiz! Ko`proq matem o`rgaing');
End.  
