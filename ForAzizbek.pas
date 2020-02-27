program MainProject;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  TUsers = Record
    ATime: TDateTime;
    Title: String[100];
    Subscription: Boolean;
  End;

  TMessage = Record
    MsgTitle: String;
    MsgBody: String;
  End;

procedure AddTitle;
var
  F: File of TUsers;
  Users: TUsers;
Begin
  AssignFile(F, 'users.dat');
  Write('Input current user title: ');
  ReadLn(Users.Title);

  Users.ATime := Now; // assigns current date
  Users.Subscription := False;  // initial state for subscription is False - Not subscribed

  if FileExists('users.dat') then
  begin
    FileMode := 2; // Read/Write Mode
    Reset(F);
    Seek(F, System.FileSize(F)); // Go to last record to append
  end
  else
    ReWrite(F);

  Write(F, Users);
  WriteLn;
  CloseFile(F);
End;

procedure NotifyAllUsers;
var
  F: File of TUsers;
  Users: TUsers;
  Messages: TMessage;
Begin
  AssignFile(F, 'users.dat');
  Write('Please give a message Title: ');
  ReadLn(Messages.MsgTitle);
  Write('Please give a message Body: ');
  ReadLn(Messages.MsgBody);

  if FileExists('users.dat') then
  begin
    Reset(F);
    while Not EoF(F) do
    begin
      Read(F, Users);
      WriteLn('-------------------');
      WriteLn('Title: ', Users.Title);
      WriteLn('Time: ', DateToStr(Users.ATime));
      Users.Subscription := True;
      WriteLn('Notified State: ', Users.Subscription);
    end;
    WriteLn;
    WriteLn(Messages.MsgTitle);
    WriteLn(Messages.MsgBody);
    WriteLn('All Users Notified!');
    WriteLn;
    CloseFile(F);
  end
  else
    WriteLn('Empty database.');
End;

procedure Search;
var
  F: File of TUsers;
  News: TUsers;
  Keyword: String;
  Found: Boolean;
Begin
  AssignFile(F, 'users.dat');
  Write('Input keyword to search for: ');
  ReadLn(Keyword);
  Found := False;  // initialization

  if FileExists('users.dat') then
  begin
    Reset(F);
    while Not Eof(F) do
    begin
      Read(F, News);
      if Pos(LowerCase(Keyword), LowerCase(News.Title)) > 0 then
      begin
        Found := True;
        WriteLn('-------------------');
        WriteLn('Title: ', News.Title);
        WriteLn('Time: ', DateToStr(News.ATime));
      end;
    end;
    CloseFile(F);

    if Not Found then
      WriteLn(Keyword, ' not found directed user')
    else
      WriteLn('Empty database.');
  end;
End;

Function Menu: Char;
Begin
  WriteLn('1. Add Users');
  WriteLn('2. Notify Users');
  WriteLn('3. Search');
  WriteLn('x. Exit');
  Write('Please input a selection : ');
  ReadLn(Result);
End;

var Selection: Char;

Begin
  WriteLn;
  WriteLn('@@@@@@@    Welcome to Database  @@@@@@@');
  WriteLn;
  try
    Repeat
      Selection := Menu;
      case Selection of
        '1':
          AddTitle;
        '2':
          NotifyAllUsers;
        '3':
          Search;
      end;
    Until LowerCase(Selection) = 'x';  // exit the console
  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;

End.
