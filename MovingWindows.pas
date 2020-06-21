unit WinMoveU;
interface
uses
Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
Unit2;
type
TForm1 = class(TForm)
procedure FormShow(Sender: TObject);
private
{ Private declarations }
{we must override the WM_MOVE message}
procedure WMMove(var Msg: TWMMove); message WM_MOVE;
public
{ Public declarations }
end;
var
  Form1: TForm1;
implementation
{$R *.DFM}
procedure TForm1.FormShow(Sender: TObject);
begin
  {show the toolbar window}
  Form2.Show;
end;
{this is fired every time the main window is moved}
procedure TForm1.WMMove(var Msg: TWMMove);
begin
  {if the toolbar window exists...}
  if Form2<>NIL then
  {...move the toolbar window alongside the main window.}
  MoveWindow(Form2.Handle, Form1.Left+Form1.Width+5, Form1.Top, Form2.Width,
  Form2.Height, TRUE);
end;
end
