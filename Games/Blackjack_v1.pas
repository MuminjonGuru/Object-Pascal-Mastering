program Blackjack;

uses crt;

type
  TCard = (ctAce, ctTwo, ctThree, ctFour, ctFive, ctSix, ctSeven, ctEight, ctNine, ctTen, ctJack, ctQueen, ctKing);
  TSuit = (stHearts, stDiamonds, stClubs, stSpades);
  TDeck = array of record
    Card: TCard;
    Suit: TSuit;
    Taken: Boolean;
  end;

var
  Deck: TDeck;
  PlayerHand, DealerHand: array of TCard;
  PlayerTotal, DealerTotal: Integer;

procedure InitializeDeck;
var
  Card: TCard;
  Suit: TSuit;
  i: Integer;
begin
  i := 0;
  SetLength(Deck, 52);
  for Suit := Low(TSuit) to High(TSuit) do
    for Card := Low(TCard) to High(TCard) do
    begin
      Deck[i].Card := Card;
      Deck[i].Suit := Suit;
      Deck[i].Taken := False;
      Inc(i);
    end;
end;

function GetCardValue(Card: TCard): Integer;
begin
  case Card of
    ctAce: Result := 11;
    ctTwo..ctTen: Result := Ord(Card) + 1;
    ctJack..ctKing: Result := 10;
  end;
end;

function DrawCard: TCard;
var
  i: Integer;
begin
  repeat
    i := Random(52);
  until not Deck[i].Taken;
  Deck[i].Taken := True;
  Result := Deck[i].Card;
end;

procedure StartNewGame;
begin
  InitializeDeck;
  PlayerTotal := 0;
  DealerTotal := 0;
  SetLength(PlayerHand, 0);
  SetLength(DealerHand, 0);
end;

procedure PrintHand(Hand: array of TCard; IsDealer: Boolean);
var
  i: Integer;
  CardName: array [TCard] of string = (
    'Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King'
  );
begin
  if IsDealer then
    Write('Dealer''s hand: ')
  else
    Write('Player''s hand: ');

  for i := Low(Hand) to High(Hand) do
  begin
    Write(CardName[Hand[i]]);
    if i < High(Hand) then
      Write(', ');
  end;
  WriteLn;
end;

function GetTotal(Hand: array of TCard): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := Low(Hand) to High(Hand) do
    Inc(Result, GetCardValue(Hand[i]));
end;

function CheckForAce(Hand: array of TCard): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := Low(Hand) to High(Hand) do
    if Hand[i] = ctAce then
      Exit(True);
end;

procedure Hit(var Hand: array of TCard; var Total: Integer);
begin
  SetLength(Hand, Length(Hand) + 1);
  Hand[High(Hand)] := DrawCard;
  Total := GetTotal(Hand);
  // Check if an Ace should be counted as 1 instead of 11
  if (Total > 21) and CheckForAce(Hand) then
    Dec(Total, 10);
end;

procedure PlayDealer;
begin
  repeat
    Hit(DealerHand, DealerTotal);
  until DealerTotal >= 17;
end;

procedure PlayerTurn;
var
  Choice: Char;
begin
  repeat
    PrintHand(PlayerHand, False);
    WriteLn('Total: ', PlayerTotal);
    WriteLn('Hit or Stand? (h/s): ');
    ReadLn(Choice);
    if Choice = 'h' then
      Hit(PlayerHand, PlayerTotal);
  until (Choice = 's') or (PlayerTotal >= 21);
end;

procedure CheckWinner;
begin
  PrintHand(DealerHand, True);
  PrintHand(PlayerHand, False);

  WriteLn('Dealer Total: ', DealerTotal);
  WriteLn('Player Total: ', PlayerTotal);

  if (PlayerTotal > 21) or ((DealerTotal <= 21) and (DealerTotal > PlayerTotal)) then
    WriteLn('Dealer wins!')
  else if (DealerTotal > 21) or (PlayerTotal > DealerTotal) then
    WriteLn('Player wins!')
  else if PlayerTotal = DealerTotal then
    WriteLn('It''s a tie!')
  else
    WriteLn('Error in determining winner.');
end;

begin
  Randomize;
  StartNewGame;
  WriteLn('Welcome to Blackjack!');

  // Initial draw
  Hit(PlayerHand, PlayerTotal);
  Hit(DealerHand, DealerTotal);
  Hit(PlayerHand, PlayerTotal);
  Hit(DealerHand, DealerTotal);

  // Player's turn
  PlayerTurn;

  // Dealer plays if player hasn't busted
  if PlayerTotal <= 21 then
  begin
    PlayDealer;
  end;

  // Determine the winner
  CheckWinner;

  WriteLn('Game over. Press Enter to exit.');
  ReadLn;
end.

