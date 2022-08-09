unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.StdCtrls, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

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
    Chart3: TChart;
    Series2: TLineSeries;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Series3: TPointSeries;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Series4: TLineSeries;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  flag:Boolean;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  v, x, m, dt, t, k, n, u, x0: Real;
begin
 flag := True;

 series1.Clear;
 series2.Clear;
 series4.Clear;

 v := StrToFloat(edit1.Text);
 x := StrToFloat(edit2.Text);
 m := StrToFloat(edit3.Text);
 dt := StrToFloat(edit4.Text);
 t := StrToFloat(edit5.Text);
 k := StrToFloat(edit6.Text);
 n := StrToFloat(edit7.Text);
 u := StrToFloat(edit7.Text);

 x0 := 0;
 series1.AddXY(t,x);
 series2.AddXY(t,v);
 series4.AddXY(v,x);

 while flag = True do
  begin
    t := t + dt;
    v := v + ((-k * (x - x0) - n * m * 9.8 - u * v) / m) * dt;
    x := x + v * dt;

    series1.AddXY(t,x);
    series2.AddXY(t,v);
    series4.AddXY(v,x);
    Application.ProcessMessages;

  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag:=False;
end;

end.
