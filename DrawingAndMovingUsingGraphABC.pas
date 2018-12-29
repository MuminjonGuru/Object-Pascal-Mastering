{
  Ekran markazida aylana chizib, uni "i" va "I", "j" va "J", "k" va "K", "m" va "M" 
  klavishlari bosilganda, mos ravishda, yuqoriga, chapga, o'ngga, quyiga 
  yurgizadigan, Esc kalvishi bosilganda ishini tamomlaydigan dastur tuzing
}

Program DrawingAndMovingUsingGraphABC;

uses
  GraphABC;

Begin
  var v: Integer := 0;
  var g: Integer := 0;
  var A: Char;
  Repeat
    DrawCircle(320+G, 240+V, 30);
    Read(A);
    Case A of
      'i', 'I': V := V - 5;
      'j', 'J': G := G - 5;
      'k', 'K': G := G + 5;
      'm', 'M': V := V + 5;
    end;
  Until A = #27;
End.
