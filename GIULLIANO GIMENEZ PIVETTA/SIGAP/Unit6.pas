unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, Mask, DB, ADODB,
  ExtCtrls;

type
  Tcontrole_equip = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBMemo1: TDBMemo;
    DBText2: TDBText;
    DBComboBox1: TDBComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ComboBox1: TComboBox;
    BitBtn6: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText3: TDBText;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  controle_equip: Tcontrole_equip;

implementation

uses Unit5, Unit1, Unit2, Unit3, Unit4, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure Tcontrole_equip.BitBtn1Click(Sender: TObject);
begin
INICIO.Visible:=TRUE;
controle_equip.Close;
end;

procedure Tcontrole_equip.BitBtn3Click(Sender: TObject);
begin
datamodule3.equipamento.Filtered:= false;
DATAMODULE3.equipamento.APPEND;
Datamodule3.equipamento['quantidade']:= 1;
DBCombobox1.ItemIndex:= 0;
end;

procedure Tcontrole_equip.BitBtn2Click(Sender: TObject);
begin
if (DBEdit2.Text = '') or (DBMemo1.Text = '') or (DBCombobox1.ItemIndex = 0) then
begin
messagedlg('Complete os campos obrigat�rios!', mterror, [mbok], 0);
DBCombobox1.SetFocus;
end
else
begin
DATAMODULE3.equipamento.POST;
messagedlg('Equipamento cadastrado com sucesso!', mtinformation, [mbok], 0);
end;

end;

procedure Tcontrole_equip.BitBtn4Click(Sender: TObject);
begin
DATAMODULE3.equipamento.DELETE;
end;

procedure Tcontrole_equip.ComboBox1CloseUp(Sender: TObject);

begin
ADOQUERY1.CLOSE;
adoquery1.SQL.clear;
adoquery1.SQL.Add('select nome as Nome, categoria as Categoria, quantidade as Quantidade, descricao as Descri��o from equipamento where categoria = "'+combobox1.items[combobox1.itemindex]+'"');
adoquery1.Open;


end;

procedure Tcontrole_equip.BitBtn5Click(Sender: TObject);

begin

controle_equip.clientheight:=600;
bitbtn5.Visible:= false;

end;

procedure Tcontrole_equip.BitBtn6Click(Sender: TObject);
begin
controle_equip.clientheight:=365;
bitbtn5.Visible:= true;
end;

procedure Tcontrole_equip.Button1Click(Sender: TObject);
begin
Datamodule3.equipamento.Edit;
Datamodule3.equipamento['quantidade']:= Datamodule3.equipamento['quantidade'] + 1;
//Datamodule3.equipamento.Post;
end;

procedure Tcontrole_equip.Button2Click(Sender: TObject);
begin
if datamodule3.equipamento['quantidade'] = 0 then
begin
  messagedlg('Quantidade n�o pode ser menor que 0', mterror, [mbok], 0);
end
else
begin
  Datamodule3.equipamento.Edit;
  Datamodule3.equipamento['quantidade']:= Datamodule3.equipamento['quantidade'] - 1;
  Datamodule3.equipamento.Post;
end;

end;

procedure Tcontrole_equip.DBGrid1DblClick(Sender: TObject);
begin
datamodule3.equipamento.Filter:= 'cod_equipamento='+  inttostr(ADOQuery1['cod_equipamento']);
datamodule3.equipamento.Filtered:= true;

end;

procedure Tcontrole_equip.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
datamodule3.equipamento.Filtered:= false;
end;

end.
