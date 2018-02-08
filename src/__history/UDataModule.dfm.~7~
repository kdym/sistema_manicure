object DmManicure: TDmManicure
  OldCreateOrder = False
  Height = 335
  Width = 434
  object Connection: TFDConnection
    Params.Strings = (
      'Database=E:\ProjetosNoob\sistema_manicure\manicure.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object TbProducts: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Connection
    UpdateOptions.UpdateTableName = 'products'
    TableName = 'products'
    Left = 40
    Top = 96
    object TbProductsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object TbProductsdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 32767
    end
    object TbProductsquantidade: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object TbProductscodigo_barras: TStringField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'codigo_barras'
      Origin = 'codigo_barras'
      Size = 32767
    end
    object TbProductsvalor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
      Precision = 10
      Size = 2
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 144
    Top = 16
  end
end
