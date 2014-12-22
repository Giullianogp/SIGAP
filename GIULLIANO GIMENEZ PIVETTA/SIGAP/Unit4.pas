unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, jpeg,
  Menus, ComCtrls;

type
  Tcadastro_apicultor = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Label10: TLabel;
    Label11: TLabel;
    labelerro: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastro_apicultor: Tcadastro_apicultor;

implementation

uses Unit3, Unit1, Unit2, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure Tcadastro_apicultor.BitBtn1Click(Sender: TObject);
begin
INICIO.Visible:=TRUE;
cadastro_apicultor.Close;
end;

procedure Tcadastro_apicultor.BitBtn3Click(Sender: TObject);
begin
DataModule3.apicultor.Delete;
end;

procedure Tcadastro_apicultor.BitBtn2Click(Sender: TObject);
begin

if (dbedit2.text = '') or (dbedit6.text='(  )    -    ') then
begin
  messagedlg('Complete os campos obrigat�rios!', mterror, [mbok], 0);
  dbedit2.SetFocus;
end

else
begin
  DataModule3.apicultor.POST;
  messagedlg('Apicultor cadastrado com sucesso!', mtinformation, [mbok], 0);
   DATAMODULE3.apicultor.Append;
  end

end;

procedure Tcadastro_apicultor.BitBtn4Click(Sender: TObject);
begin
DATAMODULE3.apicultor.Append;
end;

procedure Tcadastro_apicultor.Timer1Timer(Sender: TObject);
var



vw_ano,vw_mes,vw_dia, vw_semana: word;

vs_diasem : String;

vs_mes : String;

begin

 //Esse c�digo serve para rodar a hora

        StatusBar1.Panels[0].Text:= '    ' + timetostr(time);



        decodedate(now(),vw_ano,vw_mes,vw_dia);



        case vw_mes of

        1: vs_mes:= 'Janeiro';

        2: vs_mes:= 'Fevereiro';

        3: vs_mes:= 'Mar�o';

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

3: vs_diasem := 'Ter�a';

4: vs_diasem := 'Quarta';

5: vs_diasem := 'Quinta';

6: vs_diasem := 'Sexta';

7: vs_diasem := 'S�bado';

end;



StatusBar1.Panels[1].Text:='  '+ vs_diasem + ', ' +inttostr(vw_dia) +' de '+ vs_mes + ' de '

+inttostr(vw_ano);


end;

procedure Tcadastro_apicultor.BitBtn5Click(Sender: TObject);
var

dig1,dig2,i,cal: integer;
digitos: array [1..11] of integer;
controle: boolean;

begin


controle := false;
For i := 1 to length(dbedit3.text) - 3 do
Begin
If i < 4 then
digitos[i] := StrToInt(dbedit3.text [i])
Else
If (i >= 4) and (i < 7) then
digitos[i] := StrToInt(dbedit3.text [i+1])
Else
If (i >= 7) and (i < 10) then
digitos[i] := StrToInt(dbedit3.text [i+2])
Else
If (i >= 10) then
digitos[i] := StrToInt(dbedit3.text [i+3]);
End;
// Verifica se os digitos s�o iguais
For i := 1 to 10 do
If digitos[i] <> digitos[i+1] then
Begin
controle := true;
break;
End;
If controle then
Begin
controle := false;
// Primeiro Digito
cal :=(10 * digitos[1])+(9 * digitos[2])+(8 * digitos[3])+(7 * digitos[4])+(6 * digitos[5])+
(5 * digitos[6])+(4 * digitos[7])+(3 * digitos[8])+(2 * digitos[9]);
dig1 := 11-(cal mod 11);
if dig1 >= 10 then
dig1 := 0;
// Segundo Digito
cal :=(11 * digitos[1])+(10 * digitos[2])+(9 * digitos[3])+(8 * digitos[4])+(7 * digitos[5])+
(6 * digitos[6])+(5 * digitos[7])+(4 * digitos[8])+(3 * digitos[9])+(2 * dig1);
dig2 := 11-(cal mod 11);

If dig2 >= 10 then
dig2 := 0;


If ( dbedit3.text[13] = IntToStr(dig1) )and(dbedit3.text [14] = IntToStr(dig2) ) then
Begin
LabelErro.Caption:='CPF V�lido';
LabelErro.Color:=ClGreen;
LabelErro.Font.Color:=ClWhite;
End
Else
Begin
LabelErro.Caption:='CPF Inv�lido';
LabelErro.Color:=ClRed;
LabelErro.Font.Color:=ClWhite;
End;
End
Else
Begin
LabelErro.Caption:='CPF Inv�lido';
LabelErro.Color:=ClRed;
LabelErro.Font.Color:=ClWhite;

