unit Vendas.Utils;

interface
uses
    System.Classes,
    Vcl.ExtCtrls,
    Vcl.Forms,
    Vcl.Controls;

type
  TFormHelper = class helper for TForm
  public
  procedure RemoveObject;
  procedure AddObject(Value: Tpanel);
  end;


implementation

{ TFormHelper }

procedure TFormHelper.AddObject(Value: Tpanel);
begin
   //Self.ModalResult := mrOk;
   //Self.parent := Value;
   Self.Show;
end;

procedure TFormHelper.RemoveObject;
begin
  {Self.ModalResult := mrNone;
  Self.Parent := nil; }
  Self.Close;

end;

end.
