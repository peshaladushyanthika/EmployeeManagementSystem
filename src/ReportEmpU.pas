unit ReportEmpU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport,Data.DB, Vcl.ExtCtrls;

type
  TReportEmpF = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel1: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBTextCon: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand3: TRLBand;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetupEmpReport(ProfileID :Integer);
  end;

var
  ReportEmpF: TReportEmpF;

implementation
uses DataU;

{$R *.dfm}


procedure TReportEmpF.SetupEmpReport(ProfileID: Integer);
begin
DataM.Query2.Close;
  DataM.Query2.SQL.Text := 'SELECT * FROM contact WHERE profileId = :ProfileID';
  DataM.Query2.ParamByName('ProfileID').AsInteger := ProfileID;
  DataM.Query2.Open;
  RLDBTextCon.DataField := 'contact';
  RLDBTextCon.DataSource := DataM.DataSource2;
  RLReport1.Prepare;
  RLReport1.PreviewModal;
end;
end.
