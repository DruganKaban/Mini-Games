unit Unit8;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Menus, jpeg;

type
  TAboutBox = class(TForm)
    img1: TImage;
    btn4: TSpeedButton;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    procedure btn4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses Unit1, Unit3, Unit5, Unit4, Unit7, Unit6;

{$R *.dfm}

procedure TAboutBox.btn4Click(Sender: TObject);
begin
Form1.Show;
AboutBox.Hide;
end;

procedure TAboutBox.N2Click(Sender: TObject);
begin
Form3.Show;
AboutBox.Hide;

end;

procedure TAboutBox.N3Click(Sender: TObject);
begin
Form5.Show;
AboutBox.Hide;
end;

procedure TAboutBox.N4Click(Sender: TObject);
begin
Form4.Show;
AboutBox.Hide;
end;

procedure TAboutBox.N9Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TAboutBox.N7Click(Sender: TObject);
begin
Form6.Show;
AboutBox.Hide;
end;

procedure TAboutBox.N8Click(Sender: TObject);
begin
 Form1.Show;
AboutBox.Hide;
end;

end.

