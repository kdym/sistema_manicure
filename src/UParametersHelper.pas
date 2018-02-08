unit UParametersHelper;

interface

function GetParameter(ParameterName: String): String;
procedure SetParameter(ParameterName: String; Value: String);

const
  DefaultStockWarning = 5;
  StockWarning = 'stock_warning';

implementation

uses UDataModule;

function GetParameter(ParameterName: String): String;
begin
  with DmManicure.TbParameters do
  begin
    if not Locate('nome', ParameterName) then
    begin
      Result := '';
    end
    else
    begin
      Result := FieldByName('valor').AsString;
    end;
  end;
end;

procedure SetParameter(ParameterName: String; Value: String);
begin
  with DmManicure.TbParameters do
  begin
    if not Locate('nome', ParameterName) then
    begin
      Append;
    end
    else
    begin
      Edit;
    end;

    FieldByName('nome').Value := ParameterName;
    FieldByName('valor').Value := Value;

    Post;
  end;
end;

end.
