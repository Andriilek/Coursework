object Form1: TForm1
  Left = 284
  Top = 127
  Width = 953
  Height = 602
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082
  Color = clBtnFace
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 937
    Height = 543
    ActivePage = TabSheet8
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1086#1074#1072#1088#1099
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 929
        Height = 337
        Align = alClient
        DataSource = DataModule2.DataSTovari
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID '#1090#1086#1074#1072#1088#1091
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072' '#1090#1086#1074#1072#1088#1091
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1062#1110#1085#1072
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1083#1110#1088
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1086#1079#1084#1110#1088
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072' '#1082#1072#1090#1077#1075#1086#1088#1110#1111
            Width = 150
            Visible = True
          end>
      end
      object TPanel
        Left = 0
        Top = 426
        Width = 929
        Height = 89
        Align = alBottom
        Color = clActiveBorder
        TabOrder = 1
        object Label6: TLabel
          Left = 272
          Top = 0
          Width = 114
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1085#1072#1079#1074#1110' '#1090#1086#1074#1072#1088#1091
        end
        object Label7: TLabel
          Left = 272
          Top = 40
          Width = 99
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086' ID '#1090#1086#1074#1072#1088#1091
        end
        object Button2: TButton
          Left = 8
          Top = 8
          Width = 105
          Height = 33
          Caption = #1044#1110#1111' '#1079' '#1087#1086#1083#1103#1084#1080
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 128
          Top = 8
          Width = 105
          Height = 33
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 1
          OnClick = Button3Click
        end
        object Edit6: TEdit
          Left = 272
          Top = 16
          Width = 217
          Height = 21
          TabOrder = 2
        end
        object Edit7: TEdit
          Left = 272
          Top = 56
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object Button4: TButton
          Left = 416
          Top = 56
          Width = 75
          Height = 25
          Caption = #1055#1086#1096#1091#1082
          TabOrder = 4
          OnClick = Button4Click
        end
        object Button6: TButton
          Left = 504
          Top = 56
          Width = 75
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
          TabOrder = 5
          OnClick = Button6Click
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 337
        Width = 929
        Height = 89
        Align = alBottom
        Color = clActiveBorder
        TabOrder = 2
        Visible = False
        object Label2: TLabel
          Left = 184
          Top = 16
          Width = 69
          Height = 13
          Caption = #1053#1072#1079#1074#1072' '#1090#1086#1074#1072#1088#1091
        end
        object Label3: TLabel
          Left = 456
          Top = 16
          Width = 22
          Height = 13
          Caption = #1062#1110#1085#1072
        end
        object Label4: TLabel
          Left = 24
          Top = 48
          Width = 27
          Height = 13
          Caption = #1050#1086#1083#1110#1088
        end
        object Label5: TLabel
          Left = 216
          Top = 48
          Width = 35
          Height = 13
          Caption = #1056#1086#1079#1084#1110#1088
        end
        object Label8: TLabel
          Left = 400
          Top = 48
          Width = 80
          Height = 13
          Caption = #1053#1072#1079#1074#1072' '#1082#1072#1090#1077#1075#1086#1088#1110#1111
        end
        object Edit2: TEdit
          Left = 264
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 488
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 56
          Top = 40
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object Edit5: TEdit
          Left = 264
          Top = 40
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 488
          Top = 40
          Width = 121
          Height = 21
          KeyField = 'ID '#1082#1072#1090#1077#1075#1086#1088#1110#1111
          ListField = #1053#1072#1079#1074#1072' '#1082#1072#1090#1077#1075#1086#1088#1110#1111
          ListSource = DataModule2.DataSKategorii
          TabOrder = 4
        end
        object Button5: TButton
          Left = 616
          Top = 8
          Width = 91
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1077
          TabOrder = 5
          OnClick = Button5Click
        end
        object Button1: TButton
          Left = 728
          Top = 16
          Width = 65
          Height = 33
          Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
          TabOrder = 6
          OnClick = Button1Click
        end
        object Button7: TButton
          Left = 616
          Top = 40
          Width = 89
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1087#1086#1083#1077
          TabOrder = 7
          OnClick = Button7Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1086#1073#1110#1090#1085#1080#1082#1080
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 929
        Height = 426
        Align = alClient
        DataSource = DataModule2.DataSRobitnik
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1055#1030#1055' '#1088#1086#1073#1110#1090#1085#1080#1082#1072
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1047#1072#1088#1087#1083#1072#1090#1072
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID '#1087#1077#1088#1089#1086#1085#1072#1083#1072
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1086#1089#1072#1076#1072
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
            Width = 80
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 426
        Width = 929
        Height = 89
        Align = alBottom
        Color = clActiveBorder
        TabOrder = 1
        object Button8: TButton
          Left = 16
          Top = 16
          Width = 73
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 192
          Top = 16
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 1
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 96
          Top = 16
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 2
          OnClick = Button10Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1111
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 929
        Height = 417
        Align = alTop
        DataSource = DataModule2.DataSKategorii
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID '#1082#1072#1090#1077#1075#1086#1088#1110#1111
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072' '#1082#1072#1090#1077#1075#1086#1088#1110#1111
            Width = 150
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 426
        Width = 929
        Height = 89
        Align = alBottom
        Color = clActiveBorder
        TabOrder = 1
        object Button20: TButton
          Left = 216
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 0
          OnClick = Button20Click
        end
        object Button16: TButton
          Left = 32
          Top = 32
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1087#1086#1083#1077
          TabOrder = 1
          OnClick = Button16Click
        end
        object Button18: TButton
          Left = 120
          Top = 32
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1087#1086#1083#1077
          TabOrder = 2
          OnClick = Button18Click
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1110
      ImageIndex = 6
      object DBGrid7: TDBGrid
        Left = 0
        Top = 0
        Width = 929
        Height = 329
        Align = alTop
        DataSource = DataModule2.DataSProdazh
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
            FieldName = #1053#1072#1079#1074#1072' '#1090#1086#1074#1072#1088#1091
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1082#1110#1083#1100#1082#1110#1089#1090#1100
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1089#1091#1084#1072
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1030#1055' '#1088#1086#1073#1110#1090#1085#1080#1082#1072
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID '#1095#1077#1082
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072
            Width = 80
            Visible = True
          end>
      end
      object Panel10: TPanel
        Left = 0
        Top = 442
        Width = 929
        Height = 73
        Align = alBottom
        Color = clActiveBorder
        TabOrder = 1
        object Label1: TLabel
          Left = 320
          Top = 40
          Width = 82
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' ID '#1095#1077#1082
        end
        object Button27: TButton
          Left = 48
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 0
          OnClick = Button27Click
        end
        object Edit1: TEdit
          Left = 408
          Top = 32
          Width = 137
          Height = 21
          TabOrder = 1
        end
        object Button11: TButton
          Left = 568
          Top = 32
          Width = 73
          Height = 25
          Caption = #1055#1086#1096#1091#1082
          TabOrder = 2
          OnClick = Button11Click
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 7
      object DBGrid8: TDBGrid
        Left = 0
        Top = 0
        Width = 929
        Height = 353
        Align = alTop
        DataSource = DataModule2.DataSCheck1
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
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Width = 70
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
            Width = 50
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 434
        Width = 929
        Height = 81
        Align = alBottom
        Color = clActiveBorder
        TabOrder = 1
        object Button29: TButton
          Left = 216
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 0
          OnClick = Button29Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1076#1072#1090#1086#1102
      ImageIndex = 2
      object Label14: TLabel
        Left = 0
        Top = 281
        Width = 929
        Height = 13
        Align = alTop
        Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1076#1072#1090#1086#1102
      end
      object DateTimePicker1: TDateTimePicker
        Left = 88
        Top = 280
        Width = 113
        Height = 25
        Date = 44511.470208043980000000
        Time = 44511.470208043980000000
        TabOrder = 0
      end
      object Button15: TButton
        Left = 104
        Top = 320
        Width = 75
        Height = 25
        Caption = #1055#1086#1096#1091#1082
        TabOrder = 1
        OnClick = Button15Click
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 929
        Height = 281
        Align = alTop
        DataSource = DataModule2.DataSProdazh
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID '#1079#1072#1084#1086#1074#1083#1077#1085#1085#1103
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072' '#1090#1086#1074#1072#1088#1091
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1082#1110#1083#1100#1082#1110#1089#1090#1100
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1089#1091#1084#1072
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1030#1055' '#1088#1086#1073#1110#1090#1085#1080#1082#1072
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID '#1095#1077#1082
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072
            Width = 75
            Visible = True
          end>
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 788
    Top = 128
    object N3: TMenuItem
      Caption = #1042#1080#1093#1110#1076
      OnClick = N3Click
    end
  end
end
