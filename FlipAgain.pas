FlipAgain;

Begin
  Randomize;
  var Again: String := '';
  
  Repeat
    var Flip: Integer := Random(2);
    var Coin: String := '';
    if (Flip = 1) then
      Coin := 'HEADS'
    else
      Coin := 'TAILS';
      
      WriteLn('You flip a coin and it is: ' + Coin);
      
      WriteLn('Would you like to flip again (y/n)? ');
      ReadLn(Again);
  Until Again = 'n';
End.  


{ 

 Output:
    You flip a coin and it is: TAILS
    Would you like to flip again (y/n)?  
    y
    You flip a coin and it is: HEADS
    Would you like to flip again (y/n)? 
    y 
    You flip a coin and it is: TAILS 
    Would you like to flip again (y/n)? 
    n
}
