object controle_apiario: Tcontrole_apiario
  Left = 461
  Top = 242
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'SIGAP'
  ClientHeight = 500
  ClientWidth = 550
  Color = clActiveCaption
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 16
    Width = 227
    Height = 24
    Caption = 'CONTROLE DE API'#193'RIOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 19
    Top = 59
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
  object BitBtn1: TBitBtn
    Left = 4
    Top = 445
    Width = 129
    Height = 25
    Caption = 'Nova Colmeia'
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
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
      0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
      0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
      5555557FFFFF7755555555500000005555555577777775555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 379
    Top = 444
    Width = 79
    Height = 25
    Caption = 'Excluir'
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
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
  end
  object BitBtn3: TBitBtn
    Left = 466
    Top = 444
    Width = 80
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn3Click
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
  object BitBtn4: TBitBtn
    Left = 138
    Top = 444
    Width = 121
    Height = 25
    Caption = 'Novo Apiario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn4Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
      0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
      0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
      5555557FFFFF7755555555500000005555555577777775555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 77
    Top = 58
    Width = 145
    Height = 21
    KeyField = 'Nome'
    ListField = 'Nome'
    ListSource = DATAMODULE3.DataSource4
    TabOrder = 4
    OnClick = DBLookupComboBox1Click
  end
  object DBGrid1: TDBGrid
    Left = 10
    Top = 96
    Width = 529
    Height = 321
    DataSource = DATAMODULE3.DATASOURCE1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'identificador'
        Title.Caption = 'ID'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tip_ninho'
        Title.Caption = 'Ninho'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Num_quad'
        Title.Caption = 'Quadros'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_sobreninho'
        Title.Caption = 'Sobreninhos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_quadsobreninho'
        Title.Caption = 'Quadros do Sobreninho'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_melg'
        Title.Caption = 'Melgueiras'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_quadmelg'
        Title.Caption = 'Quadros da Melgueira'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qual_enxame'
        Title.Caption = 'Qualidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Raca_rainha'
        Title.Caption = 'Ra'#231'a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nivel_def'
        Title.Caption = 'Nivel defensivo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Polem'
        Title.Caption = 'P'#243'lem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nectar'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Idade_rainha'
        Title.Caption = 'Data Rainha'
        Width = 69
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 481
    Width = 550
    Height = 19
    Panels = <
      item
        Width = 70
      end
      item
        Width = 50
      end>
  end
  object BitBtn5: TBitBtn
    Left = 267
    Top = 444
    Width = 102
    Height = 25
    Caption = 'Produ'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn5Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
      0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
      0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
      5555557FFFFF7755555555500000005555555577777775555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 480
    Top = 56
  end
end
