unit usprite1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons,   MPlayer;

type
  TMain = class(TForm)
    ImgBackGround: TImage;
    Bevel1: TBevel;
    ImaBot: TImage;
    Panel1: TPanel;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    panel3: TPanel;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Panel4: TPanel;
    Label1: TLabel;
    MP1: TMediaPlayer;
    MP2: TMediaPlayer;
    MPAla: TMediaPlayer;
    MPerde: TMediaPlayer;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    procedure MoveSprite;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ImaBotClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer5Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
   procedure Monta;
   procedure AjustaColuna1;
   procedure AjustaColuna2;
   procedure AjustaColuna3;
    { Private declarations }
  public
  PreQtd   : array[1..8] of integer; //quantidade de premios
  PrePer   : array[1..8] of Double;  //durante quanto tempo
  PreDes   : array[1..8] of string[30]; //descricao do premio
  PreHor   : array[1..8] of double; //a partir de que horas
  PreSoma  : array[1..8] of double; //de quanto em quanto
  PreQuando: array[1..8] of double; //hora que vai dar
    { Public declarations }
  end;

var
  Main: TMain;
  Hora, HoraNow, Horada : string[5]; 
  FiGu : array[1..8] of tBitMap;
  Fila : array[1..3,1..8] of integer;
  Bota1, Bota2, Bota3 : TBitmap;
  conta : integer;
  Bits1, Bits2, Bits3  : array[1..8] of integer;
  prima1 :  string[8]; {= '12345687';}
  prima2 :  string[8]; {= '73512468'; }
  prima3 :  string[8]; {= '87654321'; }
  K1, K2, K3, fila1, fila2, fila3 : integer;
  premios, NumGera : integer;
  Sorte1, Sorte2, Sorte3 : TstringList;
  Jogou, Ganhou, pares : Integer;
  dapremio : boolean;
  Mens : string;
  Dire : string;
implementation

uses UConf;

{$R *.DFM}


Procedure TMain.AjustaColuna1;
Begin
Case Fila1 of
1: Begin
   Image11.Picture.Graphic := Figu[2];
   Image13.Picture.Graphic := Figu[3];
   end;
2: Begin
   Image11.Picture.Graphic := Figu[3];
   Image13.Picture.Graphic := Figu[4];
   end;
3: Begin
   Image11.Picture.Graphic := Figu[4];
   Image13.Picture.Graphic := Figu[5];
   end;

4: Begin
   Image11.Picture.Graphic := Figu[5];
   Image13.Picture.Graphic := Figu[6];
   end;
5: Begin
   Image11.Picture.Graphic := Figu[6];
   Image13.Picture.Graphic := Figu[7];
   end;
6: Begin
   Image11.Picture.Graphic := Figu[7];
   Image13.Picture.Graphic := Figu[8];
   end;
7: Begin
   Image11.Picture.Graphic := Figu[8];
   Image13.Picture.Graphic := Figu[1];
   end;
8: Begin
   Image11.Picture.Graphic := Figu[1];
   Image13.Picture.Graphic := Figu[2];
   end;

end;

end;


Procedure TMain.AjustaColuna2;
Begin
Case Fila1 of
1: Begin
   Image21.Picture.Graphic := Figu[7];
   Image23.Picture.Graphic := Figu[8];
   end;
2: Begin
   Image21.Picture.Graphic := Figu[1];
   Image23.Picture.Graphic := Figu[3];
   end;
3: Begin
   Image21.Picture.Graphic := Figu[2];
   Image23.Picture.Graphic := Figu[4];
   end;

4: Begin
   Image21.Picture.Graphic := Figu[5];
   Image23.Picture.Graphic := Figu[6];
   end;
5: Begin
   Image21.Picture.Graphic := Figu[7];
   Image23.Picture.Graphic := Figu[8];
   end;
6: Begin
   Image21.Picture.Graphic := Figu[1];
   Image23.Picture.Graphic := Figu[2];
   end;
7: Begin
   Image21.Picture.Graphic := Figu[3];
   Image23.Picture.Graphic := Figu[4];
   end;
8: Begin
   Image21.Picture.Graphic := Figu[5];
   Image23.Picture.Graphic := Figu[6];
   end;

end;

end;

