object FrmStockWarning: TFrmStockWarning
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Aviso de Estoque'
  ClientHeight = 289
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GrdStockWarning: TDBGrid
    Left = 8
    Top = 8
    Width = 449
    Height = 273
    DataSource = DsStockWarning
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = GrdStockWarningDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Produto'
        Width = 334
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Quantidade'
        Width = 83
        Visible = True
      end>
  end
  object QryStockWarning: TFDQuery
    Active = True
    Connection = DmManicure.Connection
    SQL.Strings = (
      'select * from products where quantidade <= :stock_warning')
    Left = 40
    Top = 224
    ParamData = <
      item
        Name = 'STOCK_WARNING'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DsStockWarning: TDataSource
    DataSet = QryStockWarning
    Left = 128
    Top = 224
  end
end
