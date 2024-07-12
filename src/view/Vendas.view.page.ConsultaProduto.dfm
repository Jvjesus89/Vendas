object ConsultaProduto: TConsultaProduto
  Left = 0
  Top = 0
  Caption = 'Consulta Produtos'
  ClientHeight = 308
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 15
    Padding.Right = 50
    Padding.Bottom = 15
    TabOrder = 0
    object Busca: TEdit
      AlignWithMargins = True
      Left = 205
      Top = 16
      Width = 185
      Height = 25
      Margins.Left = 200
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      TabOrder = 0
      OnExit = BuscaExit
      ExplicitHeight = 21
    end
    object btnBusca: TButton
      AlignWithMargins = True
      Left = 390
      Top = 18
      Width = 62
      Height = 24
      Margins.Left = 0
      Margins.Right = 100
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Busca'
      TabOrder = 1
      OnClick = btnBuscaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 649
    Height = 251
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 649
      Height = 251
      Align = alClient
      DataSource = DsQprodutos
      TabOrder = 0
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
          FieldName = 'CODIGO'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 294
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLUNIT'
          Width = 134
          Visible = True
        end>
    end
  end
  object Qprodutos: TFDQuery
    Connection = Db.DbPrincipal
    SQL.Strings = (
      'Select * From produtos')
    Left = 477
    Top = 115
    object QprodutosCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Origin = 'CODPROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QprodutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object QprodutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QprodutosVLUNIT: TFMTBCDField
      FieldName = 'VLUNIT'
      Origin = 'VLUNIT'
      Precision = 18
      Size = 2
    end
  end
  object DsQprodutos: TDataSource
    DataSet = Qprodutos
    Left = 477
    Top = 171
  end
end
