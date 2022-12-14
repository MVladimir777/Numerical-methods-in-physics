unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Series1: TLineSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Image2: TImage;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function f1(x : real): real;
begin
  f1 := abs(x*x + 2);
end;

function f2(x : real): real;
begin
  f2 := sqrt(x) * cos(x);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, e, dx, x, s, g1, g2, x1, x2, fmax, fmin, ymin, ymax, y:real;
  n, i:integer;
begin
  a := strtofloat(edit1.Text);
  b := strtofloat(edit2.Text);
  n := strtoint(edit3.Text);
  e := 0.001;

  series1.Clear;
  dx := (b-a) / n;
  for i := 0 to n do
  begin
    x := a + dx*i;
    series1.AddXY(x, f1(x));
  end;

  //????? ????????
  s := 0;
  for i := 1 to n-1 do
  begin
     x := a + dx*i;
     s := s + f1(x);
  end;
  s := ((f1(a) + f1(b)) / 2 + s) * dx;
  edit4.Text := floattostr(s);

  //????? ѳ?????
  s := 0;
  for i := 1 to n-1 do
  begin
    x := a + dx*i;
    if i mod 2 = 0
    then s := s + 2*f1(x)
    else s := s + 4*f1(x);
  end;
  s := (s + f1(a) + f1(b)) * dx / 3;
  edit5.text := floattostr(s);

  //????? ?????-?????
  g1 := a;
  g2 := b;
  while (g2 - g1) > e*2 do
  begin
    x1 := (g1 + g2 - e) / 2;
    x2 := (g1 + g2 + e) / 2;
    if f1(x1) > f1(x2)
    then g2 := x2
    else g1 := x1;
  end;
  fmax := f1((g1 + g2) / 2);

  g1 := a;
  g2 := b;
  while (g2 - g1) > e*2 do
  begin
    x1 := (g1 + g2 - e) / 2;
    x2 := (g1 + g2 + e) / 2;
    if f1(x1) < f1(x2)
    then g2 := x2
    else g1 := x1;
  end;
  fmin := f1((g1 + g2) / 2);

  s := 0;
  ymin := fmin;
  ymax := fmax;
  for i := 1 to n do
  begin
    x := a + random*(b - a);
    y := ymin + random*(ymax - ymin);
    if (y < f1(x)) and (y > 0) then s := s + 1;
    if (y > f1(x)) and (y < 0) then s := s - 1;
  end;
  s := s / n * (b - a) * (ymax - ymin);

  if fmin > 0
    then s := s + (b - a) * fmin
    else s := s + (b - a) * fmax;

  edit6.text := floattostr(s);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  a, b, e, dx, x, s, g1, g2, x1, x2, fmax, fmin, ymin, ymax, y:real;
  n, i:integer;
begin
  a := strtofloat(edit1.Text);
  b := strtofloat(edit2.Text);
  n := strtoint(edit3.Text);
  e := 0.001;

  series1.Clear;
  dx := (b-a) / n;
  for i := 0 to n do
  begin
    x := a + dx*i;
    series1.AddXY(x, f2(x));
  end;

  //????? ????????
  s := 0;
  for i := 1 to n-1 do
  begin
     x := a + dx*i;
     s := s + f2(x);
  end;
  s := ((f2(a) + f2(b)) / 2 + s) * dx;
  edit4.Text := floattostr(s);

  //????? ѳ?????
  s := 0;
  for i := 1 to n-1 do
  begin
    x := a + dx*i;
    if i mod 2 = 0
    then s := s + 2*f2(x)
    else s := s + 4*f2(x);
  end;
  s := (s + f2(a) + f2(b)) * dx / 3;
  edit5.text := floattostr(s);

  //????? ?????-?????
  g1 := a;
  g2 := b;
  while (g2 - g1) > e*2 do
  begin
    x1 := (g1 + g2 - e) / 2;
    x2 := (g1 + g2 + e) / 2;
    if f2(x1) > f2(x2)
    then g2 := x2
    else g1 := x1;
  end;
  fmax := f2((g1 + g2) / 2);

  g1 := a;
  g2 := b;
  while (g2 - g1) > e*2 do
  begin
    x1 := (g1 + g2 - e) / 2;
    x2 := (g1 + g2 + e) / 2;
    if f2(x1) < f2(x2)
    then g2 := x2
    else g1 := x1;
  end;
  fmin := f2((g1 + g2) / 2);

  s := 0;
  ymin := fmin;
  ymax := fmax;
  for i := 1 to n do
  begin
    x := a + random*(b - a);
    y := ymin + random*(ymax - ymin);
    if (y < f2(x)) and (y > 0) then s := s + 1;
    if (y > f2(x)) and (y < 0) then s := s - 1;
  end;
  s := s / n * (b - a) * (ymax - ymin);

  if fmin > 0
    then s := s + (b - a) * fmin
    else s := s + (b - a) * fmax;

  edit6.text := floattostr(s);
end;

end.
