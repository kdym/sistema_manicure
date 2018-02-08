unit UExpireds;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TFrmExpireds = class(TForm)
    DBGrid1: TDBGrid;
    QryExpireds: TFDQuery;
    DsExpireds: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExpireds: TFrmExpireds;

implementation

{$R *.dfm}

uses UDataModule, UProducts;

procedure TFrmExpireds.DBGrid1DblClick(Sender: TObject);
begin
  if FrmProducts = nil then
  begin
    FrmProducts := TFrmProducts.Create(self);
    FrmProducts.Show;
  end;

  with FrmProducts.QryProducts do
  begin
    Close;
    ParamByName('search').Value := '%' + QryExpireds.FieldByName('descricao')
      .AsString + '%';
    Open;
  end;
end;

procedure TFrmExpireds.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmExpireds := nil;
end;

end.
