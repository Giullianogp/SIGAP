object inserir_producao: Tinserir_producao
  Left = 385
  Top = 385
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'SIGAP'
  ClientHeight = 189
  ClientWidth = 303
  Color = clActiveCaption
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 15
    Top = 45
    Width = 53
    Height = 20
    Caption = 'Apiario:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 11
    Top = 115
    Width = 39
    Height = 20
    Caption = 'Data:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 10
    Top = 80
    Width = 77
    Height = 20
    Caption = 'Peso (KG):'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 216
    Top = 59
    Width = 65
    Height = 17
    DataField = 'cod_prod'
    DataSource = DATAMODULE3.DataSource8
    Visible = False
  end
  object Label9: TLabel
    Left = 69
    Top = 41
    Width = 6
    Height = 20
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 82
    Top = 73
    Width = 6
    Height = 20
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 49
    Top = 114
    Width = 6
    Height = 20
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 96
    Top = 8
    Width = 107
    Height = 24
    Caption = 'PRODU'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 169
    Top = 153
    Width = 81
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333FF3333333333333003333333333333F77F3333333333300C033
      333333333F7737F33333333300CCC0333333333F773337FFFFFF3300CCCCC000
      00003F7733333777777700CCCCCCCCCCCCC0773FF33333FFFFF73300CCCCC000
      000033773FF337777777333300CCC03333333333773FF7F3333333333300C033
      33333333337737F3333333333333003333333333333377333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object DBEdit3: TDBEdit
    Left = 91
    Top = 115
    Width = 120
    Height = 21
    DataField = 'data'
    DataSource = DATAMODULE3.DataSource8
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 91
    Top = 81
    Width = 70
    Height = 21
    DataField = 'peso_mel'
    DataSource = DATAMODULE3.DataSource8
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 58
    Top = 153
    Width = 79
    Height = 25
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF5555555555555A055555
      55555555577FF55555555555AAA05555555555557777F55555555555AAA05555
      555555557777FF555555555AAAAA05555555555777777F55555555AAAAAA0555
      5555557777777FF5555557AA05AAA05555555777757777F555557A05555AA055
      55557775555777FF55555555555AAA05555555555557777F555555555555AA05
      555555555555777FF555555555555AA05555555555555777FF5555555555557A
      05555555555555777FF5555555555557A05555555555555777FF555555555555
      5AA0555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 92
    Top = 45
    Width = 119
    Height = 21
    DataField = 'cod_apiario'
    DataSource = DATAMODULE3.DataSource8
    KeyField = 'Cod_apiario'
    ListField = 'Nome'
    ListSource = DATAMODULE3.DataSource4
    TabOrder = 4
  end
end
