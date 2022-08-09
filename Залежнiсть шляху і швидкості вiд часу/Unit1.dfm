object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1047#1072#1083#1077#1078#1085'i'#1089#1090#1100' '#1096#1083#1103#1093#1091' '#1110' '#1096#1074#1080#1076#1082#1086#1089#1090#1110' '#1074'i'#1076' '#1095#1072#1089#1091
  ClientHeight = 519
  ClientWidth = 886
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 376
    Top = 424
    Width = 156
    Height = 19
    Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1072' '#1096#1074#1080#1076#1082#1110#1089#1090#1100
  end
  object Label2: TLabel
    Left = 432
    Top = 454
    Width = 101
    Height = 19
    Caption = #1055#1088#1080#1089#1082#1086#1088#1077#1085#1085#1103' '
  end
  object Label3: TLabel
    Left = 653
    Top = 424
    Width = 117
    Height = 19
    Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1080#1081' '#1095#1072#1089
  end
  object Label4: TLabel
    Left = 675
    Top = 454
    Width = 95
    Height = 19
    Caption = #1050#1110#1085#1094#1077#1074#1080#1081' '#1095#1072#1089
  end
  object Label5: TLabel
    Left = 523
    Top = 484
    Width = 9
    Height = 19
    Caption = 'n'
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 433
    Height = 409
    Title.Text.Strings = (
      #1047#1072#1083#1077#1078#1085'i'#1089#1090#1100' '#1096#1083#1103#1093#1091' '#1074'i'#1076' '#1095#1072#1089#1091)
    BottomAxis.Title.Caption = 't(c)'
    LeftAxis.Title.Caption = 'S('#1084')'
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      1
      15
      1)
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Transparency = 5
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 776
    Top = 484
    Width = 99
    Height = 25
    Caption = #1055#1091#1089#1082
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 544
    Top = 424
    Width = 99
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '5'
  end
  object Edit2: TEdit
    Left = 544
    Top = 454
    Width = 99
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '3'
  end
  object Edit3: TEdit
    Left = 776
    Top = 424
    Width = 99
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '0'
  end
  object Edit4: TEdit
    Left = 776
    Top = 454
    Width = 99
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '10'
  end
  object Chart2: TChart
    Left = 447
    Top = 8
    Width = 433
    Height = 409
    Title.Text.Strings = (
      #1047#1072#1083#1077#1078#1085#1110#1089#1090#1100' '#1096#1074#1080#1076#1082#1086#1089#1090'i '#1074'i'#1076' '#1095#1072#1089#1091)
    BottomAxis.Title.Caption = 't(c)'
    LeftAxis.Title.Caption = 'V('#1084'/'#1089')'
    View3D = False
    TabOrder = 6
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series2: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Edit5: TEdit
    Left = 544
    Top = 484
    Width = 99
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '10'
  end
end
