{
  Ikkilikda 6 xonali A son va o'nlikdagi natural B son berilgan. Shu sonlar 
  teng bo'lsa "TRUE", aks holda "FALSE" chiqarilsin.

  Solution: 
    Birinchi ikkilikdagi A sonni o'nlikka o'tkazish yetarli. A sonning
    o'nlikdagi ifodasi AA son bo'lsin. U holda AA <= 2^5+2^4+2^3+2^2+2^1+2^0=32+16+8+4+2+1=63
    Bunda Gorner sxemasidan foydalanamiz.

}

Program IkkilikVaOnlikdagiSonlarniTaqqoslash;

  
Var
  A, B: LongInt;
  AA, R1, R2, R3, R4, R5, R6: Byte;
  
Begin
  Write('A sonni kiriting: ');  ReadLn(A);
  Write('B sonni kiriting: ');  ReadLn(B);
  
  R6 := A mod 10; 
  A := A div 10; 
  R5 := A mod 10;
  A := A div 10;
  R4 := A mod 10;
  
  AA := ((((R1*2+R2)*2+R3)*2+R4)*2+R5)*2+R6;
  
  If AA = B then
    WriteLn('TRUE')
  else
    WriteLn('FALSE');
  
  ReadLn;
End.  
