// fixed board size - TSize from WinAPI
const
  BoardSize: TSize = (cx: 500; cy: 500);
    
{****************************************************}

// Live updater
LlbTrack.Caption := Format('%d, %d', [ViewOffset.X + X div 10, ViewOffset.Y + Y div 10]);
