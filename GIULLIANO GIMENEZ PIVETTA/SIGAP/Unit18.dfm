object relatorio: Trelatorio
  Left = 398
  Top = 194
  Width = 486
  Height = 273
  BorderIcons = []
  Caption = 'SIGAP'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 173
    Top = 3
    Width = 120
    Height = 24
    Caption = 'RELAT'#211'RIOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 382
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Voltar'
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
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 24
    Width = 449
    Height = 170
    TabOrder = 1
  end
  object RadioButton1: TRadioButton
    Left = 16
    Top = 42
    Width = 113
    Height = 17
    Caption = 'Api'#225'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object RadioButton2: TRadioButton
    Left = 16
    Top = 72
    Width = 161
    Height = 17
    Caption = 'Colmeias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 16
    Top = 102
    Width = 113
    Height = 17
    Caption = 'Produ'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = RadioButton3Click
  end
  object RadioButton4: TRadioButton
    Left = 16
    Top = 131
    Width = 113
    Height = 17
    Caption = 'Colheitas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = RadioButton4Click
  end
  object RadioButton5: TRadioButton
    Left = 16
    Top = 159
    Width = 113
    Height = 17
    Caption = 'Revisoes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = RadioButton5Click
  end
  object BitBtn2: TBitBtn
    Left = 296
    Top = 67
    Width = 144
    Height = 55
    Caption = 'Gerar Relatorio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn2Click
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
    Left = 136
    Top = 69
    Width = 145
    Height = 21
    Enabled = False
    KeyField = 'Cod_apiario'
    ListField = 'Nome'
    ListSource = DATAMODULE3.DataSource4
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 136
    Top = 100
    Width = 145
    Height = 21
    Enabled = False
    KeyField = 'Cod_apiario'
    ListField = 'Nome'
    ListSource = DATAMODULE3.DataSource4
    TabOrder = 9
    OnCloseUp = DBLookupComboBox2CloseUp
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 136
    Top = 129
    Width = 145
    Height = 21
    Enabled = False
    KeyField = 'Cod_apiario'
    ListField = 'Nome'
    ListSource = DATAMODULE3.DataSource4
    TabOrder = 10
    OnCloseUp = DBLookupComboBox3CloseUp
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 295
    Top = 129
    Width = 145
    Height = 21
    Enabled = False
    KeyField = 'N_colm'
    ListField = 'identificador'
    ListSource = DATAMODULE3.DATASOURCE1
    TabOrder = 11
    OnCloseUp = DBLookupComboBox4CloseUp
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 136
    Top = 158
    Width = 145
    Height = 21
    Enabled = False
    KeyField = 'Cod_apiario'
    ListField = 'Nome'
    ListSource = DATAMODULE3.DataSource4
    TabOrder = 12
    OnCloseUp = DBLookupComboBox5CloseUp
  end
  object DBLookupComboBox6: TDBLookupComboBox
    Left = 294
    Top = 158
    Width = 146
    Height = 21
    Enabled = False
    KeyField = 'N_colm'
    ListField = 'identificador'
    ListSource = DATAMODULE3.DATASOURCE1
    TabOrder = 13
    OnCloseUp = DBLookupComboBox6CloseUp
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery1
    Left = 16
    Top = 201
  end
  object RvProject1: TRvProject
    ProjectFile = 'C:\Users\Giulliano\Desktop\SIGAP\Relatorios\apiario.rav'
    Left = 48
    Top = 201
  end
  object ADOQuery1: TADOQuery
    Connection = DATAMODULE3.conexaoapiario
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT c.identificador, R.* FROM colmeia c, coleta r WHERE c.N_c' +
        'olm = r.N_colm and r.N_colm =1')
    Left = 240
    Top = 201
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 272
    Top = 201
  end
  object ADOQuery2: TADOQuery
    Connection = DATAMODULE3.conexaoapiario
    Parameters = <>
    Left = 304
    Top = 201
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 336
    Top = 201
  end
  object RvProject2: TRvProject
    ProjectFile = 'C:\Users\Giulliano\Desktop\SIGAP\Relatorios\Colmeia.rav'
    Left = 80
    Top = 201
  end
  object RvProject3: TRvProject
    ProjectFile = 'C:\Users\Giulliano\Desktop\SIGAP\Relatorios\producao.rav'
    Left = 112
    Top = 201
  end
  object RvProject4: TRvProject
    ProjectFile = 'C:\Users\Giulliano\Desktop\SIGAP\Relatorios\colheita.rav'
    Left = 144
    Top = 201
  end
  object RvProject5: TRvProject
    ProjectFile = 'C:\Users\Giulliano\Desktop\SIGAP\Relatorios\revisao.rav'
    Left = 176
    Top = 201
  end
end
