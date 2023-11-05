program ContactBook;

{$APPTYPE CONSOLE}

uses
  SysUtils, Classes;

type
  TContact = record
    Name: string;
    Email: string;
    Phone: string;
  end;

  TContactList = array of TContact;

var
  ContactList: TContactList;

procedure SaveContactsToFile(const FileName: string);
var
  F: TextFile;
  I: Integer;
begin
  AssignFile(F, FileName);
  Rewrite(F);
  try
    for I := Low(ContactList) to High(ContactList) do
      with ContactList[I] do
      begin
        WriteLn(F, Name);
        WriteLn(F, Email);
        WriteLn(F, Phone);
      end;
  finally
    CloseFile(F);
  end;
end;

procedure LoadContactsFromFile(const FileName: string);
var
  F: TextFile;
  Contact: TContact;
  ContactCount, I: Integer;
begin
  AssignFile(F, FileName);
  Reset(F);
  try
    ReadLn(F, ContactCount);
    SetLength(ContactList, ContactCount);
    for I := 0 to ContactCount - 1 do
      with ContactList[I] do
      begin
        ReadLn(F, Name);
        ReadLn(F, Email);
        ReadLn(F, Phone);
      end;
  finally
    CloseFile(F);
  end;
end;

procedure AddContact(Name, Email, Phone: string);
var
  NewIndex: Integer;
begin
  NewIndex := Length(ContactList);
  SetLength(ContactList, NewIndex + 1);
  with ContactList[NewIndex] do
  begin
    Self.Name := Name;
    Self.Email := Email;
    Self.Phone := Phone;
  end;
end;

procedure ListContacts;
var
  I: Integer;
begin
  for I := Low(ContactList) to High(ContactList) do
    with ContactList[I] do
    begin
      WriteLn(Format('%d. Name: %s, Email: %s, Phone: %s',
        [I + 1, Name, Email, Phone]));
    end;
end;

procedure ShowMenu;
begin
  WriteLn('1. Add Contact');
  WriteLn('2. List Contacts');
  WriteLn('3. Save Contacts');
  WriteLn('4. Load Contacts');
  WriteLn('0. Exit');
end;

var
  Choice: Integer;
  Name, Email, Phone: string;
  FileName: string;
begin
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
           AddContact(Name, Email, Phone);
         end;
      2: ListContacts;
      3: SaveContactsToFile(FileName);
      4: LoadContactsFromFile(FileName);
    end;
  until Choice = 0;
end.
