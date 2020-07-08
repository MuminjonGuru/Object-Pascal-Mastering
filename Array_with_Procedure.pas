program Demo2_3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  Arr = Array [1..10, 1..10] of Integer;

Var
  I, J, N: Integer;
  A, B, C: Arr;

procedure Input(M: Integer; Var C: Arr);
var
  I, J: Integer;
begin
  for I := 1 to M do
  for J := 1 to M do
  ReadLn(C[I, J]);
end;

procedure Output(M: Integer; C: Arr; DefaultParam: String = ':');
var
  I, J: Integer;
begin
  DefaultParam := '--';
  for I := 1 to M do
    begin
      for J := 1 to M do
        Write(C[I, J]: 2, DefaultParam);
        WriteLn;
    end;
end;

begin
  Write('N = ');  ReadLn(N);
  
  WriteLn('Array A');
  Input(N, A);
  
  WriteLn('Array B');
  Input(N, B);

  for I := 1 to N do
  for J := 1 to N do
  C[I, J] := A[I, J] + B[I, J];

  WriteLn('Array A');
  Output(N, A);

  WriteLn('Array B');
  Output(N, B);

  WriteLn('Array C');
  Output(N, C);

  ReadLn;  // pause
end.
