unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, Menus;

type
  TForm3 = class(TForm)
    img1: TImage;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    edt1: TEdit;
    edt2: TEdit;
    img2: TImage;
    mm1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit7, Unit5, Unit4, Unit1, Unit8, Unit6;

{$R *.dfm}

procedure TForm3.btn4Click(Sender: TObject);
begin
Form2.Show;
Form3.Hide;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
 edt1.text:='Камень';
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
edt1.text:='Ножницы';
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
edt1.text:='Бумага';
end;

procedure TForm3.btn5Click(Sender: TObject);
var
  a:Integer;
begin
randomize;

a:=random(3);

case a of
0: edt2.Text:='Камень';
1: edt2.Text:='Ножницы';
2: edt2.Text:='Бумага';
end;

if (edt1.Text='Камень') and (edt2.Text='Ножницы') then begin img2.Picture.LoadFromFile('2.JPG');
img2.Visible:=true;
end;
if (edt1.Text='Ножницы') and (edt2.Text='Камень') then  begin img2.Picture.LoadFromFile('3.JPG');
img2.Visible:=true;
 end;
if (edt1.Text='Камень') and (edt2.Text='Бумага') then  begin img2.Picture.LoadFromFile('4.JPG');
img2.Visible:=true;
 end;
if (edt1.Text='Бумага') and (edt2.Text='Камень') then  begin img2.Picture.LoadFromFile('5.JPG');
img2.Visible:=true;
 end;
if (edt1.Text='Бумага') and (edt2.Text='Ножницы') then  begin img2.Picture.LoadFromFile('6.JPG');
img2.Visible:=true;
 end;
if (edt1.Text='Ножницы') and (edt2.Text='Бумага') then  begin img2.Picture.LoadFromFile('7.JPG');
img2.Visible:=true;
 end;
if edt1.Text=edt2.Text then  begin img2.Picture.LoadFromFile('1.JPG');
end ;



end;


procedure TForm3.img2Click(Sender: TObject);
begin
img2.Visible:=False;
end;

procedure TForm3.N9Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm3.N3Click(Sender: TObject);
begin
Form5.Show;
Form3.Hide;
end;

procedure TForm3.N4Click(Sender: TObject);
begin
Form4.Show;
Form3.Hide;
end;

procedure TForm3.N8Click(Sender: TObject);
begin
Form1.Show;
Form3.Hide;
end;

procedure TForm3.N6Click(Sender: TObject);
begin
AboutBox.Show;
Form3.Hide;
end;

procedure TForm3.N7Click(Sender: TObject);
begin
Form6.Show;
Form3.Hide;
end;

end.
