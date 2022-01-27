unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, jpeg, StdCtrls, Menus;

type
  TForm4 = class(TForm)
    tmr1: TTimer;
    mm1: TMainMenu;
    N1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
   
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
   Buf, Car , Stena :TBitmap;
Steni:array[1..5] of TPoint;
 Avto:TPoint;// координаты х и у машины
 New,Score,Speed,i, Interval:Integer;
 m:Boolean;


implementation

uses Unit1, Unit2, Unit3, Unit5, Unit7, Unit8, Unit6;

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin


Buf:= TBitmap.Create;//выделяем память под графический буфер
   Buf.Width:=192;
   Buf.Height:=320;

  Car:=TBitmap.Create;
  Car.TransparentColor:=clWhite;
  Car.Transparent:=True;
  Car.LoadFromFile('машина.bmp');

   Stena:=TBitmap.Create;
   Stena.TransparentColor:=clWhite;
   Stena.Transparent:=True;
   Stena.LoadFromFile('куст.bmp');

   Avto.X:=1;
   Avto.Y:=4;
   Score:=0;

   New:=0;
   Speed:=0;

   for i:=1 to 5 do
   begin
     Steni[i].X:=-1;
     Steni[i].Y:=-1;

   end;
end;



procedure TForm4.tmr1Timer(Sender: TObject);
begin
  //проверка на поражение

for i:=1 to 5 do
begin
  if ((Steni[i].X>=0)and (Avto.X=Steni[i].X)and (Avto.Y * 64<=Steni[i].Y+16)and (Avto.Y*64>=Steni[i].Y))
  or ((Steni[i].X>=0)and (Avto.X=Steni[i].X)and (Avto.Y * 64+60<=Steni[i].Y+16) and (Avto.Y*64+60>=Steni[i].Y) ) then
  begin
    Form4.tmr1.Enabled:=False;
     ShowMessage('Game Over!');
  end;
end;
Randomize;
 Buf.Canvas.Brush.Color:=clBlue ;
 Buf.Canvas.Rectangle(0,0,192,320);

 //STENI
 for i:=1 to 5 do
 begin
   if  Steni[i].X>=0 then
   begin
     Buf.Canvas.Draw(Steni[i].X*64,Steni[i].Y, Stena );
     Steni[i].Y:=Steni[i].Y+8;
     if Steni[i].Y>320 then Steni[i].X:=-1;
   end;
 end;
 Buf.Canvas.Draw(Avto.X*64,Avto.Y*64,Car);


 Buf.Canvas.TextOut(0,0,'Score='+INTTOSTR(Score));
   Form4.Canvas.StretchDraw(Rect(0,0,Form4.ClientWidth,Form4.ClientHeight),Buf);

   //появление преград
 inc(new);
 if New>=15 then
  begin
  m:=False;
 for i:=1 to 5 do
 begin
   if (m=false) and (Steni[i].X<0) then
   begin
   Steni[i].X:=Random(3);
   Steni[i].Y:=0;
   m:=True;
   end;
 end;
 Inc(Score);
 new:=0;
end;


//Увелечение скорости
Inc(Speed);
if (Speed > 80) and (tmr1.Interval > 10) then
begin
  Speed:=0;
  tmr1.Interval:=tmr1.Interval-10;
end;

end;

procedure TForm4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(Key=VK_Left)and (Avto.X>0)then Avto.X:=Avto.X-1;
  if(Key=VK_Right)and (Avto.X<2)then Avto.X:=Avto.X+1;
end;



procedure TForm4.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Tmr1.Enabled=False then
begin
  Avto.X:=1 ;
  Avto.Y:=4;
  Score:=0;

  New:=0;
  Speed:=0;
   for i:=1 to 5 do
   begin
     Steni[i].X:=-1;
     Steni[i].Y:=-1;
     end;
     tmr1.Enabled:=True;
   
   end;
end;






procedure TForm4.N2Click(Sender: TObject);
begin
Form3.Show;
Form4.Hide;
end;

procedure TForm4.N3Click(Sender: TObject);
begin
Form5.Show;
Form4.Hide;
end;

procedure TForm4.N4Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm4.N8Click(Sender: TObject);
begin
Form1.Show;
Form4.Hide;
end;

procedure TForm4.N6Click(Sender: TObject);
begin
AboutBox.Show;
Form4.Hide;
end;

procedure TForm4.N7Click(Sender: TObject);
begin
Form6.Show;
Form4.Hide;
end;

procedure TForm4.N1Click(Sender: TObject);
begin
Form2.Show;
Form4.Hide;
end;

end.
