unit UValidator;

interface

function IsNumber(S: string): Boolean;
function IsValidCpf(CPF: String): Boolean;
function IsValidCep(CEP: String): Boolean;
function IsValidPhone(Phone: String): Boolean;
function UnmaskNumber(Number: String): String;
function ParseNumber(Number: String): Double;

implementation

uses
  System.RegularExpressions, System.SysUtils;

const
  CPF_REGEX_MASK = '\d{3}\.\d{3}\.\d{3}\-\d{2}';
  CEP_REGEX_MASK = '\d{5}\-\d{3}';
  PHONE_DDD_REGEX_MASK = '\(\d{2}\) \d{8}';
  PHONE_DDD_9_REGEX_MASK = '\(\d{2}\) \d{9}';

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

function IsValidCpf(CPF: String): Boolean;
begin
  Result := TRegEx.Match(CPF, CPF_REGEX_MASK).Success;
end;

function IsValidCep(CEP: String): Boolean;
begin
  Result := TRegEx.Match(CEP, CEP_REGEX_MASK).Success;
end;

function IsValidPhone(Phone: String): Boolean;
begin
  Result := (TRegEx.Match(Phone, PHONE_DDD_REGEX_MASK).Success) or
    (TRegEx.Match(Phone, PHONE_DDD_9_REGEX_MASK).Success);
end;

function UnmaskNumber(Number: String): String;
begin
  Result := StringReplace(Number, '.', '', [rfReplaceAll]);
end;

function ParseNumber(Number: String): Double;
var
  Buffer: String;
begin
  Buffer := StringReplace(Number, '.', '', [rfReplaceAll]);
  Buffer := StringReplace(Buffer, 'R$ ', '', [rfReplaceAll]);
  Buffer := StringReplace(Buffer, '-', '', [rfReplaceAll]);
  // Buffer := StringReplace(Buffer, ',', '.', [rfReplaceAll]);

  Result := StrToFloat(Buffer);
end;

end.
