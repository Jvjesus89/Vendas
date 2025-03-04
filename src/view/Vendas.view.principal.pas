unit Vendas.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vendas.view.page.CadastroVenda, Vendas.view.page.ConsultaVenda, DbPrincipal;

type
  TVenda = class(TForm)
    pnlMaster: TPanel;
    pnlOpcoes: TPanel;
    pnlCadastraVenda: TPanel;
    Shape1: TShape;
    btnCadastraVenda: TSpeedButton;
    pnlConsultaVenda: TPanel;
    Shape2: TShape;
    pnlConsulta: TPanel;
    edtconsultavenda: TEdit;
    Panel1: TPanel;
    Shape3: TShape;
    btnConsultarVendas: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnCadastraVendaClick(Sender: TObject);
    procedure btnConsultarVendasClick(Sender: TObject);
    procedure edtconsultavendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  Procedure  Responsive ;
  Procedure ConsultaVendaPorNumero;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Venda: TVenda;

implementation

{$R *.dfm}

procedure TVenda.btnCadastraVendaClick(Sender: TObject);
begin
   {begin
    TCadastroVenda.New(Self)
     .Embed(pnlMaster);
    end;
    }
   CadastroVenda.Venda.Close;
   CadastroVenda.Venda.sql.Clear;
   CadastroVenda.Venda.sql.Add('select * from vendas v join clientes c on c.codcli = v.codcli where 1=2');
   CadastroVenda.Venda.open;

   CadastroVenda.VendasItens.Close;
   CadastroVenda.VendasItens.sql.Clear;
   CadastroVenda.VendasItens.sql.Add('select * from vendasitens v join produtos p on v.codprod = p.codprod where 1=2');
   CadastroVenda.VendasItens.open;
   CadastroVenda.cadastrarOuEditar := 1;
   CadastroVenda.ShowModal;
end;

procedure TVenda.btnConsultarVendasClick(Sender: TObject);
begin
 TConsultaVendas.New(Self)
    .Embed(pnlMaster);
end;

procedure TVenda.ConsultaVendaPorNumero;
begin
   CadastroVenda.Venda.Close;
   CadastroVenda.Venda.sql.Clear;
   CadastroVenda.Venda.sql.Add('select * from vendas v join clientes c on c.codcli = v.codcli where numvenda = :PNumVenda');
   CadastroVenda.Venda.ParamByName('PNumVenda').AsInteger := StrToInt(edtconsultavenda.Text);
   CadastroVenda.Venda.open;

   CadastroVenda.VendasItens.Close;
   CadastroVenda.VendasItens.sql.Clear;
   CadastroVenda.VendasItens.sql.Add('select * from vendasitens v join produtos p on v.codprod = p.codprod where codvenda = :PcodVenda');
   CadastroVenda.VendasItens.ParamByName('PcodVenda').AsInteger := CadastroVenda.Venda.FieldByName('codvenda').AsInteger;
   CadastroVenda.VendasItens.open;
   begin
    //TCadastroVenda.New(Self)
      //.Embed(pnlMaster);
      if (CadastroVenda.Venda.recordCount > 1) or (CadastroVenda.Venda.recordCount = 0) then
       begin
        TConsultaVendas.New(Self)
        .Embed(pnlMaster);
       end else
       begin
       CadastroVenda.cadastrarOuEditar := 2;
       CadastroVenda.ShowModal;
       edtconsultavenda.Text := '';
       end;

    end;
end;

procedure TVenda.edtconsultavendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
   VK_return : begin
   ConsultaVendaPorNumero;
   end;
  end;
end;

procedure TVenda.FormResize(Sender: TObject);
begin
  Responsive;
end;

procedure TVenda.FormShow(Sender: TObject);
begin
  Responsive;
    try
    if not Db.DbPrincipal.Connected then
      Db.DbPrincipal.Open; // Abre a conex�o com o banco de dados, se ainda n�o estiver aberta
  except
    on E: Exception do
      ShowMessage('Erro ao conectar: ' + E.Message);
  end;
end;

procedure TVenda.Responsive;
begin
  pnlmaster.Padding.Left := Round((Self.Width - pnlmaster.Width) * 7);
  pnlmaster.Padding.Right := Round((Self.Width - pnlmaster.Width) * 7);
  pnlmaster.Padding.Top := Round((Self.Height - pnlmaster.Height) * 2);
  pnlmaster.Padding.Bottom := Round((Self.Height - pnlmaster.Height) * 2);
  pnlOpcoes.Align := alClient;
end;

end.
