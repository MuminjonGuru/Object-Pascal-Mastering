program NativeHTTPClientComponentDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMain in 'uMain.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
