program TruthTableGenerator;

uses
  crt;

// Generates the truth table for the logical AND operation
procedure GenerateANDTable;
var
  A, B: Boolean;
begin
  Writeln('A B | A AND B');
  Writeln('-------------');
  for A := False to True do
    for B := False to True do
      Writeln(A:5, B:3, ' | ', A and B:7);
end;

// Generates the truth table for the logical OR operation
procedure GenerateORTable;
var
  A, B: Boolean;
begin
  Writeln('A B | A OR B');
  Writeln('------------');
  for A := False to True do
    for B := False to True do
      Writeln(A:5, B:3, ' | ', A or B:6);
end;

// Generates the truth table for the logical NOT operation
procedure GenerateNOTTable;
var
  A: Boolean;
begin
  Writeln('A | NOT A');
  Writeln('---------');
  for A := False to True do
    Writeln(A:5, ' | ', not A:6);
end;

begin
  // Generate truth tables for AND, OR, and NOT
  Writeln('Truth Table for AND:');
  GenerateANDTable;
  Writeln; // Blank line for separation

  Writeln('Truth Table for OR:');
  GenerateORTable;
  Writeln; // Blank line for separation

  Writeln('Truth Table for NOT:');
  GenerateNOTTable;

  // Prevent console window from closing immediately
  Readln;
end.
