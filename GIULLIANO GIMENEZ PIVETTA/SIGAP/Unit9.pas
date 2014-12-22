unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, Menus, jpeg,
  ExtCtrls;

type
  Tcadastro_apiario = class(TForm)
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBText1: TDBText;
    DBComboBox1: TDBComboBox;
    Image1: TImage;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastro_apiario: Tcadastro_apiario;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure Tcadastro_apiario.BitBtn1Click(Sender: TObject);
begin

cadastro_apiario.CLOSE;
end;

procedure Tcadastro_apiario.BitBtn2Click(Sender: TObject);
begin
DATAMODULE3.apiario.Append;
end;

procedure Tcadastro_apiario.BitBtn4Click(Sender: TObject);

begin

if (dbedit2.text = '') or (dbedit3.text = '') or (dbcombobox1.Text = '') then
begin
messagedlg('Complete os campos obrigatórios!', mterror, [mbok], 0);
dbedit2.SetFocus;
end

else

begin
DATAMODULE3.apiario.Post;

messagedlg('Apiario cadastrado com sucesso!', mtinformation, [mbok], 0);
DATAMODULE3.apiario.append;
end;

end;



procedure Tcadastro_apiario.BitBtn3Click(Sender: TObject);
begin
DATAMODULE3.apiario.DELETE;
end;

end.
