unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RpRave, RpDefine, RpCon, RpConDS, DB, ADODB,
  ExtCtrls, Grids, DBGrids, DBCtrls;

type
  Trelatorio = class(TForm)
    BitBtn1: TBitBtn;
    RvDataSetConnection1: TRvDataSetConnection;
    RvProject1: TRvProject;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    RvProject2: TRvProject;
    RvProject3: TRvProject;
    RvProject4: TRvProject;
    RvProject5: TRvProject;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure DBLookupComboBox5CloseUp(Sender: TObject);
    procedure DBLookupComboBox6CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relatorio: Trelatorio;

implementation

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17,
  Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure Trelatorio.BitBtn1Click(Sender: TObject);
begin
relatorio.close;
end;

procedure Trelatorio.BitBtn2Click(Sender: TObject);
begin


if radiobutton1.checked = true then
  begin
  adoquery1.Close;
  adoquery1.SQL.Clear;
  adoquery1.SQL.add('select * from Apiario');
  adoquery1.Open;
  RvProject1.Execute;
  end;





 if radiobutton2.checked = true then


    begin
        if (dblookupcombobox1.KeyValue=null)then
        begin
        messagedlg('Complete os campos obrigatórios!', mterror, [mbok], 0);
        DBlookupcombobox1.SetFocus;
        end
   else
        begin
        adoquery1.Close;
        adoquery1.SQL.Clear;
        adoquery1.SQL.add('select * from colmeia where cod_apiario="'+inttostr(dblookupcombobox1.keyvalue)+'" ');
        adoquery1.Open;
        RvProject2.Execute;
        end;
   end;


  if radiobutton3.checked = true then
   begin
        if (dblookupcombobox2.KeyValue=null)then
        begin
        messagedlg('Complete os campos obrigatórios!', mterror, [mbok], 0);
        DBlookupcombobox2.SetFocus;
        end
   else
        begin
        adoquery1.Close;
        adoquery1.SQL.Clear;
        adoquery1.SQL.add('select * from producao p, apiario a where p.cod_apiario= "'+inttostr(dblookupcombobox2.keyvalue)+'" and  a.cod_apiario = p.cod_apiario ');
        adoquery1.Open;
        RvProject3.Execute;
        end;

   end;



  if radiobutton4.checked = true then
  begin
        if (dblookupcombobox3.KeyValue=null) or (dblookupcombobox4.KeyValue=null) then
        begin
        messagedlg('Complete os campos obrigatórios!', mterror, [mbok], 0);
        DBlookupcombobox3.SetFocus;
        end
  else
      begin
      adoquery1.Close;
      adoquery1.SQL.Clear;
      adoquery1.SQL.add('SELECT c.identificador, R.* FROM colmeia c, coleta r WHERE c.N_colm = r.N_colm and r.N_colm ="'+inttostr(dblookupcombobox4.keyvalue)+'"  ');
      adoquery1.Open;
      RvProject4.Execute;
      end;

  end;


  if radiobutton5.checked = true then
  begin
    if (dblookupcombobox5.KeyValue=null) or (dblookupcombobox6.KeyValue=null) then
    begin
     messagedlg('Complete os campos obrigatórios!', mterror, [mbok], 0);
     DBlookupcombobox5.SetFocus;
    end

    else

  begin
  adoquery1.Close;
  adoquery1.SQL.Clear;
  adoquery1.SQL.add('SELECT c.identificador, R.N_COLM, R.AVALIACAO, R.DATA_REV, R.DATA_PROXIMAREVISAO, R.OBS FROM colmeia c, revisao r WHERE c.N_colm = r.N_colm and r.N_colm ="'+inttostr(dblookupcombobox6.keyvalue)+'"  ');
  adoquery1.Open;
  RvProject5.Execute;
  end;

  end;

   end;
   



procedure Trelatorio.DBLookupComboBox2CloseUp(Sender: TObject);
var
codapiario:integer;

begin
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM  apiario a, colmeia c WHERE ');
ADOQuery2.SQL.add('a.cod_apiario = c.cod_apiario and c.cod_apiario = "'+inttostr(codapiario)+'"');
ADOQuery2.Open;
end;

procedure Trelatorio.DBLookupComboBox4CloseUp(Sender: TObject);
var
codcolmeia:integer;

begin

if not ADOQuery1.Eof then
begin
 //a codcolmeia:= ADOQuery1['n_colm'];
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT R.N_COLM, R.DATA_coleta, r.producao, R.OBS  FROM colmeia c, coleta r WHERE ');
  ADOQuery2.SQL.add('c.N_colm = r.N_colm and r.N_colm = "'+inttostr(codcolmeia)+'" ');
  ADOQuery2.Open;

end;












 end;


procedure Trelatorio.RadioButton2Click(Sender: TObject);
begin

if radiobutton2.Checked=true then

begin
dblookupcombobox1.Enabled:=true;
dblookupcombobox2.Enabled:=false;
dblookupcombobox3.Enabled:=false;
dblookupcombobox4.Enabled:=false;
dblookupcombobox5.Enabled:=false;
dblookupcombobox6.Enabled:=false;
end;

end;

procedure Trelatorio.RadioButton3Click(Sender: TObject);
begin
if radiobutton3.Checked=true then

begin
dblookupcombobox1.Enabled:=false;
dblookupcombobox2.Enabled:=true;
dblookupcombobox3.Enabled:=false;
dblookupcombobox4.Enabled:=false;
dblookupcombobox5.Enabled:=false;
dblookupcombobox6.Enabled:=false;
end;
end;

procedure Trelatorio.RadioButton4Click(Sender: TObject);
begin

if radiobutton4.Checked=true then

begin
dblookupcombobox1.Enabled:=false;
dblookupcombobox2.Enabled:=false;
dblookupcombobox3.Enabled:=true;
dblookupcombobox4.Enabled:=false;
dblookupcombobox5.Enabled:=false;
dblookupcombobox6.Enabled:=false;
end;

end;

procedure Trelatorio.RadioButton5Click(Sender: TObject);
begin

if radiobutton5.Checked=true then

begin
dblookupcombobox1.Enabled:=false;
dblookupcombobox2.Enabled:=false;
dblookupcombobox3.Enabled:=false;
dblookupcombobox4.Enabled:=false;
dblookupcombobox5.Enabled:=true;
dblookupcombobox6.Enabled:=false;
end;

end;

procedure Trelatorio.DBLookupComboBox3CloseUp(Sender: TObject);
begin



begin

dblookupcombobox4.Enabled:=true;

end;

end;

procedure Trelatorio.DBLookupComboBox5CloseUp(Sender: TObject);




begin


dblookupcombobox6.Enabled:=true;




end;

procedure Trelatorio.DBLookupComboBox6CloseUp(Sender: TObject);

VAR
codcolmeia: integer;
begin

if not ADOQuery1.Eof then
begin
  //codcolmeia:= DBLookupCombobox6.KeyValue;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT c.identificador, R.N_COLM, R.AVALIACAO, R.DATA_REV, R.DATA_PROXIMAREVISAO, R.OBS FROM colmeia c, revisao r WHERE ');
  ADOQuery1.SQL.add('c.N_colm = r.N_colm and r.N_colm = "'+inttostr(DbLookupCombobox6.KeyValue)+'" ');
  ADOQuery1.Open;
end

end ;


end.
