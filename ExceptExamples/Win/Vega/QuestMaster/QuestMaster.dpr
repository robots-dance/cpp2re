program QuestMaster;

uses
  Forms,
  QMMainUnit in 'QMMainUnit.pas' {Form1},
  QuestSettUnit in 'QuestSettUnit.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
