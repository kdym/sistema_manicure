object FrmNewSale: TFrmNewSale
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Nova Venda'
  ClientHeight = 439
  ClientWidth = 1197
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 39
    Height = 13
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 207
    Width = 51
    Height = 13
    Caption = 'Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 412
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object EProducts: TLabel
    Left = 70
    Top = 207
    Width = 288
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'EProducts'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 888
    Top = 8
    Width = 121
    Height = 13
    Caption = 'Forma de Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbTotal: TLabel
    Left = 794
    Top = 406
    Width = 82
    Height = 29
    Alignment = taRightJustify
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 888
    Top = 28
    Width = 92
    Height = 13
    Caption = 'Tipo de Pagamento'
  end
  object Label8: TLabel
    Left = 888
    Top = 74
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label9: TLabel
    Left = 1044
    Top = 74
    Width = 40
    Height = 13
    Caption = 'Parcelas'
  end
  object Label4: TLabel
    Left = 364
    Top = 19
    Width = 129
    Height = 29
    Alignment = taRightJustify
    Caption = 'C'#243'd. Venda:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LbSaleId: TLabel
    Left = 499
    Top = 19
    Width = 78
    Height = 29
    Alignment = taRightJustify
    Caption = '999999'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EPaymentMethods: TLabel
    Left = 992
    Top = 28
    Width = 196
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'EPaymentMethods'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object EPaymentValue: TLabel
    Left = 918
    Top = 74
    Width = 120
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'EPaymentMethods'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object EPlots: TLabel
    Left = 1090
    Top = 74
    Width = 99
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'EPaymentMethods'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LbPaymentTotal: TLabel
    Left = 1147
    Top = 308
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 889
    Top = 308
    Width = 60
    Height = 13
    Caption = 'Total Pago'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 889
    Top = 262
    Width = 45
    Height = 13
    Caption = 'Desconto'
  end
  object Label11: TLabel
    Left = 889
    Top = 346
    Width = 53
    Height = 13
    Caption = 'Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbDiscount: TLabel
    Left = 1147
    Top = 343
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 889
    Top = 365
    Width = 75
    Height = 19
    Caption = 'Valor Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LbFinalValue: TLabel
    Left = 1133
    Top = 365
    Width = 56
    Height = 19
    Alignment = taRightJustify
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 889
    Top = 327
    Width = 32
    Height = 13
    Caption = 'Troco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbChange: TLabel
    Left = 1147
    Top = 327
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdSearchCustomer: TEdit
    Left = 8
    Top = 27
    Width = 350
    Height = 21
    TabOrder = 0
    TextHint = 'Buscar por Nome...'
    OnKeyUp = EdSearchCustomerKeyUp
  end
  object GrdCustomers: TDBGrid
    Left = 8
    Top = 54
    Width = 350
    Height = 147
    DataSource = DsCustomers
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 306
        Visible = True
      end>
  end
  object EdSearchBarcode: TEdit
    Left = 8
    Top = 226
    Width = 169
    Height = 21
    TabOrder = 2
    TextHint = 'C'#243'digo de Barras...'
    OnEnter = EdSearchBarcodeEnter
    OnExit = EdSearchBarcodeExit
    OnKeyPress = EdSearchBarcodeKeyPress
  end
  object EdSearchProduct: TEdit
    Left = 183
    Top = 226
    Width = 175
    Height = 21
    TabOrder = 3
    TextHint = 'Nome...'
    OnKeyPress = EdSearchProductKeyPress
  end
  object GrdProducts: TDBGrid
    Left = 8
    Top = 253
    Width = 350
    Height = 147
    DataSource = DsProducts
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = GrdProductsCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Descri'#231#227'o'
        Width = 218
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Title.Caption = 'Valor'
        Width = 83
        Visible = True
      end>
  end
  object EdQuantity: TJvSpinEdit
    Left = 70
    Top = 408
    Width = 83
    Height = 21
    Thousands = True
    ShowButton = False
    TabOrder = 5
  end
  object BtAddProduct: TBitBtn
    Left = 168
    Top = 406
    Width = 190
    Height = 25
    Caption = 'Adicionar Produto'
    Enabled = False
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      08000000000000020000120B0000120B00000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FD0202FDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BFDFDFDFDFDFDFDFDFDFDFDFDFD
      02BD2902FDFDFDFDFDFDFDFDFDFDFDFD9B08A49BFDFDFDFDFDFDFDFDFDFDFDFD
      02BD2902FDFDFDFDFDFDFDFDFDFDFDFD9B08A49BFDFDFDFDFDFDFDFDFDFDFDFD
      02BD2902FDFDFDFDFDFDFDFDFDFDFDFD9B08A49BFDFDFDFDFDFDFDFDFDFDFDFD
      02BD2902FDFDFDFDFDFDFDFDFDFDFDFD9B08A49BFDFDFDFDFDFDFDFD02020202
      02BD310202020202FDFDFDFD9B9B9B9B9B08A49B9B9B9B9BFDFDFD02BD7C7C7B
      737272322929292902FDFD9B08070707F7F7F7A4A4A4A4A49BFDFD02BDBDBDBD
      BDBD72BDBDBDBDBD02FDFD9B080808080808F708080808089BFDFDFD02020202
      02BD730202020202FDFDFDFD9B9B9B9B9B08F79B9B9B9B9BFDFDFDFDFDFDFDFD
      02BD7C02FDFDFDFDFDFDFDFDFDFDFDFD9B08079BFDFDFDFDFDFDFDFDFDFDFDFD
      02BD7C02FDFDFDFDFDFDFDFDFDFDFDFD9B08079BFDFDFDFDFDFDFDFDFDFDFDFD
      02BDBD02FDFDFDFDFDFDFDFDFDFDFDFD9B08089BFDFDFDFDFDFDFDFDFDFDFDFD
      02BDBD02FDFDFDFDFDFDFDFDFDFDFDFD9B08089BFDFDFDFDFDFDFDFDFDFDFDFD
      FD0202FDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
    NumGlyphs = 2
    TabOrder = 6
    OnClick = BtAddProductClick
  end
  object GrdSales: TDBGrid
    Left = 364
    Top = 54
    Width = 512
    Height = 346
    DataSource = DsSales
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = GrdSalesCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Produto'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Title.Caption = 'Valor'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Quantidade'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_total'
        Title.Caption = 'Total'
        Width = 130
        Visible = True
      end>
  end
  object BtRemoveProducts: TBitBtn
    Left = 686
    Top = 23
    Width = 190
    Height = 25
    Caption = 'Remover Produto'
    Enabled = False
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFF5CA99F6D1A1F5CB99F3C18BF2C088F3C38EFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0A4A4A4A0A0A098
      9898969696999999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFCF0CCFEF6D5FCE6BEF6D5A6FCC696FFC495FDD6AEFFE2BFFEE2BAF4C5
      90FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDBDBDC2C2C2B6B6B6A7A7A7A2
      A2A2A3A3A3AEAEAEB8B8B8B5B5B59B9B9BFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFEFBDDFEF9D8FCE4BBF0D6A7BBC8889CBD6F43A73672BA5EEFF6D4FDEE
      CCF2BF89FF00FFFF00FFFF00FFFF00FFFF00FFC6C6C6C4C4C4B4B4B4A4A4A492
      9292898989747474848484BEBEBEBDBDBD969696FF00FFFF00FFFF00FFFF00FF
      F1B87FF6D0A1FDF4D1FDEBC5FCDBB344AB380094020E9A0F10970B57B64EFEF5
      DBF4C28CFF00FFFF00FFFF00FFFF00FF919191A4A4A4C0C0C0BABABAB0B0B075
      75755252525C5C5C5959597F7F7FC5C5C5999999FF00FFFF00FFFF00FFFF00FF
      F2BD87F1BA81F3C18AF8D5A6FFE1BE47AD3A00880084CD85FFF4EF63B552B6C0
      79FDC08DFF00FFFF00FFFF00FFFF00FF959595929292979797A8A8A8B7B7B776
      76764C4C4C929292D0D0D07E7E7E7575759E9E9EFF00FFFF00FFFF00FFFF00FF
      F5C492F5C796F4C390F4BE89FCC59693C47B5CB95C89CB83FFFFFFF7FEFCCBCA
      92F6BC85FF00FFFF00FFFF00FFFF00FF9C9C9C9E9E9E9B9B9B979797A2A2A28D
      8D8D838383919191D8D8D8D3D3D3878787969696FF00FFFF00FFFF00FFFF00FF
      F9D0A8FBD2ADFAD0A9FACEA6F6CDA1D0DFB8FFFFFFE2F2DF71C26E66C066C8CB
      92FAC18EFF00FFFF00FFFF00FFFF00FFA9A9A9ADADADAAAAAAA9A9A9A4A4A4A4
      A4A4D8D8D8C1C1C19090908D8D8D9D9D9D9D9D9DFF00FFFF00FFFF00FFF8D4A8
      FDDEBFFDDEBEFDDBBBFDDBBBFFDEC578BB6198D498E7F5E63EAD3B008A009AC1
      76FFCCA6F2BE87FF00FFFF00FFA9A9A9B7B7B7B6B6B6B5B5B5B5B5B5BBBBBB8A
      8A8AA2A2A2C6C6C67A7A7A4D4D4D929292ABABAB959595FF00FFFF00FFF8D4A8
      FFEFD1FEEACBFEE9C9FEE7C8FFE7C9E2E2BE169A142BA12908970800920090C4
      78FFD9BCF2BE87FF00FFFF00FFA9A9A9C1C1C1BDBDBDBCBCBCBCBCBCBDBDBDB2
      B2B25F5F5F6D6D6D575757515151949494B6B6B6959595FF00FFFF00FFFBE5BD
      FFFCDFFFF7D8FFF6D6FFF4D5FFF3D2FFF5DCC5DFAD42AB3B43AE3BAFD79EC5DC
      AAFFE7C9F5C793FF00FFFF00FFB5B5B5C8C8C8C4C4C4C3C3C3C3C3C3C1C1C1C6
      C6C6ACACAC7A7A7A7A7A7AA5A5A5ABABABBDBDBD9D9D9DFF00FFFF00FFFDF3D1
      FFFFE1FFFCDDFFFDDEFFFCDDFFFCDEFFFDDEFFFFE8FFFFF0FFFFEDFFFFE7FFFA
      E0FFF7D7F6CE9DFF00FFFF00FFC0C0C0C9C9C9C7C7C7C7C7C7C7C7C7C7C7C7C7
      C7C7CCCCCCD0D0D0CFCFCFCCCCCCC8C8C8C4C4C4A2A2A2FF00FFFF00FFFEF7D7
      FFFFE5FFFFE2FFFFE2FFFFE3FFFEE0FEF8D8FAE3B6F7CE95F7CF97F9E1B6FEF5
      D2FFFFE5F6D5A7FF00FFFF00FFC3C3C3CBCBCBC9C9C9C9C9C9CACACAC8C8C8C4
      C4C4B1B1B19F9F9FA0A0A0B0B0B0C1C1C1CBCBCBA7A7A7FF00FFFF00FFF7D8AB
      FAE6C0FAE5BEF9E1B9F8DAAEF6CD98F3BE80F0B16AF0B067F0B370F4BE88FBCE
      9EFDDDB4FBCEA0FF00FFFF00FFAAAAAAB6B6B6B5B5B5B2B2B2ACACACA0A0A092
      9292868686848484898989979797A5A5A5B1B1B1A6A6A6FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B66FF3BD82F9CB9BFBCD
      9FFBCB9BFBCB9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF898989939393A3A3A3A6A6A6A4A4A4A4A4A4FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFBCE9FFBCE
      9FFBCE9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFA6A6A6A6A6A6A6A6A6FF00FFFF00FF}
    NumGlyphs = 2
    TabOrder = 8
    OnClick = BtRemoveProductsClick
  end
  object CbPaymentMethods: TComboBox
    Left = 888
    Top = 47
    Width = 300
    Height = 21
    TabOrder = 9
    OnChange = CbPaymentMethodsChange
  end
  object EdPaymentValue: TJvCalcEdit
    Left = 888
    Top = 93
    Width = 150
    Height = 21
    FormatOnEditing = True
    ShowButton = False
    TabOrder = 10
    DecimalPlacesAlwaysShown = False
  end
  object EdPlots: TJvSpinEdit
    Left = 1044
    Top = 93
    Width = 144
    Height = 21
    Thousands = True
    ShowButton = False
    Enabled = False
    TabOrder = 11
  end
  object GrdPaymentMethods: TDBGrid
    Left = 888
    Top = 152
    Width = 300
    Height = 104
    DataSource = DsPaymentMethods
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = GrdPaymentMethodsCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Tipo'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Title.Caption = 'Valor'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parcelas'
        Title.Caption = 'Parcelas'
        Visible = True
      end>
  end
  object BtAddPaymentMethod: TBitBtn
    Left = 889
    Top = 121
    Width = 149
    Height = 25
    Caption = 'Adicionar'
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      08000000000000020000120B0000120B00000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FD0202FDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BFDFDFDFDFDFDFDFDFDFDFDFDFD
      02BD2902FDFDFDFDFDFDFDFDFDFDFDFD9B08A49BFDFDFDFDFDFDFDFDFDFDFDFD
      02BD2902FDFDFDFDFDFDFDFDFDFDFDFD9B08A49BFDFDFDFDFDFDFDFDFDFDFDFD
      02BD2902FDFDFDFDFDFDFDFDFDFDFDFD9B08A49BFDFDFDFDFDFDFDFDFDFDFDFD
      02BD2902FDFDFDFDFDFDFDFDFDFDFDFD9B08A49BFDFDFDFDFDFDFDFD02020202
      02BD310202020202FDFDFDFD9B9B9B9B9B08A49B9B9B9B9BFDFDFD02BD7C7C7B
      737272322929292902FDFD9B08070707F7F7F7A4A4A4A4A49BFDFD02BDBDBDBD
      BDBD72BDBDBDBDBD02FDFD9B080808080808F708080808089BFDFDFD02020202
      02BD730202020202FDFDFDFD9B9B9B9B9B08F79B9B9B9B9BFDFDFDFDFDFDFDFD
      02BD7C02FDFDFDFDFDFDFDFDFDFDFDFD9B08079BFDFDFDFDFDFDFDFDFDFDFDFD
      02BD7C02FDFDFDFDFDFDFDFDFDFDFDFD9B08079BFDFDFDFDFDFDFDFDFDFDFDFD
      02BDBD02FDFDFDFDFDFDFDFDFDFDFDFD9B08089BFDFDFDFDFDFDFDFDFDFDFDFD
      02BDBD02FDFDFDFDFDFDFDFDFDFDFDFD9B08089BFDFDFDFDFDFDFDFDFDFDFDFD
      FD0202FDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
    NumGlyphs = 2
    TabOrder = 13
    OnClick = BtAddPaymentMethodClick
  end
  object BtSave: TBitBtn
    Left = 889
    Top = 392
    Width = 300
    Height = 43
    Caption = 'Finalizar Venda'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565656565FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF0066001EB1321EB132006600FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF65656599999999999965
      6565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565ABABAB99999999999999
      9999656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      00660047D36D3BCB5E25A83B0066001BA92E1EB132006600FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF656565BFBFBFB5B5B599999965656595
      9595999999656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
      4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF656565C4C4C4CACACAA5A5A5656565FF00FF65
      65658C8C8C999999656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      00660041C563006600FF00FFFF00FFFF00FFFF00FF0066001BA92E006600FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF656565B5B5B5656565FF00FFFF00FFFF
      00FFFF00FF656565959595656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600179D270066
      00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF6565658C8C8C656565FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066
      00006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF656565656565FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565656565FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 14
    OnClick = BtSaveClick
  end
  object CbDiscountType: TComboBox
    Left = 889
    Top = 281
    Width = 149
    Height = 21
    ItemIndex = 0
    TabOrder = 15
    Text = 'Porcentagem'
    Items.Strings = (
      'Porcentagem'
      'Valor Fixo')
  end
  object EdDiscount: TJvCalcEdit
    Left = 1044
    Top = 281
    Width = 145
    Height = 21
    FormatOnEditing = True
    ShowButton = False
    TabOrder = 16
    DecimalPlacesAlwaysShown = False
    OnKeyUp = EdDiscountKeyUp
  end
  object BtDeletePaymentMethods: TBitBtn
    Left = 1044
    Top = 121
    Width = 145
    Height = 25
    Caption = 'Remover'
    Enabled = False
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF818181818181FF00FF0732DE
      0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF0732DE0732DEFF00FFFF00FF818181818181FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF818181818181FF00FFFF00FF0732DE
      0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732
      DE0732DEFF00FFFF00FFFF00FF818181818181818181FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF818181818181FF00FFFF00FFFF00FF0732DE
      0732DD0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732
      DEFF00FFFF00FFFF00FFFF00FF818181818181818181818181FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF818181818181FF00FFFF00FFFF00FFFF00FFFF00FF
      0534ED0732DF0732DE0732DEFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF888888828282818181818181FF00FFFF
      00FFFF00FFFF00FF818181818181FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF0732DE0732DE0732DDFF00FF0732DD0732DE0732DEFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF818181818181818181FF
      00FF818181818181818181FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF0732DD0633E60633E60633E90732DCFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF81818185858585
      8585868686808080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF0633E30732E30534EFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF83838384
      8484898989FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF0732DD0534ED0533E90434EF0434F5FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF81818188888886
      86868888888B8B8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF0434F40534EF0533EBFF00FFFF00FF0434F40335F8FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8B8B8B898989878787FF
      00FFFF00FF8B8B8B8C8C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0335FC0534EF0434F8FF00FFFF00FFFF00FFFF00FF0335FC0335FBFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8E8E8E8989898D8D8DFF00FFFF
      00FFFF00FFFF00FF8E8E8E8E8E8EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0335FB0335FB0335FCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335
      FBFF00FFFF00FFFF00FFFF00FFFF00FF8E8E8E8E8E8E8E8E8EFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF8E8E8E8E8E8EFF00FFFF00FFFF00FFFF00FF0335FB
      0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF0335FBFF00FFFF00FFFF00FF8E8E8E8E8E8E8E8E8EFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF8E8E8EFF00FFFF00FF0335FB0335FB
      0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF8E8E8E8E8E8E8E8E8EFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF8E8E8E8E8E8EFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    NumGlyphs = 2
    TabOrder = 17
    OnClick = BtDeletePaymentMethodsClick
  end
  object QrySearchCustomers: TFDQuery
    Active = True
    Connection = DmManicure.Connection
    SQL.Strings = (
      'select * from customers c'
      'where c.nome like :name')
    Left = 408
    Top = 216
    ParamData = <
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end>
  end
  object DsCustomers: TDataSource
    DataSet = QrySearchCustomers
    Left = 520
    Top = 216
  end
  object QrySearchProducts: TFDQuery
    Active = True
    Connection = DmManicure.Connection
    SQL.Strings = (
      'select * from products p')
    Left = 408
    Top = 272
    object QrySearchProductsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QrySearchProductsdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 32767
    end
    object QrySearchProductsquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object QrySearchProductscodigo_barras: TStringField
      FieldName = 'codigo_barras'
      Origin = 'codigo_barras'
      Size = 32767
    end
    object QrySearchProductsvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
      Precision = 10
      Size = 2
    end
    object QrySearchProductsvencimento: TDateField
      FieldName = 'vencimento'
      Origin = 'vencimento'
    end
  end
  object DsProducts: TDataSource
    DataSet = QrySearchProducts
    Left = 520
    Top = 272
  end
  object QryProductInSale: TFDQuery
    Active = True
    Connection = DmManicure.Connection
    SQL.Strings = (
      'select * from sales_products sp'
      'where sp.product_id=:product and sp.sale_id=:sale')
    Left = 408
    Top = 152
    ParamData = <
      item
        Name = 'PRODUCT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SALE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QrySales: TFDQuery
    Active = True
    OnCalcFields = QrySalesCalcFields
    Connection = DmManicure.Connection
    SQL.Strings = (
      'select * from sales_products sp'
      'inner join products p on p.id=sp.product_id'
      'where sp.sale_id=:sale')
    Left = 408
    Top = 336
    ParamData = <
      item
        Name = 'SALE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QrySalesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QrySalesvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
      Precision = 10
      Size = 2
    end
    object QrySalesquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object QrySalessale_id: TIntegerField
      FieldName = 'sale_id'
      Origin = 'sale_id'
    end
    object QrySalesproduct_id: TIntegerField
      FieldName = 'product_id'
      Origin = 'product_id'
    end
    object QrySalesid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object QrySalesdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object QrySalesquantidade_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'quantidade_1'
      Origin = 'quantidade'
      ProviderFlags = []
      ReadOnly = True
    end
    object QrySalescodigo_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_barras'
      Origin = 'codigo_barras'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object QrySalesvalor_1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor_1'
      Origin = 'valor'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object QrySalesvencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'vencimento'
      Origin = 'vencimento'
      ProviderFlags = []
      ReadOnly = True
    end
    object QrySalesvalor_total: TBCDField
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      currency = True
      Calculated = True
    end
  end
  object DsSales: TDataSource
    DataSet = QrySales
    Left = 520
    Top = 336
  end
  object QryPaymentMethods: TFDQuery
    Active = True
    Connection = DmManicure.Connection
    SQL.Strings = (
      'select * from payment_methods p'
      'where p.sale_id=:sale')
    Left = 712
    Top = 352
    ParamData = <
      item
        Name = 'SALE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QryPaymentMethodsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QryPaymentMethodstipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 32767
    end
    object QryPaymentMethodsvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
      Precision = 10
      Size = 2
    end
    object QryPaymentMethodsparcelas: TIntegerField
      FieldName = 'parcelas'
      Origin = 'parcelas'
    end
    object QryPaymentMethodssale_id: TIntegerField
      FieldName = 'sale_id'
      Origin = 'sale_id'
    end
  end
  object DsPaymentMethods: TDataSource
    DataSet = QryPaymentMethods
    Left = 712
    Top = 288
  end
end
