unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, ExtCtrls;

type
  Tcontrole_visita = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbcolm: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    Label6: TLabel;
    eddata: TEdit;
    cbestadocolm: TComboBox;
    cbproxrevisao: TComboBox;
    MMobs: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  controle_visita: Tcontrole_visita;

implementation

uses Unit3, Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit10, Unit11,
  Unit12, Unit13, Unit14, Unit15, Unit9;

{$R *.dfm}

procedure Tcontrole_visita.BitBtn1Click(Sender: TObject);
begin
controle_visita.CLOSE;
end;

procedure Tcontrole_visita.BitBtn2Click(Sender: TObject);
begin
//NOMETABELA['CAMPO']:=EDIT.TEXT
DATAMODULE3.revisao.INSERT;
datamodule3.revisao['avaliacao']:=cbestadocolm.Text;
datamodule3.revisao['data_proximarevisao']:= now + strtoint(cbproxrevisao.Text);
datamodule3.revisao['data_rev']:=eddata.text;
datamodule3.revisao['obs']:=MMobs.text;
datamodule3.revisao['n_colm']:= strtoint(lbcolm.caption);


DATAMODULE3.revisao.Post;

Controle_visita.Close;
Controle_revisao.ADOQuery2.close;
Controle_revisao.ADOQuery2.open;
end;

procedure Tcontrole_visita.Timer1Timer(Sender: TObject);
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

procedure Tcontrole_visita.FormShow(Sender: TObject);
begin
lbcolm.Caption:= CONTROLE_REVISAO.ADOQuery1['N_COLM'];
eddata.Text:= datetostr(now);
end;

end.
