unit ManagedRecordsDemo.UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TMyRecord = record
    Value: Integer;
    SL: TStrings;
    class operator Initialize(out Dest: TMyRecord);
    class operator Finalize(var Dest: TMyRecord);
    class operator Assign(var Dest: TMyRecord; const [Ref] Src: TMyRecord);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TMyRecord }

procedure Log(s: String);
begin
  Form1.Memo1.Lines.Add(s);
end;

class operator TMyRecord.Assign(var Dest: TMyRecord; const [Ref] Src: TMyRecord);
begin
  Dest.Value := Src.Value;
  Dest.SL.Text := Src.SL.Text;
end;

class operator TMyRecord.Finalize(var Dest: TMyRecord);
begin
  Dest.SL.Free;
  Log('destroyed: ' + IntToHex(IntPtr(@Dest)));
end;

class operator TMyRecord.Initialize(out Dest: TMyRecord);
begin
  Dest.Value := 10;
  Dest.SL := TStringList.Create;
  Log('created: ' + IntToHex(IntPtr(@Dest)));  // pointer to memory location
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  var A: TMyRecord;

  Log(A.Value.ToString);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  var A, B: TMyRecord;
  A.SL.Add('A');
  B.SL.Add('B');
  A := B;
  ShowMessage(B.SL.Text);

end;

end.
