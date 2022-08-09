object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    #1056#1086#1079#1074#39#1103#1079#1086#1082' '#1076#1080#1092#1077#1088#1077#1085#1094'i'#1072#1083#1100#1085#1080#1093' '#1088'i'#1074#1085#1103#1085#1100' '#1079' '#1095#1072#1089#1090#1080#1085#1085#1080#1084#1080' '#1087#1086#1093#1110#1076#1085#1080#1084#1080' '#1075'i'#1087#1077#1088#1073#1086 +
    #1083'i'#1095#1085#1086#1075#1086' '#1090#1080#1087#1091
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
    Left = 775
    Top = 128
    Width = 74
    Height = 19
    Caption = #1051#1110#1074#1072' '#1084#1077#1078#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 762
    Top = 157
    Width = 87
    Height = 19
    Caption = #1055#1088#1072#1074#1072' '#1084#1077#1078#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 838
    Top = 182
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
    Left = 841
    Top = 207
    Width = 10
    Height = 19
    Caption = #1057
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 824
    Top = 234
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
  object Label6: TLabel
    Left = 753
    Top = 261
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
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 729
    Height = 484
    Legend.Visible = False
    Title.Text.Strings = (
      #1050#1086#1083#1080#1074#1072#1085#1085#1103' '#1089#1090#1088#1091#1085#1080)
    BottomAxis.Title.Caption = 'X'
    LeftAxis.Title.Caption = 'U'
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
    Left = 871
    Top = 420
    Width = 121
    Height = 33
    Caption = 'Start'
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
    Left = 863
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '-3'
  end
  object Edit2: TEdit
    Left = 863
    Top = 155
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '3'
  end
  object Edit3: TEdit
    Left = 863
    Top = 182
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '100'
  end
  object Edit4: TEdit
    Left = 863
    Top = 209
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '1'
  end
  object Edit5: TEdit
    Left = 863
    Top = 236
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '100'
  end
  object Edit6: TEdit
    Left = 863
    Top = 263
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '0,01'
  end
  object Button2: TButton
    Left = 871
    Top = 459
    Width = 121
    Height = 33
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 799
    Top = 8
    Width = 138
    Height = 105
    Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1110' '#1091#1084#1086#1074#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1055#1077#1088#1096#1072' '#1079#1072#1076#1072#1095#1072
      #1044#1088#1091#1075#1072' '#1079#1072#1076#1072#1095#1072
      #1058#1088#1077#1090#1103' '#1079#1072#1076#1072#1095#1072)
    ParentFont = False
    TabOrder = 9
  end
end