Procedure TMain.AjustaColuna3;
Begin
Case Fila1 of
1: Begin
   Image31.Picture.Graphic := Figu[5];
   Image33.Picture.Graphic := Figu[6];
   end;
2: Begin
   Image31.Picture.Graphic := Figu[7];
   Image33.Picture.Graphic := Figu[8];
   end;
3: Begin
   Image31.Picture.Graphic := Figu[1];
   Image33.Picture.Graphic := Figu[2];
   end;

4: Begin
   Image31.Picture.Graphic := Figu[1];
   Image33.Picture.Graphic := Figu[2];
   end;
5: Begin
   Image31.Picture.Graphic := Figu[3];
   Image33.Picture.Graphic := Figu[4];
   end;
6: Begin
   Image31.Picture.Graphic := Figu[5];
   Image33.Picture.Graphic := Figu[7];
   end;
7: Begin
   Image31.Picture.Graphic := Figu[8];
   Image33.Picture.Graphic := Figu[3];
   end;
8: Begin
   Image31.Picture.Graphic := Figu[4];
   Image33.Picture.Graphic := Figu[5];
   end;

end;

end;









procedure TMain.Monta;
var
I, J, K, Num, R1, R2, R3 : integer;
Pega1, Pega2, Pega3 : string;
Label
Pula;



Begin


K1 := 0;
K2 := 0;
K3 := 0;

Prima1 := '';
Prima2 := '';
Prima3 := '';


//A Nova rotina;


NumGera := Random(999999999);


For I:=1 to 8 do
Begin
R1  := NumGera mod I;
Sorte1.exchange(I-1,R1);
Sorte2.exchange(I-1,R1);
Sorte3.exchange(I-1,R1);
end;

For I:=0 to 7 do
Begin
Prima1 := Prima1 + Sorte1.strings[I];
Prima2 := Prima2 + Sorte2.strings[I];
Prima3 := Prima3 + Sorte3.strings[I];
end;


conta := 0;
For I:=1 to 8 do
Begin
Fila[1,I] := strtoint(copy(prima1,I,1));
Fila[2,I] := strtoint(copy(prima2,I,1));
Fila[3,I] := strtoint(copy(prima3,I,1));
end;
Image11.picture.graphic  := Figu[Fila[1,1]];
Image12.picture.graphic  := Figu[Fila[1,2]];
Image13.picture.graphic  := Figu[Fila[1,3]];


Image21.picture.graphic  := Figu[Fila[2,1]];
Image22.picture.graphic  := Figu[Fila[2,2]];
Image23.picture.graphic  := Figu[Fila[2,3]];

Image31.picture.graphic  := Figu[Fila[3,1]];
Image32.picture.graphic  := Figu[Fila[3,2]];
Image33.picture.graphic  := Figu[Fila[3,3]];

Timer1.enabled := true;
MPerde.stop;
Mperde.rewind;
MP2.stop;
MP2.rewind;
MPAla.stop;
MPAla.rewind;
MP1.play;


end;



procedure TMain.MoveSprite;
var
pararfigu,  Minuy,F : integer;
HHy, MMy,SSy,Msec : word;

horay : string[5];
begin

        PararFigu := 0;

        HoraNow:= formatdatetime('HH:MM', time);

        For F:=1 to 8 do
        Begin
        HoraDa := formatdatetime('HH:MM',Prequando[F]);
        IF Preqtd[F] > 0 then
           Begin
           If HoraNow >= HoraDa then
               Begin
               PararFigu := F;
               end;
           end;
        end;







Conta := conta + 1;


IF Conta < 30  then
 Begin
 K1:=K1+1;
 If K1 > 6 then  K1:=1;
 Image11.Picture.Graphic := Figu[strtoint(copy(prima1,K1,1))];
 Image12.Picture.Graphic := Figu[strtoint(copy(prima1,K1+1,1))];
 Fila1 := strtoint(copy(prima1,K1+1,1));
 Image13.Picture.Graphic := Figu[strtoint(copy(prima1,K1+2,1))];
 end
 else
 begin
 IF PararFigu <> 0 then
   Begin
    Image12.Picture.Graphic := Figu[pararfigu];
    Fila1 := pararfigu;
    AjustaColuna1;
    Dapremio := true;
   end;
 end;

