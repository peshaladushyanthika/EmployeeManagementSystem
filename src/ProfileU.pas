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
    Label6: TLabel;
    addEd: TDBEdit;
    btSave: TButton;
    DBGrid1: TDBGrid;
    btaddcon: TButton;
    btdelcon: TButton;
    bteditcon: TButton;
    btClose: TButton;
    procedure btSaveClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btaddconClick(Sender: TObject);
    procedure btdelconClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bteditconClick(Sender: TObject);
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
//procedure TProfileF.btSaveClick(Sender: TObject);
//var msg: string;
//var Result:boolean;
//begin
//msg := '';
//if Trim(nameEd.Text) = '' then
//msg := msg + 'Name cannot be empty'+ sLineBreak;
//if Trim(dobEd.Text) = '' then
//msg := msg + 'DOB cannot be empty'+ sLineBreak;
//if Trim(nicEd.Text) = '' then
//msg := msg + 'NIC cannot be empty'+ sLineBreak;
//if Trim(conEd.Text) = '' then
//msg := msg + 'Contact cannot be empty'+ sLineBreak;
//if Trim(addEd.Text) = '' then
//msg := msg + 'Adderess cannot be empty'+ sLineBreak;
//Result := (msg='');
//if Result then
//begin
//try
////start transaction
//DataM.Connection1.StartTransaction;
//// Save record
//if DataM.Query1.State in [dsEdit,dsInsert] then
//  DataM.Query1.Post;
//  DataM.Connection1.Commit;    //commit the transaction
//  except
//  on E: Exception do
//  begin
//  DataM.Connection1.Rollback;  //if transaction fail, rollback
//  ShowMessage('Transaction failed: ' + E.Message);
//  end;
//end;
//  end
//  else
//  showmessage(msg);
//end;

procedure TProfileF.btSaveClick(Sender: TObject);
var
  msg: string;
  ProfileID: Integer;
  Result: Boolean;
begin
  msg := '';
  // Validate profile fields
  if Trim(nameEd.Text) = '' then
    msg := msg + 'Name cannot be empty' + sLineBreak;
  if Trim(dobEd.Text) = '' then
    msg := msg + 'DOB cannot be empty' + sLineBreak;
  if Trim(nicEd.Text) = '' then
    msg := msg + 'NIC cannot be empty' + sLineBreak;
  if Trim(addEd.Text) = '' then
    msg := msg + 'Address cannot be empty' + sLineBreak;

  Result := (msg = '');

  if Result then
  begin
    try
      // Start transaction
      DataM.Connection1.StartTransaction;

      // Save the profile record
      if DataM.Query1.State in [dsEdit, dsInsert] then
      begin
        DataM.Query1.Post;  // Save the profile data
//        DataM.Query1.ApplyUpdates; // Ensure changes are applied
      end;

      // Get the profile ID (for new profiles, ID will be auto-generated after post)
      ProfileID := DataM.Query1.FieldByName('id').AsInteger;

      // Save contacts if any (ensure Query2 is open and has valid data)
      if not DataM.Query2.IsEmpty then
      begin
        DataM.Query2.First; // Move to the first contact record
        while not DataM.Query2.Eof do
        begin
          // Ensure that Query2 is in Edit or Insert mode
          if DataM.Query2.State in [dsBrowse] then
            DataM.Query2.Edit;

          // Set the profileId for each contact record
          DataM.Query2.FieldByName('profileId').AsInteger := ProfileID;

          // Save the current contact
          DataM.Query2.Post;
 DBGrid1.Options := DBGrid1.Options - [dgEditing];

          // Move to the next contact record
          DataM.Query2.Next;
        end;

//        DataM.Query2.ApplyUpdates; // Ensure contacts are applied
      end
      else
      begin
        DataM.Query2.Append;  // Enter insert mode for new contact
        DataM.Query2.FieldByName('profileId').AsInteger := ProfileID;
//        DataM.Query2.ApplyUpdates; // Apply updates
      end;
      DataM.Connection1.Commit;
      ShowMessage('Profile and contacts saved successfully.');

    except
      on E: Exception do
      begin
        // Rollback the transaction in case of failure
        DataM.Connection1.Rollback;
        ShowMessage('Transaction failed: ' + E.Message);
      end;
    end;
  end
  else
  begin
    ShowMessage(msg);  // Show validation error messages
  end;
end;


procedure TProfileF.Button1Click(Sender: TObject);
begin
DataM.Query2.Edit;
ContactF.ShowModal;
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

procedure TProfileF.btaddconClick(Sender: TObject);
var
  ProfileID: Integer;
begin
    if DataM.Query1.Active and (not DataM.Query1.IsEmpty) then  // Ensure the main profile record is selected and Query2 is open
    begin
      ProfileID := DataM.Query1.FieldByName('id').AsInteger;
      // Insert a new row in the contact table for the selected profile
      DataM.Query2.Append;
      DataM.Query2.FieldByName('profileId').AsInteger := ProfileID; // Set the profileId
      DataM.Query2.FieldByName('contact').AsString := ''; // Initialize the contact field as empty
      DBGrid1.Options := DBGrid1.Options + [dgEditing];
    end
end;

procedure TProfileF.btdelconClick(Sender: TObject);
begin
    if not DataM.Query2.IsEmpty then
    begin
    DataM.Query2.Delete;
    ShowMessage('contacts deleted successfully');
    end
end;

procedure TProfileF.bteditconClick(Sender: TObject);
begin
    // Ensure a contact is selected for editing
    if DataM.Query2.Active and (not DataM.Query2.IsEmpty) then
    begin
    // Enable editing on the grid
      DBGrid1.Options := DBGrid1.Options + [dgEditing];
      // Enable editing of the selected contact
      DataM.Query2.Edit;
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
