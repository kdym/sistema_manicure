unit UValidator;

interface

function IsNumber(S: string): Boolean;

implementation

function IsNumber(S: string): Boolean;
var
  P: PChar;
begin
  P := PChar(S);
  Result := False;
  while P^ <> #0 do
  begin
    if not(P^ in ['0' .. '9']) then
      Exit;
    Inc(P);
  end;
  Result := True;
end;

end.
