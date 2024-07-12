unit Vendas.model.CalculaCampos;

interface
type
  TCalculaTotalVendido = class
  private
    valortotal : real;
    Fqtde : real;
    Fvalorunit : currency;
    Fdesconto : currency;
    function GetValortotal: Currency;
  public
    property qtde: real  read Fqtde write Fqtde;
    property valorunit: currency  read Fvalorunit write Fvalorunit;
    property desconto: currency  read Fdesconto write Fdesconto;
    property vltotal: Currency read GetValortotal;
    class function New: TCalculaTotalVendido;
  end;

implementation

{ CalculaTotalVendido }



{ CalculaTotalVendido }



function TCalculaTotalVendido.GetValortotal: Currency;
begin
  result :=   ((Fqtde * Fvalorunit) - Fdesconto)
end;

class function TCalculaTotalVendido.New: TCalculaTotalVendido;
begin
   Result := TCalculaTotalVendido.Create;
end;

end.
