unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, ADODB, jpeg, ExtCtrls;

type
  Tlogin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login: Tlogin;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure Tlogin.Button2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure Tlogin.Button1Click(Sender: TObject);


begin


adoquery1.Close;
adoquery1.SQL.Clear;
adoquery1.SQL.Add('select * from usuario where login="'+edit1.Text+'" and senha="'+edit2.text+'"');
adoquery1.Open;
adoquery1.Active:=true;

if adoquery1.Eof then
  showmessage('Us�ario invalido')
else
  login.close;



  end;

procedure Tlogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
button1click(sender);
end;

end.
