inherited FrmBaseCadastrosLojas: TFrmBaseCadastrosLojas
  Caption = 'Cadastros De Lojas'
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlFiltro: TPanel
    Height = 77
    ExplicitHeight = 77
    object rgFiltros: TRadioGroup
      Left = 4
      Top = 3
      Width = 740
      Height = 42
      Caption = 'Filtros'
      Columns = 6
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo'
        'CPF / CNPJ'
        'Raz'#227'o Social'
        'Nome Fantasia'
        'Endere'#231'o'
        'Ponto de Refer'#234'ncia')
      TabOrder = 0
    end
    object edtfiltro: TEdit
      Left = 4
      Top = 49
      Width = 740
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = edtfiltroKeyPress
    end
  end
  inherited Panel3: TPanel
    Top = 118
    ExplicitTop = 118
    inherited BtnConfiguracoes: TSpeedButton
      OnClick = BtnConfiguracoesClick
    end
  end
  inherited Panel4: TPanel
    inherited Image1: TImage
      Width = 43
      Center = True
      Picture.Data = {
        07544269746D6170360C0000424D360C00000000000036000000280000002000
        0000200000000100180000000000000C0000120B0000120B0000000000000000
        0000FFFFFFE0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0FF
        FFFFFFFFFFFFFFFF122582122582122582122582122582122582122582122582
        1225821225821225821225821225821225821225821225821225821225821225
        82122582122582122582122582122582122582122582122582122582FFFFFFFF
        FFFFFFFFFFFFFFFF1225821A36C01A36C01A36C02A67C42A67C42A67C42A67C4
        2A67C42A67C42A67C41A36C01A36C01A36C01A36C01A36C01A36C01A36C01A36
        C01A36C01A36C01A36C01A36C01A36C01A36C01A36C01A36C0122582FFFFFFFF
        FFFFFFFFFFFFFFFF1225821225821225821225822A67C4D4B06BD4B06BD4B06B
        D4B06BD4B06B2A67C41225821225821225821225821225821225821225821225
        82122582122582122582122582122582122582122582122582122582FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986F7F7F7D9D8D72A67C4D4B06BFFEBADFFEBAD
        FFEBADD4B06B2A67C4D8D7D6D8D7D6D8D7D6D8D7D6D8D7D6D8D7D6D8D7D6D8D7
        D6D8D7D6D8D7D6D8D7D6D8D7D6D8D7D6D9D8D7F7F7F78D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986F7F7F7D9D8D82A67C4D4B06BFFEBADFFEBAD
        FFEBADD4B06B2A67C4D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7
        D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D9D8D8F7F7F78D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986F7F7F7DAD9D82A67C4D4B06BFFDE91FFEBAD
        FFEBADD4B06B2A67C4D9D8D7D9D8D7777F7E777F7E777F7E777F7E777F7E777F
        7E777F7E777F7E777F7E777F7E777F7EDAD9D8F7F7F78D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986F8F7F7DBDAD92A67C4D4B06BFFD37BFFDE91
        FFEBADD4B06B2A67C4DAD9D8DAD9D8777F7EFFDC99FFD684FFE5ABFFEDC3FFEF
        C8FFE2A6FFD37DFFD47CFFD883777F7EDBDAD9F8F7F78D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986F8F8F7DCDBDA2A67C4D4B06BD4B06BD4B06B
        D4B06BD4B06B2A67C4DBDAD9DBDAD9777F7EFFE6B8FFDC99FFD684FFE5ABFFED
        C3FFEFC8FFE2A6FFD37DFFD47C777F7EDCDBDAF8F8F78D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986F8F8F8DCDCDB2A67C42A68C62A68C62A68C6
        2A68C62A68C62A67C4DBDBDADBDBDA777F7EFFE6B7FFE6B8FFDC99FFD684FFE5
        ABFFEDC3FFEFC8FFE2A6FFD37D777F7EDCDCDBF8F8F88D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986F8F8F8DDDCDC2A67C42A68C62A68C62A68C6
        2A68C62A68C62A67C4DCDBDBDCDBDB777F7EFFDFA1FFE6B7FFE6B8FFDC99FFD6
        84FFE5ABFFEDC3FFEFC8FFE2A6777F7EDDDCDCF8F8F88D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986F8F8F8DEDDDC2A67C4D4B06BD4B06BD4B06B
        D4B06BD4B06B2A67C4DDDCDBDDDCDB777F7EFFDC99FFDFA1FFE6B7FFE6B8FFDC
        99FFD684FFE5ABFFEDC3FFEFC8777F7EDEDDDCF8F8F88D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986F8F8F8DFDEDE2A67C4D4B06BFFD582FFD98D
        FFDC9AD4B06B2A67C4DEDDDDDEDDDD777F7EFFDA93FFDC99FFDFA1FFE6B7FFE6
        B8FFDC99FFD684FFE5ABFFEDC3777F7EDFDEDEF8F8F88D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986F9F8F8E0DFDF2A67C4D4B06BFFD37BFFD582
        FFD98DD4B06B2A67C4DFDEDEDFDEDE777F7EFFD88DFFDA93FFDC99FFDFA1FFE6
        B7FFE6B8FFDC99FFD684FFE5AB777F7EE0DFDFF9F8F88D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFDFDFDF6F6F6837F7DE7E7E7D7D6D62863BCC5A463EDC472F4CA76
        F4CC7CC5A4632760B6D6D5D5D6D5D56F7675EDC87DF4CF87F4D18DEDCC8EEDCF
        96F4DCAFF4DCB0EDCC8EEDC77B727A79D7D6D6E7E7E7837F7DF6F6F6FDFDFDFF
        FFFFFFFFFFF5F5F5DBDBDB6B6866BDBDBDBABAB92355A1A18651C2A15ED2AE65
        D2AE65A18651204E95B9B9B8B9B9B85B6160C2A263D2B16FD2B274C2A670C2A7
        74D2B885D2BD97C2AF8CC2A774626968BABAB9BDBDBD6B6866DBDBDBF6F6F6FF
        FFFFFFFFFFEDEDED729E7F1F7238277A415C88691A5C5F24753624753657763F
        57763F247536176F3D5C88695C88691D71372877376684476684492777382878
        3966865066875227793C28793C3665455C8869277A411F7238729E7FEDEDEDFF
        FFFFFFFFFF86B4931B873C149C42149C421B863C44A56187EFA987EFA942A360
        1B873C149C42149C421B863C44A56187EFA987EFA942A3601B873C149C42149C
        421B863C44A56187EFA987EFA942A3601B873C149C42149C421B863C8BB798FF
        FFFFFFFFFF3A8B50159D4313A04313A043159C438BF2AD95FEB895FEB888EFAA
        159D4313A04313A043159C438BF2AD95FEB895FEB888EFAA159D4313A04313A0
        43159C438BF2AD95FEB895FEB888EFAA159D4313A04313A043159C433F8E55FF
        FFFFFFFFFF529C66148F380E90350E90350E903584FEAA84FEAA84FEAA84FEAA
        0E90350E90350E90350E903584FEAA84FEAA84FEAA84FEAA0E90350E90350E90
        350E903584FEAA84FEAA84FEAA84FEAA0E90350E90350E9035148F38529C66FF
        FFFFFFFFFF9BC7A55DC18860D79F60D79F60D79FEEFFF4EEFFF4EEFFF4EEFFF4
        60D79F60D79F60D79F60D79FEEFFF4EEFFF4EEFFF4EEFFF460D79F60D79F60D7
        9F60D79FEEFFF4EEFFF4EEFFF4EEFFF460D79F60D79F60D79F5DC1889BC7A5FF
        FFFFFFFFFFDDEDE03E9F5937C47837C47837C478E4FFEEE4FFEEE4FFEEE4FFEE
        37C47837C47837C47837C478E4FFEEE4FFEEE4FFEEE4FFEE37C47837C47837C4
        7837C478E4FFEEE4FFEEE4FFEEE4FFEE37C47837C47837C4783E9F59DDEDE0FF
        FFFFFFFFFFFFFFFF67AE7532B5672DBA6A2DBA6AE0FFEBE0FFEBE0FFEBE0FFEB
        2DBA6A2DBA6A2DBA6A2DBA6AE0FFEBE0FFEBE0FFEBE0FFEB2DBA6A2DBA6A2DBA
        6A2DBA6AE0FFEBE0FFEBE0FFEBE0FFEB2DBA6A2DBA6A32B56767AE75FFFFFFFF
        FFFFFFFFFFFFFFFFA7D1AE3EAF642DBA6A2DBA6AE0FFEBE0FFEBE0FFEBE0FFEB
        2DBA6A2DBA6A2DBA6A2DBA6AE0FFEBE0FFEBE0FFEBE0FFEB2DBA6A2DBA6A2DBA
        6A2DBA6AE0FFEBE0FFEBE0FFEBE0FFEB2DBA6A2DBA6A3EAF64A7D1AEFFFFFFFF
        FFFFFFFFFFFFFFFFE1F0E34FAD642DBA6A2DBA6AE0FFEBE0FFEBE0FFEBE0FFEB
        2DBA6A2DBA6A2DBA6A2DBA6AE0FFEBE0FFEBE0FFEBE0FFEB2DBA6A2DBA6A2DBA
        6A2DBA6AE0FFEBE0FFEBE0FFEBE0FFEB2DBA6A2DBA6A4FAD64E1F0E3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF709F745BAE675BAE675BAE675BAE670E0ECE0E0ECE
        0E0ECEAFAFEF0E0ECEAFAFEF0E0ECEAFAFEF5BAE670E0ECE0E0ECEAFAFEF5BAE
        670E0ECEAFAFEF5BAE675BAE675BAE675BAE675BAE67709F74FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986FBFBFBE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        0E0ECEAFAFEF0E0ECEAFAFEF0E0ECEAFAFEF0E0ECEAFAFEFE9E9E90E0ECEAFAF
        EF0E0ECEAFAFEFE9E9E9E9E9E9E9E9E9E9E9E9FBFBFB8D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986FBFBFBEAEAEAEAEAEAEAEAEA0E0ECE0E0ECE
        0E0ECEAFAFEF0E0ECE0E0ECE0E0ECEAFAFEF0E0ECEAFAFEFEAEAEA0E0ECEAFAF
        EF0E0ECE0E0ECE0E0ECEAFAFEFEAEAEAEAEAEAFBFBFB8D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986FBFBFBEBEBEAEBEBEAEBEBEA0E0ECEAFAFEF
        EBEBEAEBEBEA0E0ECEAFAFEF0E0ECEAFAFEF0E0ECEAFAFEFEBEBEA0E0ECEAFAF
        EF0E0ECEAFAFEF0E0ECEAFAFEFEBEBEAEBEBEAFBFBFB8D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986FBFBFBEBEBEBEBEBEBEBEBEB0E0ECE0E0ECE
        0E0ECEAFAFEF0E0ECEAFAFEF0E0ECEAFAFEFEBEBEB0E0ECE0E0ECEAFAFEFEBEB
        EB0E0ECE0E0ECE0E0ECEAFAFEFEBEBEBEBEBEBFBFBFB8D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF8D8986FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB8D8986FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBCBAB88D89868D89868D89868D89868D89868D8986
        8D89868D89868D89868D89868D89868D89868D89868D89868D89868D89868D89
        868D89868D89868D89868D89868D89868D89868D8986BCBAB8FFFFFFFFFFFFFF
        FFFF}
      Transparent = True
      ExplicitTop = 1
      ExplicitWidth = 43
      ExplicitHeight = 39
    end
    inherited Panel5: TPanel
      Left = 44
      Width = 662
      Caption = 'Cadastros de Lojas'
      ExplicitLeft = 44
      ExplicitWidth = 662
    end
  end
  inherited pcCadastros: TPageControl
    Top = 170
    Height = 331
    ActivePage = TsDados
    ExplicitTop = 170
    ExplicitHeight = 331
    inherited TsFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 741
      ExplicitHeight = 303
      inherited Panel2: TPanel
        Height = 303
        ExplicitHeight = 303
        inherited PnlHist: TPanel
          Height = 301
          ExplicitHeight = 301
          inherited MemoDebug: TMemo
            Height = 299
            ExplicitHeight = 299
          end
        end
        inherited cxgridBaseCadastros: TcxGrid
          Height = 301
          ExplicitHeight = 301
          inherited cxgridBaseCadastrosDBTableView1: TcxGridDBTableView
            DataController.DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
            object cxgridBaseCadastrosDBTableView1ID: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'ID'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
            end
            object cxgridBaseCadastrosDBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Raz'#227'o Social'
              DataBinding.FieldName = 'DESCRICAO'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Width = 239
            end
            object cxgridBaseCadastrosDBTableView1DESCRICAO2: TcxGridDBColumn
              Caption = 'Nome Fantasia'
              DataBinding.FieldName = 'DESCRICAO2'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Width = 225
            end
          end
        end
      end
    end
    inherited TsDados: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 741
      ExplicitHeight = 303
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 262
        Top = 6
        Width = 97
        Height = 13
        Caption = 'Nome / Raz'#227'o Social'
      end
      object Label3: TLabel
        Left = 490
        Top = 6
        Width = 183
        Height = 13
        Caption = 'Nome Social / Apelido / Nome Fantasia'
      end
      object Label4: TLabel
        Left = 158
        Top = 52
        Width = 57
        Height = 13
        Caption = 'Tipo Pessoa'
      end
      object Label5: TLabel
        Left = 52
        Top = 6
        Width = 54
        Height = 13
        Caption = 'CPF / CNPJ'
      end
      object Label8: TLabel
        Left = 327
        Top = 52
        Width = 77
        Height = 13
        Caption = 'Data de Cria'#231#227'o'
      end
      object Label9: TLabel
        Left = 244
        Top = 52
        Width = 25
        Height = 13
        Caption = 'Ativo'
      end
      object Label14: TLabel
        Left = 114
        Top = 99
        Width = 110
        Height = 13
        Caption = 'Endere'#231'o / Logradouro'
      end
      object Label15: TLabel
        Left = 318
        Top = 100
        Width = 70
        Height = 13
        Caption = 'N'#250'mero / Apto'
      end
      object Label16: TLabel
        Left = 8
        Top = 100
        Width = 27
        Height = 13
        Caption = 'CEP.:'
      end
      object Label17: TLabel
        Left = 396
        Top = 99
        Width = 65
        Height = 13
        Caption = 'Complemento'
      end
      object Label18: TLabel
        Left = 571
        Top = 99
        Width = 98
        Height = 13
        Caption = 'Ponto de Refer'#234'ncia'
      end
      object Label6: TLabel
        Left = 8
        Top = 54
        Width = 80
        Height = 13
        Caption = 'Tipo de Entidade'
      end
      object Label7: TLabel
        Left = 157
        Top = 6
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
      end
      object Label19: TLabel
        Left = 433
        Top = 52
        Width = 84
        Height = 13
        Caption = 'Data de Abertura'
      end
      object dbID: TDBEdit
        Left = 8
        Top = 24
        Width = 38
        Height = 21
        Color = clSilver
        DataField = 'ID'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        ReadOnly = True
        TabOrder = 0
      end
      object dbDESCRICAO: TDBEdit
        Left = 262
        Top = 24
        Width = 219
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 3
      end
      object dbDESCRICAO2: TDBEdit
        Left = 490
        Top = 24
        Width = 242
        Height = 21
        DataField = 'DESCRICAO2'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 4
      end
      object dbCPF_CNPJ: TDBEdit
        Left = 52
        Top = 24
        Width = 100
        Height = 21
        DataField = 'CPF_CNPJ'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 1
      end
      object dbDATACRIACAO: TDBEdit
        Left = 327
        Top = 70
        Width = 100
        Height = 21
        DataField = 'DATACRIACAO'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 8
      end
      object dbENDERECO: TDBEdit
        Left = 112
        Top = 118
        Width = 199
        Height = 21
        DataField = 'ENDERECO'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 11
      end
      object dbNUMERO: TDBEdit
        Left = 318
        Top = 118
        Width = 70
        Height = 21
        DataField = 'NUMERO'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 12
      end
      object dbCEP: TDBEdit
        Left = 8
        Top = 118
        Width = 100
        Height = 21
        DataField = 'CEP'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 10
      end
      object dbCOMPLEMENTO: TDBEdit
        Left = 396
        Top = 118
        Width = 166
        Height = 21
        DataField = 'COMPLEMENTO'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 13
      end
      object dbPONTODEREFERENCIA: TDBEdit
        Left = 571
        Top = 118
        Width = 166
        Height = 21
        DataField = 'PONTOREFERENCIA'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 14
      end
      object pnlDadosRodaPe: TPanel
        Left = 0
        Top = 259
        Width = 741
        Height = 44
        Align = alBottom
        Color = clSilver
        ParentBackground = False
        TabOrder = 15
        object Label10: TLabel
          Left = 5
          Top = 5
          Width = 61
          Height = 13
          Caption = 'CADASTRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 277
          Top = 5
          Width = 80
          Height = 13
          Caption = 'ATUALIZA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 135
          Top = 5
          Width = 52
          Height = 13
          Caption = 'USU'#193'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 407
          Top = 5
          Width = 52
          Height = 13
          Caption = 'USU'#193'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbDATACADASTRO: TDBEdit
          Left = 5
          Top = 20
          Width = 123
          Height = 21
          Color = clSilver
          DataField = 'DATACADASTRO'
          DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object dbDATAATUALIZACAO: TDBEdit
          Left = 277
          Top = 20
          Width = 123
          Height = 21
          Color = clSilver
          DataField = 'DATAATUALIZACAO'
          DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object dbUSUARIOCADASTRO: TDBEdit
          Left = 135
          Top = 20
          Width = 136
          Height = 21
          Color = clSilver
          DataField = 'USUARIO_CADASTRO'
          DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object dbUSUARIOATUALIZACAO: TDBEdit
          Left = 407
          Top = 20
          Width = 136
          Height = 21
          Color = clSilver
          DataField = 'USUARIO_ATUALIZACAO'
          DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object dbID_TIPOENTIDADES: TcxDBLookupComboBox
        Left = 8
        Top = 70
        DataBinding.DataField = 'ID_TIPOENTIDADES'
        DataBinding.DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListSource = DMFrmBaseCadastrosLojas.dsqTipoEntidadesLK
        TabOrder = 5
        Width = 144
      end
      object dbTIPO_FJ: TcxDBImageComboBox
        Left = 158
        Top = 70
        DataBinding.DataField = 'TIPO_FJ'
        DataBinding.DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = 'F'#205'SICA'
            ImageIndex = 0
            Value = 'F'
          end
          item
            Description = 'JUR'#205'DICA'
            Value = 'J'
          end>
        TabOrder = 6
        Width = 78
      end
      object dbATIVO: TcxDBImageComboBox
        Left = 243
        Top = 70
        DataBinding.DataField = 'ATIVO'
        DataBinding.DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = 'N'#195'O'
            ImageIndex = 0
            Value = 'N'
          end
          item
            Description = 'SIM'
            Value = 'S'
          end>
        TabOrder = 7
        Width = 78
      end
      object dbINSCRICAO_ESTADUAL: TDBEdit
        Left = 157
        Top = 24
        Width = 100
        Height = 21
        DataField = 'INSCRICAO_ESTADUAL'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 2
      end
      object dbDATAABERTURA: TDBEdit
        Left = 433
        Top = 70
        Width = 100
        Height = 21
        DataField = 'DATAABERTURA'
        DataSource = DMFrmBaseCadastrosLojas.DSqBaseCadastros
        TabOrder = 9
      end
    end
  end
  inherited pImprimir: TPopupMenu
    inherited ImprimirListagem1: TMenuItem
      OnClick = ImprimirListagem1Click
    end
  end
end
