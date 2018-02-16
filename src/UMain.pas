unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Produtos1: TMenuItem;
    Estoque1: TMenuItem;
    Image1: TImage;
    Label1: TLabel;
    LbCustomersCount: TLabel;
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
    LbWarningExpired: TLabel;
    ImgWarningExpired: TImage;
    Clientes1: TMenuItem;
    QryCustomersCount: TFDQuery;
    QryCustomersCountcount: TLargeintField;
    QryProductsCount: TFDQuery;
    QryProductsCountcount: TLargeintField;
    procedure Produtos1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure ImgWarningStockDblClick(Sender: TObject);
    procedure ImgWarningEndDblClick(Sender: TObject);
    procedure ImgWarningExpiredDblClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
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
  UStockWarning, DateUtils, UEndWarning, UExpireds, UCustomers;

procedure TFrmMain.CalculateTotals;
begin
  QryCustomersCount.Refresh;
  QryProductsCount.Refresh;

  LbProductsCount.Caption := FormatFloat('#,##0',
    QryProductsCountcount.AsInteger);
  LbCustomersCount.Caption := FormatFloat('#,##0',
    QryCustomersCountcount.AsInteger);
end;

procedure TFrmMain.Clientes1Click(Sender: TObject);
begin
  if FrmCustomers = nil then
  begin
    FrmCustomers := TFrmCustomers.Create(self);
    FrmCustomers.ShowModal;
  end;
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
  StockWarning, EndWarning, Buffer: string;
  TotalStockWarning, TotalEndWarning, TotalExpired, DaysEnd: integer;
begin
  StockWarning := UParametersHelper.GetParameter
    (UParametersHelper.StockWarning);

  if StockWarning = '' then
  begin
    StockWarning := IntToStr(UParametersHelper.DefaultStockWarning);
  end;

  EndWarning := UParametersHelper.GetParameter(UParametersHelper.EndWarning);

  if EndWarning = '' then
  begin
    EndWarning := IntToStr(UParametersHelper.DefaultEndWarning);
  end;

  LbWarningStock.Visible := false;
  LbWarningEnd.Visible := false;
  ImgWarningStock.Visible := false;
  ImgWarningEnd.Visible := false;
  LbWarningExpired.Visible := false;
  ImgWarningExpired.Visible := false;

  with DmManicure.TbProducts do
  begin
    First;

    TotalStockWarning := 0;
    TotalEndWarning := 0;
    TotalExpired := 0;

    while not Eof do
    begin
      if FieldByName('quantidade').AsInteger <= StrToInt(StockWarning) then
      begin
        Inc(TotalStockWarning);
      end;

      if FieldByName('vencimento').Value <> Null then
      begin
        if FieldByName('vencimento').AsDateTime < Now then
        begin
          Inc(TotalExpired);
        end
        else
        begin
          DaysEnd := DaysBetween(FieldByName('vencimento').AsDateTime, Now);

          if DaysEnd <= StrToInt(EndWarning) then
          begin
            Inc(TotalEndWarning);
          end;
        end;
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

  if TotalEndWarning > 0 then
  begin
    if TotalEndWarning = 1 then
    begin
      Buffer := 'produto pr�ximo';
    end
    else
    begin
      Buffer := 'produtos pr�ximos';
    end;

    LbWarningEnd.Caption := Format('Voc� possui %s %s do vencimento',
      [FormatFloat('#,##0', TotalEndWarning), Buffer]);
    LbWarningEnd.Visible := true;
    ImgWarningEnd.Visible := true;
  end;

  if TotalExpired > 0 then
  begin
    if TotalExpired = 1 then
    begin
      Buffer := 'produto vencido';
    end
    else
    begin
      Buffer := 'produtos vencidos';
    end;

    LbWarningExpired.Caption := Format('Voc� possui %s %s',
      [FormatFloat('#,##0', TotalExpired), Buffer]);
    LbWarningExpired.Visible := true;
    ImgWarningExpired.Visible := true;
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  with DmManicure.Connection do
  begin
    Params.Clear;
    Params.Add('DriverID=SQLite');
    Params.Add('LockingMode=lmNormal');
    Params.Add('Database=' + ExtractFilePath(ParamStr(0)) + 'manicure.db');

    Connected := true;
  end;

  DmManicure.TbParameters.Active := true;
  DmManicure.TbProducts.Active := true;

  QryCustomersCount.Active := true;
  QryProductsCount.Active := true;

  CalculateTotals;
  FindWarnings;
end;

procedure TFrmMain.ImgWarningEndDblClick(Sender: TObject);
begin
  if FrmEndWarning = nil then
  begin
    FrmEndWarning := TFrmEndWarning.Create(self);
    FrmEndWarning.ShowModal;
  end;
end;

procedure TFrmMain.ImgWarningExpiredDblClick(Sender: TObject);
begin
  if FrmExpireds = nil then
  begin
    FrmExpireds := TFrmExpireds.Create(self);
    FrmExpireds.ShowModal;
  end;
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
