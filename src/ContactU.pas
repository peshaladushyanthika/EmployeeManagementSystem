unit ContactU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB;

type
  TContactF = class(TForm)
    Label1: TLabel;
    newconEd: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ContactF: TContactF;

implementation
uses DataU,ProfileU;

{$R *.dfm}

procedure TContactF.Button1Click(Sender: TObject);
var
  ExistingContacts: string;
  var NewContact :string;
  var
  ProfileID: Integer;
begin
  try
    //start transaction
    DataM.Connection1.StartTransaction;
    DataM.Query2.Open;  //Ensure the dataset is open
    ProfileID := StrToInt(ProfileF.DBEdit1.Text);
    NewContact := ContactF.newconEd.Text;
    DataM.Query2.Append;    // Update the contact field
    DataM.Query2.FieldByName('profileId').AsInteger := ProfileID;
    DataM.Query2.FieldByName('contact').AsString := NewContact;
    DataM.Query2.Post;
    //Update contacts for profile table
    if DataM.Query1.Locate('id', StrToInt(ProfileF.DBEdit1.Text), []) then
    begin
    DataM.Query1.Edit;
    DataM.Query1.FieldByName('contact').AsString := '0';
    DataM.Query1.Post;
    end;
    ShowMessage('Contact added successfully');
    close;
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
end;
end.
