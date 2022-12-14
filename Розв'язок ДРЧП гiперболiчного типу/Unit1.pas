unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.CheckLst, Math;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
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
  Uo, U, Un: array of real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, ?, dx, x, L, dt, t: real;
  time, n, i: integer;
begin
  a := strtofloat(edit1.Text);
  b := strtofloat(edit2.Text);
  n := strtoint(edit3.Text);
  ? := strtofloat(edit4.Text);
  time := strtoint(edit5.Text);
  dt := strtofloat(edit6.Text);

  flag := True;
  Setlength(Uo, n);
  Setlength(U, n);
  Setlength(Un, n);
  dx := (b - a) / n;

  if RadioGroup1.ItemIndex = 0 then
    begin
      x := a;
      for i := 0 to n do
      begin
        Uo[i] := exp(-x * x);
        U[i] := x * exp(-x * x);
        x := x + dx;
      end;
    end;

  if RadioGroup1.ItemIndex = 1 then
    begin
      x := 0;
      for i := 0 to n do
      begin
        Uo[i] := x* exp(-x * x);
        U[i] := 0;
        x := x + dx;
      end;
    end;

  if RadioGroup1.ItemIndex = 2 then
    begin
      x := a;
      L := abs(a) + b;
      for i := 0 to n do
      begin
        Uo[i] := sin(3 * pi * x / L);
        U[i] := (3 * pi * x / L) * sin(3 * pi * x / L);
        x := x + dx;
      end;
    end;

  Un := U;
  t := 0;

  while (t <= time) and flag do
  begin
    for i := 1 to n-1 do
    begin
      Un[i] := 2 * U[i] - Uo[i] + sqr(dt / dx) * ? * (U[i+1] - 2 * U[i] + U[i-1]);
    end;

    Un[0] := 0;
    Un[n] := Un[n-1];
    Uo := U;
    U := Un;

    Series1.Clear;
    if RadioGroup1.ItemIndex = 1
      then x := 0
      else x := a;

    for i := 0 to n do
    begin
      Series1.AddXY(x, U[i]);
      x := x + dx;
    end;

    Application.ProcessMessages;
    t := t + dt;
   end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag := False;
end;

end.
