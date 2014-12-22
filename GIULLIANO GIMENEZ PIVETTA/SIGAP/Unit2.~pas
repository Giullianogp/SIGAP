unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ExtCtrls,
  Menus, ComCtrls, jpeg, DB, ADODB;

type
  Tcadastro_colmeia = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBText1: TDBText;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBComboBox11: TDBComboBox;
    DBEdit1: TDBEdit;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Image1: TImage;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Colmia1Click(Sender: TObject);
    procedure Apicultor1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastro_colmeia: Tcadastro_colmeia;

implementation

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure Tcadastro_colmeia.BitBtn1Click(Sender: TObject);
begin


cadastro_colmeia.Close;
end;

procedure Tcadastro_colmeia.BitBtn2Click(Sender: TObject);
begin
DATAMODULE3.colmeia.Append;
end;

procedure Tcadastro_colmeia.BitBtn3Click(Sender: TObject);



begin

if (dblookupcombobox1.keyvalue=null) or  (dbcombobox3.text='') or (dbedit2.text='') or (dbcombobox7.text='') or (dbcombobox6.text='') then

begin
 messagedlg('Complete os campos obrigatórios!', mterror, [mbok], 0);
DBCombobox1.SetFocus;

end
else
begin

datamodule3.apiario.Edit;
datamodule3.apiarion_colmeia.Value:=datamodule3.apiarion_colmeia.Value+1;
datamodule3.apiario.Post;
datamodule3.colmeiaCod_apiario.Text:=datamodule3.apiarioCod_apiario.Text;
DATAMODULE3.colmeia.Post;

 dbedit1.Text:= datetostr(now);
 messagedlg('Colmeia cadastrada com sucesso!', mtinformation, [mbok], 0);
 DATAMODULE3.colmeia.Append;
 end;

end;

procedure Tcadastro_colmeia.BitBtn4Click(Sender: TObject);
begin
DATAMODULE3.colmeia.ClearFields;
end;

procedure Tcadastro_colmeia.Timer1Timer(Sender: TObject);

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

procedure Tcadastro_colmeia.Colmia1Click(Sender: TObject);
begin
datamodule3.colmeia.append;
INICIO.VISIBLE:=FALSE;
cadastro_colmeia.ShowModal;
end;

procedure Tcadastro_colmeia.Apicultor1Click(Sender: TObject);
begin

datamodule3.colmeia.append;
INICIO.VISIBLE:=FALSE;
cadastro_apicultor.ShowModal;

end;

procedure Tcadastro_colmeia.FormShow(Sender: TObject);
begin
dbedit1.Text:= datetostr(now);
DBCombobox3.ItemIndex:=0;
end;

procedure Tcadastro_colmeia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
datamodule3.colmeia.Cancel;
end;

procedure Tcadastro_colmeia.DBGrid1DblClick(Sender: TObject);
begin
datamodule3.colmeia.Cancel;

datamodule3.colmeia.Filtered:= false;
datamodule3.colmeia.Filter:= 'cod_apiario='+ADOQuery1['cod_apiario'];
datamodule3.colmeia.Filtered:= true;
datamodule3.colmeia.Filtered:= false;
end;

procedure Tcadastro_colmeia.DBLookupComboBox2CloseUp(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.clear;
ADOQuery1.SQL.Add('SELECT * FROM colmeia WHERE cod_apiario = "'+inttostr(DBLookupcombobox2.keyvalue)+'"');
ADOQuery1.Open;
end;

procedure Tcadastro_colmeia.Button1Click(Sender: TObject);
begin
cadastro_colmeia.ClientHeight := 725;
end;

procedure Tcadastro_colmeia.Button2Click(Sender: TObject);
begin
cadastro_colmeia.ClientHeight := 460;
end;

end.
