object CadastroVenda: TCadastroVenda
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro Venda'
  ClientHeight = 511
  ClientWidth = 935
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 0
    Width = 935
    Height = 511
    Align = alClient
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 933
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 933
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object btnBuscaCliente: TSpeedButton
          AlignWithMargins = True
          Left = 364
          Top = 30
          Width = 23
          Height = 27
          Margins.Left = 0
          Margins.Top = 30
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = '...'
          OnClick = btnBuscaClienteClick
          ExplicitLeft = 292
          ExplicitTop = 22
          ExplicitHeight = 35
        end
        object Panel7: TPanel
          AlignWithMargins = True
          Left = 116
          Top = 6
          Width = 61
          Height = 48
          Margins.Top = 6
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          VerticalAlignment = taAlignTop
          object edtcodigocliente: TDBEdit
            Left = 0
            Top = 22
            Width = 61
            Height = 26
            Align = alBottom
            DataField = 'CODIGO'
            DataSource = DsVenda
            TabOrder = 0
            OnExit = edtcodigoclienteExit
            OnKeyDown = edtcodigoclienteKeyDown
          end
        end
        object pnlNumeroVenda: TPanel
          Left = 0
          Top = 0
          Width = 113
          Height = 57
          Align = alLeft
          Caption = 'Venda N'#176' : 1'
          Color = clBtnShadow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
        object Panel10: TPanel
          AlignWithMargins = True
          Left = 183
          Top = 6
          Width = 178
          Height = 48
          Margins.Top = 6
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          VerticalAlignment = taAlignTop
          object edtCliente: TDBEdit
            Left = 0
            Top = 22
            Width = 178
            Height = 26
            Align = alBottom
            DataField = 'RAZAO'
            DataSource = DsVenda
            TabOrder = 0
            OnExit = edtClienteExit
            OnKeyDown = edtClienteKeyDown
          end
        end
        object Panel15: TPanel
          Left = 748
          Top = 0
          Width = 185
          Height = 57
          Align = alRight
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Dt. Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object DtVenda: TDateTimePicker
            AlignWithMargins = True
            Left = 77
            Top = 12
            Width = 105
            Height = 33
            Margins.Top = 12
            Margins.Bottom = 12
            Align = alRight
            Date = 45483.000000000000000000
            Time = 0.903428668978449400
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 74
      Width = 933
      Height = 397
      ActivePage = TelaProdutos
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TelaProdutos: TTabSheet
        Caption = 'Produtos'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 925
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object btnBuscaProdutos: TSpeedButton
            AlignWithMargins = True
            Left = 276
            Top = 22
            Width = 23
            Height = 27
            Margins.Left = 0
            Margins.Top = 22
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = '...'
            OnClick = btnBuscaProdutosClick
            ExplicitTop = 19
          end
          object btnSalvarItem: TSpeedButton
            AlignWithMargins = True
            Left = 649
            Top = 22
            Width = 25
            Height = 27
            Margins.Left = 0
            Margins.Top = 22
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = 'Ok'
            OnClick = btnSalvarItemClick
            ExplicitLeft = 560
            ExplicitTop = 15
            ExplicitHeight = 24
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 65
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            VerticalAlignment = taAlignTop
            object edtCodigoProduto: TDBEdit
              Left = 0
              Top = 23
              Width = 65
              Height = 26
              Align = alBottom
              DataField = 'CODIGO'
              DataSource = DsVendasItens
              TabOrder = 0
              OnExit = edtCodigoProdutoExit
              OnKeyDown = edtCodigoProdutoKeyDown
            end
          end
          object Panel3: TPanel
            AlignWithMargins = True
            Left = 68
            Top = 0
            Width = 208
            Height = 49
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            VerticalAlignment = taAlignTop
            object edtProduto: TDBEdit
              Left = 0
              Top = 23
              Width = 208
              Height = 26
              Align = alBottom
              DataField = 'DESCRICAO'
              DataSource = DsVendasItens
              TabOrder = 0
            end
          end
          object Panel4: TPanel
            AlignWithMargins = True
            Left = 387
            Top = 0
            Width = 78
            Height = 49
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Caption = 'Valor Unit.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
            VerticalAlignment = taAlignTop
            object edtVlUnit: TDBEdit
              Left = 0
              Top = 23
              Width = 78
              Height = 26
              Align = alBottom
              DataField = 'VLUNIT'
              DataSource = DsVendasItens
              TabOrder = 0
              OnExit = edtVlUnitExit
              OnKeyDown = edtVlUnitKeyDown
            end
          end
          object Panel9: TPanel
            AlignWithMargins = True
            Left = 470
            Top = 0
            Width = 78
            Height = 49
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Caption = 'Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 3
            VerticalAlignment = taAlignTop
            object edtdesconto: TDBEdit
              Left = 0
              Top = 23
              Width = 78
              Height = 26
              Align = alBottom
              DataField = 'DESCONTO'
              DataSource = DsVendasItens
              TabOrder = 0
              OnExit = edtDescontoExit
              OnKeyDown = edtDescontoKeyDown
              ExplicitWidth = 96
            end
          end
          object Panel11: TPanel
            AlignWithMargins = True
            Left = 553
            Top = 0
            Width = 96
            Height = 49
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Caption = 'Vl. Total Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 4
            VerticalAlignment = taAlignTop
            object edtvltotalitem: TDBEdit
              Left = 0
              Top = 23
              Width = 96
              Height = 26
              Align = alBottom
              DataField = 'VLTOTALITEM'
              DataSource = DsVendasItens
              TabOrder = 0
              OnExit = edtVlUnitExit
              OnKeyDown = edtvltotalitemKeyDown
            end
          end
          object pnlQtde: TPanel
            AlignWithMargins = True
            Left = 304
            Top = 0
            Width = 78
            Height = 49
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 5
            VerticalAlignment = taAlignTop
            object edtqtde: TDBEdit
              Left = 0
              Top = 23
              Width = 78
              Height = 26
              Align = alBottom
              DataField = 'QTDE'
              DataSource = DsVendasItens
              TabOrder = 0
              OnExit = edtqtdeExit
              OnKeyDown = edtqtdeKeyDown
            end
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 49
          Width = 925
          Height = 315
          Align = alClient
          DataSource = DsMVendasItensGrid
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 311
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLUNIT'
              Title.Caption = 'Valor Unit.'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Caption = 'Desconto'
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLTOTALITEM'
              Title.Caption = 'Total Item'
              Width = 81
              Visible = True
            end>
        end
      end
    end
    object Panel12: TPanel
      Left = 1
      Top = 471
      Width = 933
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object Panel13: TPanel
        Left = 472
        Top = 0
        Width = 461
        Height = 39
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 467
        ExplicitTop = 2
        object btnSalvar: TSpeedButton
          AlignWithMargins = True
          Left = 10
          Top = 3
          Width = 55
          Height = 33
          Margins.Left = 10
          Margins.Right = 0
          Align = alLeft
          Caption = 'Salvar'
          OnClick = btnSalvarClick
        end
        object Panel16: TPanel
          Left = 216
          Top = 0
          Width = 245
          Height = 39
          Align = alRight
          Alignment = taLeftJustify
          Caption = 'Total Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object DBEdit2: TDBEdit
            AlignWithMargins = True
            Left = 87
            Top = 6
            Width = 157
            Height = 27
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 5
            Align = alRight
            DataField = 'TOTALVENDA'
            DataSource = DsVenda
            TabOrder = 0
            ExplicitHeight = 26
          end
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 461
        Height = 39
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 390
        Padding.Top = 3
        Padding.Right = 20
        Padding.Bottom = 3
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 390
          Top = 3
          Width = 51
          Height = 33
          Align = alClient
          Caption = 'Cancelar'
          OnClick = btnCancelarClick
          ExplicitLeft = 391
          ExplicitTop = 2
        end
      end
    end
  end
  object Venda: TFDQuery
    Connection = Db.DbPrincipal
    SQL.Strings = (
      
        'select * from vendas v join clientes c on c.codcli = v.codcli wh' +
        'ere 1=2')
    Left = 448
    object VendaDTVENDA: TDateField
      FieldName = 'DTVENDA'
      Origin = 'DTVENDA'
    end
    object VendaCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
    end
    object VendaCODCLI_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODCLI_1'
      Origin = 'CODCLI'
      ProviderFlags = []
    end
    object VendaCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
    end
    object VendaRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      Size = 100
    end
    object VendaFISICA_JURIDICA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FISICA_JURIDICA'
      Origin = 'FISICA_JURIDICA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object VendaCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 14
    end
    object VendaCODEND: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODEND'
      Origin = 'CODEND'
      ProviderFlags = []
    end
    object VendaTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      Size = 15
    end
    object VendaTOTALVENDA: TFMTBCDField
      FieldName = 'TOTALVENDA'
      Origin = 'TOTALVENDA'
      Precision = 18
      Size = 2
    end
    object VendaNUMVENDA: TIntegerField
      FieldName = 'NUMVENDA'
      Origin = 'NUMVENDA'
    end
    object VendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object PVenda: TDataSetProvider
    DataSet = Venda
    Left = 504
  end
  object MVenda: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODVENDA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DTVENDA'
        DataType = ftDate
      end
      item
        Name = 'CODCLI'
        DataType = ftInteger
      end
      item
        Name = 'CODCLI_1'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'RAZAO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FISICA_JURIDICA'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CPF_CNPJ'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CODEND'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'TELEFONE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TOTALVENDA'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'PVenda'
    StoreDefs = True
    Left = 568
    object MVendaDTVENDA: TDateField
      FieldName = 'DTVENDA'
      Origin = 'DTVENDA'
    end
    object MVendaCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
    end
    object MVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
    end
    object MVendaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      Size = 100
    end
    object MVendaFISICA_JURIDICA: TStringField
      FieldName = 'FISICA_JURIDICA'
      Origin = 'FISICA_JURIDICA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object MVendaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 14
    end
    object MVendaCODEND: TIntegerField
      FieldName = 'CODEND'
      Origin = 'CODEND'
      ProviderFlags = []
    end
    object MVendaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      Size = 15
    end
    object MVendaTOTALVENDA: TFMTBCDField
      FieldName = 'TOTALVENDA'
      Precision = 18
      Size = 2
    end
  end
  object DsVenda: TDataSource
    DataSet = MVenda
    Left = 624
  end
  object VendasItens: TFDQuery
    Connection = Db.DbPrincipal
    SQL.Strings = (
      'select * from vendasitens v '
      'join produtos p on v.codprod = p.codprod where 1=2')
    Left = 712
    Top = 176
    object VendasItensCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
    end
    object VendasItensCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Origin = 'CODPROD'
    end
    object VendasItensVALORUNIT: TFMTBCDField
      FieldName = 'VALORUNIT'
      Origin = 'VALORUNIT'
      Precision = 18
      Size = 2
    end
    object VendasItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object VendasItensVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Origin = 'VLTOTALITEM'
      Precision = 18
      Size = 2
    end
    object VendasItensCODPROD_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODPROD_1'
      Origin = 'CODPROD'
      ProviderFlags = []
    end
    object VendasItensCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
    end
    object VendasItensDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object VendasItensVLUNIT: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VLUNIT'
      Origin = 'VLUNIT'
      ProviderFlags = []
      currency = True
      Precision = 18
      Size = 2
    end
    object VendasItensQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 2
    end
  end
  object PVendasItens: TDataSetProvider
    DataSet = VendasItens
    Left = 784
    Top = 176
  end
  object MVendasItens: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODVENDAITENS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODVENDA'
        DataType = ftInteger
      end
      item
        Name = 'CODPROD'
        DataType = ftInteger
      end
      item
        Name = 'VALORUNIT'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCONTO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VLTOTALITEM'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CODPROD_1'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VLUNIT'
        Attributes = [faReadonly]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'QTDE'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'PVendasItens'
    StoreDefs = True
    Left = 712
    Top = 104
    object MVendasItensCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
    end
    object MVendasItensCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Origin = 'CODPROD'
    end
    object MVendasItensVALORUNIT: TFMTBCDField
      FieldName = 'VALORUNIT'
      Origin = 'VALORUNIT'
      Precision = 18
      Size = 2
    end
    object MVendasItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object MVendasItensVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Origin = 'VLTOTALITEM'
      Precision = 18
      Size = 2
    end
    object MVendasItensCODPROD_1: TIntegerField
      FieldName = 'CODPROD_1'
      Origin = 'CODPROD'
      ProviderFlags = []
    end
    object MVendasItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
    end
    object MVendasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object MVendasItensVLUNIT: TFMTBCDField
      FieldName = 'VLUNIT'
      Origin = 'VLUNIT'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object MVendasItensQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 2
    end
  end
  object DsVendasItens: TDataSource
    DataSet = MVendasItens
    Left = 784
    Top = 104
  end
  object MVendasItensGrid: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODVENDAITENS'
        DataType = ftInteger
      end
      item
        Name = 'CODVENDA'
        DataType = ftInteger
      end
      item
        Name = 'CODPROD'
        DataType = ftInteger
      end
      item
        Name = 'VALORUNIT'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCONTO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VLTOTALITEM'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CODPROD_1'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VLUNIT'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'QTDE'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'PVendasItens'
    StoreDefs = True
    AfterPost = MVendasItensGridAfterPost
    Left = 704
    Top = 232
    object IntegerField2: TIntegerField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODPROD'
      Origin = 'CODPROD'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALORUNIT'
      Origin = 'VALORUNIT'
      Precision = 18
      Size = 2
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Origin = 'VLTOTALITEM'
      Precision = 18
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'CODPROD_1'
      Origin = 'CODPROD'
      ProviderFlags = []
    end
    object IntegerField5: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'VLUNIT'
      Origin = 'VLUNIT'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 2
    end
  end
  object DsMVendasItensGrid: TDataSource
    DataSet = MVendasItensGrid
    Left = 800
    Top = 232
  end
  object QConsultaClienteCampos: TFDQuery
    Connection = Db.DbPrincipal
    SQL.Strings = (
      
        'select * from vendas v join clientes c on c.codcli = v.codcli wh' +
        'ere 1=2')
    Left = 256
    object QConsultaClienteCamposCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
    end
    object QConsultaClienteCamposCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultaClienteCamposRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object QConsultas: TFDQuery
    Connection = Db.DbPrincipal
    Left = 25
    Top = 9
  end
  object QConsultaProdutoCampos: TFDQuery
    Connection = Db.DbPrincipal
    SQL.Strings = (
      'Select * from produtos')
    Left = 208
    Top = 104
    object QConsultaProdutoCamposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object QConsultaProdutoCamposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QConsultaProdutoCamposVLUNIT: TFMTBCDField
      FieldName = 'VLUNIT'
      Origin = 'VLUNIT'
      Precision = 18
      Size = 2
    end
    object QConsultaProdutoCamposCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Origin = 'CODPROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
