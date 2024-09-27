object ReportF: TReportF
  Left = 0
  Top = 0
  Caption = 'Report'
  ClientHeight = 704
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    AlignWithMargins = True
    Left = 0
    Top = -24
    Width = 794
    Height = 1123
    AllowedBands = [btHeader, btColumnHeader, btDetail]
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 146
      BandType = btHeader
      Color = clInactiveCaption
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 171
        Top = 54
        Width = 376
        Height = 38
        Align = faCenter
        Alignment = taCenter
        Caption = 'Employee Detail Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 138
        Top = 11
        Width = 36
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 48
        Top = 11
        Width = 84
        Height = 15
        Caption = 'Generated on :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 184
      Width = 718
      Height = 210
      object RLDBText1: TRLDBText
        Left = 214
        Top = 32
        Width = 45
        Height = 19
        DataField = 'name'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 214
        Top = 77
        Width = 63
        Height = 19
        DataField = 'address'
        DataSource = DataSource1
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 48
        Top = 77
        Width = 81
        Height = 19
        Caption = 'Address :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 48
        Top = 128
        Width = 116
        Height = 19
        Caption = 'Date of Birth :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 214
        Top = 128
        Width = 32
        Height = 19
        DataField = 'dob'
        DataSource = DataSource1
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 48
        Top = 170
        Width = 44
        Height = 19
        Caption = 'NIC :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 214
        Top = 168
        Width = 33
        Height = 19
        DataField = 'NIC'
        DataSource = DataSource1
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 48
        Top = 32
        Width = 93
        Height = 19
        Caption = 'Full Name :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 570
      Width = 718
      Height = 78
      BandType = btFooter
      object RLSystemInfo2: TRLSystemInfo
        Left = 370
        Top = 27
        Width = 112
        Height = 19
        Info = itPageNumber
        Text = ''
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 394
      Width = 718
      Height = 176
      AllowedBands = [btDetail, btSummary]
      DataSource = DataSource2
      PageBreaking = pbAfterPrint
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 57
        object RLDBText3: TRLDBText
          Left = 214
          Top = 6
          Width = 113
          Height = 19
          DataField = 'contact'
          DataSource = DataSource2
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 57
        Width = 718
        Height = 40
        BandType = btSummary
      end
      object RLLabel2: TRLLabel
        Left = 48
        Top = 6
        Width = 87
        Height = 19
        Caption = 'Contacts :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 920
    Top = 496
  end
  object FDQuery1: TFDQuery
    Active = True
    Filtered = True
    Connection = DataM.Connection1
    SQL.Strings = (
      'SELECT '
      '  profile.id,'
      '  profile.name,'
      '  profile.dob,'
      '  profile.address,'
      '  profile.NIC'
      'FROM '
      '  profile'
      'ORDER BY '
      '  profile.id;'
      '')
    Left = 800
    Top = 472
    object FDQuery1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'name'
      Origin = 'name'
      Size = 150
    end
    object FDQuery1dob: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dob'
      Origin = 'dob'
    end
    object FDQuery1address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'address'
      Origin = 'address'
      Size = 255
    end
    object FDQuery1NIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NIC'
      Origin = 'NIC'
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 920
    Top = 568
  end
  object FDQuery2: TFDQuery
    Active = True
    IndexFieldNames = 'profileId'
    MasterSource = DataSource1
    MasterFields = 'id'
    DetailFields = 'profileId'
    Connection = DataM.Connection1
    SQL.Strings = (
      'SELECT'
      '  contact.profileId,'
      '  contact.contact'
      'FROM '
      '  contact'
      'ORDER BY '
      '  contact.profileId;')
    Left = 832
    Top = 552
    object FDQuery2contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contact'
      Origin = 'contact'
      Size = 50
    end
    object FDQuery2profileId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'profileId'
      Origin = 'profileId'
    end
  end
end
