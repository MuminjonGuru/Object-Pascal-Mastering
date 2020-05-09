type
  PhoneEntry = Record
    FirstName, LastName: string[20];
    PhoneNumber: string[15];
    Listed: Boolean;
  end;
  FPhoneList = file of PhoneEntry;
