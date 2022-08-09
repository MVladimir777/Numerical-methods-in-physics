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
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
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

procedure TForm1.Button1Click(Sender: TObject);
var
  r0, i1, i2, di, p, i, u, a, b, c, d, r, n, k, z:real;
begin
  r0 := strtofloat(edit1.Text);
  i1 := strtofloat(edit2.Text);
  i2 := strtofloat(edit3.Text);
  di := strtofloat(edit4.Text);
  p := strtofloat(edit5.Text);

  series1.Clear;
  series2.Clear;
  series3.Clear;

  i := i1;
  while i <= i2 do
  begin
    u := i * r0;
    series1.addxy(i, u);
    i := i + di;
  end;

  a := 0;
  b := 0;
  c := 0;
  d := 0;

  i := i1;
  n := -1;
  while i <= i2 do
  begin
    r := r0 +  p * (2 * random - 1) * r0;
    u := i * r;
    series2.addxy(i, u);
    i := i + di;

    a := a + i;
    b := b + u;
    c := c + i * i;
    d := d + i * u;
    n := n + 1;
  end;

  k := (a * b - n * d) / (a * a - n * c);
  z := (b - k * a) / n;

  i := i1;
  while i <= i2 do
  begin
    u := z + k * i;
    series3.addxy(i, u);
    i := i + di;
  end;

  edit6.Text := floattostr(k);
  edit7.Text := floattostr(z);
end;

end.
