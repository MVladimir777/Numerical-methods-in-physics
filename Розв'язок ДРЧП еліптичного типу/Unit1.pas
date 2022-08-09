unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, ComObj, Math;

const
  n = 100;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    Chart1: TChart;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Series1: TLineSeries;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  flag: boolean;
  U, Un: array [0..n, 0..n] of real;

implementation

{$R *.dfm}

function g(x, y: real): real;
begin
  g := 1;
end;

function f(x, y: real): real;
begin
  f := power(x, 2) + power(y, 2);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  x0, x1, y0, y1, h, x, y, du, d: real;
  i, j: integer;
begin
  x0 := strtofloat(edit1.Text);
  x1 := strtofloat(edit2.Text);
  y0 := strtofloat(edit3.Text);
  y1 := strtofloat(edit4.Text);

  flag := True;
  series1.Clear;
  h := (x1-x0) / n;

  x := x0;
  for i := 0 to n do
  begin
    y := y0;
    for j := 0 to n do
    begin
      U[i, j] := g(x, y);
      y := y + h;
    end;
    series1.AddXY(x, U[i, round(n / 2 + 1)]);
    x := x + h;
  end;

  Un := U;

  du := 1;
  while (du > 1e-9) and flag do
  begin
    Application.ProcessMessages;
    series1.Clear;

    x := h;
    for i := 1 to n-1 do
    begin
      y := h;
      for j := 1 to n-1 do
      begin
        Un[i, j] := (U[i-1, j] + U[i+1, j] + U[i, j-1] + U[i, j+1]
          -power(h, 2) * f(x, y)) / 4;
        y := y + h;
      end;
      x := x + h;
    end;

    x := x0;
    for i := 0 to n do
    begin
      series1.AddXY(x, Un[i, round(n / 2 + 1)]);
      x := x + h;
    end;

    du := 0;
    for i := 1 to n-1 do
      if abs(U[i, round(n / 2 + 1)] - Un[i, round(n / 2 + 1)]) > du then
        du := abs(U[i, round(n / 2 + 1)] - Un[i, round(n / 2 + 1)]);

    U := Un;

  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i, j: integer;
  exApp, exBook, exSh : OleVariant;
  Od : TOpenDialog;
begin
  //Диалог выбора файла.
  Od := OpenDialog1; //OpenDialog1 уже должен быть на форме.
  if Od.InitialDir = '' then //В качестве начальной выбираем папку, в которой лежит исполняемый файл программы.
    Od.InitialDir := ExtractFilePath(ParamStr(0));
  if not Od.Execute then //Диалог выбора файла.
    Exit;
  if not FileExists(Od.FileName) then //Проверка существования файла.
  begin
    MessageBox(Handle, 'Файл с заданным именем не найден! Действие отменено.',
      'Внимание!', MB_OK + MB_ICONEXCLAMATION + MB_APPLMODAL);
    Exit;
  end;

  //Запуск экземпляра Excel и получение ссылки на интерфейс корневого объекта (Excel.Application).
  exApp := CreateOleObject('Excel.Application');
  //Делаем видимым окно MS Excel. На время отладки или на постоянной основе.
  exApp.Visible := True;
  //Открываем раб. книгу и получаем ссылку на её интерфейс.
  exBook := exApp.Workbooks.Open(FileName:=Od.FileName);
  //Ссылка на интерфейс первого листа рабочей книги.
  exSh := exBook.Worksheets[1];

  //Запись текста в ячейку на третьей строке и втором столбце:
  //exSh.Cells[3, 2].Value := 'Этот текст записан в ячейку с адресом: ' + exSh.Cells[3, 2].Address;
  for i := 0 to n do
  begin
    exSh.Cells[i+2, 1].Value := floattostr(i / n);
    for j := 0 to n do
    begin
      exSh.Cells[1, j+2].Value := floattostr(j / n);
      exSh.Cells[i+2, j+2].Value := floattostr(U[i, j]);
    end;
  end;

  exSh := exBook.Worksheets[2];
  for i := 0 to n do
  begin
    for j := 0 to n do
    begin
      exSh.Cells[j+1+n*i, 1].Value := floattostr(i / n);
      exSh.Cells[j+1+n*i, 2].Value := floattostr(j / n);
      exSh.Cells[j+1+n*i, 3].Value := floattostr(U[i, j]);
    end;
  end;

  //exBook.Close; //Закрываем рабочую книгу.
  //exApp.Quit;   //Закрываем MS Excel
end;

end.
