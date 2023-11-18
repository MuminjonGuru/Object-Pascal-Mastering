
{ Example 1: Concatenating Strings }
var
  str1, str2, result: string;
begin
  str1 := 'Hello, ';
  str2 := 'World!';
  result := str1 + str2;
  // result is 'Hello, World!'
end;

{ Example 2: Finding a Substring }
var
  str: string;
  position: Integer;
begin
  str := 'Find the needle in a haystack';
  position := Pos('needle', str);
  // position will be 10
end;

{ Example 3: Extracting a Substring }
var
  str, substring: string;
begin
  str := 'Hello, World!';
  substring := Copy(str, 8, 5);
  // substring is 'World'
end;

{ Example 4: Replacing Substrings }
var
  str, result: string;
begin
  str := 'Hello, World!';
  result := StringReplace(str, 'World', 'Delphi', [rfReplaceAll, rfIgnoreCase]);
  // result is 'Hello, Delphi!'
end;

{ Example 5: Converting to Upper/Lower Case }
var
  str, upper, lower: string;
begin
  str := 'Delphi Programming';
  upper := UpperCase(str);
  lower := LowerCase(str);
  // upper is 'DELPHI PROGRAMMING'
  // lower is 'delphi programming'
end;

{ Example 6: Trimming Strings }
var
  str, trimmed: string;
begin
  str := '   Trim this string   ';
  trimmed := Trim(str);
  // trimmed is 'Trim this string'
end;

{ Example 7: Splitting a String }
var
  str: string;
  list: TStringList;
begin
  str := 'Apple,Orange,Banana';
  list := TStringList.Create;
  try
    list.Delimiter := ',';
    list.DelimitedText := str;
    // list[0] is 'Apple', list[1] is 'Orange', list[2] is 'Banana'
  finally
    list.Free;
  end;
end;

{ Example 8: Formatting Strings }
var
  formattedStr: string;
begin
  formattedStr := Format('The %s is %d', ['answer', 42]);
  // formattedStr is 'The answer is 42'
end;
