unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, Menus;

type
  TForm5 = class(TForm)
    img1: TImage;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    img2: TImage;
    btn1: TSpeedButton;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
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
  Form5: TForm5;

implementation

uses Unit2, Unit7, Unit3, Unit1, Unit4, Unit8, Unit6;

{$R *.dfm}

procedure TForm5.btn3Click(Sender: TObject);
begin
Form2.Show;
Form5.Hide;
end;

procedure TForm5.btn2Click(Sender: TObject);
var a: Integer;
begin
randomize;
a:=random(2);
if a=0 then begin img2.Picture.LoadFromFile('Îð¸ë.JPG');
img2.Visible:=true;
 end
 else
 begin
 img2.Picture.LoadFromFile('Ðåøêà.JPG');
img2.Visible:=true;
 end ;
 end;





procedure TForm5.img2Click(Sender: TObject);
begin
img2.Visible:=False;
end;

procedure TForm5.N9Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm5.N2Click(Sender: TObject);
begin
Form3.Show;
Form5.Hide;
end;

procedure TForm5.N4Click(Sender: TObject);
begin
Form4.Show;
Form5.Hide;
end;

procedure TForm5.N8Click(Sender: TObject);
begin
Form1.Show;
Form5.Hide;
end;

procedure TForm5.N6Click(Sender: TObject);
begin
AboutBox.Show;
Form5.Hide;
end;

procedure TForm5.N7Click(Sender: TObject);
begin
Form6.Show;
Form5.Hide;
end;

end.
 