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
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Button2: TButton;
    Label9: TLabel;
    Edit9: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  flag: boolean;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  T, T0, Ts0, k, v1, v2, dtau, tau1, tau, Ts: real;
begin
  T := strtofloat(edit1.Text);
  T0 := strtofloat(edit2.Text);
  Ts0 := strtofloat(edit3.Text);
  k := strtofloat(edit4.Text);// / 3600;
  v1 := strtofloat(edit5.Text);// / 3600;
  v2 := strtofloat(edit6.Text);// / 3600;
  dtau := strtofloat(edit7.Text);
  tau1 := strtofloat(edit8.Text);// * 3600;

  flag := True;
  tau := 0;

  series1.Clear;
  series1.AddXY(tau, T);

  while (T > T0) and flag do
  begin
    if tau < tau1
      then Ts := Ts0 + v1 * tau
      else Ts := (Ts0 + v1 * tau) + v2 * (tau - tau1);
    T := T - k * (T - Ts) * dtau;
    tau := tau + dtau;

    series1.AddXY(tau, T);
    Application.ProcessMessages;

  end;

  edit9.Text:=floattostr(tau {/ 3600});

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag := False;
end;

end.
