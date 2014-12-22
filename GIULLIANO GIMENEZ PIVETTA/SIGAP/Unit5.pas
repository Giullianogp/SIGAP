unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, Mask, DBCtrls, ExtCtrls, DB,
  DBTables, ComCtrls, Menus;

type
  Tcontrole_apiario = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    BitBtn5: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  controle_apiario: Tcontrole_apiario;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit6, Unit7, Unit9, Unit16;

{$R *.dfm}

procedure Tcontrole_apiario.Button1Click(Sender: TObject);
begin
controle_apiario.Close;
end;

procedure Tcontrole_apiario.BitBtn1Click(Sender: TObject);
begin
 datamodule3.colmeia.Append;
cadastro_colmeia.SHOWMODAL;


end;

procedure Tcontrole_apiario.BitBtn2Click(Sender: TObject);
begin
DataModule3.colmeia.Delete;
end;

procedure Tcontrole_apiario.BitBtn3Click(Sender: TObject);
begin
INICIO.Visible:=TRUE;
Controle_apiario.Close;
end;

procedure Tcontrole_apiario.DBLookupComboBox1Click(Sender: TObject);
var
cod_apiario:string;
begin

cod_apiario:=datamodule3.apiarioCod_apiario.Text;
datamodule3.colmeia.Close;
datamodule3.colmeia.CommandText:=('select * from colmeia where cod_apiario="'+cod_apiario+'" ');
datamodule3.colmeia.open;
end;
procedure Tcontrole_apiario.Timer1Timer(Sender: TObject);
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

procedure Tcontrole_apiario.BitBtn4Click(Sender: TObject);
begin
datamodule3.apiario.Append;
cadastro_apiario.showmodal;

end;

procedure Tcontrole_apiario.BitBtn5Click(Sender: TObject);
begin
datamodule3.producao.Append;
controle_producao.showmodal;

end;

end.
