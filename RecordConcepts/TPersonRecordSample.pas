type
  TPerson = Record
    FirstName, LastName: String[80];
    BirthDate: TDate;
    case Citizon: Boolean of
      True: (Birthplace: String[50]);
      False: (Country: String[25];
              EntryPort: String[25];
              EntryDate, ExitDate: TDate);
  end;              
