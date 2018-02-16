unit UProducts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls, Vcl.DBCtrls;

type
  TFrmProducts = class(TForm)
    BtNew: TBitBtn;
    BtEdit: TBitBtn;
    BtSave: TBitBtn;
    BtCancel: TBitBtn;
    BtDelete: TBitBtn;
    EdSearch: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GrdProducts: TDBGrid;
    EDescricao: TLabel;
    EValor: TLabel;
    ECodigoBarras: TLabel;
    DsProducts: TDataSource;
    EdDescricao: TDBEdit;
    EdValor: TJvDBCalcEdit;
    EdCodigoBarras: TDBEdit;
    Label4: TLabel;
    EStartQuantity: TLabel;
    EdStartQuantity: TEdit;
    QryProducts: TFDQuery;
    QryProductsid: TFDAutoIncField;
    QryProductsdescricao: TStringField;
    QryProductsquantidade: TIntegerField;
    QryProductscodigo_barras: TStringField;
    QryProductsvalor: TBCDField;
    QryProductsvencimento: TDateField;
    Label5: TLabel;
    EVencimento: TLabel;
    EdVencimento: TJvDBDateEdit;
    procedure BtNewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtSaveClick(Sender: TObject);
    procedure BtEditClick(Sender: TObject);
    procedure GrdProductsCellClick(Column: TColumn);
    procedure BtCancelClick(Sender: TObject);
    procedure BtDeleteClick(Sender: TObject);
    procedure EdSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure DisableButtons;
    procedure EnableButtons;
    procedure ClearFields;
    procedure EnableFields;
    procedure DisableFields;
  public
    { Public declarations }
  end;

var
  FrmProducts: TFrmProducts;
  IsInsert: boolean;

implementation

{$R *.dfm}

uses UDataModule, UValidator, UMain, UEndWarning, UExpireds;

{ TFrmProducts }

procedure TFrmProducts.BtCancelClick(Sender: TObject);
begin
  DsProducts.DataSet.Cancel;

  DisableFields;
  EnableButtons;
  ClearFields;
end;

procedure TFrmProducts.BtDeleteClick(Sender: TObject);
begin
  if not DsProducts.DataSet.IsEmpty then
  begin
    if MessageDlg('Tem certeza que deseja excluir?', mtConfirmation,
      [mbOK, mbCancel], 0) = mrOk then
    begin
      DsProducts.DataSet.Delete;

      FrmMain.CalculateTotals;
    end;
  end;
end;

procedure TFrmProducts.BtEditClick(Sender: TObject);
begin
  DisableButtons;
  ClearFields;
  EnableFields;

  EdStartQuantity.Enabled := false;

  EdDescricao.SetFocus;

  DsProducts.DataSet.Edit;
end;

procedure TFrmProducts.BtNewClick(Sender: TObject);
begin
  DisableButtons;
  ClearFields;
  EnableFields;

  EdStartQuantity.Enabled := true;

  EdDescricao.SetFocus;

  DsProducts.DataSet.Append;
end;

procedure TFrmProducts.BtSaveClick(Sender: TObject);
var
  Error: boolean;
begin
  Error := false;

  EDescricao.Visible := false;
  EValor.Visible := false;
  ECodigoBarras.Visible := false;
  EStartQuantity.Visible := false;
  EVencimento.Visible := false;

  if Trim(EdDescricao.Text) = '' then
  begin
    EDescricao.Caption := 'Campo Obrigatório';
    EDescricao.Visible := true;
    Error := true;
  end;

  if Trim(EdValor.Text) = '' then
  begin
    EValor.Caption := 'Campo Obrigatório';
    EValor.Visible := true;
    Error := true;
  end;

  if Trim(EdCodigoBarras.Text) = '' then
  begin
    ECodigoBarras.Caption := 'Campo Obrigatório';
    ECodigoBarras.Visible := true;
    Error := true;
  end
  else
  begin
    if not UValidator.IsNumber(EdCodigoBarras.Text) then
    begin
      ECodigoBarras.Caption := 'Somente Números';
      ECodigoBarras.Visible := true;
      Error := true;
    end;
  end;

  if DsProducts.DataSet.State = dsInsert then
  begin
    if Trim(EdStartQuantity.Text) = '' then
    begin
      EStartQuantity.Caption := 'Campo Obrigatório';
      EStartQuantity.Visible := true;
      Error := true;
    end
    else
    begin
      if not UValidator.IsNumber(EdStartQuantity.Text) then
      begin
        EStartQuantity.Caption := 'Somente Números';
        EStartQuantity.Visible := true;
        Error := true;
      end;
    end;
  end;

  if not Error then
  begin
    with DsProducts.DataSet do
    begin
      if State = dsInsert then
      begin
        FieldByName('quantidade').Value := EdStartQuantity.Text;
      end;

      Post;
    end;

    DisableFields;
    EnableButtons;
    ClearFields;

    FrmMain.CalculateTotals;
    FrmMain.FindWarnings;

    if FrmEndWarning <> nil then
    begin
      FrmEndWarning.QryEndWarning.Refresh;
    end;

    if FrmExpireds <> nil then
    begin
      FrmExpireds.QryExpireds.Refresh;
    end;
  end;
end;

procedure TFrmProducts.ClearFields;
begin
  { EdDescricao.Text := '';
    EdValor.Text := '';
    EdCodigoBarras.Text := ''; }
  EdStartQuantity.Text := '';
end;

procedure TFrmProducts.DisableButtons;
begin
  BtNew.Enabled := false;
  BtEdit.Enabled := false;
  BtSave.Enabled := true;
  BtCancel.Enabled := true;
  BtDelete.Enabled := false;
end;

procedure TFrmProducts.DisableFields;
begin
  EdDescricao.Enabled := false;
  EdValor.Enabled := false;
  EdCodigoBarras.Enabled := false;
  EdStartQuantity.Enabled := false;
  EdVencimento.Enabled := false;

  EdSearch.Enabled := true;
end;

procedure TFrmProducts.EdSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with QryProducts do
  begin
    Close;
    ParamByName('search').Value := '%' + EdSearch.Text + '%';
    Open;
  end;
end;

procedure TFrmProducts.EnableButtons;
begin
  BtNew.Enabled := true;
  BtEdit.Enabled := true;
  BtSave.Enabled := false;
  BtCancel.Enabled := false;
  BtDelete.Enabled := true;
end;

procedure TFrmProducts.EnableFields;
begin
  EdDescricao.Enabled := true;
  EdValor.Enabled := true;
  EdCodigoBarras.Enabled := true;
  EdVencimento.Enabled := true;

  EdSearch.Enabled := false;
end;

procedure TFrmProducts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmProducts := nil;
end;

procedure TFrmProducts.GrdProductsCellClick(Column: TColumn);
begin
  if not DsProducts.DataSet.IsEmpty then
  begin
    BtEdit.Enabled := true;
    BtDelete.Enabled := true;
  end;
end;

end.
