object DMFrmBaseCadastros: TDMFrmBaseCadastros
  OldCreateOrder = False
  Height = 410
  Width = 676
  object qBaseCadastros: TFDQuery
    CachedUpdates = True
    Connection = DM.Conexao
    SQL.Strings = (
      '')
    Left = 32
    Top = 16
  end
  object DSqBaseCadastros: TDataSource
    DataSet = qBaseCadastros
    Left = 136
    Top = 16
  end
  object FDUqBaseCadastros: TFDUpdateSQL
    Connection = DM.Conexao
    Left = 248
    Top = 16
  end
  object qTipoEntidadesLK: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID, NAME '
      '  FROM ENTITY_TYPE')
    Left = 472
    Top = 16
    object qTipoEntidadesLKID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qTipoEntidadesLKNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 60
    end
  end
  object dsqTipoEntidadesLK: TDataSource
    DataSet = qTipoEntidadesLK
    Left = 568
    Top = 16
  end
end
