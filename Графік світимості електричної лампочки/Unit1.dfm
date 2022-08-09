object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1110#1082' '#1089#1074#1110#1090#1080#1084#1086#1089#1090#1110' '#1077#1083#1077#1082#1090#1088#1080#1095#1085#1086#1111' '#1083#1072#1084#1087#1086#1095#1082#1080
  ClientHeight = 380
  ClientWidth = 725
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
    Left = 535
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
    Left = 545
    Top = 59
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
    Left = 581
    Top = 111
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
    Left = 535
    Top = 326
    Width = 75
    Height = 19
    Caption = #1042#1110#1076#1087#1086#1074#1110#1076#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 535
    Top = 152
    Width = 176
    Height = 19
    Caption = #1044#1110#1072#1087#1072#1079#1086#1085' '#1110#1085#1090#1077#1075#1088#1091#1074#1072#1085#1085#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 575
    Top = 231
    Width = 9
    Height = 19
    Caption = 'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 535
    Top = 287
    Width = 176
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
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 513
    Height = 364
    Legend.Visible = False
    Title.Text.Strings = (
      #1043#1088#1072#1092#1110#1082' '#1089#1074#1110#1090#1080#1084#1086#1089#1090#1110' '#1077#1083#1077#1082#1090#1088#1080#1095#1085#1086#1111' '#1083#1072#1084#1087#1086#1095#1082#1080)
    BottomAxis.Title.Caption = 'T,K'
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Title.Caption = 'F(T)'
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
    Left = 575
    Top = 33
    Width = 90
    Height = 21
    TabOrder = 2
    Text = '10'
  end
  object Edit2: TEdit
    Left = 575
    Top = 84
    Width = 90
    Height = 21
    TabOrder = 3
    Text = '6000'
  end
  object Edit3: TEdit
    Left = 596
    Top = 111
    Width = 69
    Height = 21
    TabOrder = 4
    Text = '100'
  end
  object Edit4: TEdit
    Left = 535
    Top = 351
    Width = 176
    Height = 21
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 575
    Top = 177
    Width = 90
    Height = 21
    TabOrder = 6
    Text = '400e-9'
  end
  object Edit6: TEdit
    Left = 575
    Top = 204
    Width = 90
    Height = 21
    TabOrder = 7
    Text = '700e-9'
  end
  object Edit7: TEdit
    Left = 596
    Top = 231
    Width = 69
    Height = 21
    TabOrder = 8
    Text = '10000'
  end
end
