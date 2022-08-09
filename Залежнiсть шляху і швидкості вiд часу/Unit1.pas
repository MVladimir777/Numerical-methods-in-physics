unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.Series;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Series1: TLineSeries;
    Chart2: TChart;
    Series2: TLineSeries;
    Label5: TLabel;
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

procedure TForm1.Button1Click(Sender: TObject);
var v0, a0, t0, t, dt, t1, s, v: real;
   n, i:integer;
begin
  v0 := strtofloat(edit1.Text);
  a0 := strtofloat(edit2.Text);
  t0 := strtofloat(edit3.Text);
  t := strtofloat(edit4.Text);
  n := strtoint(edit5.Text);

  series1.Clear;
  series2.Clear;
  dt := (t-t0)/n;
  for i := 0 to n do
  begin
    t1 :=t0+dt*i;
    s := v0*t1+a0*t1*t1/2;
    series1.AddXY(t1, s);

    v := v0+a0*t1;
    series2.AddXY(t1, v);
  end;

end;

end.
