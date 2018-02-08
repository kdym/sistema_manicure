program SimoneManicure;

uses
  Vcl.Forms,
  UMain in 'src\UMain.pas' {FrmMain},
  UProducts in 'src\UProducts.pas' {FrmProducts},
  UDataModule in 'src\UDataModule.pas' {DmManicure: TDataModule},
  UValidator in 'src\UValidator.pas',
  UStock in 'src\UStock.pas' {FrmStock},
  UParameters in 'src\UParameters.pas' {FrmParameters},
  UParametersHelper in 'src\UParametersHelper.pas',
  UStockWarning in 'src\UStockWarning.pas' {FrmStockWarning};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmManicure, DmManicure);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
