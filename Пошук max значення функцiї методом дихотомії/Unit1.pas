unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Edit5: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
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

function f(x: real): real;
begin
  f := ((0.03*x-3)*x+3)*x;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  l, r, e, dx, x, x1, x2, xmax:real;
  n, i:integer;
begin
  l := strtofloat(edit1.Text);
  r := strtofloat(edit2.Text);
  e := strtofloat(edit3.Text);
  n := strtoint(edit4.Text);

  series1.Clear;
  dx := (r - l) / n;
  for I := 0 to n do
    begin
      x := l + dx * i;
      series1.AddXY(x, f(x));
    end;

  while (r - l) > e*2 do
  begin
    x1 := (l + r - e) / 2;
    x2 := (l + r + e) / 2;
    if f(x1) > f(x2)
      then r := x2
      else l := x1;
  end;

  xmax := (l + r) / 2;
  edit5.Text := floattostr(xmax);
  edit6.Text := floattostr(f(xmax));
end;

end.
