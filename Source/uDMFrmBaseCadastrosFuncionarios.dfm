inherited DMFrmBaseCadastrosFuncionarios: TDMFrmBaseCadastrosFuncionarios
  inherited qBaseCadastros: TFDQuery
    AfterPost = qBaseCadastrosAfterPost
    SQL.Strings = (
      'SELECT * '
      'FROM ENTIDADES'
      'WHERE ID_TIPOENTIDADES = 3')
    object qBaseCadastrosID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qBaseCadastrosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 200
    end
    object qBaseCadastrosDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Origin = 'DESCRICAO2'
      Required = True
      Size = 200
    end
    object qBaseCadastrosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qBaseCadastrosTIPO_FJ: TStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object qBaseCadastrosDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
      Origin = 'DATANASCIMENTO'
    end
    object qBaseCadastrosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qBaseCadastrosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qBaseCadastrosNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qBaseCadastrosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 60
    end
    object qBaseCadastrosPONTOREFERENCIA: TStringField
      FieldName = 'PONTOREFERENCIA'
      Origin = 'PONTOREFERENCIA'
      Size = 80
    end
    object qBaseCadastrosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 14
    end
    object qBaseCadastrosDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object qBaseCadastrosDATAATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATAATUALIZACAO'
      Origin = 'DATAATUALIZACAO'
    end
    object qBaseCadastrosUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
      Size = 80
    end
    object qBaseCadastrosUSUARIO_ATUALIZACAO: TStringField
      FieldName = 'USUARIO_ATUALIZACAO'
      Origin = 'USUARIO_ATUALIZACAO'
      Size = 80
    end
    object qBaseCadastrosID_TIPOENTIDADES: TIntegerField
      FieldName = 'ID_TIPOENTIDADES'
      Origin = 'ID_TIPOENTIDADES'
    end
    object qBaseCadastrosINSCRICAO_ESTADUAL: TStringField
      FieldName = 'INSCRICAO_ESTADUAL'
      Origin = 'INSCRICAO_ESTADUAL'
      Size = 9
    end
    object qBaseCadastrosDATACRIACAO: TSQLTimeStampField
      FieldName = 'DATACRIACAO'
      Origin = 'DATACRIACAO'
    end
    object qBaseCadastrosDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
      Origin = 'DATAABERTURA'
    end
  end
  inherited DSqBaseCadastros: TDataSource
    OnStateChange = DSqBaseCadastrosStateChange
  end
  inherited FDUqBaseCadastros: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO ENTIDADES'
      '(DESCRICAO, DESCRICAO2, ATIVO, TIPO_FJ, DATANASCIMENTO, '
      '  CEP, ENDERECO, NUMERO, COMPLEMENTO, '
      '  PONTOREFERENCIA, CPF_CNPJ, DATACADASTRO, '
      '  DATAATUALIZACAO, USUARIO_CADASTRO, USUARIO_ATUALIZACAO, '
      '  ID_TIPOENTIDADES, INSCRICAO_ESTADUAL, DATACRIACAO, '
      '  DATAABERTURA)'
      
        'VALUES (:NEW_DESCRICAO, :NEW_DESCRICAO2, :NEW_ATIVO, :NEW_TIPO_F' +
        'J, :NEW_DATANASCIMENTO, '
      '  :NEW_CEP, :NEW_ENDERECO, :NEW_NUMERO, :NEW_COMPLEMENTO, '
      '  :NEW_PONTOREFERENCIA, :NEW_CPF_CNPJ, :NEW_DATACADASTRO, '
      
        '  :NEW_DATAATUALIZACAO, :NEW_USUARIO_CADASTRO, :NEW_USUARIO_ATUA' +
        'LIZACAO, '
      
        '  :NEW_ID_TIPOENTIDADES, :NEW_INSCRICAO_ESTADUAL, :NEW_DATACRIAC' +
        'AO, '
      '  :NEW_DATAABERTURA);'
      'SELECT SCOPE_IDENTITY() AS ID')
    ModifySQL.Strings = (
      'UPDATE ENTIDADES'
      
        'SET DESCRICAO = :NEW_DESCRICAO, DESCRICAO2 = :NEW_DESCRICAO2, AT' +
        'IVO = :NEW_ATIVO, '
      '  TIPO_FJ = :NEW_TIPO_FJ, DATANASCIMENTO = :NEW_DATANASCIMENTO, '
      
        '  CEP = :NEW_CEP, ENDERECO = :NEW_ENDERECO, NUMERO = :NEW_NUMERO' +
        ', '
      
        '  COMPLEMENTO = :NEW_COMPLEMENTO, PONTOREFERENCIA = :NEW_PONTORE' +
        'FERENCIA, '
      '  CPF_CNPJ = :NEW_CPF_CNPJ, DATACADASTRO = :NEW_DATACADASTRO, '
      
        '  DATAATUALIZACAO = :NEW_DATAATUALIZACAO, USUARIO_CADASTRO = :NE' +
        'W_USUARIO_CADASTRO, '
      
        '  USUARIO_ATUALIZACAO = :NEW_USUARIO_ATUALIZACAO, ID_TIPOENTIDAD' +
        'ES = :NEW_ID_TIPOENTIDADES, '
      
        '  INSCRICAO_ESTADUAL = :NEW_INSCRICAO_ESTADUAL, DATACRIACAO = :N' +
        'EW_DATACRIACAO, '
      '  DATAABERTURA = :NEW_DATAABERTURA'
      'WHERE ID = :OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM ENTIDADES'
      'WHERE ID = :OLD_ID')
  end
end
