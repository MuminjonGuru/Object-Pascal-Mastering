program If_va_MantiqiyOperatorlar;

var
  a, b: Byte;

begin

  {
    =      -  tenglikni tekshirish
    <>     -  teng bo'lmasa
    >      -  katta bo'lsa
    >=     -  katta yoki teng bo'lsa
    <      -  kichik bo'lsa
    <=     -  kichik yoki teng bo'lsa
  }


  begin

    a := 21;
    b := 10;

    if(a = b) then
      WriteLn('a, b ga teng')
    else
      WriteLn('a, b ga teng emas');

    if(a < b) then
      WriteLn('a, b dan kichik')
    else
      WriteLn('a, b dan kichik emas');

    if(a > b) then
      WriteLn('a, b dan katta')
    else
      WriteLn('a, b dan katta emas');

    // O'zgaruvchilarni qiymatlarini o'zgartiramiz
    a := 5;
    b := 20;

    if(a <= b) then
      WriteLn('a, b dan kichik yoki teng');

    if(b >= a) then
      WriteLn('b, a dan katta yoki teng');

  end;


  begin

    a := 5;
    b := 10;

    // ================ Mantiqiy ko'paytirish ================ //
    WriteLn((a = 5) And (b < 5));    // false
    WriteLn((a = 4) And (b < 15));   // false            &&
    WriteLn((a = 5) And (b < 15));   // true
    WriteLn((a = 4) And (b < 5));    // false


    // ================ Mantiqiy qo'shish ================ //
    WriteLn((a = 5) Or (b < 5));    // true
    WriteLn((a = 4) Or (b < 15));   // true             ||
    WriteLn((a = 4) Or (b < 5));    // false


    // ================ Inkor ================ //
    WriteLn(Not(a = 5));   // false        !
    WriteLn(Not(a = 4));   // true

  end;

  ReadLn;

end.