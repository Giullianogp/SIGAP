unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Mask;

type
  Tinserir_coleta = class(TForm)
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn2: TBitBtn;
    PRODEDIT: TComboBox;
    DCEDIT: TEdit;
    MOBS: TMemo;
    PCEDIT: TEdit;
    Label6: TLabel;
    LCOLM: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inserir_coleta: Tinserir_coleta;

implementation

uses Unit3, Unit15, Unit1, Unit10, Unit11, Unit13, Unit14, Unit2, Unit4,
  Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure Tinserir_coleta.BitBtn1Click(Sender: TObject);
begin
INSERIR_COLETA.Close;
end;

procedure Tinserir_coleta.Timer1Timer(Sender: TObject);
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
procedure Tinserir_coleta.BitBtn2Click(Sender: TObject);

begin


if (dcedit.Text = '') or (prodedit.ItemIndex = 0) then

begin
messagedlg('Complete os campos obrigatórios!', mterror, [mbok], 0);
prodedit.SetFocus;
end

else
begin

DATAMODULE3.COLETA.INSERT;
datamodule3.COLETA['PRODUCAO']:=PRODEDIT.Text;
datamodule3.COLETA['data_proxcolheita']:= pcedit.text;
datamodule3.COLETA['data_COLETA']:=strtodate(DCEDIT.text);
datamodule3.COLETA['obs']:=Mobs.text;
datamodule3.COLETA['n_colm']:= strtoint(lcolm.caption);

DATAMODULE3.COLETA.Post;
INSERIR_COLETA.Close;
Controle_COLHEITAS.ADOQuery2.close;
Controle_COLHEITAS.ADOQuery2.open;

end

end;




procedure Tinserir_coleta.FormShow(Sender: TObject);
begin
prodedit.Itemindex:=0;

mobs.Clear;


lcolm.Caption:= CONTROLE_COLHEITAS.ADOQuery1['N_COLM'];

DCEDIT.Text:= datetostr(now);
pcedit.Text:=datetostr(strtodate(dcedit.Text)+ 180);

end;

end.
