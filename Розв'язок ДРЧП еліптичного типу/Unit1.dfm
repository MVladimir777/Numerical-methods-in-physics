object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 306
  ClientWidth = 753
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 512
    Top = 10
    Width = 88
    Height = 19
    Caption = #1051#1110#1074#1072' '#1084#1077#1078#1072' '#1061
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 499
    Top = 37
    Width = 101
    Height = 19
    Caption = #1055#1088#1072#1074#1072' '#1084#1077#1078#1072' '#1061
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 512
    Top = 64
    Width = 89
    Height = 19
    Caption = #1051#1110#1074#1072' '#1084#1077#1078#1072' Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 499
    Top = 91
    Width = 102
    Height = 19
    Caption = #1055#1088#1072#1074#1072' '#1084#1077#1078#1072' Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 606
    Top = 120
    Width = 131
    Height = 33
    Caption = 'Start'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 606
    Top = 159
    Width = 131
    Height = 32
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 606
    Top = 197
    Width = 131
    Height = 35
    Caption = #1047#1072#1087#1080#1089#1072#1090#1080' '#1074' Ex'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 473
    Height = 286
    Title.Text.Strings = (
      'TChart')
    View3D = False
    TabOrder = 3
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Edit1: TEdit
    Left = 616
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object Edit2: TEdit
    Left = 616
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '1'
  end
  object Edit3: TEdit
    Left = 616
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object Edit4: TEdit
    Left = 616
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '1'
  end
  object OpenDialog1: TOpenDialog
    Left = 576
    Top = 200
  end
end
