unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI, FireDAC.Comp.Client;

type
  TDmManicure = class(TDataModule)
    Connection: TFDConnection;
    TbProducts: TFDTable;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    TbProductsid: TFDAutoIncField;
    TbProductsdescricao: TStringField;
    TbProductsquantidade: TIntegerField;
    TbProductscodigo_barras: TStringField;
    TbProductsvalor: TBCDField;
    TbParameters: TFDTable;
    TbParametersnome: TStringField;
    TbParametersvalor: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmManicure: TDmManicure;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
