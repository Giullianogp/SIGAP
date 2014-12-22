object controle_revisao: Tcontrole_revisao
  Left = 371
  Top = 244
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
  object Label2: TLabel
    Left = 160
    Top = 16
    Width = 236
    Height = 24
    Caption = 'CONTROLE DE REVIS'#213'ES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 13
    Top = 65
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
  object Label1: TLabel
    Left = 456
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object Label4: TLabel
    Left = 223
    Top = 66
    Width = 61
    Height = 20
    Caption = 'Colmeia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn2: TBitBtn
    Left = 11
    Top = 449
    Width = 142
    Height = 25
    Caption = 'Inserir Revis'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
      333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
      C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
      F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
      F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
      00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
      3333333373FF7333333333333000333333333333377733333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
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
  object BitBtn1: TBitBtn
    Left = 465
    Top = 451
    Width = 75
    Height = 25
    Caption = 'Voltar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
  object DBGrid1: TDBGrid
    Left = 10
    Top = 96
    Width = 529
    Height = 345
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 69
    Top = 65
    Width = 145
    Height = 21
    KeyField = 'Cod_apiario'
    ListField = 'Nome'
    ListSource = DATAMODULE3.DataSource4
    TabOrder = 4
    OnCloseUp = DBLookupComboBox1CloseUp
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 292
    Top = 65
    Width = 145
    Height = 21
    KeyField = 'N_colm'
    ListField = 'identificador'
    ListSource = DataSource1
    TabOrder = 5
    OnCloseUp = DBLookupComboBox2CloseUp
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 512
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = DATAMODULE3.conexaoapiario
    Parameters = <>
    Left = 88
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 128
    Top = 8
  end
  object ADOQuery2: TADOQuery
    Connection = DATAMODULE3.conexaoapiario
    Parameters = <>
    Left = 448
    Top = 56
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 488
    Top = 56
  end
end
