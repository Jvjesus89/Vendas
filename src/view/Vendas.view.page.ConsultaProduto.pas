unit Vendas.view.page.ConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vendas.Utils;

type
  TConsultaProduto = class(TForm)
    Panel1: TPanel;
    Busca: TEdit;
    btnBusca: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Qprodutos: TFDQuery;
    DsQprodutos: TDataSource;
    QprodutosCODPROD: TIntegerField;
    QprodutosCODIGO: TIntegerField;
    QprodutosDESCRICAO: TStringField;
    QprodutosVLUNIT: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaExit(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
  private
   procedure InserirProduto;
   procedure ConsultaProduto;
    { Private declarations }
  public
   class function New(Aowner:TComponent): TConsultaProduto;
   function Embed(Value:Tpanel):TConsultaProduto;
    { Public declarations }
  end;

var
  ConsultaProduto: TConsultaProduto;

implementation

{$R *.dfm}

uses Vendas.view.page.CadastroVenda;


procedure TConsultaProduto.btnBuscaClick(Sender: TObject);
begin
ConsultaProduto;
end;

procedure TConsultaProduto.BuscaExit(Sender: TObject);
begin
ConsultaProduto;
end;

procedure TConsultaProduto.ConsultaProduto;
begin
if trim(Busca.Text).IsEmpty then
   begin
   Qprodutos.Close;
   Qprodutos.Sql.Clear;
   Qprodutos.Sql.Add('Select * From produtos');
   Qprodutos.Open;
   end
   else
   begin
   Qprodutos.Close;
   Qprodutos.Sql.Clear;
   Qprodutos.Sql.Add('Select * From produtos where descricao like :PDescricao');
   Qprodutos.ParamByName('PDescricao').AsString := '%' + (Busca.text)  + '%';
   Qprodutos.Open;
   end;
end;

procedure TConsultaProduto.DBGrid1DblClick(Sender: TObject);
begin
 InserirProduto
end;

procedure TConsultaProduto.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
   VK_return : begin
   InserirProduto;
   end;
  end;
end;

function TConsultaProduto.Embed(Value: Tpanel): TConsultaProduto;
begin
 Result:=self;
 Self.AddObject(value);
end;

procedure TConsultaProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Qprodutos.close;
end;

procedure TConsultaProduto.FormShow(Sender: TObject);
begin
  Qprodutos.Open;
end;

procedure TConsultaProduto.InserirProduto;
begin
  try
  CadastroVenda.MVendasItens.FieldByName('CODPROD').AsInteger := Qprodutos.FieldByName('CODPROD').AsInteger ;
  CadastroVenda.MVendasItens.FieldByName('codigo').AsInteger := Qprodutos.FieldByName('codigo').AsInteger;
  CadastroVenda.MVendasItens.FieldByName('DESCRICAO').AsString := Qprodutos.FieldByName('DESCRICAO').AsString;
  CadastroVenda.MVendasItens.FieldByName('VLUNIT').AsFloat := Qprodutos.FieldByName('VLUNIT').AsFloat;
  CadastroVenda.MVendasItens.FieldByName('qtde').AsFloat := 1;
  Self.RemoveObject;
    except
    CadastroVenda.MVenda.Cancel;
    raise;
  end;
end;

class function TConsultaProduto.New(Aowner: TComponent): TConsultaProduto;
begin
 Result := Self.Create(AOwner);
end;

end.
