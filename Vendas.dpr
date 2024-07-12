program Vendas;

uses
  Vcl.Forms,
  Vendas.view.principal in 'src\view\Vendas.view.principal.pas' {Venda},
  Vendas.view.page.CadastroVenda in 'src\view\Vendas.view.page.CadastroVenda.pas' {CadastroVenda},
  Vendas.Utils in 'src\utils\Vendas.Utils.pas',
  Vcl.Themes,
  Vcl.Styles,
  Vendas.view.page.ConsultaVenda in 'src\view\Vendas.view.page.ConsultaVenda.pas' {ConsultaVendas},
  DbPrincipal in 'src\db\DbPrincipal.pas' {Db: TDataModule},
  Vendas.view.page.ConsultaCliente in 'src\view\Vendas.view.page.ConsultaCliente.pas' {ConsultaCliente},
  Vendas.view.page.ConsultaProduto in 'src\view\Vendas.view.page.ConsultaProduto.pas' {ConsultaProduto},
  Vendas.model.CalculaCampos in 'src\model\Vendas.model.CalculaCampos.pas',
  Vendas.model.Consultas in 'src\model\Vendas.model.Consultas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TVenda, Venda);
  Application.CreateForm(TDb, Db);
  Application.CreateForm(TCadastroVenda, CadastroVenda);
  Application.Run;
end.
