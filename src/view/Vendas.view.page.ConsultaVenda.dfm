object ConsultaVendas: TConsultaVendas
  Left = 0
  Top = 0
  Caption = 'Consulta Vendas'
  ClientHeight = 490
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 0
    Width = 843
    Height = 490
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 843
      Height = 72
      Align = alTop
      Padding.Top = 12
      Padding.Right = 10
      Padding.Bottom = 15
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 479
        Top = 13
        Width = 62
        Height = 43
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alRight
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        Caption = 'Dt Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ExplicitHeight = 19
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 645
        Top = 13
        Width = 54
        Height = 43
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alRight
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        Caption = 'Dt Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ExplicitHeight = 19
      end
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 800
        Top = 16
        Width = 32
        Height = 20
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 20
        Align = alRight
        Caption = 'OK'
        OnClick = SpeedButton1Click
        ExplicitLeft = 1496
        ExplicitTop = 12
        ExplicitHeight = 21
      end
      object DtFinal: TDateTimePicker
        AlignWithMargins = True
        Left = 702
        Top = 13
        Width = 98
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 20
        Align = alRight
        Date = 45462.000000000000000000
        Time = 0.952586157407495200
        TabOrder = 0
      end
      object DtInicial: TDateTimePicker
        AlignWithMargins = True
        Left = 544
        Top = 13
        Width = 98
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 20
        Align = alRight
        Date = 45462.000000000000000000
        Time = 0.952586157407495200
        TabOrder = 1
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 6
        Top = 13
        Width = 85
        Height = 43
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'C'#243'd. Cliente'
        TabOrder = 2
        VerticalAlignment = taAlignTop
        object edtCodigocliente: TEdit
          Left = 0
          Top = 22
          Width = 85
          Height = 21
          Align = alBottom
          TabOrder = 0
          OnKeyDown = edtCodigoclienteKeyDown
        end
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 96
        Top = 13
        Width = 149
        Height = 43
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'Cliente'
        TabOrder = 3
        VerticalAlignment = taAlignTop
        object edtCliente: TEdit
          Left = 0
          Top = 22
          Width = 149
          Height = 21
          Align = alBottom
          TabOrder = 0
          OnKeyDown = edtClienteKeyDown
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 250
        Top = 13
        Width = 149
        Height = 43
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'Num. Venda'
        TabOrder = 4
        VerticalAlignment = taAlignTop
        object edtnumvenda: TEdit
          Left = 0
          Top = 22
          Width = 149
          Height = 21
          Align = alBottom
          TabOrder = 0
          OnKeyDown = edtnumvendaKeyDown
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 72
      Width = 843
      Height = 418
      Align = alClient
      DataSource = DsQVendas
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMVENDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAO'
          Width = 377
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF_CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALVENDA'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVENDA'
          Visible = True
        end>
    end
  end
  object QVendas: TFDQuery
    Active = True
    Connection = Db.DbPrincipal
    SQL.Strings = (
      'Select * From vendas v '
      'join clientes c on c.codcli = v.codcli')
    Left = 668
    Top = 139
    object QVendasCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVendasDTVENDA: TDateField
      FieldName = 'DTVENDA'
      Origin = 'DTVENDA'
    end
    object QVendasCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
    end
    object QVendasTOTALVENDA: TFMTBCDField
      FieldName = 'TOTALVENDA'
      Origin = 'TOTALVENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QVendasNUMVENDA: TIntegerField
      FieldName = 'NUMVENDA'
      Origin = 'NUMVENDA'
    end
    object QVendasCODCLI_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODCLI_1'
      Origin = 'CODCLI'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendasCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendasRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QVendasFISICA_JURIDICA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FISICA_JURIDICA'
      Origin = 'FISICA_JURIDICA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QVendasCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
    object QVendasCODEND: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODEND'
      Origin = 'CODEND'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendasTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
  end
  object DsQVendas: TDataSource
    DataSet = QVendas
    Left = 668
    Top = 195
  end
end
