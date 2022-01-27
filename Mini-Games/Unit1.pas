unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    img1: TImage;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit5, Unit6, Unit7, Unit4, Unit8;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
Form2.Show;
Form1.Hide;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form3.Show;
Form1.Hide;

end;

procedure TForm1.N3Click(Sender: TObject);
begin
Form5.Show;
Form1.Hide;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
Form1.Hide;
Form6.Show;
Form6.Mmo1.Clear;
Form6.mmo1.lines.loadFromFile('ןמלמשü.txt');
end;

procedure TForm1.N4Click(Sender: TObject);
begin
Form4.Show;
Form1.Hide;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
Form6.Show;
Form1.Hide;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  AboutBox.Show;
Form1.Hide;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
AboutBox.Show;
Form1.Hide;
end;

end.
