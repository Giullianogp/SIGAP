unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask, ComCtrls,
  ExtCtrls;

type
  Tcadastro_usuario = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBText1: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastro_usuario: Tcadastro_usuario;

implementation

uses Unit1, Unit10, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9,
  Unit13;

{$R *.dfm}

procedure Tcadastro_usuario.BitBtn3Click(Sender: TObject);
begin
DATAMODULE3.USUARIO.delete;
end;

procedure Tcadastro_usuario.BitBtn1Click(Sender: TObject);
begin
if (dbedit1.text='') or (dbedit2.text='') or (dbedit3.text='') then

begin
messagedlg('Complete os campos obrigatórios!', mterror, [mbok], 0);
DBedit1.SetFocus;
end

else
begin
DATAMODULE3.USUARIO.post;
DATAMODULE3.USUARIO.Append;
messagedlg('Usuario cadastrado com sucesso!', mtinformation, [mbok], 0);
end

end;

procedure Tcadastro_usuario.BitBtn4Click(Sender: TObject);
begin
cadastro_usuario.Visible:=false;
gerenciamento_usuario.showmodal;
end;

procedure Tcadastro_usuario.BitBtn2Click(Sender: TObject);
begin
DATAMODULE3.USUARIO.ClearFields;
end;

procedure Tcadastro_usuario.BitBtn5Click(Sender: TObject);
begin
INICIO.Visible:=TRUE;
cadastro_usuario.Close;
end;

procedure Tcadastro_usuario.Timer1Timer(Sender: TObject);
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

end.
