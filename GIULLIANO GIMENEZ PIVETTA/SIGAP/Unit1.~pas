unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, ComCtrls, ExtCtrls, jpeg, AppEvnts,
  XPMan;

type
  TINICIO = class(TForm)
    BitBtn6: TBitBtn;
    StatusBar1: TStatusBar;
    Image1: TImage;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
    MainMenu1: TMainMenu;
    Sair1: TMenuItem;
    CadastrodeApiario1: TMenuItem;
    Apiario1: TMenuItem;
    Colmeia1: TMenuItem;
    Apicultor1: TMenuItem;
    Controles1: TMenuItem;
    Revises1: TMenuItem;
    Colheitas1: TMenuItem;
    ApiariosColmeias1: TMenuItem;
    Usuario1: TMenuItem;
    FichasdeControle1: TMenuItem;
    Relatorios1: TMenuItem;
    Equipamentos1: TMenuItem;
    Produo1: TMenuItem;
    Image2: TImage;
    XPManifest1: TXPManifest;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Colmia1Click(Sender: TObject);
    procedure Apicultor1Click(Sender: TObject);
    procedure Apiario1Click(Sender: TObject);
    
    procedure Produo1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure BitBtn11Click(Sender: TObject);
    procedure Colmeia1Click(Sender: TObject);
    procedure Equipamentos1Click(Sender: TObject);
    procedure Revises1Click(Sender: TObject);
    procedure Colheitas1Click(Sender: TObject);
    procedure ApiariosColmeias1Click(Sender: TObject);
    procedure Usuario1Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
    procedure FichasdeControle1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  INICIO: TINICIO;

implementation

uses Unit2, Unit4, Unit5, Unit6, Unit7, Unit3, Unit9, Unit8, Unit10,
  Unit11, Unit14, Unit15, Unit12, Unit13, Unit16, Unit18, Unit19;

{$R *.dfm}

procedure TINICIO.BitBtn6Click(Sender: TObject);
begin
APPLICATION.TERMINATE;
end;

procedure TINICIO.BitBtn1Click(Sender: TObject);
begin

datamodule3.colmeia.append;
INICIO.VISIBLE:=FALSE;
cadastro_colmeia.ShowModal;

end;

procedure TINICIO.BitBtn3Click(Sender: TObject);
begin
INICIO.VISIBLE:=FALSE;
datamodule3.apicultor.append;
cadastro_apicultor.SHOWMODAL;
end;

procedure TINICIO.BitBtn2Click(Sender: TObject);
begin
INICIO.VISIBLE:=FALSE;
Controle_apiario.SHOWMODAL;

end;

procedure TINICIO.BitBtn8Click(Sender: TObject);
begin
controle_equip.ShowModal;
end;

procedure TINICIO.BitBtn7Click(Sender: TObject);
begin
INICIO.VISIBLE:=FALSE;
controle_revisao.SHOWMODAL;
end;

procedure TINICIO.BitBtn9Click(Sender: TObject);
begin
INICIO.Visible:=FALSE;
datamodule3.apiario.append;
cadastro_apiario.SHOWMODAL;
end;

procedure TINICIO.Colmia1Click(Sender: TObject);
begin
datamodule3.colmeia.append;
INICIO.VISIBLE:=FALSE;
cadastro_colmeia.ShowModal;
end;

procedure TINICIO.Apicultor1Click(Sender: TObject);
begin

datamodule3.apicultor.append;
cadastro_apicultor.SHOWMODAL;
end;

procedure TINICIO.Apiario1Click(Sender: TObject);
begin


datamodule3.apiario.append;
cadastro_apiario.SHOWMODAL;
end;


procedure TINICIO.Produo1Click(Sender: TObject);
begin

controle_producao.SHOWMODAL;
end;

procedure TINICIO.Timer1Timer(Sender: TObject);


var



vw_ano,vw_mes,vw_dia, vw_semana: word;

vs_diasem : String;

vs_mes : String;





begin

        //Esse código serve para rodar a hora

        StatusBar1.Panels[0].Text:= '    ' + timetostr(time);



        decodedate(now(),vw_ano,vw_mes,vw_dia);



        case vw_mes of

        1: vs_mes:= 'Janeiro';

        2: vs_mes:= 'Fevereiro';

        3: vs_mes:= 'Março';

        4: vs_mes:= 'Abril';

        5: vs_mes:= 'Maio';

        6: vs_mes:= 'Junho';

        7: vs_mes:= 'Julho';

        8: vs_mes:= 'Agosto';

        9: vs_mes:= 'Setembro';

        10:vs_mes:= 'Outubro';

        11:vs_mes:= 'Novembro';

        12:vs_mes:= 'Dezembro';

end;



vw_semana:= dayofweek(date);



case vw_semana of

1: vs_diasem := 'Domingo';

2: vs_diasem := 'Segunda';

3: vs_diasem := 'Terça';

4: vs_diasem := 'Quarta';

5: vs_diasem := 'Quinta';

6: vs_diasem := 'Sexta';

7: vs_diasem := 'Sábado';

