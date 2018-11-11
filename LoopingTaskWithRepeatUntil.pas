{
  Mission: 
    shunday son topish kerakki 2 ga bolganda 1 qoldiq qolsin
    3 ga bolganda 2 qoldiq qolsin 
    ...... 10 ga bolganda 9 qoldiq qolsin
}

Program LoopingTaskWithRepeatUntil;
Begin
  var N: Integer = 0;
  
  Repeat
    Inc(N);
  Until (N mod 2 = 1) and (N mod 3 = 2) and (N mod 4 = 3) and
        (N mod 5 = 4) and (N mod 6 = 5) and (N mod 7 = 6) and
        (N mod 8 = 7) and (N mod 9 = 8) and (N mod 10 = 9);
  WriteLn('Qidirilayotgan butun son: ', N);      
End.  
