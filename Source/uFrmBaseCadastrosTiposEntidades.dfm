inherited FrmBaseCadastrosTiposEntidades: TFrmBaseCadastrosTiposEntidades
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlFiltro: TPanel
    Height = 47
    ExplicitHeight = 47
    object rgFiltros: TRadioGroup
      Left = 4
      Top = 3
      Width = 293
      Height = 37
      Caption = 'Filtros'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o')
      TabOrder = 0
    end
    object edtfiltro: TEdit
      Left = 303
      Top = 9
      Width = 242
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = edtfiltroKeyPress
    end
  end
  inherited Panel3: TPanel
    Top = 88
    ExplicitTop = 88
    inherited BtnConfiguracoes: TSpeedButton
      OnClick = BtnConfiguracoesClick
    end
  end
  inherited Panel4: TPanel
    inherited Image1: TImage
      Center = True
      Picture.Data = {
        07544269746D6170360C0000424D360C00000000000036000000280000002000
        0000200000000100180000000000000C0000120B0000120B0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F4E77EC58333A13C
        068E11008B0B068F0E33A5387EC780E6F4E6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91CC970D8C1F0CAC3D11D25E
        13E97114ED7413E97011D35B0CB0370C951692D093FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6AB8760D912E24C66216B65D0BA150
        0593470490460592460BA24C16BC5424CA5B0C9A216ABE6CFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF91C99C118B3323AB5A059243019639019B35
        019C33019B3401973801913E028B4304933D22B44B11972192D094FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE6F3E91182301E984F01963901A12F01A92701AE23
        01AF2101AE2201A92701A22E019837028D41018E3C1DA33B109118E6F4E6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF7FBB9114814002983801A72901B21E00BA1700BF13
        00C01100BE1300B91801B21F01A728019B34028D420291381492267EC583FBDF
        C7F2A059CE8241F4E3D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF348D590B8C3C01A62A00B61B00C11000C80900CC05
        00CD0500CB0600C60B00BF1201B51C01A729019738028B420B922E308B1AEA72
        03EF8C33BD5A02C16410DEAC7FFCF8F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF087139049B3101B21F00C20F00CD0500D20200D405
        00D50600D30300D00200C90800BF1201B11F01A12F028E40048F37068513ED74
        04F1933BBE5D03BE5F06C56E1FCB7C35EBCDB1FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF01723301A42900BB1606CC0D26DA2937E1443DE451
        3CE45137E24631DD3829D72C1FCD2912BD2803A82A01943B018B3D008118ED77
        06F19842BE5F05BE5F05C46F1CC57323C57222D5995EF7EADEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF07763605A82500C1103FDB4144E2503FE85D3AEC64
        35EB6030E7512BE03C26DA2921D2271CC42D14B23501983705894007801BEE7B
        07F29F4BBE6206BE6206C26D17C67726C67726C67726C87A2BE2B990FDFAF7FF
        FFFFFFFFFFFFFFFFFFFFFF3491580BA52600C30E3EDD403EE45279F398C6FCD8
        70F69D29EB5924E23F1FDA261AD21E15C42610B2300199360C8641317F18EF7E
        09F3A452BF6507BF6507C16C12C87B2BC87B2BC87B2BC87B2BC87B2BCE8C46EF
        D8C0FFFFFFFFFFFFFFFFFF7FBB9514992D00C21022D72537E44CC5FAD4FFFFFF
        BEFCD623EC591EE23A19D91F13D0190FC12107AD2A02963915833E778014F081
        0BF4A959C06709C06709C16A0DC97F2FC97F2FC97F2FC97F2FC97F2FC97F2FD0
        924EFFFFFFFFFFFFFFFFFFE6F2EB11882E1CBD2E04CF092DDF3971EF8BC2FBD4
        67F4911CE74617DE2B12D6150DCB1609BB2001A62B1D9E4B10792DD9840EF084
        0DF5AF61C06A0AC06A0AC06A0ACA8130CA8232CA8232CA8232CA8232CA8232EB
        CFAFFFFFFFFFFFFFFFFFFFFFFFFF92C9A311992E20D03B0CD41122DD3120E23C
        1BE23816DD2911D7160BCF1108C21805B32620B9501183428A8119F1880EF188
        0EF6B468C16D0BC16D0BC16D0BCA822ECC8737CC8737CC8737CC8737D0944DFE
        FDFBFFFFFFFFFFFFFFFFFFF5F6FC9AA0E11667650C9E2C20D95716E13E18DD2F
        15D92011D5180CD1190DCF2C14D24820CE600C8741657C23F28B10F28B10F28B
        10F7B970C26F0DC26F0DC26F0DCA822DCD8A3BCD8A3BCD8A3BCD8A3BE9CCA9FF
        FFFFFFFFFFF0F1FB939AE0313DC22533C01927BC064777028B2609B73D0CDC5D
        0CF1700CF5740CF0710CD76009AB480C7A338C8121F38E12F38E12F38E12F38E
        12F8BE77C2720EC2720EC2720EC9832BCE8E3ECE8E3ECE8E3ED2964CFDFAF7FF
        FFFF8B92DF343EC42936C32936C32936C30C1BBB0918BA0823AB05506C0F7E41
        018521018620017F260B6C38788222DB8F17F39213F39213F39213F39213F392
        13F8C37EC2750FC2750FC2750FC9842ACF9243CF9243CF9243E7C8A0FFFFFFFF
        FFFF2C3AC62C3AC62C3AC62C3AC62230C40818BD0818BD0818BD0818BD4F5BD0
        06118B06118B06118B06118BA6693CF49515F49515F49515F49515F49515F495
        15F9C785C37711C37711C37711C9842AD09546D09546D2974BFCF8F3FFFFFFFF
        FFFF303DC9303DC9303DC9303DC91725C30717BF0717BF0717BF0717BF5964D4
        05118C05118C05118C05118C2B267AF19619F59817F59817F59817F59817F598
        17FACB89C47A12C47A12C47A12CA872AD1994AD1994AE6C598FFFFFFFFFFFFFF
        FFFF3340CD3340CD3340CD3240CC0A1AC20617C20617C20617C20617C2646ED8
        04118E04118E04118E04118E04118E9A6745F69B19F69B19F69B19F69B19F69B
        19FACA86C57C14C57C14C57C14CA892AD39D4ED39B4AFBF6EEFFFFFFFFFFFFFF
        FFFF3643CF3643CF3643CF2B3ACC0617C30617C30617C30617C30617C36E78DC
        041190041190041190041190041190202183F09B1DF69E1AF69E1AF69E1AF69E
        1AFACA82C57E15C57E15C57E15CB8B2CD4A051E4C492FFFFFFFFFFFFFFFFFFFF
        FFFF3946D23946D23946D2202FCC0516C60516C60516C60516C60516C67882E0
        0310920310920310920310920310920310928C6250F7A21CF7A21CF7A21CF7A2
        1CFACA7EC68216C68216C68216CC9032D19F50F9F2E8FFFFFFFFFFFFFFFFFFFF
        FFFF3C4AD43C4AD43C4AD41424CC0416C80416C80416C80416C80416C87E87E3
        031093031093031093031093031093031093191D88EC9E23F8A51EF8A51EF8A5
        1EFBCA79C68418C68418C68418CD9436E2C08AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF3F4ED73F4ED73F4ED70719CB0315CB0315CB0315CB0315CB091BCC7581DE
        1F2BA4020F95020F95020F95020F95020F95020F95805E58F8A81FF8A81FF8A8
        1FFBC976C68619C68619C68619CD9533F8F0E2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4350DA4350DA3A49D80215CD0215CD0215CD1728CF4753D56D76D86E77D8
        6770D64751C11825A5010F97010F97010F97010F97111990F8B131F9AC21F9AC
        21FBCA72C7891AC7891AC7891ADCB671FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4654DC4654DC3040D80316D02D3AD55C67DA6670D8434FD22432CA1524C6
        2B38CC3E4BD04C57D33441C0101DA3010F99010F99010F99FDDA99FAAF23FAAF
        23FBCA6EC88C1CC88C1CC68D1DF6ECD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4957DF4F5DDD4F5CDC4956D73542D31424CB0718C90718C90718C90718C9
        0718C90718C9091AC91727CC2332CE1E2CBF0A18A3010F9AFFFCF7FABA39FBB2
        25FCCB6AC98E1DC98E1DD9B365FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5D69E12333D20719CE0617CE0617CE0617CE0617CE0617CE0617CE0617CE
        0617CE0617CE0617CE0617CE0617CE0617CE0B1CCC303CC1FFFFFFFDE1A6FBB5
        26FCCB66C9911EC9911EF4E9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC9CDF56A76E41426D60417D30417D30417D30417D30417D30417D3
        0417D30417D30417D30417D31426D66A76E4C9CDF5FFFFFFFFFFFFFFFDFAFCC2
        46FDCC63CA9420D9B15CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7F8FEA9B0F14756E30418D60216D80216D80216D8
        0216D80418D64756E3A9B0F1F7F8FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE6
        B2FDCD5FCA9621F2E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E5FB8690EE2638E02638E0
        8690EEE3E5FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FDFCD477D5B154FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEFC9F0E2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Transparent = True
    end
    inherited Panel5: TPanel
      Caption = 'Cadastros de Tipos de Entidades'
    end
  end
  inherited pcCadastros: TPageControl
    Top = 140
    Height = 361
    ExplicitTop = 140
    ExplicitHeight = 361
    inherited TsFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 741
      ExplicitHeight = 333
      inherited Panel2: TPanel
        Height = 333
        ExplicitHeight = 333
        inherited PnlHist: TPanel
          Height = 331
          ExplicitHeight = 331
          inherited MemoDebug: TMemo
            Height = 329
            ExplicitHeight = 329
          end
        end
        inherited cxgridBaseCadastros: TcxGrid
          Height = 331
          ExplicitHeight = 331
          inherited cxgridBaseCadastrosDBTableView1: TcxGridDBTableView
            DataController.DataSource = DMFrmBaseCadastrosTiposEntidades.DSqBaseCadastros
            object cxgridBaseCadastrosDBTableView1ID: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'ID'
              MinWidth = 64
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.IgnoreTimeForFiltering = False
              Options.IncSearch = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
            end
            object cxgridBaseCadastrosDBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'NAME'
              MinWidth = 364
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.IgnoreTimeForFiltering = False
              Options.IncSearch = False
              Options.FilteringAddValueItems = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.GroupFooters = False
              Options.Grouping = False
              Options.HorzSizing = False
            end
          end
        end
      end
    end
    inherited TsDados: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 741
      ExplicitHeight = 333
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 91
        Top = 3
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 22
        Width = 78
        Height = 21
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'ID'
        DataSource = DMFrmBaseCadastrosTiposEntidades.DSqBaseCadastros
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 91
        Top = 22
        Width = 345
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NAME'
        DataSource = DMFrmBaseCadastrosTiposEntidades.DSqBaseCadastros
        TabOrder = 1
      end
    end
  end
  inherited pImprimir: TPopupMenu
    inherited ImprimirListagem1: TMenuItem
      OnClick = ImprimirListagem1Click
    end
  end
end
