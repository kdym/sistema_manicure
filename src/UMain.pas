unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Produtos1: TMenuItem;
    Estoque1: TMenuItem;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    LbWarningEnd: TLabel;
    ImgWarningEnd: TImage;
    LbWarningStock: TLabel;
    ImgWarningStock: TImage;
    Image4: TImage;
    Label5: TLabel;
    LbProductsCount: TLabel;
    Image5: TImage;
    Image6: TImage;
    Configuraes1: TMenuItem;
    procedure Produtos1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure ImgWarningStockDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CalculateTotals;
    procedure FindWarnings;
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses UProducts, UStock, UDataModule, UParameters, UParametersHelper,
  UStockWarning;

procedure TFrmMain.CalculateTotals;
begin
  LbProductsCount.Caption := FormatFloat('#,##0',
    DmManicure.TbProducts.RecordCount);
end;

procedure TFrmMain.Configuraes1Click(Sender: TObject);
begin
  if FrmParameters = nil then
  begin
    FrmParameters := TFrmParameters.Create(self);
    FrmParameters.ShowModal;
  end;
end;

procedure TFrmMain.Estoque1Click(Sender: TObject);
begin
  if FrmStock = nil then
  begin
    FrmStock := TFrmStock.Create(self);
    FrmStock.ShowModal;
  end;
end;

procedure TFrmMain.FindWarnings;
var
  StockWarning, Buffer: string;
  TotalStockWarning: integer;
begin
  StockWarning := UParametersHelper.GetParameter
    (UParametersHelper.StockWarning);

  if StockWarning = '' then
  begin
    StockWarning := IntToStr(UParametersHelper.DefaultStockWarning);
  end;

  LbWarningStock.Visible := false;
  ImgWarningStock.Visible := false;

  with DmManicure.TbProducts do
  begin
    First;

    TotalStockWarning := 0;

    while not Eof do
    begin
      if FieldByName('quantidade').AsInteger <= StrToInt(StockWarning) then
      begin
        Inc(TotalStockWarning);
      end;

      Next;
    end;
  end;

  if TotalStockWarning > 0 then
  begin
    if TotalStockWarning = 1 then
    begin
      Buffer := 'produto';
    end
    else
    begin
      Buffer := 'produtos';
    end;

    LbWarningStock.Caption := Format('Voc� possui %s %s acabando no estoque',
      [FormatFloat('#,##0', TotalStockWarning), Buffer]);
    LbWarningStock.Visible := true;
    ImgWarningStock.Visible := true;
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  CalculateTotals;
  FindWarnings;
end;

procedure TFrmMain.ImgWarningStockDblClick(Sender: TObject);
begin
  if FrmStockWarning = nil then
  begin
    FrmStockWarning := TFrmStockWarning.Create(self);
    FrmStockWarning.ShowModal;
  end;
end;

procedure TFrmMain.Produtos1Click(Sender: TObject);
begin
  if FrmProducts = nil then
  begin
    FrmProducts := TFrmProducts.Create(self);
    FrmProducts.ShowModal;
  end;
end;

end.
