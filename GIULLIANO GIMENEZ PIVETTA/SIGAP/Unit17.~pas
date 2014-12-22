unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask;

type
  Tinserir_producao = class(TForm)
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBText1: TDBText;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inserir_producao: Tinserir_producao;

implementation

uses Unit3, Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16,
  Unit2, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure Tinserir_producao.BitBtn1Click(Sender: TObject);
begin
inserir_producao.Close;
end;

procedure Tinserir_producao.BitBtn2Click(Sender: TObject);
begin
if (dbedit4.Text = '') or (dbedit3.text='') then

begin
messagedlg('Complete os campos obrigatórios!', mterror, [mbok], 0);
dbedit4.setfocus;
end

else
begin

datamodule3.producao['cod_apiario']:= DbLookupCombobox1.KeyValue;
datamodule3.producao.Post;
controle_producao.ADOQuery1.Close;
controle_producao.ADOQuery1.SQL.Clear;
controle_producao.ADOQuery1.SQL.Add('SELECT * FROM producao WHERE cod_apiario = "'+inttostr(dblookupcombobox1.KeyValue)+'"');
controle_producao.ADOQUery1.Open;
messagedlg('Produção cadastrado com sucesso!', mtinformation, [mbok], 0);
DATAMODULE3.producao.Append;


end

end;

procedure Tinserir_producao.FormShow(Sender: TObject);
begin
datamodule3.producao.Insert;
DBLookupComboBox1.KeyValue:= controle_producao.DblookupCombobox1.KeyValue;
dbedit3.Text:=datetostr(now);
dbedit4.SetFocus;
end;

procedure Tinserir_producao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Datamodule3.producao.Cancel;
end;

end.
