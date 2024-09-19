object ExportF: TExportF
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Export Profile'
  ClientHeight = 500
  ClientWidth = 962
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 956
    object Button1: TButton
      Left = 832
      Top = 7
      Width = 105
      Height = 41
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DBGrid: TDBGrid
    Left = 0
    Top = 57
    Width = 962
    Height = 443
    Align = alClient
    DataSource = DataM.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
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
        Width = 150
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
        Width = 150
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
        Width = 150
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
        Width = 400
        Visible = True
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 8
    object copytoclipboard1: TMenuItem
      Caption = 'Copy to Clipboard'
      OnClick = copytoclipboard1Click
    end
    object copytoclipboard2: TMenuItem
      Caption = 'Export to CSV'
      OnClick = ExportToCsvClick
    end
    object ExporttoXML1: TMenuItem
      Caption = 'Export to XML'
      OnClick = ExporttoXML1Click
    end
    object ExporttoExcel1: TMenuItem
      Caption = 'Export to Excel'
      OnClick = ExporttoExcel1Click
    end
  end
end
