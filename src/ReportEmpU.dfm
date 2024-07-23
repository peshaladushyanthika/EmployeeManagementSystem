object ReportEmpF: TReportEmpF
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'EmpReport'
  ClientHeight = 1066
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 992
    Height = 1403
    Background.Arrange = baCenter
    DataSource = DataM.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand2: TRLBand
      Left = 47
      Top = 177
      Width = 898
      Height = 216
      object RLDBText1: TRLDBText
        Left = 256
        Top = 55
        Width = 45
        Height = 19
        DataField = 'name'
        DataSource = DataM.DataSource1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 256
        Top = 103
        Width = 32
        Height = 19
        DataField = 'dob'
        DataSource = DataM.DataSource1
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 41
        Top = 146
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
        Left = 255
        Top = 191
        Width = 63
        Height = 19
        DataField = 'address'
        DataSource = DataM.DataSource1
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 41
        Top = 55
        Width = 161
        Height = 19
        Caption = 'Name of Employee :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 41
        Top = 103
        Width = 121
        Height = 19
        Caption = 'Date of Birth : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 41
        Top = 16
        Width = 92
        Height = 19
        Caption = 'Profile ID : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 256
        Top = 16
        Width = 18
        Height = 19
        DataField = 'id'
        DataSource = DataM.DataSource1
        Text = ''
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 41
        Top = 191
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
      object RLDBText4: TRLDBText
        Left = 255
        Top = 151
        Width = 33
        Height = 19
        DataField = 'NIC'
        DataSource = DataM.DataSource1
        Text = ''
      end
    end
    object RLBand1: TRLBand
      Left = 47
      Top = 47
      Width = 898
      Height = 130
      BandType = btTitle
      Color = clInactiveCaption
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 300
        Top = 46
        Width = 297
        Height = 38
        Align = faCenter
        Alignment = taJustify
        Caption = 'Employee Details  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 47
      Top = 393
      Width = 898
      Height = 72
      DataSource = DataM.DataSource2
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 898
        Height = 41
        object RLDBTextCon: TRLDBText
          Left = 255
          Top = 19
          Width = 77
          Height = 19
          DataField = 'contact'
          DataSource = DataM.DataSource2
          FriendlyName = 'RLDBText'
          Text = ''
        end
      end
      object RLLabel7: TRLLabel
        Left = 41
        Top = 19
        Width = 92
        Height = 19
        Caption = 'Contacts : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 47
      Top = 465
      Width = 898
      Height = 144
      BandType = btFooter
    end
  end
end
