unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RpDefine, RpRave, ExtCtrls, jpeg;

type
  Tfichas = class(TForm)
    BitBtn1: TBitBtn;
    RvProject1: TRvProject;
    RvProject2: TRvProject;
    RvProject3: TRvProject;
    RvProject4: TRvProject;
    imgcolheita: TImage;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    BitBtn7: TBitBtn;
    imgrevisao: TImage;
    imgcolmeia: TImage;
    imgapiario: TImage;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);

      
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fichas: Tfichas;

implementation

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17,
  Unit18, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure Tfichas.BitBtn1Click(Sender: TObject);
begin
fichas.Close;
end;

procedure Tfichas.BitBtn2Click(Sender: TObject);
begin
rvproject1.Execute;
end;

procedure Tfichas.BitBtn3Click(Sender: TObject);
begin
rvproject2.Execute;
end;

procedure Tfichas.BitBtn7Click(Sender: TObject);
begin

if radiobutton4.Checked=true then
rvproject3.Execute;


if radiobutton3.Checked=true then
rvproject4.Execute;


if radiobutton1.Checked=true then
rvproject1.Execute;


if radiobutton2.Checked=true then
rvproject2.Execute;



end;



procedure Tfichas.RadioButton4Click(Sender: TObject);
begin
if  radiobutton4.Checked=true then
begin
imgapiario.Visible:=true;
imgcolmeia.Visible:=false;
imgrevisao.Visible:=false;
imgcolheita.Visible:=false;
end

end;

procedure Tfichas.RadioButton3Click(Sender: TObject);
begin

if radiobutton3.Checked=true then
begin
imgapiario.Visible:=false;
imgcolmeia.Visible:=true;
imgrevisao.Visible:=false;
imgcolheita.Visible:=false;
end

end;

procedure Tfichas.RadioButton1Click(Sender: TObject);
begin

if radiobutton1.Checked=true then
begin
imgapiario.Visible:=false;
imgcolmeia.Visible:=false;
imgrevisao.Visible:=true;
imgcolheita.Visible:=false;
end

end;

procedure Tfichas.RadioButton2Click(Sender: TObject);
begin
if radiobutton2.Checked=true then
begin
imgapiario.Visible:=false;
imgcolmeia.Visible:=false;
imgrevisao.Visible:=false;
imgcolheita.Visible:=true;
end
end;

end.
