// Assign values (1)
var r: real;

begin
  write('Input r: ');
  readln(r);
  
  var r2,r4,r8: real; // for assigning values
  r2 := r * r;
  r4 := r2 * r2;
  r8 := r4 * r4;
  writeln(r,'^8 = ',r8);
end.