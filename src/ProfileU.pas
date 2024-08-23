unit ProfileU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,System.DateUtils;

type
  TProfileF = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    nameEd: TDBEdit;
    Label3: TLabel;
    dobEd: TDBEdit;
    Label4: TLabel;
    nicEd: TDBEdit;
    Label5: TLabel;
    conEd: TDBEdit;
    Label6: TLabel;
    addEd: TDBEdit;
    btClose: TButton;
    btSave: TButton;
    DBGrid1: TDBGrid;
    btaddcon: TButton;
    btdelcon: TButton;
    procedure btSaveClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btaddconClick(Sender: TObject);
    procedure btdelconClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProfileF: TProfileF;

implementation
uses DataU,ContactU;

{$R *.dfm}

//validate fields and save data in both tables
procedure TProfileF.btSaveClick(Sender: TObject);
var msg: string;
var Result:boolean;
begin
msg := '';
if Trim(nameEd.Text) = '' then
msg := msg + 'Name cannot be empty'+ sLineBreak;
if Trim(dobEd.Text) = '' then
msg := msg + 'DOB cannot be empty'+ sLineBreak;
if Trim(nicEd.Text) = '' then
msg := msg + 'NIC cannot be empty'+ sLineBreak;
if Trim(conEd.Text) = '' then
msg := msg + 'Contact cannot be empty'+ sLineBreak;
if Trim(addEd.Text) = '' then
msg := msg + 'Adderess cannot be empty'+ sLineBreak;
Result := (msg='');
if Result then
begin
try
//start transaction
DataM.Connection1.StartTransaction;
// Save record
if DataM.Query1.State in [dsEdit,dsInsert] then
  DataM.Query1.Post;
  DataM.Connection1.Commit;    //commit the transaction
  except
  on E: Exception do
  begin
  DataM.Connection1.Rollback;  //if transaction fail, rollback
  ShowMessage('Transaction failed: ' + E.Message);
  end;
end;
  end
  else
  showmessage(msg);
end;

//show contact details for particular profile in the grid
procedure TProfileF.FormShow(Sender: TObject);
var ProfileID : Integer;
begin
  if DataM.Query1.Active then
  begin
  ProfileID := DataM.Query1.FieldByName('id').AsInteger;
  DataM.Query2.Close;
  DataM.Query2.SQL.Clear;
  DataM.Query2.SQL.Add('SELECT * FROM contact WHERE profileId = :ProfileID');
  DataM.Query2.Params.ParamByName('ProfileID').AsInteger :=ProfileID;
  DataM.Query2.Open;
  if not DataM.Query2.IsEmpty then
    begin
      DBGrid1.DataSource := DataM.DataSource2;
     DBGrid1.Refresh;       //refresh the grid
    end
  end;
end;

//show contact form to add new contact
procedure TProfileF.btaddconClick(Sender: TObject);
begin
ContactF.ShowModal;
end;

procedure TProfileF.btdelconClick(Sender: TObject);
var
  ProfileID: Integer;
begin
  try
    // Start transaction
    DataM.Connection1.StartTransaction;

    // Get the ProfileID
    ProfileID := DataM.Query1.FieldByName('id').AsInteger;

    // Check if there are any related contacts in the con_dtl table
    DataM.Query2.Close;
    DataM.Query2.SQL.Text := 'SELECT * FROM contact WHERE profileId = :ProfileID';
    DataM.Query2.ParamByName('ProfileID').AsInteger := ProfileID;
    DataM.Query2.Open;

    if not DataM.Query2.IsEmpty then
    begin
    DataM.Query2.Delete;
    ShowMessage('contacts deleted successfully');
    end
    else
    begin
      ShowMessage('No contacts to delete');
    end;
    DataM.Connection1.Commit;    // Commit the transaction
  except
    on E: Exception do
    begin
    DataM.Connection1.Rollback;    // If transaction fails, rollback
    ShowMessage('Transaction failed: ' + E.Message);
    end;
  end;
end;

//close the form
procedure TProfileF.btCloseClick(Sender: TObject);
begin
if DataM.Query1.State in [dsEdit,dsInsert] then  //checking state
DataM.Query1.cancel;
close;
end;
end.
