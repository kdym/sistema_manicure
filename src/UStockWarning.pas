unit UStockWarning;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TFrmStockWarning = class(TForm)
    GrdStockWarning: TDBGrid;
    QryStockWarning: TFDQuery;
    DsStockWarning: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GrdStockWarningDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStockWarning: TFrmStockWarning;

implementation

{$R *.dfm}

uses UDataModule, UParametersHelper, UStock;

procedure TFrmStockWarning.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmStockWarning := nil;
end;

procedure TFrmStockWarning.FormCreate(Sender: TObject);
var
  StockWarning: string;
begin
  StockWarning := UParametersHelper.GetParameter
    (UParametersHelper.StockWarning);

  if StockWarning = '' then
  begin
    StockWarning := IntToStr(UParametersHelper.DefaultStockWarning);
  end;

  with QryStockWarning do
  begin
    Close;
    ParamByName('stock_warning').Value := StockWarning;
    Open;
  end;
end;

procedure TFrmStockWarning.GrdStockWarningDblClick(Sender: TObject);
begin
  if FrmStock = nil then
  begin
    FrmStock := TFrmStock.Create(self);
    FrmStock.Show;
  end;

  with FrmStock.QryProducts do
  begin
    Close;

    SQL.Clear;
    SQL.Add('select * from products where id = ' +
      DsStockWarning.DataSet.FieldByName('id').AsString);

    Open;
  end;

  FrmStock.EdAddRemove.Enabled := true;
  FrmStock.BtSave.Enabled := true;
end;

end.
