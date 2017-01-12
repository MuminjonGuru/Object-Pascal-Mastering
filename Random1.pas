// Generating Rundom numbers
var
  i: integer;
  r: real;

begin
  i := Random(100);
  writeln('Random numers in 0..99: ',i);
  i := Random(2, 5);
  writeln('Random numbers in 2..5: ',i);
  r := Random;
  writeln('Rundom numbers in [0,1): ',r);
end.