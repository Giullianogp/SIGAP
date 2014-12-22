unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  ADODB, DBCtrls;

type
  Tcontrole_colheitas = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  controle_colheitas: Tcontrole_colheitas;

implementation

uses Unit1, Unit12, Unit10, Unit11, Unit13, Unit14, Unit2, Unit3, Unit4,
  Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure Tcontrole_colheitas.BitBtn2Click(Sender: TObject);
begin
inicio.Visible:=true;
controle_colheitas.Close;
end;

procedure Tcontrole_colheitas.Timer1Timer(Sender: TObject);
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

procedure Tcontrole_colheitas.BitBtn1Click(Sender: TObject);
begin
if (dblookupcombobox1.Keyvalue=null) or (dblookupcombobox2.KeyValue=null) then

begin
messagedlg('Complete os campos obrigatórios!', mterror, [mbok], 0);
dblookupcombobox1.SetFocus;
end
else
INSERIR_COLETA.SHOWMODAL;
end;

procedure Tcontrole_colheitas.DBLookupComboBox1CloseUp(Sender: TObject);
var
codapiario: integer;
begin
codapiario:= Datamodule3.apiario['cod_apiario'];

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM  apiario a, colmeia c WHERE ');
ADOQuery1.SQL.add('a.cod_apiario = c.cod_apiario and c.cod_apiario = "'+inttostr(codapiario)+'"');
ADOQuery1.Open;
end;

procedure Tcontrole_colheitas.DBLookupComboBox2CloseUp(Sender: TObject);
vAR
codcolmeia: integer;
begin


if not ADOQuery1.Eof then
begin
  codcolmeia:= ADOQuery1['n_colm'];
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT R.N_COLM, R.DATA_coleta, r.producao, R.OBS  FROM colmeia c, coleta r WHERE ');
  ADOQuery2.SQL.add('c.N_colm = r.N_colm and r.N_colm = "'+inttostr(codcolmeia)+'" ');
  ADOQuery2.Open;
end
else
 showmessage('Apiario nao possui colmeias');
end;

end.
