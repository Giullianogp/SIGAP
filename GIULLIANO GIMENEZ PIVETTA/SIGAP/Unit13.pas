unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  Tgerenciamento_usuario = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gerenciamento_usuario: Tgerenciamento_usuario;

implementation

uses Unit1, Unit10, Unit11, Unit12, Unit2, Unit3, Unit4, Unit5, Unit6,
  Unit7, Unit8, Unit9;

{$R *.dfm}

procedure Tgerenciamento_usuario.BitBtn4Click(Sender: TObject);
begin
cadastro_usuario.Visible:=true;
 DATAMODULE3.USUARIO.Append;
gerenciamento_usuario.close;

end;

procedure Tgerenciamento_usuario.BitBtn1Click(Sender: TObject);
begin
cadastro_usuario.Visible:=true;
datamodule3.usuario.append;
gerenciamento_usuario.close;

end;

procedure Tgerenciamento_usuario.BitBtn2Click(Sender: TObject);
begin

datamodule3.usuario.delete;

end;

procedure Tgerenciamento_usuario.BitBtn3Click(Sender: TObject);
begin
datamodule3.usuario.edit;
end;

end.
