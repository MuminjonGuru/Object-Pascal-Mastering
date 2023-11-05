program ContactBookOOP;

{$APPTYPE CONSOLE}

uses
  SysUtils, Classes;

type
  TContact = class
  private
    FName: string;
    FEmail: string;
    FPhone: string;
  public
    constructor Create(const Name, Email, Phone: string);
    property Name: string read FName write FName;
    property Email: string read FEmail write FEmail;
    property Phone: string read FPhone write FPhone;
  end;

  TContactList = class
  private
    FContacts: TList;
    function GetContact(Index: Integer): TContact;
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddContact(Contact: TContact);
    procedure SaveToFile(const FileName: string);
    procedure LoadFromFile(const FileName: string);
    procedure ListContacts;
    property Contacts[Index: Integer]: TContact read GetContact; default;
  end;

{ TContact }

constructor TContact.Create(const Name, Email, Phone: string);
begin
  FName := Name;
  FEmail := Email;
  FPhone := Phone;
end;

{ TContactList }

constructor TContactList.Create;
begin
  FContacts := TList.Create;
end;

destructor TContactList.Destroy;
var
  I: Integer;
begin
  for I := 0 to FContacts.Count - 1 do
    TObject(FContacts[I]).Free;
  FContacts.Free;
  inherited;
end;

function TContactList.GetContact(Index: Integer): TContact;
begin
  Result := TContact(FContacts[Index]);
end;

procedure TContactList.AddContact(Contact: TContact);
begin
  FContacts.Add(Contact);
end;

procedure TContactList.SaveToFile(const FileName: string);
var
  F: TextFile;
  I: Integer;
  Contact: TContact;
begin
  AssignFile(F, FileName);
  Rewrite(F);
  try
    for I := 0 to FContacts.Count - 1 do
    begin
      Contact := TContact(FContacts[I]);
      with Contact do
      begin
        WriteLn(F, Name);
        WriteLn(F, Email);
        WriteLn(F, Phone);
      end;
    end;
  finally
    CloseFile(F);
  end;
end;

procedure TContactList.LoadFromFile(const FileName: string);
var
  F: TextFile;
  Name, Email, Phone: string;
begin
  AssignFile(F, FileName);
  Reset(F);
  try
    while not Eof(F) do
    begin
      ReadLn(F, Name);
      ReadLn(F, Email);
      ReadLn(F, Phone);
      AddContact(TContact.Create(Name, Email, Phone));
    end;
  finally
    CloseFile(F);
  end;
end;

procedure TContactList.ListContacts;
var
  I: Integer;
  Contact: TContact;
begin
  for I := 0 to FContacts.Count - 1 do
  begin
    Contact := TContact(FContacts[I]);
    with Contact do
      WriteLn(Format('%d. Name: %s, Email: %s, Phone: %s', [I + 1, Name, Email, Phone]));
  end;
end;

var
  ContactList: TContactList;
  Choice: Integer;
  Name, Email, Phone: string;
  FileName: string;

procedure ShowMenu;
begin
  WriteLn('1. Add Contact');
  WriteLn('2. List Contacts');
  WriteLn('3. Save Contacts');
  WriteLn('4. Load Contacts');
  WriteLn('0. Exit');
end;

begin
  ContactList := TContactList.Create;
  try
    FileName := 'contacts.txt';
    repeat
      ShowMenu;
      ReadLn(Choice);
      case Choice of
        1: begin
             Write('Enter name: ');
             ReadLn(Name);
             Write('Enter email: ');
             ReadLn(Email);
             Write('Enter phone: ');
             ReadLn(Phone);
             ContactList.AddContact(TContact.Create(Name, Email, Phone));
           end;
        2: ContactList.ListContacts;
        3: ContactList.SaveToFile(FileName);
        4: ContactList.LoadFromFile(FileName);
      end;
    until Choice = 0;
  finally
    ContactList.Free;
  end;
end.
