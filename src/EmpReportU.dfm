object EmpReportF: TEmpReportF
  Left = 0
  Top = 0
  Caption = 'EmpReportF'
  ClientHeight = 534
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ReportF: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    AllowedBands = [btHeader, btColumnHeader, btDetail]
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 123
      BandType = btHeader
      object RLLabel6: TRLLabel
        Left = 469
        Top = 80
        Width = 76
        Height = 16
        Caption = 'Generated : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 558
        Top = 80
        Width = 107
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = ''
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 102
        Width = 710
        Height = 10
        DrawKind = dkLine
      end
      object RLLabel5: TRLLabel
        Left = 219
        Top = 42
        Width = 280
        Height = 38
        Align = faCenter
        Alignment = taCenter
        Caption = 'Employee Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 161
      Width = 718
      Height = 240
      object RLLabel1: TRLLabel
        Left = 134
        Top = 73
        Width = 48
        Height = 19
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 264
        Top = 72
        Width = 43
        Height = 18
        DataField = 'name'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 129
        Top = 29
        Width = 73
        Height = 19
        Caption = 'Profile ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 134
        Top = 111
        Width = 32
        Height = 19
        Caption = 'NIC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 129
        Top = 216
        Width = 64
        Height = 19
        Caption = 'Contact'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 263
        Top = 30
        Width = 17
        Height = 18
        DataField = 'id'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 263
        Top = 112
        Width = 30
        Height = 18
        DataField = 'NIC'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 134
        Top = 144
        Width = 103
        Height = 19
        Caption = 'Date  of Birth'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 134
        Top = 182
        Width = 68
        Height = 19
        Caption = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 263
        Top = 184
        Width = 61
        Height = 18
        DataField = 'address'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 264
        Top = 144
        Width = 31
        Height = 18
        DataField = 'dob'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 401
      Width = 718
      Height = 48
      AllowedBands = [btDetail, btSummary]
      DataSource = DataSource3
      PageBreaking = pbAfterPrint
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 42
        object RLDBText2: TRLDBText
          Left = 264
          Top = 3
          Width = 54
          Height = 18
          DataField = 'contact'
          DataSource = DataSource3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 449
      Width = 718
      Height = 40
      BandType = btFooter
      PageBreaking = pbAfterPrint
      object RLDraw2: TRLDraw
        Left = 0
        Top = 6
        Width = 715
        Height = 8
        DrawKind = dkLine
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 312
        Top = 14
        Width = 108
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = qr1
    Left = 774
    Top = 1103
  end
  object qr1: TFDQuery
    Connection = DataM.Connection1
    SQL.Strings = (
      'select * from empdata   ')
    Left = 774
    Top = 1103
    object qr1id: TFDAutoIncField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qr1name: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 40
      FieldName = 'name'
      Origin = '`name`'
      Size = 100
    end
    object qr1empId: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 17
      FieldName = 'empId'
      Origin = 'empId'
      Size = 50
    end
    object qr1nic: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 12
      FieldName = 'nic'
      Origin = 'nic'
    end
    object qr1cont: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 23
      FieldName = 'cont'
      Origin = 'cont'
      Size = 50
    end
    object qr1dob: TDateField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'dob'
      Origin = 'dob'
    end
    object qr1address: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 43
      FieldName = 'address'
      Origin = 'address'
      Size = 254
    end
    object qr1age: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'age'
      Calculated = True
    end
  end
  object qrContact: TFDQuery
    IndexFieldNames = 'empId'
    MasterSource = DataSource1
    MasterFields = 'id'
    SQL.Strings = (
      'select * from contactdata')
    Left = 774
    Top = 1103
    object qrContactid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrContactempId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'empId'
      Origin = 'empId'
    end
    object qrContactcontact: TStringField
      FieldName = 'contact'
      Origin = 'contact'
      Required = True
      Size = 50
    end
  end
  object ds2: TDataSource
    DataSet = qrContact
    Left = 774
    Top = 1103
  end
  object Query1: TFDQuery
    Active = True
    AutoCalcFields = False
    Connection = DataM.Connection1
    SQL.Strings = (
      'SELECT *'
      'FROM '
      '  profile;'
      '')
    Left = 424
    Top = 18
    object Query1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Query1name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'name'
      Origin = 'name'
      Size = 150
    end
    object Query1dob: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dob'
      Origin = 'dob'
    end
    object Query1NIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NIC'
      Origin = 'NIC'
      Size = 50
    end
    object Query1address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'address'
      Origin = 'address'
      Size = 255
    end
    object Query1contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contact'
      Origin = 'contact'
      Size = 50
    end
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = Query1
    Left = 528
    Top = 19
  end
  object DataSource3: TDataSource
    DataSet = Query2
    Left = 630
    Top = 19
  end
  object Query2: TFDQuery
    Active = True
    IndexFieldNames = 'profileId'
    MasterSource = DataSource2
    MasterFields = 'id'
    Connection = DataM.Connection1
    SQL.Strings = (
      'SELECT * FROM contact;')
    Left = 702
    Top = 24
    object Query2id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Query2profileId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'profileId'
      Origin = 'profileId'
    end
    object Query2contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contact'
      Origin = 'contact'
      Size = 50
    end
  end
end
