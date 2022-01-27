unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, jpeg;

type
  TForm7 = class(TForm)
    img1: TImage;
    pb1: TProgressBar;
    tmr1: TTimer;
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.tmr1Timer(Sender: TObject);
begin
pb1.Position:=PB1.Position+20;
If (pb1.Position=PB1.Max) Then
begin
form1.Show;
Form7.Hide;
Tmr1.Enabled:=False;
end;
end;


end.
