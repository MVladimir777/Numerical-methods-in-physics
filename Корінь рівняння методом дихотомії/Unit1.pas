unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.Series,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Chart1: TChart;
    Label3: TLabel;
    Edit3: TEdit;
    Series1: TLineSeries;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
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

function f(x, q: real): real;
var
  e0, r, i0, d:real;
begin
  e0 := 2;
  r := 10;
  i0 := 1e-8;
  d :=20;
  if q < 0
  then f := -(e0 - x - r*i0*exp(d*x) - 1)
  else f := e0 - x - r*i0*exp(d*x) - 1;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  l, r, e, dx, x:real;
  n ,i:integer;
begin
  l := strtofloat(edit1.Text);
  r := strtofloat(edit2.Text);
  e := strtofloat(edit5.Text);
  n := strtoint(edit4.Text);

  series1.Clear;

  dx := (r - l) / n;
  for I := 0 to n do
    begin
      x := l + dx * i;
      series1.AddXY(x, f(x, l)*1e-9);
    end;

  while (r - l) > e do
  begin
    x := (l + r) / 2;
    if f(x, l) > 0
    then l := x
    else r := x;
  end;
  edit3.Text := floattostr(x);
end;

end.
