unit Vendas.view.page.ConsultaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DbPrincipal,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vendas.Utils,Vendas.view.page.CadastroVenda;

type
  TConsultaCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Busca: TEdit;
    btnBusca: TButton;
    DBGrid1: TDBGrid;
    Qcliente: TFDQuery;
    DsQcliente: TDataSource;
    QclienteCODCLI: TIntegerField;
    QclienteCODIGO: TIntegerField;
    QclienteRAZAO: TStringField;
    QclienteFISICA_JURIDICA: TStringField;
    QclienteCPF_CNPJ: TStringField;
    QclienteCODEND: TIntegerField;
    QclienteTELEFONE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaExit(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
  private
  procedure InserirCliente;
  procedure ConsultaCliente;
    { Private declarations }
  public
     class function New(Aowner:TComponent): TConsultaCliente;
   function Embed(Value:Tpanel):TConsultaCliente;
    { Public declarations }
  end;

var
  ConsultaCliente: TConsultaCliente;

implementation

{$R *.dfm}

procedure TConsultaCliente.btnBuscaClick(Sender: TObject);
begin
ConsultaCliente;
end;

procedure TConsultaCliente.BuscaExit(Sender: TObject);
begin
ConsultaCliente;
end;

procedure TConsultaCliente.ConsultaCliente;
begin
if trim(Busca.Text).IsEmpty then
   begin
   Qcliente.Close;
   Qcliente.Sql.Clear;
   Qcliente.Sql.Add('Select * From clientes');
   Qcliente.Open;
   end
   else
   begin
   Qcliente.Close;
   Qcliente.Sql.Clear;
   Qcliente.Sql.Add('Select * From clientes where razao like :PRazao');
   Qcliente.ParamByName('PRazao').AsString := '%' + (Busca.text)  + '%';
   Qcliente.Open;
   end;
end;

procedure TConsultaCliente.DBGrid1DblClick(Sender: TObject);
begin
 InserirCliente
end;

procedure TConsultaCliente.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
   VK_return : begin
   InserirCliente;
   end;
  end;
end;

function TConsultaCliente.Embed(Value: Tpanel): TConsultaCliente;
begin
 Result:=self;
 Self.AddObject(value);
end;

procedure TConsultaCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Qcliente.Close;
end;

procedure TConsultaCliente.FormShow(Sender: TObject);
begin
 Qcliente.open;
end;

procedure TConsultaCliente.InserirCliente;
begin
  try
  CadastroVenda.MVenda.FieldByName('CODCLI').AsInteger := Qcliente.FieldByName('CODCLI').AsInteger ;
  CadastroVenda.MVenda.FieldByName('codigo').AsInteger := Qcliente.FieldByName('codigo').AsInteger;
  CadastroVenda.MVenda.FieldByName('razao').AsString := Qcliente.FieldByName('razao').AsString;
  Self.RemoveObject;
    except
    CadastroVenda.MVenda.Cancel;
    raise;
  end;
end;

class function TConsultaCliente.New(Aowner: TComponent): TConsultaCliente;
begin
 Result := Self.Create(AOwner);
end;

end.
