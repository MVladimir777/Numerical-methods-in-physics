object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    #1056#1086#1079#1074#39#1103#1079#1086#1082' '#1076#1080#1092#1077#1088#1077#1085#1094#1110#1072#1083#1100#1085#1080#1093' '#1088#1110#1074#1085#1103#1085#1100' I '#1087#1086#1088#1103#1076#1082#1091' '#1079#1072' '#1076#1086#1087#1086#1084#1086#1075#1086#1102' '#1089#1093#1077#1084#1080' '#1056 +
    #1091#1085#1075#1077'-'#1050#1091#1090#1090#1072
  ClientHeight = 523
  ClientWidth = 958
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
    Left = 540
    Top = 11
    Width = 76
    Height = 19
    Caption = #1055#1086#1095#1072#1090#1086#1082' '#1061
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 540
    Top = 38
    Width = 77
    Height = 19
    Caption = #1055#1086#1095#1072#1090#1086#1082' Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 580
    Top = 63
    Width = 36
    Height = 19
    Caption = #1050#1088#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 647
    Top = 268
    Width = 176
    Height = 19
    Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1072' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 669
    Top = 295
    Width = 154
    Height = 19
    Caption = #1050#1110#1085#1094#1077#1074#1072' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 727
    Top = 376
    Width = 96
    Height = 19
    Caption = #1050#1088#1086#1082' '#1087#1086' '#1095#1072#1089#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 680
    Top = 403
    Width = 143
    Height = 19
    Caption = #1063#1072#1089' '#1086#1093#1086#1083#1086#1076#1078#1077#1085#1085#1103' 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 680
    Top = 430
    Width = 143
    Height = 19
    Caption = #1063#1072#1089' '#1086#1093#1086#1083#1086#1076#1078#1077#1085#1085#1103' 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 635
    Top = 322
    Width = 188
    Height = 19
    Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1089#1077#1088#1077#1076#1086#1074#1080#1097#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 624
    Top = 349
    Width = 199
    Height = 19
    Caption = #1050#1086#1077#1092#1110#1094#1110#1108#1085#1090' '#1087#1088#1086#1087#1086#1088#1094#1110#1081#1085#1086#1089#1090#1110
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 526
    Height = 250
    Title.Text.Strings = (
      #1047#1072#1074#1076#1072#1085#1085#1103' 1')
    BottomAxis.Title.Caption = 'x'
    LeftAxis.Title.Caption = 'y'
    View3D = False
    TabOrder = 0
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
  object Button1: TButton
    Left = 701
    Top = 186
    Width = 121
    Height = 32
    Caption = #1057#1090#1072#1088#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 623
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Edit2: TEdit
    Left = 623
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object Chart2: TChart
    Left = 8
    Top = 266
    Width = 526
    Height = 250
    Legend.Visible = False
    Title.Text.Strings = (
      #1047#1072#1074#1076#1072#1085#1085#1103' 2')
    BottomAxis.Title.Caption = #1063#1072#1089
    LeftAxis.Title.Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
    View3D = False
    TabOrder = 4
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
  object Edit3: TEdit
    Left = 623
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0,1'
  end
  object StringGrid1: TStringGrid
    Left = 750
    Top = 8
    Width = 200
    Height = 161
    ColCount = 3
    FixedCols = 0
    RowCount = 6
    TabOrder = 6
  end
  object Button2: TButton
    Left = 701
    Top = 484
    Width = 121
    Height = 32
    Caption = #1057#1090#1072#1088#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 829
    Top = 266
    Width = 121
    Height = 21
    TabOrder = 8
    Text = '40'
  end
  object Edit5: TEdit
    Left = 829
    Top = 293
    Width = 121
    Height = 21
    TabOrder = 9
    Text = '20'
  end
  object Edit8: TEdit
    Left = 829
    Top = 374
    Width = 121
    Height = 21
    TabOrder = 10
    Text = '0,001'
  end
  object Edit9: TEdit
    Left = 829
    Top = 401
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edit10: TEdit
    Left = 829
    Top = 428
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Edit6: TEdit
    Left = 829
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 13
    Text = '9'
  end
  object Edit7: TEdit
    Left = 829
    Top = 347
    Width = 121
    Height = 21
    TabOrder = 14
    Text = '0,25'
  end
end
