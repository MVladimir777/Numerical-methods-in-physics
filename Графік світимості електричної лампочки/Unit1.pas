unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Series1: TLineSeries;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
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

function f(t, x:real): real;
const
  c = 3E8;
  h = 6.6E-34;
  k = 1.38E-23;
  pi = 3.14159;
  g = 5.67e-8;
begin
  f := 2*pi*c*c*h / (g * power(t,4)) / (power(x,5)) / (exp(h*c/(k*t*x))-1);
  //f := 64.77 * power(x,-5) * power(t,-4) / (exp(1.432 / (t * x)) - 1);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  t1, t2, x1, x2, dt, t, dx, x, s:real;
  n1, n2, i, j:integer;
begin
  t1 := strtofloat(edit1.text);
  t2 := strtofloat(edit2.text);
  x1 := strtofloat(edit5.text);
  x2 := strtofloat(edit6.text);
  n1 := strtoint(edit3.text);
  n2 := strtoint(edit7.text);

  series1.Clear;
  dt := (t2 - t1) / n1;
  for i := 0 to n1 do
  begin
    t := t1 + dt * i;

    s := 0;
    dx := (x2 - x1) / n2;
    for j := 1 to n2-1 do
    begin
      x := x1 + dx * j;
      if j mod 2 = 0
      then s := s + 2*f(t, x)
      else s := s + 4*f(t, x);
    end;
    s := (s + f(t, x1) + f(t, x2)) * dx / 3;

    series1.AddXY(t, s);
  end;

  edit4.text := floattostr(s);
end;

end.
