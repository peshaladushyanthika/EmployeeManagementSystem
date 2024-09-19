unit ReportU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, Vcl.StdCtrls;

type
  TReportF = class(TForm)
    RLReport1: TRLReport;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery1id: TFDAutoIncField;
    FDQuery1name: TStringField;
    FDQuery1dob: TDateField;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    DataSource2: TDataSource;
    FDQuery2: TFDQuery;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    FDQuery1address: TStringField;
    FDQuery2contact: TStringField;
    FDQuery2profileId: TIntegerField;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    FDQuery1NIC: TStringField;
    RLBand5: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel7: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportF: TReportF;

implementation

{$R *.dfm}

end.
