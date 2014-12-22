program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {INICIO},
  Unit2 in 'Unit2.pas' {cadastro_colmeia},
  Unit3 in 'Unit3.pas' {DATAMODULE3: TDataModule},
  Unit4 in 'Unit4.pas' {cadastro_apicultor},
  Unit5 in 'Unit5.pas' {controle_apiario},
  Unit6 in 'Unit6.pas' {controle_equip},
  Unit7 in 'Unit7.pas' {controle_revisao},
  Unit8 in 'Unit8.pas' {controle_visita},
  Unit9 in 'Unit9.pas' {cadastro_apiario},
  Unit10 in 'Unit10.pas' {login},
  Unit11 in 'Unit11.pas' {cadastro_usuario},
  Unit12 in 'Unit12.pas' {inserir_coleta},
  Unit14 in 'Unit14.pas' {login_cad_usuario},
  Unit15 in 'Unit15.pas' {controle_colheitas},
  Unit16 in 'Unit16.pas' {controle_producao},
  Unit17 in 'Unit17.pas' {inserir_producao},
  Unit18 in 'Unit18.pas' {relatorio},
  Unit19 in 'Unit19.pas' {fichas};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SIGAP';
  Application.CreateForm(TDATAMODULE3, DATAMODULE3);
  Application.CreateForm(TINICIO, INICIO);
  Application.CreateForm(Tcadastro_colmeia, cadastro_colmeia);
  Application.CreateForm(Tcadastro_apicultor, cadastro_apicultor);
  Application.CreateForm(Tcontrole_apiario, controle_apiario);
  Application.CreateForm(Tcontrole_equip, controle_equip);
  Application.CreateForm(Tcontrole_revisao, controle_revisao);
  Application.CreateForm(Tcontrole_visita, controle_visita);
  Application.CreateForm(Tcadastro_apiario, cadastro_apiario);
  Application.CreateForm(Tlogin, login);
  Application.CreateForm(Tcadastro_usuario, cadastro_usuario);
  Application.CreateForm(Tinserir_coleta, inserir_coleta);
  Application.CreateForm(Tlogin_cad_usuario, login_cad_usuario);
  Application.CreateForm(Tcontrole_colheitas, controle_colheitas);
  Application.CreateForm(Tcontrole_producao, controle_producao);
  Application.CreateForm(Tinserir_producao, inserir_producao);
  Application.CreateForm(Trelatorio, relatorio);
  Application.CreateForm(Tfichas, fichas);
  Application.Run;
end.
