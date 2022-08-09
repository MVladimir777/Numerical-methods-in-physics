object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    #1054#1093#1086#1083#1086#1076#1078#1077#1085#1085#1103' '#1090#1110#1083#1072'. '#1056#1086#1079#1074#39#1103#1079#1086#1082' '#1076#1080#1092#1077#1088#1077#1085#1094#1110#1072#1083#1100#1085#1080#1093' '#1088#1110#1074#1085#1103#1085#1100' I '#1087#1086#1088#1103#1076#1082#1091' '#1084#1077 +
    #1090#1086#1076#1086#1084' '#1045#1081#1083#1077#1088#1072' '
  ClientHeight = 426
  ClientWidth = 953
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
    Left = 643
    Top = 8
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
  object Label2: TLabel
    Left = 665
    Top = 35
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
  object Label3: TLabel
    Left = 631
    Top = 60
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
  object Label4: TLabel
    Left = 620
    Top = 87
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
  object Label5: TLabel
    Left = 573
    Top = 114
    Width = 246
    Height = 19
    Caption = #1047#1084#1110#1085#1072' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1080' '#1089#1077#1088#1077#1076#1086#1074#1080#1097#1072' 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 573
    Top = 141
    Width = 246
    Height = 19
    Caption = #1047#1084#1110#1085#1072' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1080' '#1089#1077#1088#1077#1076#1086#1074#1080#1097#1072' 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 742
    Top = 168
    Width = 77
    Height = 19
    Caption = #1047#1084#1110#1085#1072' '#1095#1072#1089#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 598
    Top = 195
    Width = 221
    Height = 19
    Caption = #1063#1072#1089' '#1087#1077#1088#1096#1086#1111' '#1079#1084#1110#1085#1080' '#1090#1077#1084#1087'. '#1089#1077#1088#1077#1076'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 795
    Top = 222
    Width = 25
    Height = 19
    Caption = #1063#1072#1089
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
    Width = 559
    Height = 409
    Legend.Visible = False
    Title.Text.Strings = (
      #1054#1093#1086#1083#1086#1076#1078#1077#1085#1085#1103' '#1090#1110#1083#1072)
    BottomAxis.Title.Caption = #1063#1072#1089'('#1075#1086#1076')'
    LeftAxis.Title.Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072'('#1057')'
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
    Left = 753
    Top = 344
    Width = 193
    Height = 33
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
    Left = 825
    Top = 8
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '40'
  end
  object Edit2: TEdit
    Left = 825
    Top = 35
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '20'
  end
  object Edit3: TEdit
    Left = 825
    Top = 60
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '9'
  end
  object Edit4: TEdit
    Left = 825
    Top = 87
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '0,25'
  end
  object Edit5: TEdit
    Left = 825
    Top = 114
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '-0,5'
  end
  object Edit6: TEdit
    Left = 825
    Top = 141
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '4'
  end
  object Edit7: TEdit
    Left = 825
    Top = 168
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '0,001'
  end
  object Edit8: TEdit
    Left = 825
    Top = 195
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '5'
  end
  object Button2: TButton
    Left = 753
    Top = 383
    Width = 193
    Height = 34
    Caption = #1057#1090#1086#1087
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button2Click
  end
  object Edit9: TEdit
    Left = 825
    Top = 222
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
end
