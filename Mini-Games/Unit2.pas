unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, Menus;

type
  TForm2 = class(TForm)
    img1: TImage;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    btn6: TSpeedButton;
    btn7: TSpeedButton;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
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
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5, Unit1, Unit7, Unit8, Unit6;

{$R *.dfm}

procedure TForm2.btn4Click(Sender: TObject);
begin
Form3.Show;
Form2.Hide;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
Form4.Show;
Form2.Hide;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
Form5.Show;
Form2.Hide;
end;

procedure TForm2.btn7Click(Sender: TObject);
begin
Form1.Show;
Form2.Hide;
end;

procedure TForm2.N9Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm2.N2Click(Sender: TObject);
begin
Form3.Show;
Form2.Hide;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
Form5.Show;
Form2.Hide;
end;

procedure TForm2.N4Click(Sender: TObject);
begin
Form4.Show;
Form2.Hide;
end;

procedure TForm2.N8Click(Sender: TObject);
begin
Form1.Show;
Form2.Hide;
end;

procedure TForm2.N6Click(Sender: TObject);
begin
AboutBox.Show;
Form2.Hide;
end;

procedure TForm2.N7Click(Sender: TObject);
begin
Form6.Show;
Form2.Hide;
end;

end.
