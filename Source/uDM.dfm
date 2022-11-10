object DM: TDM
  OldCreateOrder = False
  Height = 508
  Width = 733
  object MySQLDriverLink: TFDPhysMySQLDriverLink
    Left = 288
    Top = 136
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Server=DESKTOP-H9SDOSS\SQLEXPRESS'
      'User_Name=YGerpuser'
      'Password=YGmasterkey'
      'Database=YGerp'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 288
    Top = 80
  end
  object GUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 288
    Top = 200
  end
end
