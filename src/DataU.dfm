object DataM: TDataM
  OnCreate = DataModuleCreate
  Height = 290
  Width = 244
  object Connection1: TFDConnection
    ConnectionName = 'Connection1'
    Params.Strings = (
      'Database=user'
      'User_Name=root'
      'Server=localhost'
      'Password=jami1998'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 32
  end
  object Query1: TFDQuery
    Active = True
    AutoCalcFields = False
    OnCalcFields = Query1CalcFields
    Connection = Connection1
    SQL.Strings = (
      'select * from profile;')
    Left = 32
    Top = 186
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
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = Query1
    Left = 32
    Top = 115
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 134
    Top = 115
  end
  object Query2: TFDQuery
    Active = True
    MasterSource = DataSource1
    Connection = Connection1
    SQL.Strings = (
      'SELECT * FROM contact;')
    Left = 134
    Top = 192
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
