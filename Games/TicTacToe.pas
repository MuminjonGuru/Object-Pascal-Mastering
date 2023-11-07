program TicTacToe;
uses crt;

// FreePascal

const 
  SIZE = 3;

var
  Board: array[1..SIZE, 1..SIZE] of Char;
  Player: Char;
  Turn: Byte;

procedure InitializeBoard;
var
  i, j: byte;
begin
  for i := 1 to SIZE do
    for j := 1 to SIZE do
      Board[i, j] := ' ';
end;

procedure PrintBoard;
var
  i, j: Byte;
begin
  for i := 1 to SIZE do
  begin
    for j := 1 to SIZE do
    begin
      Write(Board[i, j]);
      if j < SIZE then
        Write(' | ');
    end;
    WriteLn;
    if i < SIZE then
      WriteLn('----------');
  end;
  WriteLn;
end;

function BoardFull: Boolean;
var
  i, j: Byte;
begin
  BoardFull := True;
  for i := 1 to SIZE do
    for j := 1 to SIZE do
      if Board[i, j] = ' ' then
        Exit(False);
end;

procedure MakeMove(Player: Char);
var
  X, Y: Byte;
begin
  repeat 
    WriteLn('Player', Player, ', enter row and column (1-3) separated by space:');
    ReadLn(X, Y);
  until (X in [1..SIZE]) and (Y in [1..SIZE])
    and (Board[X, Y] = ' ');

  Board[X, Y] := Player;
end;

function CheckWin(Player: Char): Boolean;
var
  i, j: Byte;
begin
  CheckWin := False;

  // check rows & columns
  for i := 1 to SIZE do
    if ((Board[i, 1] = Player) and (Board[i, 2] = Player) and (Board[i, 3] = Player)) or
    ((Board[1, i] = Player) and (Board[2, i] = Player) and (Board[3, i] = Player)) then
    begin
      CheckWin := True;
      Exit;
    end;

  // check diagonals
  if ((Board[1, 1] = Player) and (Board[2, 2] = Player) and (Board[3, 3] = Player)) or
     ((Board[1, 3] = Player) and (Board[2, 2] = Player) and (Board[3, 1] = Player)) then
    CheckWin := True;
  
end;

(* Here the main program block starts *)
begin

  InitializeBoard;
  Player := 'X';
  Turn := 0;

  repeat
    PrintBoard;
    MakeMove(Player);
    Inc(Turn);

    if CheckWin(Player) then
    begin
      PrintBoard;
      WriteLn('Player', Player, ' wins!');
      ReadLn;
      Halt;
    end
    else if BoardFull then
    begin
      PrintBoard;
      WriteLn('It`s a tie!');
      ReadLn;
      Halt;
    end;

    if Player = 'X' then
      Player := '0'
    else
      Player := 'X';
    
  until False;
  
end.
