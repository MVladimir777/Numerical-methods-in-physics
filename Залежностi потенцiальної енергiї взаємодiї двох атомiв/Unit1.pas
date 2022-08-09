unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.Series,math;

  type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Edit3: TEdit;
    Series1: TLineSeries;
    Series2: TLineSeries;
    CheckBox1: TCheckBox;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label7: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    Edit9: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
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

function u(a, z, r: real): real;
begin
  u := 4*a*(power(z/r,12)-power(z/r,6));
end;

procedure TForm1.Button1Click(Sender: TObject);
const
  el : array [1..5] of string = ('He',  'Ne', 'Ar', 'Kr', 'Xe');
  a : array [1..5] of real = (14E-23, 50E-23, 167E-23, 225E-23, 320E-23);
  z : array [1..5] of real = (2.56e-10, 2.74e-10, 3.40e-10, 3.65e-10, 3.98e-10);
var
  r1, r2, dr, r, miny, minx, e, rmin, x1, x2:real;
  n, i, ind:integer;
  elem:string;
begin
  r1 := strtofloat(edit1.Text);
  r2 := strtofloat(edit2.Text);
  n := strtoint(edit3.Text);
  elem := combobox1.Text;

  dr :=(r2-r1)/n;

  series1.Clear;
  series2.Clear;
  series3.Clear;
  series4.Clear;
  series5.Clear;

  if checkbox1.Checked
    then begin
      chart1.LeftAxis.SetMinMax(-3.5, 2);
      for i := 0 to n do
      begin
        r := r1 + dr*i;
        series1.AddXY(r*1e10, u(a[1], z[1], r)*1e21);
        series2.AddXY(r*1e10, u(a[2], z[2], r)*1e21);
        series3.AddXY(r*1e10, u(a[3], z[3], r)*1e21);
        series4.AddXY(r*1e10, u(a[4], z[4], r)*1e21);
        series5.AddXY(r*1e10, u(a[5], z[5], r)*1e21);
      end;
    end
    else begin
      chart1.LeftAxis.Automatic:=true;

      ind := 0;
      for i := 1 to 5 do
        if elem = el[i] then
          ind := i;

      if ind = 0 then
        ShowMessage('Немає даних для цього елемента');

      //Знаходження кореня рівняння методом рівномірного пошуку
      for i := 1 to n do
      begin
        x1 := r1 + (i-1)*dr;
        x2 := r1 + i*dr;
        if (u(a[ind], z[ind], x1) * u(a[ind], z[ind], x2)) < 0
        then edit9.Text := floattostr((x1 + x2) / 2);
      end;

      miny := u(a[ind], z[ind], r1);
      minx := r1;
      for i := 0 to n do
      begin
        r := r1 + dr*i;
        series1.AddXY(r*1e10, u(a[ind], z[ind], r)*1e21);

        //Знаходження мінімуму методом рівномірного пошуку
        if miny > u(a[ind], z[ind], r) then
        begin
          miny := u(a[ind], z[ind], r);
          minx := r;
        end;
      end;
      edit4.Text := floattostr(miny)+' Дж';
      edit6.Text := floattostr(minx)+' м';

      ////Знаходження мінімуму методом дихотомії
      e := strtofloat(edit8.Text);
      while (r2 - r1) > e*2 do
      begin
        x1 := (r1 + r2 - e) / 2;
        x2 := (r1 + r2 + e) / 2;
        if u(a[ind], z[ind], x1) < u(a[ind], z[ind], x2)
          then r2 := x2
          else r1 := x1;
      end;
      rmin := (r1 + r2) / 2;
      edit5.Text := floattostr(u(a[ind], z[ind], rmin))+' Дж';
      edit7.Text := floattostr(rmin)+' м';
    end;
end;

end.
