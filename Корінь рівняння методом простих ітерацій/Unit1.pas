unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Math,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function f (x : real): real;
begin
  f := -sin(x) - 0.2;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  l, r, e, dx, x:real;
  n, i:integer;
begin
  l := strtofloat(edit1.Text);
  r := strtofloat(edit2.Text);
  e := strtofloat(edit4.Text);
  n := strtoint(edit3.Text);

  dx := (r - l) / n;
  for i := 0 to n do
  begin
    x := l + dx * i;
    series1.addxy(x, sin(x) + x + 0.2);
    series2.addxy(x, 0);
  end;

  x := l;
  while abs(f(x) - x) >= e do
  begin
    x := f(x);
  end;
  edit5.Text := floattostr(x);
end;

end.
