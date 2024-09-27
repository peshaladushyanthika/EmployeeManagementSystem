object ProfileF: TProfileF
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Profile'
  ClientHeight = 625
  ClientWidth = 688
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
    Width = 70
    Height = 23
    Margins.Top = 10
    Caption = 'Profile ID'
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
    Top = 255
    Width = 60
    Height = 23
    Caption = 'Contact'
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
    Top = 205
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
    Width = 391
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
  object addEd: TDBEdit
    AlignWithMargins = True
    Left = 200
    Top = 197
    Width = 392
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'address'
    DataSource = DataSource1
    TabOrder = 4
  end
  object btSave: TButton
    Left = 437
    Top = 455
    Width = 70
    Height = 41
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btSaveClick
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 200
    Top = 255
    Width = 391
    Height = 186
    DataSource = DataM.DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
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
    Left = 201
    Top = 455
    Width = 64
    Height = 42
    Caption = 'Add'
    TabOrder = 8
    OnClick = btaddconClick
  end
  object btdelcon: TButton
    AlignWithMargins = True
    Left = 359
    Top = 455
    Width = 66
    Height = 42
    Caption = 'Delete'
    TabOrder = 7
    OnClick = btdelconClick
  end
  object bteditcon: TButton
    Left = 280
    Top = 455
    Width = 65
    Height = 42
    Caption = 'Edit'
    TabOrder = 9
    OnClick = bteditconClick
  end
  object btClose: TButton
    Left = 520
    Top = 455
    Width = 71
    Height = 41
    Caption = 'Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = btCloseClick
  end
  object DataSource1: TDataSource
    DataSet = DataM.Query1
    Left = 24
    Top = 272
  end
end
