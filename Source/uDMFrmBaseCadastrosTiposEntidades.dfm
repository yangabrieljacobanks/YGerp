inherited DMFrmBaseCadastrosTiposEntidades: TDMFrmBaseCadastrosTiposEntidades
  OldCreateOrder = True
  inherited qBaseCadastros: TFDQuery
    Active = True
    AfterPost = qBaseCadastrosAfterPost
    UpdateObject = FDUqBaseCadastros
    SQL.Strings = (
      'SELECT ID'
      '     , NAME'
      '  FROM ENTITY_TYPE')
    object qBaseCadastrosID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qBaseCadastrosNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 60
    end
  end
  inherited DSqBaseCadastros: TDataSource
    OnStateChange = DSqBaseCadastrosStateChange
  end
  inherited FDUqBaseCadastros: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO ENTITY_TYPE'
      '(NAME)'
      'VALUES (:NEW_NAME);'
      'SELECT SCOPE_IDENTITY() AS ID')
    ModifySQL.Strings = (
      'UPDATE ENTITY_TYPE'
      'SET NAME = :NEW_NAME'
      'WHERE ID = :OLD_ID;'
      'SELECT ID'
      'FROM ENTITY_TYPE'
      'WHERE ID = :NEW_ID')
    DeleteSQL.Strings = (
      'DELETE FROM ENTITY_TYPE'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      'SELECT SCOPE_IDENTITY() AS ID, NAME'
      'FROM ENTITY_TYPE'
      'WHERE ID = :ID')
  end
end
