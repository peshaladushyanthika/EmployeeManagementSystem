unit ExportU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, Vcl.StdCtrls,Clipbrd, Xml.XMLDoc, Xml.XMLIntf,Vcl.OleServer, ExcelXP, ComObj;

type
  TExportF = class(TForm)
    Panel1: TPanel;
    DBGrid: TDBGrid;
    btPrint: TButton;
    PopupMenu1: TPopupMenu;
    copytoclipboard1: TMenuItem;
    ExporttoXML1: TMenuItem;
    Button1: TButton;
    ExporttoExcel1: TMenuItem;
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
    procedure ExporttoExcel1Click(Sender: TObject);
    procedure ExportToExcel(DBGrid: TDBGrid);
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
  DataU, EmpReportU;

  procedure TExportF.FormCreate(Sender: TObject);
begin
  DBGrid.Options := DBGrid.Options + [dgRowSelect];
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
  FileName := ExtractFilePath(Application.ExeName) + 'ProfileData.xml';
  XMLDoc.SaveToFile(FileName);
  ShowMessage('Selected row exported to ' + FileName);
end;

procedure TExportF.ExporttoXML1Click(Sender: TObject);
begin
ExportToXMLClick;
end;

procedure TExportF.ExportToExcel(DBGrid: TDBGrid);
var
  ExcelApp, Workbook, Worksheet: OleVariant;
  i: Integer;
  FileName :  string;
begin
  // Create a new Excel application
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Visible := True;
  //add a new workbook
  Workbook := ExcelApp.Workbooks.Add;
  Worksheet := Workbook.Worksheets[1];
  // Export column headers
  for i := 0 to DBGrid.Columns.Count - 1 do
     Worksheet.Cells[1, i + 1].Value := DBGrid.Columns[i].Title.Caption;
  // Export selected row data
  for i := 0 to DBGrid.Columns.Count - 1 do
     Worksheet.Cells[2, i + 1].Value := DBGrid.Fields[i].AsString;
  // Save the workbook
  FileName := Workbook.SaveAs('ProfileData.xlsx');
  ShowMessage('Data exported to Excel Worksheet');
  ExcelApp.Quit;
  ExcelApp := Unassigned;
end;

procedure TExportF.ExporttoExcel1Click(Sender: TObject);
begin
ExportToExcel(DBGrid);
end;

//print profiles
procedure TExportF.btPrintClick(Sender: TObject);
var
  i: Integer;
  SelectedIDs: TStringList;
  FilterString: string;
begin
  SelectedIDs := TStringList.Create;
  try
    DBGrid.DataSource.DataSet.DisableControls;  // Collect selected IDs
    try
      for i := 0 to DBGrid.SelectedRows.Count - 1 do
      begin
        DBGrid.DataSource.DataSet.GotoBookmark(DBGrid.SelectedRows.Items[i]);
        SelectedIDs.Add(DBGrid.DataSource.DataSet.FieldByName('id').AsString);
      end;
    finally
      DBGrid.DataSource.DataSet.EnableControls;
    end;

    if SelectedIDs.Count > 0 then
    begin

      FilterString := 'id IN (' + SelectedIDs.CommaText + ')';   // Create a filter

      EmpReportU.EmpReportF.Query1.Filter := FilterString;
      EmpReportU.EmpReportF.Query1.Filtered := True;

      EmpReportU.EmpReportF.Query2.Filtered := False;  // filter dataset for contacts
      EmpReportU.EmpReportF.Query2.Filter := 'profileId IN (' + SelectedIDs.CommaText + ')';
      EmpReportU.EmpReportF.Query2.Filtered := True;

      EmpReportU.EmpReportF.ReportF.PreviewModal;

      EmpReportU.EmpReportF.Query1.Filtered := False;
      EmpReportU.EmpReportF.Query2.Filtered := False;
    end
    else
    begin
      ShowMessage('No profile selected');
    end;
  finally
    SelectedIDs.Free;
  end;
end;
end.
