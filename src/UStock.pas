unit UStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, JvExMask, JvSpin,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TFrmStock = class(TForm)
    GrdProducts: TDBGrid;
    Label1: TLabel;
    EdSearchDescricao: TEdit;
    Label2: TLabel;
    BtSearch: TBitBtn;
    EdSearchCodigoBarras: TEdit;
    EdAddRemove: TJvSpinEdit;
    Label3: TLabel;
    BtSave: TBitBtn;
    QryProducts: TFDQuery;
    DsProducts: TDataSource;
    QryProductsid: TFDAutoIncField;
    QryProductsdescricao: TStringField;
    QryProductsquantidade: TIntegerField;
    QryProductscodigo_barras: TStringField;
    QryProductsvalor: TBCDField;
    procedure BtSearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GrdProductsCellClick(Column: TColumn);
    procedure BtSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStock: TFrmStock;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFrmStock.BtSaveClick(Sender: TObject);
begin
  with DsProducts.DataSet do
  begin
    Edit;

    FieldByName('quantidade').Value :=
      StrToInt(FieldByName('quantidade').AsString) + StrToInt(EdAddRemove.Text);

    if FieldByName('quantidade').Value < 0 then
    begin
      FieldByName('quantidade').Value := 0;
    end;

    Post;
  end;
end;

procedure TFrmStock.BtSearchClick(Sender: TObject);
begin
  with QryProducts do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from products');

    if Trim(EdSearchCodigoBarras.Text) <> '' then
    begin
      SQL.Add(' where codigo_barras = ' + QuotedStr(EdSearchCodigoBarras.Text));
    end
    else
    begin
      SQL.Add(' where descricao like ' +
        QuotedStr('%' + EdSearchDescricao.Text + '%'));
    end;

    SQL.Add(' order by descricao');
    Open;
  end;
end;

procedure TFrmStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmStock := nil;
end;

procedure TFrmStock.GrdProductsCellClick(Column: TColumn);
begin
  if not DsProducts.DataSet.IsEmpty then
  begin
    EdAddRemove.Enabled := true;
    BtSave.Enabled := true;
  end;
end;

end.
