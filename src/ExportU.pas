unit ExportU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, Vcl.StdCtrls,Clipbrd, Xml.XMLDoc, Xml.XMLIntf;

type
  TExportF = class(TForm)
    Panel1: TPanel;
    DBGrid: TDBGrid;
    btPrint: TButton;
    PopupMenu1: TPopupMenu;
    copytoclipboard1: TMenuItem;
    ExporttoXML1: TMenuItem;
    Button1: TButton;
    procedure copytoclipboard1Click(Sender: TObject);
    procedure CopyGridDataToClipboard;
    procedure ExportGridData;
    procedure ExportToCsvClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportToXMLClick;
    procedure ExporttoXML1Click(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FilterQueryByProfileID(ProfileID: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExportF: TExportF;

implementation

{$R *.dfm}
uses
  DataU,ReportEmpU;

  procedure TExportF.FormCreate(Sender: TObject);
begin
  DBGrid.Options := DBGrid.Options + [dgRowSelect];
end;

//copy to clipboard
procedure TExportF.btPrintClick(Sender: TObject);
var
  ProfileID: Integer;
  Bookmark: TBookmark;
  i: Integer;
begin
  try
    for i := 0 to DBGrid.SelectedRows.Count - 1 do
    begin
      Bookmark := DBGrid.SelectedRows.Items[i];
      DataM.Query1.GotoBookmark(Bookmark);
      ProfileID := DataM.Query1.FieldByName('id').AsInteger;
      FilterQueryByProfileID(ProfileID);
      ShowMessage('Selected Profile ID:' + IntTostr(ProfileID));

      ReportEmpF := TReportEmpF.Create(nil);
      try
        ReportEmpF.SetupEmpReport(ProfileID);
        if i > 0 then
         ReportEmpF.RLReport1.NewPage;
      finally
        ReportEmpF.Free;
      end;
    // Remove the filter after the report is generated for each profile
      DataM.Query1.Filtered := False;
    end;
  except
    on E: Exception do
      ShowMessage('An error occurred: ' + E.Message);
  end;
end;

procedure TExportF.FilterQueryByProfileID(ProfileID: Integer);
begin
  DataM.Query1.Filtered := False;
  DataM.Query1.Filter := 'id = ' + IntToStr(ProfileID);
  DataM.Query1.Filtered := True;
end;

procedure TExportF.Button1Click(Sender: TObject);
begin
close;
end;

procedure TExportF.CopyGridDataToClipboard;
var
  i: Integer;
  Line: string;
begin
    // Add data rows
    while not DBGrid.DataSource.DataSet.Eof do
    begin
      Line := '';
      for i := 0 to DBGrid.Columns.Count - 1 do
      begin
        Line := Line + DBGrid.Fields[i].AsString + #9; //Tab seperated
      end;
      Line := Line + sLineBreak;
      try
      Clipboard.AsText := Line;
      except
    on E: Exception do
      ShowMessage('Error accessing clipboard: ' + E.Message);
    end;
    end;
end;

procedure TExportF.copytoclipboard1Click(Sender: TObject);
begin
CopyGridDataToClipboard;
end;

//export to CSV
procedure TExportF.ExportGridData;
var
  i: Integer;
  Line: string;
  Strings: TStringList;
begin
  Strings := TStringList.Create;
  try
    // Add headers
    Line := '';
    for i := 0 to DBGrid.Columns.Count - 1 do
      Line := Line + DBGrid.Columns[i].Title.Caption + ',';
    Strings.Add(Line);

    // Add data rows
    DBGrid.DataSource.DataSet.First;
    while not DBGrid.DataSource.DataSet.Eof do
    begin
      Line := '';
      for i := 0 to DBGrid.Columns.Count - 1 do
        Line := Line + DBGrid.Fields[i].AsString + ',';
      Strings.Add(Line);
      DBGrid.DataSource.DataSet.Next;
    end;
  Strings.SaveToFile('GridData.csv');
  showmessage('Export into CSV');
  finally
    Strings.Free;
  end;
end;

procedure TExportF.ExportToCsvClick(Sender: TObject);
begin
       ExportGridData;
end;

//export to XML
procedure TExportF.ExportToXMLClick;
var
  XMLDoc: IXMLDocument;
  RootNode, RowNode: IXMLNode;
  i: Integer;
  FileName: string;
begin
  // Create an XML document
  XMLDoc := NewXMLDocument;
  XMLDoc.Options := [doNodeAutoIndent];
  XMLDoc.Version := '1.0';
  XMLDoc.Encoding := 'UTF-8';
  // Create root node
  RootNode := XMLDoc.AddChild('Records');
  // Create node for the selected row
  RowNode := RootNode.AddChild('Record');
  for i := 0 to DBGrid.Columns.Count - 1 do
  begin
    RowNode.AddChild(DBGrid.Fields[i].FieldName).Text := DBGrid.Fields[i].AsString;
  end;
  //save the XML document
  FileName := ExtractFilePath(Application.ExeName) + 'SelectedRow.xml';
  XMLDoc.SaveToFile(FileName);
  ShowMessage('Selected row exported to ' + FileName);
end;


procedure TExportF.ExporttoXML1Click(Sender: TObject);
begin
ExportToXMLClick;
end;


end.
