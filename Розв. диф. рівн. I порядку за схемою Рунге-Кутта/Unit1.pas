unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.StdCtrls, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.Grids;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Series1: TLineSeries;
    Label2: TLabel;
    Edit2: TEdit;
    Chart2: TChart;
    Label3: TLabel;
    Edit3: TEdit;
    StringGrid1: TStringGrid;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Series2: TLineSeries;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  yter: array [1..5] of real = (0.9048375, 0.817309, 0.7408184, 0.6703203, 0.606531);

implementation

{$R *.dfm}

function f1 (x, y: real): real;
begin
  f1 := -y;
end;

function f2 (z, k, x, y: real): real;
begin
  f2 := -k * (y - z);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  x, y, h, k1, k2, k3, k4: real;
  n, i: Integer;
begin
  x := strtofloat(edit1.Text);
  y := strtofloat(edit2.Text);
  h := strtofloat(edit3.Text);
  n := 5;

  stringgrid1.Cells[0, 0] := 'X';
  stringgrid1.Cells[1, 0] := 'Y???';
  stringgrid1.Cells[2, 0] := 'Y';

  for i := 1 to n do
  begin
    k1 := f1(x, y);
    k2 := f1(x + h / 2, y + h * k1 / 2);
    k3 := f1(x + h / 2, y + h * k2 / 2);
    k4 := f1(x + h, y + h * k3);
    y := y + h * (k1 + 2 * k2 + 2 * k3 + k4) / 6;
    x := x + h;

    series1.AddXY(x, y);
    stringgrid1.Cells[0, i] := floattostr(x);
    stringgrid1.Cells[1, i] := floattostr(yter[i]);
    stringgrid1.Cells[2, i] := floattostr(y);
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  y, y0, z, k, dt, t, k1, k2, k3, k4, y1: real;
begin
  y := strtofloat(edit4.Text);
  y0 := strtofloat(edit5.Text);
  z := strtofloat(edit6.Text);
  k := strtofloat(edit7.Text);
  dt := strtofloat(edit8.Text);

  series2.Clear;

  t := 0;
  while (y > y0) do
  begin
    k1 := f2(z,k,t, y);
    k2 := f2(z,k,t+dt/2, y+dt*k1/2);
    k3 := f2(z,k,t+dt/2, y+dt*k2/2);
    k4 := f2(z,k,t+dt, y+dt*k3);
    y := y + dt*(k1+2*k2+2*k3+k4)/6;

    series2.AddXY(t, y);
    t := t + dt;
  end;

  edit9.Text:=floattostr(t);

  t := 0;
  y := strtofloat(edit4.Text);
  y1 := y;
  while (y > y0) do
  begin
    //series2.AddXY(t, y);
    t := t + dt;
    y := z + (y1 - z) * exp(-k*t);
  end;

  edit10.Text:=floattostr(t);

end;

end.
