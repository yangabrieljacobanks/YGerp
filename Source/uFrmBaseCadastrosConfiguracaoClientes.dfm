inherited FrmBaseCadastrosConfiguracaoClientes: TFrmBaseCadastrosConfiguracaoClientes
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel4: TPanel
    inherited Panel5: TPanel
      Caption = 'Configura'#231#245'es de Cadastros de Clientes'
    end
  end
  inherited Panel2: TPanel
    inherited pgConfiguracoes: TPageControl
      inherited tbPersonalizarGride: TTabSheet
        ExplicitLeft = 24
        ExplicitTop = 4
        ExplicitWidth = 534
        ExplicitHeight = 450
        inherited cxGridConfiguracao: TcxGrid
          inherited cxGridConfiguracaoDBTableView1: TcxGridDBTableView
            inherited cxGridConfiguracaoDBTableView1VISIBLE: TcxGridDBColumn
              Properties.NullStyle = nssGrayedChecked
            end
          end
        end
      end
    end
  end
  inherited FDUqConfiguracoes: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO VISUAL_CONFIGURATION'
      '(ID_USER, ID_FORM, ID_GRID, ID_FIELD, '
      '  VISIBLE, SIZE)'
      
        'VALUES (:NEW_ID_USER, :NEW_ID_FORM, :NEW_ID_GRID, :NEW_ID_FIELD,' +
        ' '
      '  :NEW_VISIBLE, :NEW_SIZE)')
    ModifySQL.Strings = (
      'UPDATE VISUAL_CONFIGURATION'
      'SET ID_USER  = :NEW_ID_USER'
      '  , ID_FORM  = :NEW_ID_FORM'
      '  , ID_GRID  = :NEW_ID_GRID'
      '  , ID_FIELD = :NEW_ID_FIELD'
      '  , VISIBLE  = :NEW_VISIBLE'
      '  , SIZE = :NEW_SIZE'
      'WHERE ID_USER  = :OLD_ID_USER'
      '  AND ID_FORM = :OLD_ID_FORM '
      '  AND ID_GRID = :OLD_ID_GRID '
      '  AND ID_FIELD = :OLD_ID_FIELD')
    DeleteSQL.Strings = (
      'DELETE FROM VISUAL_CONFIGURATION'
      'WHERE ID_USER  = :OLD_ID_USER'
      '  AND ID_FORM  = :OLD_ID_FORM '
      '  AND ID_GRID  = :OLD_ID_GRID '
      '  AND ID_FIELD = :OLD_ID_FIELD')
  end
end