IF Conta < 40  then
 Begin
 K2:=K2+1;
 If K2 > 6 then  K2:=1;
 Image21.Picture.Graphic := Figu[strtoint(copy(prima2,K2,1))];
 Image22.Picture.Graphic := Figu[strtoint(copy(prima2,K2+1,1))];
 Fila2 := strtoint(copy(prima2,K2+1,1));
 Image23.Picture.Graphic := Figu[strtoint(copy(prima2,K2+2,1))];
 end
 else
 begin
 IF Dapremio then
        Begin
          Image22.Picture.Graphic := Figu[Fila1];
           Fila2 := fila1;
           AjustaColuna2;

        end;
 end;

IF Conta < 50  then
Begin
K3:=K3+1;
If K3 > 6 then  K3:=1;
Image31.Picture.Graphic := Figu[strtoint(copy(prima3,K3,1))];
Image32.Picture.Graphic := Figu[strtoint(copy(prima3,K3+1,1))];
Fila3 := strtoint(copy(prima3,K3+1,1));
Image33.Picture.Graphic := Figu[strtoint(copy(prima3,K3+2,1))];
end
else
begin
MP1.stop;
MP1.rewind;
Timer1.enabled := false;

 IF Dapremio then
      Begin
      Preqtd[Fila1]    := Preqtd[Fila1] - 1;
      Prequando[Fila1] := Prequando[Fila1] + Presoma[Fila1];
      Image32.Picture.Graphic := Figu[Fila1];
      Fila3 := Fila2;
      AjustaColuna3;

      Timer5.enabled := false;
      Mens := 'PARABÉNS - você ganhou '+Predes[Fila1];
      Timer5.enabled := true;
      MP2.play;


      end
      else
      begin

       IF (Fila1 = Fila2) and (Fila2 = Fila3) then
       Begin
         If Fila1 = 8 Then fila1 := 0;
         Image32.Picture.Graphic := Figu[Fila1+1];
         Fila3 := Fila1+1;
       end;
        MPerde.play;
      end;



{ IF (Fila1 = Fila2) and (Fila2 = Fila3) then
   Begin
   Ganhou := Ganhou + 1;
   Label1.left    := 475;
   Timer5.enabled := false;
   Mens := 'PARABÉNS - você ganhou '+Predes[Fila1];
   Timer5.enabled := true;
   MP2.play;
   IF Premios > 0 then
   premios := premios - 1;
   end
   else
   begin
   IF Fila1 = fila2 then
      Begin
       MPerde.play;
       Pares := Pares + 1;
      end
      else
      begin
       IF Fila2 = fila3 then
          Begin
          MPerde.play;
          Pares := Pares + 1;
          end
          else
          begin
          MPerde.play;
          end;
      end;

   end; }

end;
end;

procedure TMain.FormCreate(Sender: TObject);
var
I,J : integer;
begin

Dire := GetCurrentDir;

MP2.filename := Dire+'\ganha.wav';
MP1.filename := Dire+'\inicio.wav';
MPala.filename := Dire+'\alavan.wav';
MPerde.filename := Dire+'\perde.wav';

MP2.autoenable := true;
MP1.autoenable := true;
MPala.autoenable := true;
MPerde.autoenable := true;

MP2.autoopen := true;
MP1.autoopen := true;
MPala.autoopen := true;
MPerde.autoopen := true;

MP2.Open;
MP1.open;
MPala.open;
MPerde.open;


mens := 'Ganhe um brinde tentando a sorte nesta incrível máquina.'+
                     ' Para jogar basta pressionar a tecla "Enter".';

Ganhou := 0;
Jogou  := 0;
Pares  := 0;

premios := 0;

