object FrmExpireds: TFrmExpireds
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Vencidos'
  ClientHeight = 362
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 466
    Height = 346
    DataSource = DsExpireds
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Produto'
        Width = 341
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vencimento'
        Title.Caption = 'Vencimento'
        Width = 81
        Visible = True
      end>
  end
  object QryExpireds: TFDQuery
    Active = True
    Connection = DmManicure.Connection
    SQL.Strings = (
      
        'select p.*, julianday(vencimento) - julianday('#39'now'#39') days from p' +
        'roducts p'
      'where days < 0')
    Left = 48
    Top = 304
  end
  object DsExpireds: TDataSource
    DataSet = QryExpireds
    Left = 112
    Top = 304
  end
end
