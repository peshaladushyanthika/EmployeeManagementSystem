object MainF: TMainF
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Profile Management'
  ClientHeight = 588
  ClientWidth = 1064
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleElements = [seClient, seBorder]
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1064
    Height = 73
    Align = alTop
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1067
    object btExit: TButton
      AlignWithMargins = True
      Left = 953
      Top = 8
      Width = 75
      Height = 41
      Margins.Right = 4
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btExitClick
    end
    object btAdd: TButton
      AlignWithMargins = True
      Left = 626
      Top = 8
      Width = 75
      Height = 41
      Margins.Right = 4
      Caption = 'Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      StyleName = 'Sky'
      OnClick = btAddClick
    end
    object btEdit: TButton
      AlignWithMargins = True
      Left = 708
      Top = 8
      Width = 75
      Height = 41
      Margins.Right = 4
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btEditClick
    end
    object btDelete: TButton
      AlignWithMargins = True
      Left = 790
      Top = 8
      Width = 75
      Height = 41
      Margins.Right = 4
      Caption = 'Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btDeleteClick
    end
    object btSearch: TButton
      AlignWithMargins = True
      Left = 320
      Top = 8
      Width = 75
      Height = 41
      Margins.Right = 4
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btSearchClick
    end
    object edSearch: TEdit
      AlignWithMargins = True
      Left = 17
      Top = 8
      Width = 281
      Height = 51
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TextHint = '  Search by Name, NIC'
      OnChange = edSearchChange
    end
    object btExport: TButton
      Left = 872
      Top = 8
      Width = 75
      Height = 41
      Caption = 'Export'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btExportClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 1064
    Height = 515
    Margins.Right = 4
    Align = alClient
    Color = clTeal
    DataSource = DataM.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dob'
        Title.Alignment = taCenter
        Title.Caption = 'DOB'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIC'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'address'
        Title.Alignment = taCenter
        Title.Caption = 'Address'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 380
        Visible = True
      end>
  end
end
