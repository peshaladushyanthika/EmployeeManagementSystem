unit MainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.FileCtrl;

type
  TMainF = class(TForm)
    Panel1: TPanel;
    btExit: TButton;
    btAdd: TButton;
    btEdit: TButton;
    btDelete: TButton;
    btSearch: TButton;
    edSearch: TEdit;
    btExport: TButton;
    DBGrid1: TDBGrid;
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
   procedure edSearchChange(Sender: TObject);
    procedure btExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainF: TMainF;

implementation
//link data module to main form
uses DataU,ProfileU,ExportU;

{$R *.dfm}

//To add new record
procedure TMainF.btAddClick(Sender: TObject);
begin
DataM.Query1.Append;
ProfileF.Showmodal;
end;

//Delete record
procedure TMainF.btDeleteClick(Sender: TObject);
var response: Integer;
var ProfileID : Integer;
begin
//a confirmation dialog with Yes and No buttons
response := MessageDlg('Are you sure you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0);
if response = mrYes then
  begin
  try
  //start transaction
  DataM.Connection1.StartTransaction;
  // Get the ProfileID
  ProfileID := DataM.Query1.FieldByName('id').AsInteger;
  // Check if there are any related contacts in the contact table
  DataM.Query2.Close;
  DataM.Query2.SQL.Text := 'SELECT * FROM contact WHERE profileId = :ProfileID';
  DataM.Query2.ParamByName('ProfileID').AsInteger := ProfileID;
  DataM.Query2.Open;
    if not DataM.Query2.IsEmpty then
    begin
    DataM.Query2.Delete;  // Delete all related contacts
    ShowMessage('All related contacts deleted successfully');
    end;
  DataM.Query1.Delete;
  ShowMessage('Record is deleted.');
//commit the transaction
  DataM.Connection1.Commit;
  except
  on E: Exception do
  begin
  //if transaction fail, rollback
  DataM.Connection1.Rollback;
  ShowMessage('Transaction failed: ' + E.Message);
  end;
  end;
end
else
  begin
  ShowMessage('Record is not deleted.');
  end;
end;

//To edit record
procedure TMainF.btEditClick(Sender: TObject);
begin
DataM.Query1.Edit;
ProfileF.Showmodal;
end;

//Exit
procedure TMainF.btExitClick(Sender: TObject);
begin
close;
end;

//search click
procedure TMainF.btSearchClick(Sender: TObject);
begin
if edSearch.Text = '' then
exit;
//search by name and contact
with DataM.Query1 do
begin
  if Locate('name;contact', VarArrayOf(['edSearch.Text', 'edSearch.Text']), [loCaseInsensitive,loPartialKey]) then
    ShowMessage('Found the profile')
  else
    ShowMessage('Profile not found');
end;
end;

procedure TMainF.btExportClick(Sender: TObject);
begin
ExportF.showmodal;
end;

//search while typing the name
procedure TMainF.edSearchChange(Sender: TObject);
var
  FilterStr: string;
begin
    if edSearch.Text <> '' then
  begin
    FilterStr := 'Name LIKE ''' + edSearch.Text + '%''';
    DataM.Query1.Filter := FilterStr;
    DataM.Query1.Filtered := True;
  end
  else
  begin
    DataM.Query1.Filtered := False;
  end;
end;

//grid title click event for sorting
procedure TMainF.DBGrid1TitleClick(Column: TColumn);
begin
with DataM.Query1 do
  begin
    if IndexFieldNames = Column.FieldName + ':A' then
      IndexFieldNames := Column.FieldName + ':D'
    else
      IndexFieldNames := Column.FieldName + ':A';
    // Reopen the dataset to apply the sorting
    Close;
    Open;
  end;
end;
end.
