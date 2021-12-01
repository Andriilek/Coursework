object Form2: TForm2
  Left = 271
  Top = 113
  Width = 973
  Height = 583
  Caption = #1063#1077#1082
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 705
    Height = 266
    Align = alLeft
    DataSource = DataModule2.DataSCheck
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID '#1095#1077#1082
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1057#1091#1084#1072
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1030#1055' '#1079#1072#1084#1086#1074#1085#1080#1082#1072
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1077#1083#1077#1092#1086#1085
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1052#1110#1089#1090#1086
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1110#1076#1076#1110#1083#1077#1085#1085#1103
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1086#1096#1090#1072
        Width = 70
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 266
    Width = 957
    Height = 57
    Align = alBottom
    Color = clActiveBorder
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 54
      Height = 20
      Caption = #1063#1077#1082' '#8470
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 480
      Top = 8
      Width = 110
      Height = 20
      Caption = 'C'#1091#1084#1072' '#1087#1086' '#1095#1077#1082#1091
      Color = clActiveBorder
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 248
      Top = 8
      Width = 113
      Height = 25
      Date = 44511.470208043980000000
      Time = 44511.470208043980000000
      Enabled = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 0
      Top = 24
      Width = 89
      Height = 25
      Caption = #1057#1090#1074#1086#1088#1080#1090#1080' '#1095#1077#1082
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 323
    Width = 957
    Height = 201
    Align = alBottom
    Color = clActiveBorder
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 31
      Height = 13
      Caption = #1058#1086#1074#1072#1088
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 50
      Height = 13
      Caption = #1056#1086#1073#1110#1090#1085#1080#1082#1080
    end
    object Label4: TLabel
      Left = 16
      Top = 40
      Width = 46
      Height = 13
      Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100
    end
    object Label5: TLabel
      Left = 16
      Top = 88
      Width = 49
      Height = 13
      Caption = #1055#1086#1082#1091#1087#1077#1094#1100
    end
    object Label6: TLabel
      Left = 16
      Top = 112
      Width = 33
      Height = 13
      Caption = #1055#1086#1096#1090#1072
    end
    object Label7: TLabel
      Left = 16
      Top = 136
      Width = 68
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1087#1086#1096#1090#1080
    end
    object Label8: TLabel
      Left = 16
      Top = 160
      Width = 85
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1091
    end
    object Label10: TLabel
      Left = 88
      Top = 176
      Width = 74
      Height = 24
      Caption = 'Label10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 240
      Top = 112
      Width = 28
      Height = 13
      Caption = #1052#1110#1089#1090#1086
    end
    object DBGrid2: TDBGrid
      Left = 376
      Top = 8
      Width = 569
      Height = 81
      DataSource = DataModule2.DataSProdazh2
      Enabled = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID '#1079#1072#1084#1086#1074#1083#1077#1085#1085#1103
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1082#1110#1083#1100#1082#1110#1089#1090#1100
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1089#1091#1084#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1044#1072#1090#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1055#1030#1055' '#1088#1086#1073#1110#1090#1085#1080#1082#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID '#1095#1077#1082
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1053#1072#1079#1074#1072' '#1090#1086#1074#1072#1088#1091
          Visible = True
        end>
    end
    object Button2: TButton
      Left = 248
      Top = 200
      Width = 75
      Height = 25
      Caption = #1076#1086#1076#1072#1090#1080
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 104
      Top = 8
      Width = 145
      Height = 21
      Enabled = False
      KeyField = 'ID '#1090#1086#1074#1072#1088#1091
      ListField = #1053#1072#1079#1074#1072' '#1090#1086#1074#1072#1088#1091
      ListSource = DataModule2.DataSTovari
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 104
      Top = 56
      Width = 145
      Height = 21
      Enabled = False
      KeyField = 'ID '#1087#1077#1088#1089#1086#1085#1072#1083#1072
      ListField = #1055#1030#1055' '#1088#1086#1073#1110#1090#1085#1080#1082#1072
      ListSource = DataModule2.DataSRobitnik
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 104
      Top = 80
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 104
      Top = 128
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 104
      Top = 152
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object Button3: TButton
      Left = 400
      Top = 168
      Width = 75
      Height = 25
      Caption = #1044#1086#1076#1072#1090#1080
      Enabled = False
      TabOrder = 7
      OnClick = Button3Click
    end
    object UpDown1: TUpDown
      Left = 225
      Top = 32
      Width = 16
      Height = 21
      Associate = Edit1
      Enabled = False
      TabOrder = 8
    end
    object Edit1: TEdit
      Left = 104
      Top = 32
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 9
      Text = '0'
      OnChange = Edit2Change
    end
    object Edit5: TEdit
      Left = 104
      Top = 104
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object Edit6: TEdit
      Left = 272
      Top = 104
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 11
    end
    object Button5: TButton
      Left = 496
      Top = 168
      Width = 75
      Height = 25
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080
      Enabled = False
      TabOrder = 12
      OnClick = Button5Click
    end
    object Button4: TButton
      Left = 824
      Top = 168
      Width = 121
      Height = 25
      Caption = #1056#1086#1079#1076#1088#1091#1082#1091#1074#1072#1090#1080' '#1095#1077#1082
      Enabled = False
      TabOrder = 13
      OnClick = Button4Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 788
    Top = 128
    object N1: TMenuItem
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082
      OnClick = N1Click
    end
    object N4: TMenuItem
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      OnClick = N4Click
    end
    object N2: TMenuItem
      Caption = #1055#1088#1086' '#1087#1088#1086#1075#1088#1072#1084#1091
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1080#1093#1110#1076
      OnClick = N3Click
    end
  end
end