end;



StatusBar1.Panels[1].Text:='  '+ vs_diasem + ', ' +inttostr(vw_dia) +' de '+ vs_mes + ' de '

+inttostr(vw_ano);

end;






procedure TINICIO.Sair1Click(Sender: TObject);
begin
APPLICATION.TERMINATE;
end;

procedure TINICIO.FormCreate(Sender: TObject);
begin
login:=tlogin.Create(application);
login.showmodal;
end;

procedure TINICIO.BitBtn10Click(Sender: TObject);
begin
login_cad_usuario.showmodal;




end;

procedure TINICIO.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);

  var
  mensagem: string;
 Pos1, Pos2: integer;

  begin
  if Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) <> 0 then
  mensagem:='Data inválida, proceda a correção.'
 else if Pos(UpperCase('must have a value'), UpperCase(E.Message)) <> 0 then
 begin
  Pos1:=Pos('''', E.Message);
  mensagem:=E.Message;
  Delete(mensagem, Pos1, 1);
  Pos2:=Pos('''', mensagem);
  mensagem:=copy(E.Message, Pos1 + 1, Pos2 - Pos1);
  mensagem := 'É obrigatório o preenchimento do campo '+ mensagem + '.';
 end
 else if Pos(UpperCase('key violation'), UpperCase(E.Message)) <> 0 then
  mensagem := 'Houve violação de Chave. Registro já incluido.'
 else if Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0 then
  mensagem := 'Hora inválida, proceda a correção.'
 else if Pos(UpperCase('is not a valid float'), UpperCase(E.Message)) <> 0 then
 begin
  Pos1 :=Pos('''', E.Message);
  mensagem :=E.Message;
  Delete(mensagem, Pos1, 1);
  Pos2 := Pos('''', mensagem);
  mensagem :=copy(E.Message, Pos1 + 1, Pos2 - Pos1);
  mensagem := 'O valor '+ mensagem + ' não é válido.';
 end
 else if Pos(UpperCase('field value required'), UpperCase(E.Message)) <> 0 then
 begin
  Pos1 :=Pos('column ', E.Message) + 7;
  Pos2 :=Pos(',', E.Message);
  mensagem :=copy(E.Message, Pos1, Pos2 - Pos1);
  mensagem := 'Campo ' + mensagem + ' deve ser preenchido.';
 end
 else if Pos(UpperCase('ATTEMPT TO STORE DUPLICATE VALUE'), UpperCase(E.Message)) <> 0
 then
  mensagem := 'Não é permitido valor duplicado. '
 else if Pos(UpperCase('FOREIGN KEY'), UpperCase(E.Message)) <> 0 then
  mensagem := 'Operação não permitida, registro vinculado em outra tabela está faltando.'
 else if Pos('VIOLATION OF PRIMARY OR UNIQUE KEY CONSTRAINT', UpperCase(E.Message)) <> 0
 then
  mensagem := 'Registro Duplicado'+#13#10+Copy(UpperCase(E.Message),Pos('VIOLATION OF PRIMARY OR UNIQUE KEY CONSTRAINT',UpperCase(E.Message))+47,100)
 else if (Pos(UpperCase('MUST APPLY UPDATES BEFORE REFRESHING DATA'),
 UpperCase(E.Message)) <> 0) then
  mensagem := 'É necessário aplicara as alterações antes de atualizar os dados.'
 else if (Pos(UpperCase('INVALID INPUT VALUE'), UpperCase(E.Message)) <> 0) then
  mensagem := 'Valor digitado não é valido conforme a máscara.'
 else
  mensagem := 'Ocorreu o seguinte erro: ' + #13 +UpperCase(E.Message);
 MessageDlg(mensagem, mtError, [mbOk], 0);
 ABORT;


end;

procedure TINICIO.BitBtn11Click(Sender: TObject);
begin
CONTROLE_colheitas.SHOWMODAL;
end;

procedure TINICIO.Colmeia1Click(Sender: TObject);
begin
datamodule3.colmeia.append;

cadastro_colmeia.ShowModal;

end;

procedure TINICIO.Equipamentos1Click(Sender: TObject);
begin

datamodule3.equipamento.append;
Datamodule3.equipamento['quantidade']:= 1;
controle_equip.DBCombobox1.ItemIndex:= 0;
controle_equip.ShowModal;
end;

procedure TINICIO.Revises1Click(Sender: TObject);
begin

controle_revisao.SHOWMODAL;

end;

procedure TINICIO.Colheitas1Click(Sender: TObject);
begin
  CONTROLE_colheitas.SHOWMODAL;
end;

procedure TINICIO.ApiariosColmeias1Click(Sender: TObject);
begin


Controle_apiario.SHOWMODAL;

end;

procedure TINICIO.Usuario1Click(Sender: TObject);
begin
login_cad_usuario.showmodal;
end;

procedure TINICIO.Relatorios1Click(Sender: TObject);
begin
relatorio.showmodal;
end;

procedure TINICIO.FichasdeControle1Click(Sender: TObject);
begin
fichas.showmodal;
end;

end.
