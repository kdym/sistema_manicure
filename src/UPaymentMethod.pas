unit UPaymentMethod;

interface

uses
  System.Generics.Collections;

type
  TPaymentMethod = class
  const
    MONEY = 'Dinheiro';
    DEBIT_CARD = 'Cart�o de D�bito';
    CREDIT_CARD = 'Cart�o de Cr�dito';
    CHECK = 'Cheque';
  public
    class function GetMethods: TList<String>;
  end;

implementation

{ TPaymentMethod }

{ TPaymentMethod }

class function TPaymentMethod.GetMethods: TList<String>;
begin
  Result := TList<String>.Create;

  Result.Add(MONEY);
  Result.Add(DEBIT_CARD);
  Result.Add(CREDIT_CARD);
  Result.Add(CHECK);
end;

end.
