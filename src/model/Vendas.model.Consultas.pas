unit Vendas.model.Consultas;

interface

uses Vendas.Utils, Vendas.view.page.ConsultaProduto;
type TConsultaClientes = class
  private
  Fcodigo : integer;
  Frazao :string;
  public
  property codigo: integer  read Fcodigo write Fcodigo;
  property razao: string  read Frazao write Frazao;

  procedure ConsultaPorCodigo;
  procedure ConsultaPorRazao;
  class function New: TConsultaClientes;
end;

type TConsultaProdutos = class
  private
  Fcodigo : integer;
  Fdescricao :string;
  public
  property codigo: integer  read Fcodigo write Fcodigo;
  property descricao: string  read Fdescricao write Fdescricao;

  procedure ConsultaProdutoPorCodigo;
  procedure ConsultaProdutoPorDescricao;
  class function New: TConsultaProdutos;
end;

type TconsultaNumeroVenda = class
  private

  public
  NumeroVenda : integer;
  procedure ConsultarNumeroVenda;
  class function New: TconsultaNumeroVenda;
end;

implementation

{ TConsultaCliente }

uses Vendas.view.page.CadastroVenda, Vendas.view.page.ConsultaCliente;


{ TConsultaCliente }


procedure TConsultaClientes.ConsultaPorCodigo;
begin
     begin
   CadastroVenda.QConsultaClienteCampos.Close;
   CadastroVenda.QConsultaClienteCampos.Sql.Clear;
   CadastroVenda.QConsultaClienteCampos.Sql.Add('Select * From clientes where codigo = :Pcodigo');
   CadastroVenda.QConsultaClienteCampos.ParamByName('Pcodigo').AsInteger := (Fcodigo)  ;
   CadastroVenda.QConsultaClienteCampos.Open;

    if (cadastroVenda.QConsultaClienteCampos.RecordCount > 1) or (cadastroVenda.QConsultaClienteCampos.RecordCount = 0) then
    begin
    TConsultaCliente.New(CadastroVenda)
    .Embed(CadastroVenda.pnlMaster);
    end
    else
      try
    CadastroVenda.MVenda.FieldByName('CODCLI').AsInteger := CadastroVenda.QConsultaClienteCampos.FieldByName('CODCLI').AsInteger ;
    CadastroVenda.MVenda.FieldByName('codigo').AsInteger := CadastroVenda.QConsultaClienteCampos.FieldByName('codigo').AsInteger;
    CadastroVenda.MVenda.FieldByName('razao').AsString := CadastroVenda.QConsultaClienteCampos.FieldByName('razao').AsString;
    except
    CadastroVenda.MVenda.Cancel;
    raise;
    end;
   end;
end;

procedure TConsultaClientes.ConsultaPorRazao;
begin
    begin
   CadastroVenda.QConsultaClienteCampos.Close;
   CadastroVenda.QConsultaClienteCampos.Sql.Clear;
   CadastroVenda.QConsultaClienteCampos.Sql.Add('Select * From clientes where razao = :PRazao');
   CadastroVenda.QConsultaClienteCampos.ParamByName('PRazao').AsString := (Frazao)  ;
   CadastroVenda.QConsultaClienteCampos.Open;

   if (cadastroVenda.QConsultaClienteCampos.RecordCount > 1) or (cadastroVenda.QConsultaClienteCampos.RecordCount = 0) then
    begin
    TConsultaCliente.New(CadastroVenda)
    .Embed(CadastroVenda.pnlMaster);
    end
    else
      try
      CadastroVenda.MVenda.FieldByName('CODCLI').AsInteger := CadastroVenda.QConsultaClienteCampos.FieldByName('CODCLI').AsInteger ;
      CadastroVenda.MVenda.FieldByName('codigo').AsInteger := CadastroVenda.QConsultaClienteCampos.FieldByName('codigo').AsInteger;
      CadastroVenda.MVenda.FieldByName('razao').AsString := CadastroVenda.QConsultaClienteCampos.FieldByName('razao').AsString;
      except
      CadastroVenda.MVenda.Cancel;
       raise;
      end;
   end;
end;

class function TConsultaClientes.New: TConsultaClientes;
begin
   Result := TConsultaClientes.Create;
end;

{ TconsultaNumeroVenda }

procedure TconsultaNumeroVenda.ConsultarNumeroVenda;
begin
CadastroVenda.QConsultas.close;
CadastroVenda.QConsultas.sql.clear;
CadastroVenda.QConsultas.sql.add('select GEN_ID(GEN_VENDAS_NUMVENDA,1) as numerovenda from RDB$DATABASE');
CadastroVenda.QConsultas.open;
NumeroVenda :=  CadastroVenda.QConsultas.FieldByName('numerovenda').AsInteger;

end;

class function TconsultaNumeroVenda.New: TconsultaNumeroVenda;
begin
  Result := TconsultaNumeroVenda.Create;
end;

{ TConsultaProdutos }

procedure TConsultaProdutos.ConsultaProdutoPorCodigo;
begin
     begin
   CadastroVenda.QConsultaProdutoCampos.Close;
   CadastroVenda.QConsultaProdutoCampos.Sql.Clear;
   CadastroVenda.QConsultaProdutoCampos.Sql.Add('Select * From produtos where codigo = :Pcodigo');
   CadastroVenda.QConsultaProdutoCampos.ParamByName('Pcodigo').AsInteger := (Fcodigo)  ;
   CadastroVenda.QConsultaProdutoCampos.Open;

    if (cadastroVenda.QConsultaProdutoCampos.RecordCount > 1) or (cadastroVenda.QConsultaProdutoCampos.RecordCount = 0) then
    begin
    TConsultaProduto.New(CadastroVenda)
    .Embed(CadastroVenda.pnlMaster);
    end
    else
      try
    CadastroVenda.Mvendasitens.FieldByName('CODPROD').AsInteger := CadastroVenda.QConsultaProdutoCampos.FieldByName('CODPROD').AsInteger ;
    CadastroVenda.Mvendasitens.FieldByName('codigo').AsInteger := CadastroVenda.QConsultaProdutoCampos.FieldByName('codigo').AsInteger;
    CadastroVenda.Mvendasitens.FieldByName('DESCRICAO').AsString := CadastroVenda.QConsultaProdutoCampos.FieldByName('DESCRICAO').AsString;
    CadastroVenda.Mvendasitens.FieldByName('QTDE').AsFloat := 1;
    CadastroVenda.Mvendasitens.FieldByName('VLUNIT').AsFloat := CadastroVenda.QConsultaProdutoCampos.FieldByName('VLUNIT').ASFloat;
    except
    CadastroVenda.Mvendasitens.Cancel;
    raise;
    end;
   end;
end;

procedure TConsultaProdutos.ConsultaProdutoPorDescricao;
begin

end;

class function TConsultaProdutos.New: TConsultaProdutos;
begin
  Result := TConsultaProdutos.Create;
end;


end.
