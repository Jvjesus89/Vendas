unit Vendas.view.page.ConsultaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vendas.Utils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vendas.view.page.CadastroVenda;

type
  TConsultaVendas = class(TForm)
    pnlMaster: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    DtFinal: TDateTimePicker;
    DtInicial: TDateTimePicker;
    Panel1: TPanel;
    edtCodigocliente: TEdit;
    Panel2: TPanel;
    edtCliente: TEdit;
    DBGrid1: TDBGrid;
    QVendas: TFDQuery;
    DsQVendas: TDataSource;
    QVendasCODVENDA: TIntegerField;
    QVendasDTVENDA: TDateField;
    QVendasCODCLI: TIntegerField;
    QVendasTOTALVENDA: TFMTBCDField;
    QVendasNUMVENDA: TIntegerField;
    QVendasCODCLI_1: TIntegerField;
    QVendasCODIGO: TIntegerField;
    QVendasRAZAO: TStringField;
    QVendasFISICA_JURIDICA: TStringField;
    QVendasCPF_CNPJ: TStringField;
    QVendasCODEND: TIntegerField;
    QVendasTELEFONE: TStringField;
    Panel4: TPanel;
    edtnumvenda: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtnumvendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
   procedure ConsultasVendas;
    { Private declarations }
  public
  class function New(Aowner:TComponent): TConsultaVendas;
   function Embed(Value:Tpanel):TConsultaVendas;
   procedure consultaVenda;
    { Public declarations }
  end;

var
  ConsultaVendas: TConsultaVendas;

implementation

{$R *.dfm}

{ TConsultaVendas }

procedure TConsultaVendas.ConsultasVendas;
begin
    if (dtInicial.Date <> 0) and (DtFinal.Date <> 0) then
    begin
      QVendas.close ;
      QVendas.sql.Clear;
      QVendas.sql.Add('Select * from vendas v join clientes C on C.codcli = V.codcli ');
      QVendas.sql.Add('Where v.dtvenda between (:Pdtinicial) and (:Pdtfinal) ');
      QVendas.ParamByName('Pdtinicial').AsDate :=  DtInicial.Date;
      QVendas.ParamByName('Pdtfinal').AsDate :=  DtFinal.Date;
      QVendas.open;
    end;

    if  (edtnumvenda.text <> '') then
    begin
      QVendas.close ;
      QVendas.sql.Clear;
      QVendas.sql.Add('Select * from vendas v join clientes C on C.codcli = V.codcli ');
      QVendas.sql.Add('Where v.numvenda = (:Pnumvenda) and v.dtvenda between (:Pdtinicial) and (:Pdtfinal) ');
      QVendas.ParamByName('Pdtinicial').AsDate :=  DtInicial.Date;
      QVendas.ParamByName('Pdtfinal').AsDate :=  DtFinal.Date;
      QVendas.ParamByName('Pnumvenda').AsInteger :=  StrToInt(edtnumvenda.text);
      QVendas.open;
    end;

    if  (edtCliente.text <> '') then
    begin
      QVendas.close ;
      QVendas.sql.Clear;
      QVendas.sql.Add('Select * from vendas v join clientes C on C.codcli = V.codcli ');
      QVendas.sql.Add('Where c.razao like (:Prazao) and v.dtvenda between (:Pdtinicial) and (:Pdtfinal) ');
      QVendas.ParamByName('Pdtinicial').AsDate :=  DtInicial.Date;
      QVendas.ParamByName('Pdtfinal').AsDate :=  DtFinal.Date;
      QVendas.ParamByName('Prazao').AsString :=  '%'+(edtCliente.text)+'%';
      QVendas.open;
    end;

    if  (edtCodigocliente.text <> '') then
    begin
      QVendas.close ;
      QVendas.sql.Clear;
      QVendas.sql.Add('Select * from vendas v join clientes C on C.codcli = V.codcli ');
      QVendas.sql.Add('Where c.codigo like (:PCodigo) and v.dtvenda between (:Pdtinicial) and (:Pdtfinal) ');
      QVendas.ParamByName('Pdtinicial').AsDate :=  DtInicial.Date;
      QVendas.ParamByName('Pdtfinal').AsDate :=  DtFinal.Date;
      QVendas.ParamByName('Pcodigo').AsInteger :=  StrToInt(edtCodigocliente.text);
      QVendas.open;
    end;
end;

procedure TConsultaVendas.consultaVenda;
begin
   CadastroVenda.Venda.Close;
   CadastroVenda.Venda.sql.Clear;
   CadastroVenda.Venda.sql.Add('select * from vendas v join clientes c on c.codcli = v.codcli where codvenda = :PcodVenda');
   CadastroVenda.Venda.ParamByName('PcodVenda').AsInteger := QVendas.FieldByName('codvenda').AsInteger;
   CadastroVenda.Venda.open;

   CadastroVenda.VendasItens.Close;
   CadastroVenda.VendasItens.sql.Clear;
   CadastroVenda.VendasItens.sql.Add('select * from vendasitens v join produtos p on v.codprod = p.codprod where codvenda = :PcodVenda');
   CadastroVenda.VendasItens.ParamByName('PcodVenda').AsInteger := QVendas.FieldByName('codvenda').AsInteger;
   CadastroVenda.VendasItens.open;
   begin
    //TCadastroVenda.New(Self)
      //.Embed(pnlMaster);
   CadastroVenda.cadastrarOuEditar := 2;
   CadastroVenda.ShowModal;

    end;
end;

procedure TConsultaVendas.DBGrid1DblClick(Sender: TObject);
begin
  consultaVenda;
end;

procedure TConsultaVendas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
   VK_return : begin
   consultaVenda;
   end;
  end;
end;

procedure TConsultaVendas.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
   VK_return : begin
   ConsultasVendas;
   end;
  end;
end;

procedure TConsultaVendas.edtCodigoclienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
case key of
   VK_return : begin
   ConsultasVendas;
   end;
  end;
end;

procedure TConsultaVendas.edtnumvendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
   VK_return : begin
   ConsultasVendas;
   end;
  end;
end;

function TConsultaVendas.Embed(Value: Tpanel): TConsultaVendas;
begin
  Result:=self;
  Self.AddObject(value);
end;

procedure TConsultaVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Self.RemoveObject;
end;

procedure TConsultaVendas.FormShow(Sender: TObject);
begin
    dtinicial.Date := now - 30;
    dtfinal.Date := now;
end;

class function TConsultaVendas.New(Aowner: TComponent): TConsultaVendas;
begin
  Result := Self.Create(AOwner);
end;

procedure TConsultaVendas.SpeedButton1Click(Sender: TObject);
begin
  ConsultasVendas
end;

end.
