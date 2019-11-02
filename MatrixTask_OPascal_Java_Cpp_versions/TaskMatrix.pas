unit TaskMatrix;

interface

uses
  StrUtils, SysUtils, StringTokenizer;

type
  TTaskMatrix=class
  private
    procedure main(args : String);
  public;
    constructor Create;
    destructor Destroy; override;
  end;

function substring(str : String; offset : integer): String;
function substring2(str : String; offset : integer; count : integer): String;
function startsWith(str : String; prefix : String): boolean; 
function endsWith(str : String; suffix : String): boolean; 

implementation

function substring(str : String; offset : integer): String;
begin
  result := RightStr(str, Length(str) - offset);
end;

function substring2(str : String; offset : integer; count : integer): String;
begin
  result := MidStr(str, offset+1, count - offset);
end;

function startsWith(str : String; prefix : String): boolean;
begin
  result := (Pos(prefix, str) = 1);
end;

function endsWith(str : String; suffix : String): boolean;
begin
  result := (RightStr(str, Length(suffix)) = suffix);
end;

{ TTaskMatrix }

constructor TTaskMatrix.Create();
begin
  inherited Create;
end;

destructor TTaskMatrix.Destroy();
begin
  inherited Destroy;
end;

procedure TTaskMatrix.main(args : String);
var
  x : integer;
  i : integer;
  q : integer;
  z : integer;
  y : integer;
  n : integer;
begin
  Write('N = ');
  ReadLn(N);
  
  var q: array of array of integer;
  SetLength(Q, N, N);
  
  z:=0;
  i:=0;
  while (i<(n)*2) do begin
    x:=0;
    while (x<n) do begin
      y:=0;
      while (y<n) do begin
        
        if (x+y=i) then 
        begin
          inc(z);
          
          if (i%2=0) then 
          begin
            q[x][y]:=z;
          end else begin
            q[y][x]:=z;
          end;
        end;
        inc(y);
      end;
      inc(x);
    end;
    inc(i);
  end;
  x:=0;
  while (x<n) do begin
    WriteLn;
    y:=0;
    while (y<n) do begin
      Write(q[x][y]+' ');
      inc(y);
    end;
    inc(x);
  end;
end;


end.
