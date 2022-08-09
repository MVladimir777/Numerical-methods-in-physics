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
  x : array [1..5] of integer = (0, 1, 2, 3, 4);
  y : array [1..5] of integer = (1, 2, 3, 4, 5);

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  x1, L, li : real;
  n, i, j : Integer;
begin
  x1 := strtofloat(edit1.Text);
  n := 5;

  series1.Clear;
  series2.Clear;

  for i := 1 to n do
  begin
    series1.AddXY(x[i], y[i])
  end;

  L := 0;
  for i := 1 to n do
  begin
    li := 1;
    for j := 1 to n do
    begin
      if i <> j
      then li := li * (x1 - x[j]) / (x[i] - x[j]);
    end;
    L := L + y[i] * li;
  end;

  edit2.Text := floattostr(L);
  series2.AddXY(x1, L);
end;

end.
