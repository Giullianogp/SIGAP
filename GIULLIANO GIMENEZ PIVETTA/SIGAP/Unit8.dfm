object controle_visita: Tcontrole_visita
  Left = 613
  Top = 357
  Width = 313
  Height = 410
  BorderIcons = []
  Caption = 'SIGAP'
  Color = clActiveCaption
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 138
    Height = 20
    Caption = 'Estado da Colmeia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 120
    Width = 61
    Height = 20
    Caption = 'Revis'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 183
    Width = 97
    Height = 20
    Caption = 'Observa'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbcolm: TLabel
    Left = 256
    Top = 16
    Width = 9
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 104
    Top = 8
    Width = 83
    Height = 24
    Caption = 'REVIS'#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 128
    Top = 120
    Width = 163
    Height = 20
    Caption = 'Proxima Revis'#227'o (Dias)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 318
    Width = 75
    Height = 25
    Caption = 'fechar'
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
  object BitBtn2: TBitBtn
    Left = 16
    Top = 317
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 353
    Width = 297
    Height = 19
    Panels = <
      item
        Width = 70
      end
      item
        Width = 50
      end>
  end
  object eddata: TEdit
    Left = 16
    Top = 144
    Width = 97
    Height = 21
    TabOrder = 3
  end
  object cbestadocolm: TComboBox
    Left = 16
    Top = 80
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'RUIM'
      'REGULAR'
      'BOM')
  end
  object cbproxrevisao: TComboBox
    Left = 144
    Top = 144
    Width = 129
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      '7'
      '15'
      '22'
      '30')
  end
  object MMobs: TMemo
    Left = 16
    Top = 208
    Width = 257
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 6
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 216
    Top = 72
  end
end
