unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls, VCLTee.Series;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TPointSeries;
    Series3: TLineSeries;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x : array [1..5] of real = (2, 4, 6, 8, 10);
  y : array [1..5] of real = (5.5, 6.3, 7.2, 8, 8.6);

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  y1, y2, a, b, c, d, k, z : real;
  n, i : integer;
begin
  n := 5;

  for i := 1 to 5 do
  begin
    y1 := 4.75 + 0.395 * x[i];
    series1.AddXY(x[i], y1)
  end;

  for i := 1 to 5 do
  begin
    series2.AddXY(x[i], y[i])
  end;

  a := 0;
  b := 0;
  c := 0;
  d := 0;

  for i := 1 to 5 do
  begin
    a := a + x[i];
    b := b + y[i];
    c := c + x[i] * x[i];
    d := d + x[i] * y[i];
  end;

  k := (a * b - n * d) / (a * a - n * c);
  z := (b - k * a) / n;

  for i := 1 to 5 do
  begin
    y2 := z + k * x[i];
    series3.AddXY(x[i], y2)
  end;

  edit1.Text := floattostr(k);
  edit2.Text := floattostr(z);
end;

end.
