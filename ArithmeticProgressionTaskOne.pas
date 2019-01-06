{
  Arithmetic Progressions Task One (High School Program)
  
  S = 1 + (1 / 2^k) + (1 / 3^k) + ... + (1 / N^k) - That is it :)
  
}

// Solution

program ArithmeticProgressionTaskOne;
 
begin
  var N: LongInt := 0;
  var K: LongInt := 0;
  
  Write('N = ');  ReadLn(N);
  Write('K = ');  ReadLn(K);
  
  var S: Real := 1.0;
  
  For var M: LongInt := 2 to N do 
  begin
    var F: Real := 1;
    For var D: LongInt := 1 to K do
    begin
      F := F / M;
      S := S + F;
    end;  
  end;
  
  Write('S = ', S:0:10);
end.
