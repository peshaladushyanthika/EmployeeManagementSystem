object ProfileF: TProfileF
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Profile'
  ClientHeight = 639
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 23
  object Label1: TLabel
    AlignWithMargins = True
    Left = 96
    Top = 34
    Width = 17
    Height = 23
    Margins.Top = 10
    Caption = 'ID'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 96
    Top = 81
    Width = 46
    Height = 23
    Caption = 'Name'
    FocusControl = nameEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    AlignWithMargins = True
    Left = 96
    Top = 127
    Width = 35
    Height = 23
    Caption = 'DOB'
    FocusControl = dobEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    AlignWithMargins = True
    Left = 96
    Top = 156
    Width = 29
    Height = 23
    Caption = 'NIC'
    FocusControl = nicEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    AlignWithMargins = True
    Left = 96
    Top = 197
    Width = 60
    Height = 23
    Caption = 'Contact'
    FocusControl = conEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    AlignWithMargins = True
    Left = 96
    Top = 236
    Width = 60
    Height = 23
    Caption = 'Address'
    FocusControl = addEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 405
    Top = 117
    Width = 29
    Height = 19
    Caption = 'Age'
    FocusControl = ageEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'zz'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    AlignWithMargins = True
    Left = 201
    Top = 31
    Width = 393
    Height = 31
    Margins.Top = 10
    DataField = 'id'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object nameEd: TDBEdit
    AlignWithMargins = True
    Left = 201
    Top = 78
    Width = 393
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'name'
    DataSource = DataSource1
    TabOrder = 1
  end
  object dobEd: TDBEdit
    AlignWithMargins = True
    Left = 201
    Top = 116
    Width = 168
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'dob'
    DataSource = DataSource1
    TabOrder = 2
  end
  object nicEd: TDBEdit
    AlignWithMargins = True
    Left = 201
    Top = 155
    Width = 392
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'NIC'
    DataSource = DataSource1
    TabOrder = 3
  end
  object conEd: TDBEdit
    AlignWithMargins = True
    Left = 200
    Top = 194
    Width = 392
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'contact'
    DataSource = DataSource1
    TabOrder = 4
  end
  object addEd: TDBEdit
    AlignWithMargins = True
    Left = 200
    Top = 233
    Width = 392
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'address'
    DataSource = DataSource1
    TabOrder = 5
  end
  object btClose: TButton
    Left = 405
    Top = 272
    Width = 187
    Height = 41
    Caption = 'Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btCloseClick
  end
  object btSave: TButton
    Left = 201
    Top = 272
    Width = 184
    Height = 41
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btSaveClick
  end
  object ageEd: TDBEdit
    Left = 466
    Top = 111
    Width = 127
    Height = 31
    DataField = 'age'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 97
    Top = 352
    Width = 497
    Height = 177
    DataSource = DataM.DataSource2
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'profileId'
        Title.Caption = 'ProfileId'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contact'
        Title.Caption = 'Contact'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object btaddcon: TButton
    AlignWithMargins = True
    Left = 328
    Top = 543
    Width = 120
    Height = 42
    Caption = 'Add'
    TabOrder = 10
    OnClick = btaddconClick
  end
  object btdelcon: TButton
    AlignWithMargins = True
    Left = 466
    Top = 543
    Width = 126
    Height = 42
    Caption = 'Delete'
    TabOrder = 11
    OnClick = btdelconClick
  end
  object DataSource1: TDataSource
    DataSet = DataM.Query1
    Left = 24
    Top = 272
  end
end
