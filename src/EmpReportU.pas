unit EmpReportU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, Vcl.Imaging.jpeg,
  Vcl.StdCtrls, Vcl.DBCtrls;

type
  TEmpReportF = class(TForm)
    ReportF: TRLReport;
    RLBand1: TRLBand;
    RLLabel6: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLLabel5: TRLLabel;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLDraw2: TRLDraw;
    RLSystemInfo2: TRLSystemInfo;
    DataSource1: TDataSource;
    qr1: TFDQuery;
    qr1id: TFDAutoIncField;
    qr1name: TStringField;
    qr1empId: TStringField;
    qr1nic: TStringField;
    qr1cont: TStringField;
    qr1dob: TDateField;
    qr1address: TStringField;
    qr1age: TIntegerField;
    qrContact: TFDQuery;
    qrContactid: TFDAutoIncField;
    qrContactempId: TIntegerField;
    qrContactcontact: TStringField;
    ds2: TDataSource;
    Query1: TFDQuery;
    Query1id: TFDAutoIncField;
    Query1name: TStringField;
    Query1dob: TDateField;
    Query1NIC: TStringField;
    Query1address: TStringField;
    Query1contact: TStringField;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Query2: TFDQuery;
    Query2id: TFDAutoIncField;
    Query2profileId: TIntegerField;
    Query2contact: TStringField;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmpReportF: TEmpReportF;

implementation

{$R *.dfm}

uses DataU;

end.
