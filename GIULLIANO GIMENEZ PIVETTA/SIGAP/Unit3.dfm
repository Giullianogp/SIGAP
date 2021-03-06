object DATAMODULE3: TDATAMODULE3
  OldCreateOrder = False
  Left = 332
  Top = 128
  Height = 750
  Width = 328
  object DATASOURCE1: TDataSource
    DataSet = colmeia
    Left = 64
    Top = 16
  end
  object DATASOURCE2: TDataSource
    DataSet = apicultor
    Left = 64
    Top = 88
  end
  object DataSource3: TDataSource
    DataSet = revisao
    Left = 64
    Top = 176
  end
  object DataSource4: TDataSource
    DataSet = apiario
    Left = 64
    Top = 264
  end
  object conexaoapiario: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=admin;Persist Security Info=True;Use' +
      'r ID=root;Data Source=Apiario;Initial Catalog=apiario'
    LoginPrompt = False
    Left = 56
    Top = 632
  end
  object colmeia: TADODataSet
    Active = True
    Connection = conexaoapiario
    CursorType = ctStatic
    CommandText = 'select * from colmeia'
    Parameters = <>
    Left = 128
    Top = 16
    object colmeiaN_colm: TAutoIncField
      FieldName = 'N_colm'
      ReadOnly = True
    end
    object colmeiaTip_ninho: TStringField
      FieldName = 'Tip_ninho'
      Size = 15
    end
    object colmeiaNum_quad: TIntegerField
      FieldName = 'Num_quad'
    end
    object colmeiaN_sobreninho: TIntegerField
      FieldName = 'N_sobreninho'
    end
    object colmeiaN_melg: TIntegerField
      FieldName = 'N_melg'
    end
    object colmeiaN_quadmelg: TIntegerField
      FieldName = 'N_quadmelg'
    end
    object colmeiaQual_enxame: TStringField
      FieldName = 'Qual_enxame'
      Size = 10
    end
    object colmeiaRaca_rainha: TStringField
      FieldName = 'Raca_rainha'
      Size = 15
    end
    object colmeiaNivel_def: TStringField
      FieldName = 'Nivel_def'
      Size = 10
    end
    object colmeiaPolem: TStringField
      FieldName = 'Polem'
      Size = 5
    end
    object colmeiaNectar: TStringField
      FieldName = 'Nectar'
      Size = 5
    end
    object colmeiaN_quadsobreninho: TIntegerField
      FieldName = 'N_quadsobreninho'
    end
    object colmeiaCod_apiario: TStringField
      FieldName = 'Cod_apiario'
      Size = 5
    end
    object colmeiaIdade_rainha: TDateField
      FieldName = 'Idade_rainha'
      EditMask = '!99/99/00;1;_'
    end
    object colmeiaidentificador: TStringField
      FieldName = 'identificador'
    end
  end
  object apicultor: TADODataSet
    Active = True
    Connection = conexaoapiario
    CursorType = ctStatic
    CommandText = 'select * from apicultor'
    Parameters = <>
    Left = 128
    Top = 88
    object apicultorN_reg: TAutoIncField
      FieldName = 'N_reg'
      ReadOnly = True
    end
    object apicultorNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object apicultorCpf: TStringField
      FieldName = 'Cpf'
      EditMask = '000\.000\.000\-00;1;_'
      Size = 14
    end
    object apicultorRg: TStringField
      FieldName = 'Rg'
      Size = 15
    end
    object apicultorN_talao: TStringField
      FieldName = 'N_talao'
      Size = 45
    end
    object apicultorTelefone: TStringField
      DisplayWidth = 15
      FieldName = 'Telefone'
      EditMask = '!\(99\)9999-9999;1;_'
      Size = 13
    end
    object apicultorlocalizacao: TStringField
      FieldName = 'localizacao'
      Size = 45
    end
    object apicultorTelefone2: TStringField
      FieldName = 'Telefone2'
      EditMask = '!\(99\)9999-9999;1;_'
      Size = 45
    end
  end
  object apiario: TADODataSet
    Active = True
    Connection = conexaoapiario
    CursorType = ctStatic
    CommandText = 'select * from apiario'
    Parameters = <>
    Left = 128
    Top = 264
    object apiarioCod_apiario: TAutoIncField
      FieldName = 'Cod_apiario'
      ReadOnly = True
    end
    object apiarioNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object apiariolocal: TStringField
      FieldName = 'local'
      Size = 45
    end
    object apiariofloral: TStringField
      FieldName = 'floral'
      Size = 45
    end
    object apiarion_colmeia: TIntegerField
      FieldName = 'n_colmeia'
    end
  end
  object DataSource5: TDataSource
    DataSet = usuario
    Left = 64
    Top = 344
  end
  object usuario: TADODataSet
    Active = True
    Connection = conexaoapiario
    CursorType = ctStatic
    CommandText = 'select * from usuario'
    Parameters = <>
    Left = 136
    Top = 344
    object usuariocod_usuario: TAutoIncField
      FieldName = 'cod_usuario'
      ReadOnly = True
    end
    object usuariologin: TStringField
      FieldName = 'login'
      Size = 10
    end
    object usuariosenha: TStringField
      FieldName = 'senha'
      Size = 10
    end
    object usuarionome: TStringField
      FieldName = 'nome'
      Size = 25
    end
  end
  object revisao: TADODataSet
    Active = True
    Connection = conexaoapiario
    CursorType = ctStatic
    CommandText = 'select * from revisao'
    Parameters = <>
    Left = 128
    Top = 176
    object revisaocod_visita: TAutoIncField
      FieldName = 'cod_visita'
      ReadOnly = True
    end
    object revisaoavaliacao: TStringField
      FieldName = 'avaliacao'
      Size = 45
    end
    object revisaodata_rev: TDateField
      FieldName = 'data_rev'
    end
    object revisaoobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object revisaoN_colm: TStringField
      FieldName = 'N_colm'
      Size = 15
    end
    object revisaodata_proximarevisao: TDateField
      FieldName = 'data_proximarevisao'
    end
  end
  object DataSource6: TDataSource
    DataSet = coleta
    Left = 64
    Top = 408
  end
  object coleta: TADODataSet
    Active = True
    Connection = conexaoapiario
    CursorType = ctStatic
    CommandText = 'select * from coleta'
    Parameters = <>
    Left = 136
    Top = 408
    object coletacod_coleta: TAutoIncField
      FieldName = 'cod_coleta'
      ReadOnly = True
    end
    object coletan_colm: TStringField
      FieldName = 'n_colm'
      Size = 15
    end
    object coletadata_coleta: TDateField
      FieldName = 'data_coleta'
    end
    object coletaobs: TStringField
      FieldName = 'obs'
      Size = 150
    end
    object coletaproducao: TStringField
      FieldName = 'producao'
    end
    object coletadata_proxcolheita: TDateField
      FieldName = 'data_proxcolheita'
    end
  end
  object DataSource7: TDataSource
    DataSet = equipamento
    Left = 64
    Top = 480
  end
  object equipamento: TADODataSet
    Active = True
    Connection = conexaoapiario
    CursorType = ctStatic
    CommandText = 'select * from equipamento'
    Parameters = <>
    Left = 136
    Top = 480
    object equipamentocod_equipamento: TAutoIncField
      FieldName = 'cod_equipamento'
      ReadOnly = True
    end
    object equipamentonome: TStringField
      FieldName = 'nome'
      Size = 45
    end
    object equipamentocategoria: TStringField
      FieldName = 'categoria'
      Size = 45
    end
    object equipamentodescricao: TStringField
      FieldName = 'descricao'
      Size = 150
    end
    object equipamentoquantidade: TStringField
      FieldName = 'quantidade'
      Size = 45
    end
  end
  object DataSource8: TDataSource
    DataSet = producao
    Left = 64
    Top = 552
  end
  object producao: TADODataSet
    Active = True
    Connection = conexaoapiario
    CursorType = ctStatic
    CommandText = 'select * from producao'
    Parameters = <>
    Left = 136
    Top = 552
    object producaocod_prod: TAutoIncField
      FieldName = 'cod_prod'
      ReadOnly = True
    end
    object producaocod_apiario: TIntegerField
      FieldName = 'cod_apiario'
    end
    object producaodata: TDateField
      FieldName = 'data'
    end
    object producaopeso_mel: TFloatField
      FieldName = 'peso_mel'
    end
  end
end
