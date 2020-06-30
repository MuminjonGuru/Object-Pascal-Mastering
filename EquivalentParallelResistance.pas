program EquivalentParallelResistance;

Var 
  Rl,R2,R_equ: Real;

procedure get_values(Var rl,r2:real);
begin
  Repeat
    Write('Enter Rl :');
    Readln(rl);
    if (rl<=O) then WriteLn('INVALID: re-enter');
  Until (rl>O);
  
  Repeat
    write('Enter R2 >>');
    readln(r2);
    if (r2<=0) then writeln('INVALID: re-enter');
  Until (r2>0);
end;

procedure get_parallel_res(rl,r2:real; Var r_e: real);
begin
  r_e:=l/(1/rl+l/r2);
end;

procedure print_results(rl,r2,r_e:real);
begin
  WriteLn('Parallel resistors', r1:8:3, 'and ',r2:8:3, 'ohm');
  WriteLn('Equivalent resistance is ',r_e:8:3, ' ohm');
end;

Begin
  get_values(Rl,R2);
  get_parallel_res(Rl,R2,R equ);
  print_results(Rl,R2,R equ);
  
  ReadLn;
End. 
