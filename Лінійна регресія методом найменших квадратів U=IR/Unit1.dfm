object Form1: TForm1
  Left = 244
  Top = 165
  Caption = #1051#1110#1085#1110#1081#1085#1072' '#1088#1077#1075#1088#1077#1089#1110#1103' '#1084#1077#1090#1086#1076#1086#1084' '#1085#1072#1081#1084#1077#1085#1096#1080#1093' '#1082#1074#1072#1076#1088#1072#1090#1110#1074' U=IR'
  ClientHeight = 409
  ClientWidth = 818
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 615
    Top = 8
    Width = 34
    Height = 19
    Caption = #1054#1087#1110#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 615
    Top = 35
    Width = 171
    Height = 19
    Caption = #1055#1086#1095#1072#1090#1082#1086#1074#1072' '#1089#1080#1083#1072' '#1089#1090#1088#1091#1084#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 615
    Top = 83
    Width = 149
    Height = 19
    Caption = #1050#1110#1085#1094#1077#1074#1072' '#1089#1080#1083#1072' '#1089#1090#1088#1091#1084#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 615
    Top = 135
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
  object Label5: TLabel
    Left = 615
    Top = 162
    Width = 62
    Height = 19
    Caption = #1055#1086#1093#1080#1073#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 643
    Top = 317
    Width = 8
    Height = 19
    Caption = 'k'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 643
    Top = 344
    Width = 7
    Height = 19
    Caption = 'z'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 615
    Top = 200
    Width = 191
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
    Width = 601
    Height = 393
    Legend.Visible = False
    Title.Text.Strings = (
      #1042#1086#1083#1100#1090'-'#1072#1084#1087#1077#1088#1085#1072' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072)
    BottomAxis.Title.Caption = 'I,A'
    LeftAxis.Title.Caption = 'U,B'
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
    object Series2: TPointSeries
      SeriesColor = clRed
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      SeriesColor = clLime
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
    Left = 685
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '5'
  end
  object Edit2: TEdit
    Left = 685
    Top = 60
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Edit3: TEdit
    Left = 685
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '10'
  end
  object Edit4: TEdit
    Left = 685
    Top = 135
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0,25'
  end
  object Edit5: TEdit
    Left = 685
    Top = 162
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '0,3'
  end
  object Edit6: TEdit
    Left = 665
    Top = 319
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 665
    Top = 346
    Width = 121
    Height = 21
    TabOrder = 8
  end
end
