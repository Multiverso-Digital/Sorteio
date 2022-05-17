unit UConf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFConf = class(TForm)
    GroupBox1: TGroupBox;
    Esenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label7: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label8: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Label9: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Label10: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Label11: TLabel;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Label12: TLabel;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Button1: TButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    procedure Button1Click(Sender: TObject);
    procedure EsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConf: TFConf;

implementation

uses usprite1;

{$R *.DFM}






procedure TFConf.Button1Click(Sender: TObject);
var
I, HH, MM, J, Minu,SS : integer;
soma : double;
Horax : string[5];
begin

With Main do
Begin


PreQtd[1] := strtoint(Edit2.text);
PrePer[1] := Strtotime(Edit3.text);
PreDes[1] := Edit4.text;

PreQtd[2] := strtoint(Edit5.text);
PrePer[2] := Strtotime(Edit6.text);
PreDes[2] := Edit7.text;

PreQtd[3] := strtoint(Edit8.text);
PrePer[3] := Strtotime(Edit9.text);
PreDes[3] := Edit10.text;

PreQtd[4] := strtoint(Edit11.text);
PrePer[4] := Strtotime(Edit12.text);
PreDes[4] := Edit13.text;

PreQtd[5] := strtoint(Edit14.text);
PrePer[5] := Strtotime(Edit15.text);
PreDes[5] := Edit16.text;

PreQtd[6] := strtoint(Edit17.text);
PrePer[6] := Strtotime(Edit18.text);
PreDes[6] := Edit19.text;

PreQtd[7] := strtoint(Edit20.text);
PrePer[7] := Strtotime(Edit21.text);
PreDes[7] := Edit22.text;

PreQtd[8] := strtoint(Edit23.text);
PrePer[8] := Strtotime(Edit24.text);
PreDes[8] := Edit25.text;


PreHor[1] := StrToTime(edit26.text);
PreHor[2] := StrToTime(edit27.text);
PreHor[3] := StrToTime(edit28.text);
PreHor[4] := StrToTime(edit29.text);
PreHor[5] := StrToTime(edit30.text);
PreHor[6] := StrToTime(edit31.text);
PreHor[7] := StrToTime(edit32.text);
PreHor[8] := StrToTime(edit33.text);



For I:=1 to 8 do
 Begin
 IF  PreQtd[I] <> 0 then
   Begin
    Presoma[I]  := PrePer[I] / PreQtd[I];
    Prequando[I]:= PreHor[I] + Presoma[I];
   end;
{ HoraX := formatdatetime('HH:MM:SS', Prequando[I]);
 HH := strtoint(copy(horax,1,2));
 MM := strtoint(copy(horax,4,2));
 SS := strtoint(copy(horax,7,2));
 MINU := (HH*60)+(MM*60)+SS;
 quando[minu,I] := 'S';

 IF Preqtd[I] > 1 then
 Begin

 soma := prequando[I];

 For J:=2 to Preqtd[I] do
    Begin
    soma := soma + Presoma[I];
    HoraX := formatdatetime('HH:MM:SS', soma);
    HH := strtoint(copy(horax,1,2));
    MM := strtoint(copy(horax,4,2));
    SS := strtoint(copy(horax,7,2));
    MINU := (HH*60)+(MM*60)+SS;
    quando[minu,I] := 'S';
    end;
 end; }
   end;
end;
close;
end;

procedure TFConf.EsenhaKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
   Begin
   IF esenha.text <> 'aw1122'  then
       Begin
       Showmessage('Senha inválida');
       exit;
       end
       else
       begin
       GroupBox1.visible := true;
       end;
   end;

end;


procedure TFConf.FormShow(Sender: TObject);
begin
With Main do
Begin

Edit2.text := Inttostr(PreQtd[1]);
Edit3.text := formatdatetime('HH:MM', PrePer[1]);
Edit4.text := Predes[1];

Edit5.text := Inttostr(PreQtd[2]);
Edit6.text := formatdatetime('HH:MM', PrePer[2]);
Edit7.text := Predes[2];


Edit8.text := Inttostr(PreQtd[3]);
Edit9.text := formatdatetime('HH:MM', PrePer[3]);
Edit10.text := Predes[3];

Edit11.text := Inttostr(PreQtd[4]);
Edit12.text := formatdatetime('HH:MM', PrePer[4]);
Edit13.text := Predes[4];

Edit14.text := Inttostr(PreQtd[5]);
Edit15.text := formatdatetime('HH:MM', PrePer[5]);
Edit16.text := Predes[5];

Edit17.text := Inttostr(PreQtd[6]);
Edit18.text := formatdatetime('HH:MM', PrePer[6]);
Edit19.text := Predes[6];

Edit20.text := Inttostr(PreQtd[7]);
Edit21.text := formatdatetime('HH:MM', PrePer[7]);
Edit22.text := Predes[7];

Edit23.text := Inttostr(PreQtd[8]);
Edit24.text := formatdatetime('HH:MM', PrePer[8]);
Edit25.text := Predes[8];



edit26.text := formatdatetime('HH:MM', Prehor[1]);
edit27.text := formatdatetime('HH:MM', Prehor[2]);
edit28.text := formatdatetime('HH:MM', Prehor[3]);
edit29.text := formatdatetime('HH:MM', Prehor[4]);
edit30.text := formatdatetime('HH:MM', Prehor[5]);
edit31.text := formatdatetime('HH:MM', Prehor[6]);
edit32.text := formatdatetime('HH:MM', Prehor[7]);
edit33.text := formatdatetime('HH:MM', Prehor[8]);



end;
end;






end.
