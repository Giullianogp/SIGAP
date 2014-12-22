unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, jpeg, ExtCtrls;

type
  Tlogin_cad_usuario = class(TForm)
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login_cad_usuario: Tlogin_cad_usuario;

implementation

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit2, Unit3, Unit4, Unit5,
  Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure Tlogin_cad_usuario.BitBtn1Click(Sender: TObject);
begin
adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Add('select * from usuario where login="'+edit1.Text+'" and senha="'+edit2.text+'"');
adoquery1.Open;
adoquery1.Active:=true;

if adoquery1.Eof then
  begin
  showmessage('Usúario invalido');
  edit1.clear;
  edit2.clear;

  end

  else
begin
  cadastro_usuario.Visible:=true;
  datamodule3.usuario.append;
  login_cad_usuario.close;
end;

  end;

procedure Tlogin_cad_usuario.BitBtn2Click(Sender: TObject);
begin
login_cad_usuario.close;
end;

procedure Tlogin_cad_usuario.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
bitbtn1click(sender);
end;

procedure Tlogin_cad_usuario.FormShow(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
end;

end.
