// Swapping two values
var x,y: real;

begin
  write('Input x,y: ');
  readln(x,y);
  var v: real; // for save and use data
  v := x;
  x := y;
  y := v;
  writeln('New values for x,y: ',x,' ',y);
end.