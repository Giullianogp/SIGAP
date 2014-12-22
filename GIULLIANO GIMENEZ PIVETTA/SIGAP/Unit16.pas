unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, DB, ADODB;

type
  Tcontrole_producao = class(TForm)
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  controle_producao: Tcontrole_producao;

implementation

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit2, Unit3,
  Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit17;

{$R *.dfm}

procedure Tcontrole_producao.BitBtn1Click(Sender: TObject);
begin
INICIO.Visible:=TRUE;
controle_producao.Close;
end;

procedure Tcontrole_producao.BitBtn2Click(Sender: TObject);
begin

inserir_producao.showmodal;
end;

procedure Tcontrole_producao.DBLookupComboBox1CloseUp(Sender: TObject);
var
numcolm: integer;
begin


if dblookupcombobox1.keyvalue=null then
exit

else
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT count(n_colm) FROM colmeia WHERE cod_apiario = "'+inttostr(dblookupcombobox1.KeyValue)+'"');
ADOQUery1.Open;
numcolm:= ADOQuery1['count(n_colm)'];


ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT data as Data,peso_mel as Mel_Kg FROM producao WHERE cod_apiario = "'+inttostr(dblookupcombobox1.KeyValue)+'"');
ADOQUery1.Open;

ADOQuery1.Last;
label3.Caption:= floattostr(strtoint(ADOQuery1['Mel_Kg'])/numcolm);
{
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT avg(peso_mel) FROM producao WHERE cod_apiario = "'+inttostr(dblookupcombobox1.KeyValue)+'" ');
ADOQUery2.Open;
}
//label3.Caption := ADOQuery2['avg(peso_mel)'];


end ;

end;



procedure Tcontrole_producao.BitBtn3Click(Sender: TObject);
begin
adoquery1.Delete;
end;

end.
