program Tester;

uses
  Forms,
  TMainUnit in 'TMainUnit.pas' {Form1},
  TSettUnit in 'TSettUnit.pas' {Form2},
  Lib_X56r in '..\..\..\..\..\..\..\Библиотеки\Lib_X56r.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
