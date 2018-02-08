unit UEndWarning;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TFrmEndWarning = class(TForm)
    DBGrid1: TDBGrid;
    QryEndWarning: TFDQuery;
    QryEndWarningid: TFDAutoIncField;
    QryEndWarningdescricao: TStringField;
    QryEndWarningquantidade: TIntegerField;
    QryEndWarningcodigo_barras: TStringField;
    QryEndWarningvalor: TBCDField;
    QryEndWarningvencimento: TDateField;
    QryEndWarningdays: TWideStringField;
    DsEndWarning: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEndWarning: TFrmEndWarning;

implementation

{$R *.dfm}

uses UDataModule, UParametersHelper, UProducts;

procedure TFrmEndWarning.DBGrid1DblClick(Sender: TObject);
begin
  if FrmProducts = nil then
  begin
    FrmProducts := TFrmProducts.Create(self);
    FrmProducts.Show;
  end;

  with FrmProducts.QryProducts do
  begin
    Close;
    ParamByName('search').Value := '%' + QryEndWarningdescricao.AsString + '%';
    Open;
  end;
end;

procedure TFrmEndWarning.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmEndWarning := nil;
end;

procedure TFrmEndWarning.FormCreate(Sender: TObject);
var
  EndWarning: String;
begin
  EndWarning := UParametersHelper.GetParameter(UParametersHelper.EndWarning);

  if EndWarning = '' then
  begin
    EndWarning := IntToStr(UParametersHelper.DefaultEndWarning);
  end;

  with QryEndWarning do
  begin
    Close;
    ParamByName('end_warning').Value := EndWarning;
    Open;
  end;
end;

end.