End;

End;







procedure Tcadastro_apicultor.Button2Click(Sender: TObject);

Var
dig1,dig2,i,cal : integer;
digitos : array [1..11] of integer;
controle : boolean;

Begin
controle := false;
For i := 1 to length(dbedit3.text) - 3 do
Begin
If i < 4 then
digitos[i] := StrToInt(dbedit3.text [i])
Else
If (i >= 4) and (i < 7) then
digitos[i] := StrToInt(dbedit3.text [i+1])
Else
If (i >= 7) and (i < 10) then
digitos[i] := StrToInt(dbedit3.text [i+2])
Else
If (i >= 10) then
digitos[i] := StrToInt(dbedit3.text [i+3]);
End;
// Verifica se os digitos s�o iguais
For i := 1 to 10 do
If digitos[i] <> digitos[i+1] then
Begin
controle := true;
break;
End;
If controle then
Begin
controle := false;
// Primeiro Digito
cal :=(10 * digitos[1])+(9 * digitos[2])+(8 * digitos[3])+(7 * digitos[4])+(6 * digitos[5])+
(5 * digitos[6])+(4 * digitos[7])+(3 * digitos[8])+(2 * digitos[9]);
dig1 := 11-(cal mod 11);
if dig1 >= 10 then
dig1 := 0;
// Segundo Digito
cal :=(11 * digitos[1])+(10 * digitos[2])+(9 * digitos[3])+(8 * digitos[4])+(7 * digitos[5])+
(6 * digitos[6])+(5 * digitos[7])+(4 * digitos[8])+(3 * digitos[9])+(2 * dig1);
dig2 := 11-(cal mod 11);
If dig2 >= 10 then
dig2 := 0;
If ( dbedit3.text[13] = IntToStr(dig1) )and(dbedit3.text [14] = IntToStr(dig2) ) then
Begin
LabelErro.Caption:='CPF V�lido';
LabelErro.Color:=ClGreen;
LabelErro.Font.Color:=Clgreen;
End
Else
Begin
LabelErro.Caption:='CPF Inv�lido';
LabelErro.Color:=ClRed;
LabelErro.Font.Color:=Clred;
End;
End
Else
Begin
LabelErro.Caption:='CPF Inv�lido';
LabelErro.Color:=ClRed;
LabelErro.Font.Color:=Clred;
End;
End;


procedure Tcadastro_apicultor.DBEdit3Exit(Sender: TObject);

Var
dig1,dig2,i,cal : integer;
digitos : array [1..11] of integer;
controle : boolean;

Begin
controle := false;
For i := 1 to length(dbedit3.text) - 3 do
Begin
If i < 4 then
digitos[i] := StrToInt(dbedit3.text [i])
Else
If (i >= 4) and (i < 7) then
digitos[i] := StrToInt(dbedit3.text [i+1])
Else
If (i >= 7) and (i < 10) then
digitos[i] := StrToInt(dbedit3.text [i+2])
Else
If (i >= 10) then
digitos[i] := StrToInt(dbedit3.text [i+3]);
End;
// Verifica se os digitos s�o iguais
For i := 1 to 10 do
If digitos[i] <> digitos[i+1] then
Begin
controle := true;
break;
End;
If controle then
Begin
controle := false;
// Primeiro Digito
cal :=(10 * digitos[1])+(9 * digitos[2])+(8 * digitos[3])+(7 * digitos[4])+(6 * digitos[5])+
(5 * digitos[6])+(4 * digitos[7])+(3 * digitos[8])+(2 * digitos[9]);
dig1 := 11-(cal mod 11);
if dig1 >= 10 then
dig1 := 0;
// Segundo Digito
cal :=(11 * digitos[1])+(10 * digitos[2])+(9 * digitos[3])+(8 * digitos[4])+(7 * digitos[5])+
(6 * digitos[6])+(5 * digitos[7])+(4 * digitos[8])+(3 * digitos[9])+(2 * dig1);
dig2 := 11-(cal mod 11);
If dig2 >= 10 then
dig2 := 0;
If ( dbedit3.text[13] = IntToStr(dig1) )and(dbedit3.text [14] = IntToStr(dig2) ) then
Begin
LabelErro.Caption:='CPF V�lido';
LabelErro.Color:=ClGreen;
LabelErro.Font.Color:=Clgreen;
End
Else
Begin
LabelErro.Caption:='CPF Inv�lido';
LabelErro.Color:=ClRed;
LabelErro.Font.Color:=Clred;
End;
End
Else
Begin
LabelErro.Caption:='CPF Inv�lido';
LabelErro.Color:=ClRed;
LabelErro.Font.Color:=Clred;
End;
End;


end.
