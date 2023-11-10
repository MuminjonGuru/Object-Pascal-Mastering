program SnakeGame;

{$APPTYPE CONSOLE}

uses
  SysUtils, Windows;

const
  Width = 20;
  Height = 20;
  Up = 'w';
  Down = 's';
  Left = 'a';
  Right = 'd';

type
  TSnakeSegment = record
    X, Y: Integer;
  end;
  TSnake = array of TSnakeSegment;
  TFruit = record
    X, Y: Integer;
  end;

var
  Snake: TSnake;
  Fruit: TFruit;
  Direction: Char;
  GameOver: Boolean;

procedure InitializeGame;
begin
  SetLength(Snake, 1);
  Snake[0].X := Width div 2;
  Snake[0].Y := Height div 2;
  Direction := Right;
  GameOver := False;
  // Place fruit in a random position
  Fruit.X := Random(Width);
  Fruit.Y := Random(Height);
end;

procedure Draw;
var
  i, j: Integer;
  IsSnake: Boolean;
begin
  ClrScr;

  // Draw top border
  for i := 0 to Width + 1 do
    Write('#');
  WriteLn;

  for i := 0 to Height - 1 do
  begin
    for j := 0 to Width - 1 do
    begin
      if (j = 0) or (j = Width - 1) then
        // Draw side borders
        Write('#')
      else
      begin
        IsSnake := False;
        // Check if any part of the snake is in this position
        for var Segment in Snake do
          if (Segment.X = j) and (Segment.Y = i) then
          begin
            Write('*');
            IsSnake := True;
            Break;
          end;
        if not IsSnake then
        begin
          if (Fruit.X = j) and (Fruit.Y = i) then
            Write('F')
          else
            Write(' ');
        end;
      end;
    end;
    WriteLn;
  end;

  // Draw bottom border
  for i := 0 to Width + 1 do
    Write('#');
  WriteLn;
end;

procedure Input;
begin
  if KeyPressed then
  begin
    case ReadKey of
      Up: if Direction <> Down then Direction := Up;
      Down: if Direction <> Up then Direction := Down;
      Left: if Direction <> Right then Direction := Left;
      Right: if Direction <> Left then Direction := Right;
    end;
  end;
end;

procedure Logic;
var
  TailX, TailY, PrevX, PrevY, i: Integer;
begin
  // Save the position of the last segment of the snake
  TailX := Snake[High(Snake)].X;
  TailY := Snake[High(Snake)].Y;

  // Move the segments of the snake
  for i := High(Snake) downto 1 do
  begin
    Snake[i] := Snake[i - 1];
  end;

  // Change the direction of the snake's head
  case Direction of
    Up: Dec(Snake[0].Y);
    Down: Inc(Snake[0].Y);
    Left: Dec(Snake[0].X);
    Right: Inc(Snake[0].X);
  end;

  // Check collision with borders
  if (Snake[0].X >= Width) or (Snake[0].X < 0) or (Snake[0].Y >= Height) or (Snake[0].Y < 0) then
    GameOver := True;

  // Check collision with itself
  for i := 1 to High(Snake) do
    if (Snake[i].X = Snake[0].X) and (Snake[i].Y = Snake[0].Y) then
      GameOver := True;

  // Check if snake got the fruit
  if (Snake[0].X = Fruit.X) and (Snake[0].Y = Fruit.Y) then
  begin
    SetLength(Snake, Length(Snake) + 1);
    Snake[High(Snake)].X := TailX;
    Snake[High(Snake)].Y := TailY;
    Fruit.X := Random(Width);
    Fruit.Y := Random(Height);
  end;
end;

begin
  Randomize;
  InitializeGame;

  while not GameOver do
  begin
    Draw;
    Input;
    Logic;
    Sleep(200); // make the game playable
  end;

  WriteLn('Game Over! Press Enter to exit.');
  ReadLn;
end.
