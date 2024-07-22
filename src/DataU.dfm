object DataM: TDataM
  OnCreate = DataModuleCreate
  Height = 363
  Width = 305
  PixelsPerInch = 120
  object Connection1: TFDConnection
    Params.Strings = (
      'Database=user'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object Query1: TFDQuery
    Active = True
    AutoCalcFields = False
    OnCalcFields = Query1CalcFields
    Connection = Connection1
    SQL.Strings = (
      'select * from profile;')
    Left = 40
    Top = 232
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
    object Query1contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contact'
      Origin = 'contact'
      Size = 50
    end
    object Query1address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'address'
      Origin = 'address'
      Size = 255
    end
    object Query1age: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'age'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = Query1
    Left = 40
    Top = 144
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 168
    Top = 144
  end
  object Query2: TFDQuery
    Active = True
    MasterSource = DataSource1
    Connection = Connection1
    SQL.Strings = (
      'SELECT * FROM contact;')
    Left = 168
    Top = 240
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
