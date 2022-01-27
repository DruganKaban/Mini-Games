unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, Menus;

type
  TForm6 = class(TForm)
    img1: TImage;
    mmo1: TMemo;
    btn1: TSpeedButton;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    procedure btn1Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit7, Unit3, Unit5, Unit4, Unit8;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
Form1.show;
Form6.Hide;
end;

procedure TForm6.N9Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm6.N2Click(Sender: TObject);
begin
Form3.Show;
Form1.Hide;
end;

procedure TForm6.N3Click(Sender: TObject);
begin
Form5.Show;
Form1.Hide;
end;

procedure TForm6.N4Click(Sender: TObject);
begin
Form4.Show;
Form1.Hide;
end;

procedure TForm6.N8Click(Sender: TObject);
begin
Form1.Show;
Form6.Hide;
end;

procedure TForm6.N6Click(Sender: TObject);
begin
AboutBox.Show;
Form6.Hide;
end;

end.
 