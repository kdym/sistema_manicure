unit UParameters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmParameters = class(TForm)
    Label1: TLabel;
    EdStockWarning: TEdit;
    EStockWarning: TLabel;
    BtSave: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParameters: TFrmParameters;

implementation

{$R *.dfm}

uses UParametersHelper, UValidator;

procedure TFrmParameters.BtSaveClick(Sender: TObject);
var
  Error: boolean;
begin
  Error := false;

  EStockWarning.Visible := false;

  if Trim(EdStockWarning.Text) = '' then
  begin
    EStockWarning.Caption := 'Campo Obrigat�rio';
    EStockWarning.Visible := true;
    Error := true;
  end
  else
  begin
    if not UValidator.IsNumber(EdStockWarning.Text) then
    begin
      EStockWarning.Caption := 'N�mero inv�lido';
      EStockWarning.Visible := true;
      Error := true;
    end;
  end;

  if not Error then
  begin
    UParametersHelper.SetParameter(UParametersHelper.StockWarning,
      EdStockWarning.Text);

    Close;
  end;
end;

procedure TFrmParameters.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmParameters := nil;
end;

procedure TFrmParameters.FormCreate(Sender: TObject);
var
  StockWarning: String;
begin
  StockWarning := UParametersHelper.GetParameter
    (UParametersHelper.StockWarning);

  if StockWarning = '' then
  begin
    EdStockWarning.Text := IntToStr(UParametersHelper.DefaultStockWarning);
  end
  else
  begin
    EdStockWarning.Text := StockWarning;
  end;
end;

end.
