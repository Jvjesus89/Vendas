unit Vendas.view.page.CadastroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vendas.Utils, Vcl.Mask,
  Vcl.DBCtrls,  Vendas.view.page.ConsultaProduto,
   DbPrincipal, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vendas.model.Consultas;

type
  TCadastroVenda = class(TForm)
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    pnlNumeroVenda: TPanel;
    Panel10: TPanel;
    DtVenda: TDateTimePicker;
    PageControl1: TPageControl;
    DBGrid1: TDBGrid;
    TelaProdutos: TTabSheet;
    Panel2: TPanel;
    Panel1: TPanel;
    btnBuscaCliente: TSpeedButton;
    Panel3: TPanel;
    btnBuscaProdutos: TSpeedButton;
    Panel4: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    pnlMaster: TPanel;
    edtcodigocliente: TDBEdit;
    edtCliente: TDBEdit;
    edtCodigoProduto: TDBEdit;
    edtProduto: TDBEdit;
    edtVlUnit: TDBEdit;
    Venda: TFDQuery;
    PVenda: TDataSetProvider;
    MVenda: TClientDataSet;
    DsVenda: TDataSource;
    VendaDTVENDA: TDateField;
    VendaCODCLI: TIntegerField;
    VendaCODCLI_1: TIntegerField;
    VendaCODIGO: TIntegerField;
    VendaRAZAO: TStringField;
    VendaFISICA_JURIDICA: TStringField;
    VendaCPF_CNPJ: TStringField;
    VendaCODEND: TIntegerField;
    VendaTELEFONE: TStringField;
    MVendaDTVENDA: TDateField;
    MVendaCODCLI: TIntegerField;
    MVendaCODIGO: TIntegerField;
    MVendaRAZAO: TStringField;
    MVendaFISICA_JURIDICA: TStringField;
    MVendaCPF_CNPJ: TStringField;
    MVendaCODEND: TIntegerField;
    MVendaTELEFONE: TStringField;
    VendasItens: TFDQuery;
    PVendasItens: TDataSetProvider;
    MVendasItens: TClientDataSet;
    DsVendasItens: TDataSource;
    btnSalvarItem: TSpeedButton;
    pnlQtde: TPanel;
    edtqtde: TDBEdit;
    edtvltotalitem: TDBEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    Panel15: TPanel;
    MVendasItensGrid: TClientDataSet;
    DsMVendasItensGrid: TDataSource;
    DBEdit2: TDBEdit;
    Panel16: TPanel;
    VendaTOTALVENDA: TFMTBCDField;
    MVendaTOTALVENDA: TFMTBCDField;
    QConsultaClienteCampos: TFDQuery;
    QConsultaClienteCamposCODCLI: TIntegerField;
    QConsultaClienteCamposCODIGO: TIntegerField;
    QConsultaClienteCamposRAZAO: TStringField;
    QConsultas: TFDQuery;
    QConsultaProdutoCampos: TFDQuery;
    QConsultaProdutoCamposCODIGO: TIntegerField;
    QConsultaProdutoCamposDESCRICAO: TStringField;
    QConsultaProdutoCamposVLUNIT: TFMTBCDField;
    QConsultaProdutoCamposCODPROD: TIntegerField;
    edtdesconto: TDBEdit;
    VendaNUMVENDA: TIntegerField;
    VendaCODVENDA: TIntegerField;
    MVendaNUMVENDA: TIntegerField;
    VendasItensCODVENDA: TIntegerField;
    VendasItensCODPROD: TIntegerField;
    VendasItensQTDE: TFMTBCDField;
    VendasItensVLUNIT: TFMTBCDField;
    VendasItensDESCONTO: TFMTBCDField;
    VendasItensVLTOTALITEM: TFMTBCDField;
    VendasItensCODPROD_1: TIntegerField;
    VendasItensCODIGO: TIntegerField;
    VendasItensDESCRICAO: TStringField;
    VendasItensVLUNIT_1: TFMTBCDField;
    MVendasItensGridCODVENDA: TIntegerField;
    MVendasItensGridCODPROD: TIntegerField;
    MVendasItensGridQTDE: TFMTBCDField;
    MVendasItensGridVLUNIT: TFMTBCDField;
    MVendasItensGridDESCONTO: TFMTBCDField;
    MVendasItensGridVLTOTALITEM: TFMTBCDField;
    MVendasItensGridCODPROD_1: TIntegerField;
    MVendasItensGridCODIGO: TIntegerField;
    MVendasItensGridDESCRICAO: TStringField;
    MVendasItensCODVENDA: TIntegerField;
    MVendasItensCODPROD: TIntegerField;
    MVendasItensQTDE: TFMTBCDField;
    MVendasItensVLUNIT: TFMTBCDField;
    MVendasItensDESCONTO: TFMTBCDField;
    MVendasItensVLTOTALITEM: TFMTBCDField;
    MVendasItensCODPROD_1: TIntegerField;
    MVendasItensCODIGO: TIntegerField;
    MVendasItensDESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscaClienteClick(Sender: TObject);
    procedure btnBuscaProdutosClick(Sender: TObject);
    procedure edtVlUnitExit(Sender: TObject);
    procedure edtqtdeExit(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MVendasItensGridAfterPost(DataSet: TDataSet);
    procedure edtcodigoclienteExit(Sender: TObject);
    procedure edtcodigoclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteExit(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtCodigoProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtVlUnitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtqtdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDescontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtvltotalitemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalvarItemClick(Sender: TObject);
  private
    nVenda : integer;
    Codvenda : integer;
    procedure CalculaTotalVendido;
    procedure fecharJanela;
    procedure ConsultaClientePorCodigo;
    procedure ConsultaClientePorRazao;
    procedure ConsultaProdutoPorCodigo;
    procedure ConsultaNumeroVenda;
    procedure SalvarItem;
    { Private declarations }
  public
   cadastrarOuEditar : integer;
   class function New(Aowner:TComponent): TCadastroVenda;
   function Embed(Value:Tpanel):TCadastroVenda;

    { Public declarations }
  end;

var
  CadastroVenda: TCadastroVenda;

implementation

{$R *.dfm}

uses Vendas.view.page.ConsultaCliente, Vendas.model.CalculaCampos;

{ TCadastroVenda }

function TCadastroVenda.Embed(Value: Tpanel): TCadastroVenda;
begin
 Result:=self;
 Self.AddObject(value);
end;

procedure TCadastroVenda.fecharJanela;
begin
 Mvenda.cancel;
 MVendasItens.Cancel;
 MVendasItensGrid.Cancel;

 MVenda.Close;
 MVendasItens.Close;
 MVendasItensGrid.Close;
 Self.RemoveObject;
end;

procedure TCadastroVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   fecharJanela;
end;

procedure TCadastroVenda.FormShow(Sender: TObject);
begin
  if cadastrarOuEditar = 1 then
  begin
  try
   MVenda.Open;
   MVendasItens.Open;
   MVendasItensGrid.open;

   MVenda.Append;
   MVendasItens.Append;
   MVendasItensGrid.Append;
   DtVenda.Date := NOW;
   ConsultaNumeroVenda;
   Mvenda.FieldByName('NUMVENDA').AsInteger :=  nVenda;
   except
        on E: Exception do
      ShowMessage('Erro ao Ativar: ' + E.Message);
    end;

  end;

  if cadastrarOuEditar = 2 then
  begin
   DtVenda.Date := venda.FieldByName('dtvenda').AsDatetime;
   pnlNumeroVenda.Caption := 'Venda N� : ' +IntToStr(venda.FieldByName('numvenda').AsInteger);
   CadastroVenda.MVenda.Open;
   CadastroVenda.MVendasItens.Open;
   CadastroVenda.MVendasItensGrid.open;

   CadastroVenda.MVenda.Edit;
   CadastroVenda.MVendasItens.Append;
   CadastroVenda.MVendasItensGrid.Edit;
  end;
end;

procedure TCadastroVenda.MVendasItensGridAfterPost(DataSet: TDataSet);
var
  Total: real;
begin
  Total := 0;
   MVendasItensGrid.First;
  while not  MVendasItensGrid.Eof do
  begin
    Total := Total +  MVendasItensGrid.FieldByName('VLTOTALITEM').AsFloat;
     MVendasItensGrid.Next;
  end;
  MVenda.FieldByName('TOTALVENDA').AsFloat :=  Total;

end;

class function TCadastroVenda.New(Aowner: TComponent): TCadastroVenda;
begin
 Result := Self.Create(AOwner);
end;

procedure TCadastroVenda.SalvarItem;
begin
  MVendasItensGrid.FieldByName('CODPROD').AsInteger := MVendasItens.FieldByName('CODPROD').AsInteger;
  MVendasItensGrid.FieldByName('CODIGO').AsInteger := MVendasItens.FieldByName('CODIGO').AsInteger;
  MVendasItensGrid.FieldByName('DESCRICAO').AsString := MVendasItens.FieldByName('DESCRICAO').AsString ;
  MVendasItensGrid.FieldByName('QTDE').AsFloat :=  MVendasItens.FieldByName('QTDE').AsFloat;
  MVendasItensGrid.FieldByName('VLUNIT').AsFloat := MVendasItens.FieldByName('VLUNIT').AsFloat;
  MVendasItensGrid.FieldByName('DESCONTO').AsFloat := MVendasItens.FieldByName('DESCONTO').AsFloat;
  MVendasItensGrid.FieldByName('VLTOTALITEM').AsFloat :=  MVendasItens.FieldByName('VLTOTALITEM').AsFloat;
  //Mvendasitens.cancel;
  Mvendasitens.append;

  MVendasItensGrid.Post;

  edtCodigoProduto.SetFocus;
end;

procedure TCadastroVenda.btnBuscaProdutosClick(Sender: TObject);
begin
  TConsultaProduto.New(Self)
    .Embed(pnlMaster);
end;

procedure TCadastroVenda.btnCancelarClick(Sender: TObject);
begin
  Mvenda.Cancel;
  MVendasItensGrid.Cancel;
  fecharJanela;
end;

procedure TCadastroVenda.btnSalvarClick(Sender: TObject);
begin
 Mvenda.FieldByName('dtvenda').AsDatetime :=  DtVenda.Date;
 Mvenda.Post;


  try
   Mvenda.applyUpdates(1);
  except
   on E: EFDException do
    begin
      ShowMessage('Erro ao Salvar Venda: ' + E.Message);
     raise;
    end;
  end;


  //InseriCodVendaNoItem;

  MVendasItensGrid.ApplyUpdates(1);

 showMessage('Venda N� '+ IntToStr(nVenda) +' Registrado com sucesso');
 self.RemoveObject;
end;

procedure TCadastroVenda.btnSalvarItemClick(Sender: TObject);
begin
SalvarItem
end;

procedure TCadastroVenda.CalculaTotalVendido;
var
  CalculaTotal: TCalculaTotalVendido;
begin
if (Trim(edtqtde.text).IsEmpty) then
  begin
  edtqtde.Text := '1';
  end;
if (Trim(edtVlUnit.text).IsEmpty) then
  begin
  edtVlUnit.Text := '0';
  end;
  if (Trim(edtDesconto.text).IsEmpty) then
  begin
  edtDesconto.Text := '0';
  end;
  if (Trim(edtvltotalitem.text).IsEmpty) then
  begin
  edtVlUnit.Text := '0';
  end;

  CalculaTotal := TCalculaTotalVendido.New;
  try
    CalculaTotal.qtde := StrToFloat(edtqtde.Text);
    CalculaTotal.valorunit := StrToFloat(edtVlUnit.Text);
    CalculaTotal.desconto := StrToFloat(edtDesconto.Text);
    MVendasItens.FieldByName('VLTOTALITEM').AsFloat := CalculaTotal.vltotal;
  finally
    CalculaTotal.Free;
  end;
end;

procedure TCadastroVenda.ConsultaClientePorCodigo;
var
    ConsultaCliPorCodigo : TConsultaClientes;
begin
  if trim(edtcodigocliente.Text).IsEmpty then
  begin
    edtcodigocliente.Text := '0';
  end;

  ConsultaCliPorCodigo := TConsultaClientes.New;
  try
    ConsultaCliPorCodigo.codigo := StrToInt(edtcodigocliente.Text);
    ConsultaCliPorCodigo.ConsultaPorCodigo;
  finally
    ConsultaCliPorCodigo.Free;
  end;
end;

procedure TCadastroVenda.ConsultaClientePorRazao;
var
    ConsultaCliPorRazao : TConsultaClientes;
begin
  if trim(edtCliente.Text).IsEmpty then
  begin
    edtCliente.Text := '';
  end;

  ConsultaCliPorRazao := TConsultaClientes.New;
  try
    ConsultaCliPorRazao.Razao := (edtCliente.Text);
    ConsultaCliPorRazao.ConsultaPorRazao;
  finally
    ConsultaCliPorRazao.Free;
  end;
end;

procedure TCadastroVenda.ConsultaNumeroVenda;
var
    ConsultaNumeroVenda :TconsultaNumeroVenda;
begin

  ConsultaNumeroVenda := TconsultaNumeroVenda.New;
  try
    ConsultaNumeroVenda.ConsultarNumeroVenda;
    nVenda := (ConsultaNumeroVenda.NumeroVenda);
    pnlNumeroVenda.Caption := ('Venda N� : '+ IntToStr(nVenda));
  finally
    ConsultaNumeroVenda.Free;
  end;
end;

procedure TCadastroVenda.ConsultaProdutoPorCodigo;
var
    ConsultaProCodigo : TConsultaProdutos;
begin
  MvendasitensGrid.Append;

  if trim(edtCodigoProduto.Text).IsEmpty then
  begin
    edtCodigoProduto.Text := '0';
  end;

  ConsultaProCodigo := TConsultaProdutos.New;
  try
    ConsultaProCodigo.codigo := StrToInt(edtCodigoProduto.Text);
    ConsultaProCodigo.ConsultaProdutoPorCodigo;
  finally
    ConsultaProCodigo.Free;
  end;

end;

procedure TCadastroVenda.edtClienteExit(Sender: TObject);
begin
  ConsultaClientePorRazao;
end;

procedure TCadastroVenda.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
   VK_return : begin
   ConsultaClientePorRazao;
   end;
  end;

end;

procedure TCadastroVenda.edtcodigoclienteExit(Sender: TObject);
begin
  ConsultaClientePorCodigo;
end;

procedure TCadastroVenda.edtcodigoclienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
   VK_return : begin
   ConsultaClientePorCodigo;
   end;
  end;
end;


procedure TCadastroVenda.edtCodigoProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case key of
   VK_return : begin
   ConsultaProdutoPorCodigo;
   edtqtde.SetFocus;
   end;
  end;
end;

procedure TCadastroVenda.edtDescontoExit(Sender: TObject);
begin
  CalculaTotalVendido;
  CadastroVenda.MVendasItens.FieldByName('desconto').AsFloat := StrToFloat(edtDesconto.Text);
end;

procedure TCadastroVenda.edtDescontoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
   VK_return : begin
   edtvltotalitem.SetFocus;
   end;
  end;
end;

procedure TCadastroVenda.edtqtdeExit(Sender: TObject);
begin
  CalculaTotalVendido;
end;

procedure TCadastroVenda.edtqtdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
   VK_return : begin
   edtvlunit.SetFocus;
   end;
  end;
end;

procedure TCadastroVenda.edtvltotalitemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
   VK_return : begin
   SalvarItem
   end;
  end;
end;

procedure TCadastroVenda.edtVlUnitExit(Sender: TObject);
var TotalItem : real;
begin
  CalculaTotalVendido;
end;

procedure TCadastroVenda.edtVlUnitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
   VK_return : begin
   edtDesconto.SetFocus;
   end;
  end;
end;

procedure TCadastroVenda.btnBuscaClienteClick(Sender: TObject);
begin
    TConsultaCliente.New(Self)
    .Embed(pnlMaster);
end;

end.
