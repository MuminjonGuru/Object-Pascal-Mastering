{
  Bankka B foizli daromad olish uchun qo'yilgan A so'm pulning M yildan
  keyingi qiymatini toping
}

program Task4;

var
  A, B, M: Real;
  
begin
  A := 5000; // 5000 so'm qo'yildi
  B := 4.5; // 4.5 foizli daromad 
  M := A * (1 + B / 100);
  
  WriteLn(M:2:2);
end.  