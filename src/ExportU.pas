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
  DataU;

  procedure TExportF.FormCreate(Sender: TObject);
begin
  DBGrid.Options := DBGrid.Options + [dgRowSelect];
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
    while not DBGrid.DataSource.DataSet.Eof do  //current record is not the last
    begin
      Line := '';
      for i := 0 to DBGrid.Columns.Count - 1 do
      begin
        Line := Line + DBGrid.Fields[i].AsString + #9; //Tab seperated
      end;
      Line := Line + sLineBreak;
      Clipboard.Open;
      try
        Clipboard.AsText := Line;
      finally
        Clipboard.Close;
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
    begin
      Line := Line + DBGrid.Columns[i].Title.Caption;
      if i < DBGrid.Columns.Count - 1 then
        Line := Line + ','; // Add a comma only if it's not the last column
    end;
    Strings.Add(Line);

    // Add data rows
    DBGrid.DataSource.DataSet.First;
    while not DBGrid.DataSource.DataSet.Eof do
    begin
      Line := '';
      for i := 0 to DBGrid.Columns.Count - 1 do
      begin
        Line := Line + DBGrid.Fields[i].AsString;
        if i < DBGrid.Columns.Count - 1 then
          Line := Line + ','; // Add a comma only if it's not the last field
      end;
      Strings.Add(Line);
      DBGrid.DataSource.DataSet.Next;
    end;

    // Save to file
    Strings.SaveToFile('GridData.csv');
    ShowMessage('Exported to CSV successfully');
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
end.
