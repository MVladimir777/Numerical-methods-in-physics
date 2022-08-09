object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    #1056#1086#1079#1074#39#1103#1079#1086#1082' '#1076#1080#1092#1077#1088#1077#1085#1094'i'#1072#1083#1100#1085#1080#1093' '#1088'i'#1074#1085#1103#1085#1100' '#1079' '#1095#1072#1089#1090#1080#1085#1085#1080#1084#1080' '#1087#1086#1093#1110#1076#1085#1080#1084#1080' '#1087#1072#1088#1072#1073#1086#1083 +
    'i'#1095#1085#1086#1075#1086' '#1090#1080#1087#1091
  ClientHeight = 500
  ClientWidth = 1000
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
    Left = 726
    Top = 8
    Width = 128
    Height = 19
    Caption = #1055#1086#1095#1072#1090#1086#1082' '#1089#1090#1077#1088#1078#1085#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 740
    Top = 33
    Width = 114
    Height = 19
    Caption = #1050#1110#1085#1077#1094#1100' '#1089#1090#1077#1088#1078#1085#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 843
    Top = 60
    Width = 11
    Height = 19
    Caption = 'N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 845
    Top = 87
    Width = 9
    Height = 19
    Caption = #945
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 845
    Top = 116
    Width = 9
    Height = 19
    Caption = #946
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 827
    Top = 141
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
  object Label7: TLabel
    Left = 758
    Top = 168
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
  object Label8: TLabel
    Left = 693
    Top = 197
    Width = 161
    Height = 19
    Caption = #1051#1110#1074#1072' '#1043#1059' '#1087#1077#1088#1096#1086#1075#1086' '#1088#1086#1076#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 680
    Top = 222
    Width = 174
    Height = 19
    Caption = #1055#1088#1072#1074#1072' '#1043#1059' '#1087#1077#1088#1096#1086#1075#1086' '#1088#1086#1076#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 871
    Top = 272
    Width = 121
    Height = 34
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
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 666
    Height = 488
    Legend.Visible = False
    Title.Text.Strings = (
      #1047#1084#1110#1085#1072' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1080' '#1074#1079#1076#1086#1074#1078' '#1089#1090#1077#1088#1078#1085#1103' '#1079' '#1095#1072#1089#1086#1084)
    BottomAxis.Title.Caption = 'X'
    LeftAxis.Title.Caption = 'U'
    View3D = False
    TabOrder = 1
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
    Left = 871
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Edit2: TEdit
    Left = 871
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object Button2: TButton
    Left = 871
    Top = 312
    Width = 121
    Height = 33
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 871
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '100'
  end
  object Edit4: TEdit
    Left = 871
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '0,1'
  end
  object Edit5: TEdit
    Left = 871
    Top = 116
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object Edit6: TEdit
    Left = 871
    Top = 143
    Width = 121
    Height = 21
    TabOrder = 8
    Text = '100'
  end
  object Edit7: TEdit
    Left = 871
    Top = 170
    Width = 121
    Height = 21
    TabOrder = 9
    Text = '0,001'
  end
  object Edit8: TEdit
    Left = 871
    Top = 197
    Width = 121
    Height = 21
    TabOrder = 10
    Text = '0'
  end
  object Edit9: TEdit
    Left = 871
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 11
    Text = '0'
  end
end
