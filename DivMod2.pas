// Div and Mod functions
var a: integer := 247;

begin 
  write('Decreasing: ');
  // Last number
  write(a mod 10,' ');
  // Last number
  a := a div 10;
  write(a mod 10,' ');
  a := a div 10;
  write(a mod 10,' ');
end.