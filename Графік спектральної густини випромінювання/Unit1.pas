unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls, VCLTee.Series, Math;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Series1: TLineSeries;
    Series2: TAreaSeries;
    Series3: TLineSeries;
    Label5: TLabel;
    Edit4: TEdit;
    Series4: TAreaSeries;
    Edit5: TEdit;
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

function f (x, t: real): real;
const
  c = 3E8;
  h = 6.6E-34;
  k = 1.38E-23;
  pi = 3.14159;
begin
  f := 2*pi*c*c*h/(power(x,5))/(exp(h*c/(k*t*x))-1);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  l, r, t, dx, x, s:real;
  n, i:integer;
begin
  l := strtofloat(edit1.Text);
  r := strtofloat(edit2.Text);
  n := strtoint(edit3.Text);
  t := strtofloat(combobox1.Text);

  series1.Clear;
  series2.Clear;
  series3.Clear;
  dx := (r-l)/n;
  for i := 0 to n do
  begin
    x := l + dx*i;
    series1.AddXY(x*1e9, f(x, t)*1e-9);
    series3.AddXY(x*1e9, 0);
    series4.AddXY(x*1e9, 0);

    if (x >= 0.38e-6) and (x <= 0.78e-6) then
    begin
      series2.AddXY(x*1e9, f(x, t)*1e-9);
    end;

    if x >= 0.78e-6 then
    begin
      series2.AddXY(x*1e9, f(x, t)*1e-9,'', clGreen);
    end;
  end;

  s := 0;
  for i := 1 to n-1 do
  begin
     x := l + dx*i;
     s := s + f(x, t);
  end;
  s := ((f(l, t) + f(r, t)) / 2 + s) * dx;
  edit4.Text := floattostr(s);
  edit5.Text := floattostr(s/t/t/t/t);
end;

end.