conta := 0;

 Bota1 := Tbitmap.create;
 Bota2 := Tbitmap.create;
 Bota3 := Tbitmap.create;
 Bota3.loadfromfile(Dire+'\bola01.bmp');
 Bota1.loadfromfile(Dire+'\bola02.bmp');
 Bota2.loadfromfile(Dire+'\bola03.bmp');

 Hora := formatdatetime('HH:MM', time);

 For I:= 1 to 8 do
 Begin
 Figu[I] := Tbitmap.create;
 Preqtd[I] := 0;
 PrePer[I] := 0;
 PreDes[I] := '';
 PreHor[I] := strtotime(hora);
 PreSoma[I]:= 0;
 PreQuando[I]:=0;

 end;

 Figu[1].loadfromfile(Dire+'\01.bmp');
 Figu[2].loadfromfile(Dire+'\02.bmp');
 Figu[3].loadfromfile(Dire+'\03.bmp');
 Figu[4].loadfromfile(Dire+'\04.bmp');
 Figu[5].loadfromfile(Dire+'\05.bmp');
 Figu[6].loadfromfile(Dire+'\06.bmp');
 Figu[7].loadfromfile(Dire+'\07.bmp');
 Figu[8].loadfromfile(Dire+'\08.bmp');

 Sorte1 := TstringList.create;
 Sorte2 := TstringList.create;
 Sorte3 := TstringList.create;
 Sorte1.add('1');
 Sorte1.add('3');
 Sorte1.add('2');
 Sorte1.add('4');
 Sorte1.add('6');
 Sorte1.add('5');
 Sorte1.add('7');
 Sorte1.add('8');

 Sorte2.add('1');
 Sorte2.add('2');
 Sorte2.add('3');
 Sorte2.add('4');
 Sorte2.add('5');
 Sorte2.add('6');
 Sorte2.add('8');
 Sorte2.add('7');

 Sorte3.add('2');
 Sorte3.add('1');
 Sorte3.add('3');
 Sorte3.add('5');
 Sorte3.add('4');
 Sorte3.add('6');
 Sorte3.add('7');
 Sorte3.add('8');


 Timer1.Interval := 50;
 Monta;

end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
  MoveSprite;
end;







procedure TMain.ImaBotClick(Sender: TObject);
begin

IF Timer1.enabled = true then exit;

IF Not Dapremio   then
Begin

mens := 'Ganhe um brinde tentando a sorte nesta incrível máquina.'+
                     ' Para jogar basta pressionar a tecla "Enter".';


Jogou := Jogou + 1;
dapremio := false;
{Edit1.text := InttoStr(Jogou);}
MPAla.play;
Timer2.enabled := true;
end;
end;

procedure TMain.Timer2Timer(Sender: TObject);
begin
Timer2.enabled := false;
Imabot.Picture.graphic := Bota1;
Timer3.enabled := true;
end;

procedure TMain.Timer3Timer(Sender: TObject);
begin
Timer3.enabled := false;
Imabot.Picture.graphic := Bota2;
Timer4.enabled := true;
end;

procedure TMain.Timer4Timer(Sender: TObject);
begin
Timer4.enabled := false;
Imabot.Picture.graphic := Bota3;
Monta;
end;

procedure TMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
IF (Key = #13) and (Timer1.enabled = false) then
   Begin
   MP2.stop;
   MP2.Rewind;
   MPerde.stop;
   Mperde.rewind;
   ImaBotClick(self);
   end;
end;







procedure TMain.Timer5Timer(Sender: TObject);
var
Troca : boolean;
begin
Label1.left := label1.left - 10;
IF Label1.Left < - (Label1.width -100) then
   Begin
   Label1.left    := 475;
   Label1.Caption := mens;
   end
   else
   begin
   Label1.Caption := mens;
   end;

end;




procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
I:integer;
begin

MP2.close;
MP1.close;
MPala.close;
MPerde.close;


Timer1.enabled := false;
Timer2.enabled := false;
Timer3.enabled := false;
Timer4.enabled := false;
Timer5.enabled := false;
Bota1.free;
Bota2.free;
Bota3.free;
Sorte1.free;
Sorte2.free;
Sorte3.free;
For I:=1 to 8 do
Begin
Figu[I].free;
end;


end;

procedure TMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


  If (Shift = [ssAlt, ssCtrl]) and (Key in [VK_HOME])  then

      Begin
      Fconf := TFconf.create(self);
      FConf.showmodal;
      end;
      
  IF Key in [VK_HOME] then Dapremio := false;


  {  (Key in [VK_UP, VK_DOWN, VK_LEFT, VK_RIGHT, VK_END,
   VK_HOME, VK_PRIOR, VK_NEXT]) }


end;



end.
