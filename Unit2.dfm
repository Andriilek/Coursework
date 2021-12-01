object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 389
  Top = 143
  Height = 448
  Width = 640
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=bdrez' +
      'erv2002-2003.mdb;Mode=Share Deny None;Persist Security Info=Fals' +
      'e;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OL' +
      'EDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Datab' +
      'ase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB' +
      ':Global Bulk Transactions=1;Jet OLEDB:New Database Password="";J' +
      'et OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database' +
      '=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Co' +
      'mpact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 8
  end
  object DataSTovari: TDataSource
    DataSet = ADOQTovari
    Left = 168
    Top = 8
  end
  object ADOTKategorii: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1050#1072#1090#1077#1075#1086#1088#1110#1111
    Left = 96
    Top = 64
  end
  object DataSKategorii: TDataSource
    DataSet = ADOTKategorii
    Left = 176
    Top = 64
  end
  object ADOWork: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 96
    Top = 120
  end
  object DataSWork: TDataSource
    DataSet = ADOWork
    Left = 176
    Top = 120
  end
  object ADOQTovari: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1058#1086#1074#1072#1088#1099'.[ID '#1090#1086#1074#1072#1088#1091'], '#1058#1086#1074#1072#1088#1099'.['#1053#1072#1079#1074#1072' '#1090#1086#1074#1072#1088#1091'], '#1058#1086#1074#1072#1088#1099'.'#1062#1110#1085#1072', '#1058 +
        #1086#1074#1072#1088#1099'.'#1050#1086#1083#1110#1088', '#1058#1086#1074#1072#1088#1099'.'#1056#1086#1079#1084#1110#1088', '#1050#1072#1090#1077#1075#1086#1088#1110#1111'.['#1053#1072#1079#1074#1072' '#1082#1072#1090#1077#1075#1086#1088#1110#1111'] FROM '#1058#1086#1074 +
        #1072#1088#1099' INNER JOIN '#1050#1072#1090#1077#1075#1086#1088#1110#1111' ON '#1058#1086#1074#1072#1088#1099'.[ID '#1050#1072#1090#1077#1075#1086#1088#1110#1111'] = '#1050#1072#1090#1077#1075#1086#1088#1110#1111'.[I' +
        'D '#1082#1072#1090#1077#1075#1086#1088#1110#1111']')
    Left = 104
    Top = 8
  end
  object ADOQProdazh: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1086#1076#1072#1078#1110'.[ID '#1079#1072#1084#1086#1074#1083#1077#1085#1085#1103'], '#1058#1086#1074#1072#1088#1099'.['#1053#1072#1079#1074#1072' '#1090#1086#1074#1072#1088#1091'], '#1055#1088#1086#1076#1072#1078#1110'.'#1082 +
        #1110#1083#1100#1082#1110#1089#1090#1100', '#1055#1088#1086#1076#1072#1078#1110'.'#1089#1091#1084#1072', '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1055#1030#1055' '#1088#1086#1073#1110#1090#1085#1080#1082#1072'], '#1055#1088#1086#1076#1072#1078#1110'.[ID '#1095#1077 +
        #1082'], '#1063#1077#1082'.'#1044#1072#1090#1072' FROM '#1063#1077#1082' INNER JOIN ('#1055#1077#1088#1089#1086#1085#1072#1083' INNER JOIN ('#1058#1086#1074#1072#1088#1099' IN' +
        'NER JOIN '#1055#1088#1086#1076#1072#1078#1110' ON '#1058#1086#1074#1072#1088#1099'.[ID '#1090#1086#1074#1072#1088#1091'] = '#1055#1088#1086#1076#1072#1078#1110'.[ID '#1090#1086#1074#1072#1088#1091']) ON' +
        ' '#1055#1077#1088#1089#1086#1085#1072#1083'.[ID '#1087#1077#1088#1089#1086#1085#1072#1083#1072'] = '#1055#1088#1086#1076#1072#1078#1110'.[ID '#1087#1077#1088#1089#1086#1085#1072#1083#1091']) ON '#1063#1077#1082'.[ID '#1095#1077 +
        #1082'] = '#1055#1088#1086#1076#1072#1078#1110'.[ID '#1095#1077#1082']')
    Left = 96
    Top = 168
  end
  object DataSProdazh: TDataSource
    DataSet = ADOQProdazh
    Left = 176
    Top = 168
  end
  object ADOQCheck: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1063#1077#1082'.[ID '#1095#1077#1082'], '#1063#1077#1082'.'#1044#1072#1090#1072', '#1063#1077#1082'.'#1057#1091#1084#1072', '#1063#1077#1082'.['#1055#1030#1055' '#1079#1072#1084#1086#1074#1085#1080#1082#1072'], '#1063#1077 +
        #1082'.'#1058#1077#1083#1077#1092#1086#1085', '#1063#1077#1082'.'#1052#1110#1089#1090#1086', '#1063#1077#1082'.'#1042#1110#1076#1076#1110#1083#1077#1085#1085#1103', '#1063#1077#1082'.'#1055#1086#1096#1090#1072' FROM '#1063#1077#1082)
    Left = 96
    Top = 232
  end
  object DataSCheck: TDataSource
    DataSet = ADOQCheck
    Left = 176
    Top = 232
  end
  object ADOTCheck: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1095#1077#1082
    Left = 256
    Top = 8
  end
  object DataSCheck1: TDataSource
    DataSet = ADOTCheck
    Left = 312
    Top = 8
  end
  object ADOTRobitnik: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1077#1088#1089#1086#1085#1072#1083
    Left = 256
    Top = 64
  end
  object DataSRobitnik: TDataSource
    DataSet = ADOTRobitnik
    Left = 312
    Top = 64
  end
  object ADOQProdazh2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 96
    Top = 288
  end
  object DataSProdazh2: TDataSource
    DataSet = ADOQProdazh2
    Left = 176
    Top = 288
  end
  object ADOTOTovari: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1058#1086#1074#1072#1088#1099
    Left = 256
    Top = 128
  end
  object DataSOTovari: TDataSource
    DataSet = ADOTOTovari
    Left = 312
    Top = 128
  end
  object ADOQCheckRep: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1058#1086#1074#1072#1088#1099'.['#1053#1072#1079#1074#1072' '#1090#1086#1074#1072#1088#1091'], '#1055#1088#1086#1076#1072#1078#1110'.'#1082#1110#1083#1100#1082#1110#1089#1090#1100', '#1055#1088#1086#1076#1072#1078#1110'.'#1089#1091#1084#1072', '#1055 +
        #1088#1086#1076#1072#1078#1110'.'#1044#1072#1090#1072', '#1055#1088#1086#1076#1072#1078#1110'.[ID '#1095#1077#1082'], '#1055#1077#1088#1089#1086#1085#1072#1083'.['#1055#1030#1055' '#1088#1086#1073#1110#1090#1085#1080#1082#1072'], '#1063#1077#1082'.['#1055#1030 +
        #1055' '#1079#1072#1084#1086#1074#1085#1080#1082#1072'], '#1063#1077#1082'.'#1058#1077#1083#1077#1092#1086#1085', '#1063#1077#1082'.'#1052#1110#1089#1090#1086', '#1063#1077#1082'.'#1042#1110#1076#1076#1110#1083#1077#1085#1085#1103', '#1063#1077#1082'.'#1055#1086#1096#1090#1072',' +
        ' '#1058#1086#1074#1072#1088#1099'.'#1062#1110#1085#1072', '#1063#1077#1082'.'#1089#1091#1084#1072'  FROM '#1055#1077#1088#1089#1086#1085#1072#1083' INNER JOIN ('#1058#1086#1074#1072#1088#1099' INNER J' +
        'OIN ('#1063#1077#1082' INNER JOIN '#1055#1088#1086#1076#1072#1078#1110' ON '#1063#1077#1082'.[ID '#1095#1077#1082'] = '#1055#1088#1086#1076#1072#1078#1110'.[ID '#1095#1077#1082']) ' +
        'ON '#1058#1086#1074#1072#1088#1099'.[ID '#1090#1086#1074#1072#1088#1091'] = '#1055#1088#1086#1076#1072#1078#1110'.[ID '#1090#1086#1074#1072#1088#1091']) ON '#1055#1077#1088#1089#1086#1085#1072#1083'.[ID '#1087#1077#1088 +
        #1089#1086#1085#1072#1083#1072'] = '#1055#1088#1086#1076#1072#1078#1110'.[ID '#1087#1077#1088#1089#1086#1085#1072#1083#1091'] WHERE '#1055#1088#1086#1076#1072#1078#1110'.[ID '#1095#1077#1082'] = 91  ')
    Left = 256
    Top = 192
  end
end
