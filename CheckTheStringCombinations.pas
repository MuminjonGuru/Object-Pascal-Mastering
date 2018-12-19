{
  Kiritilgan 5ta matndagi harflardan "ona" so'zini hosil qilish imkoniyatini
  aniqlovchi dastur tuzing
  
  Check the typed words for a single word.
}

program CheckTheStringCombinations;

var
  A, B, D, E, F: String;
  S: String[3];
  
begin
  Write('1-matnni kiriting: ');  ReadLn(A);  
  Write('2-matnni kiriting: ');  ReadLn(B);
  Write('3-matnni kiriting: ');  ReadLn(D);
  Write('4-matnni kiriting: ');  ReadLn(E);
  Write('5-matnni kiriting: ');  ReadLn(F);

  S := '';
  
  if Pos('o', A)+Pos('o', B)+Pos('o', D)+Pos('o', E)+Pos('o', F) > 0 then
    S := S + 'o';
  if Pos('n', A)+Pos('n', B)+Pos('n', D)+Pos('n', E)+Pos('n', F) > 0 then
    S := S + 'n';
  if Pos('a', A)+Pos('a', B)+Pos('a', D)+Pos('a', E)+Pos('a', F) > 0 then
    S := S + 'a';   
    
  if Length(S)=3 then WriteLn('Hosil qilish mumkin')
                 else WriteLn('Hosil qilish mumkin emas');

  ReadLn;
end.  


// Input and Output
//** 1-matnni kiriting: touchsmart
//** 2-matnni kiriting: artel
//** 3-matnni kiriting: non
//** 4-matnni kiriting: sandiq
//** 5-matnni kiriting: leandisk
//** Hosil qilish mumkin
