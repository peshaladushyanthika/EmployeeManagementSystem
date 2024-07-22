program Crud;

uses
  Vcl.Forms,
  MainU in 'src\MainU.pas' {MainF},
  DataU in 'src\DataU.pas' {DataM: TDataModule},
  ProfileU in 'src\ProfileU.pas' {ProfileF},
  Vcl.Themes,
  Vcl.Styles,
  ContactU in 'src\ContactU.pas' {ContactF},
  ReportEmpU in 'src\ReportEmpU.pas' {ReportEmpF},
  ExportU in 'src\ExportU.pas' {ExportF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Lavender Classico');
  Application.CreateForm(TDataM, DataM);
  Application.CreateForm(TMainF, MainF);
  Application.CreateForm(TProfileF, ProfileF);
  Application.CreateForm(TContactF, ContactF);
  Application.CreateForm(TReportEmpF, ReportEmpF);
  Application.CreateForm(TExportF, ExportF);
  Application.Run;
end.
