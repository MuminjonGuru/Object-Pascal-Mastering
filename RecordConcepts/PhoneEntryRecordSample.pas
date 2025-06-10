(* 

Below is a full Delphi (Object Pascal) console application demonstrating the use of your PhoneEntry record and FPhoneList typed file. This example covers:
- Defining types
- Adding new entries
- Listing all entries
- Searching by last name
- Simple menu 

*)

program PhoneBookApp;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  PhoneEntry = record
    FirstName, LastName: string[20];
    PhoneNumber: string[15];
    Listed: Boolean;
  end;

  FPhoneList = file of PhoneEntry;

var
  PhoneBook: FPhoneList;
  FileName: string = 'phonebook.dat';

// Add a new entry
procedure AddEntry;
var
  Entry: PhoneEntry;
begin
  Write('First Name: '); ReadLn(Entry.FirstName);
  Write('Last Name: '); ReadLn(Entry.LastName);
  Write('Phone Number: '); ReadLn(Entry.PhoneNumber);
  Write('Listed (1=Yes, 0=No): '); ReadLn(Entry.Listed);

  AssignFile(PhoneBook, FileName);
  if FileExists(FileName) then
    Reset(PhoneBook)
  else
    Rewrite(PhoneBook);
  Seek(PhoneBook, FileSize(PhoneBook));
  Write(PhoneBook, Entry);
  CloseFile(PhoneBook);
  WriteLn('Entry added.');
end;

// List all entries
procedure ListEntries;
var
  Entry: PhoneEntry;
begin
  AssignFile(PhoneBook, FileName);
  if not FileExists(FileName) then
  begin
    WriteLn('No entries yet.');
    Exit;
  end;
  Reset(PhoneBook);
  WriteLn('Phonebook Entries:');
  while not Eof(PhoneBook) do
  begin
    Read(PhoneBook, Entry);
    WriteLn('---------------------------');
    WriteLn('First Name: ', Entry.FirstName);
    WriteLn('Last Name:  ', Entry.LastName);
    WriteLn('Phone #:    ', Entry.PhoneNumber);
    WriteLn('Listed:     ', BoolToStr(Entry.Listed, True));
  end;
  CloseFile(PhoneBook);
end;

// Search by last name
procedure SearchEntry;
var
  Entry: PhoneEntry;
  SearchedName: string[20];
  Found: Boolean;
begin
  Write('Enter Last Name to Search: '); ReadLn(SearchedName);
  Found := False;

  AssignFile(PhoneBook, FileName);
  if not FileExists(FileName) then
  begin
    WriteLn('No entries yet.');
    Exit;
  end;
  Reset(PhoneBook);
  while not Eof(PhoneBook) do
  begin
    Read(PhoneBook, Entry);
    if SameText(Entry.LastName, SearchedName) then
    begin
      WriteLn('---------------------------');
      WriteLn('First Name: ', Entry.FirstName);
      WriteLn('Last Name:  ', Entry.LastName);
      WriteLn('Phone #:    ', Entry.PhoneNumber);
      WriteLn('Listed:     ', BoolToStr(Entry.Listed, True));
      Found := True;
    end;
  end;
  if not Found then
    WriteLn('No entry found with last name ', SearchedName);
  CloseFile(PhoneBook);
end;

// Main menu
procedure MainMenu;
var
  Choice: Integer;
begin
  repeat
    WriteLn('--- PhoneBook Menu ---');
    WriteLn('1. Add Entry');
    WriteLn('2. List All Entries');
    WriteLn('3. Search by Last Name');
    WriteLn('0. Exit');
    Write('Enter choice: '); ReadLn(Choice);
    case Choice of
      1: AddEntry;
      2: ListEntries;
      3: SearchEntry;
      0: WriteLn('Goodbye!');
    else
      WriteLn('Invalid choice.');
    end;
    WriteLn;
  until Choice = 0;
end;

// Program entry point
begin
  MainMenu;
end.
