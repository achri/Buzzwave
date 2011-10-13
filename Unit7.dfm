object Form7: TForm7
  Left = 192
  Top = 114
  AutoScroll = False
  Caption = 'Load Skin'
  ClientHeight = 305
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 305
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 434
      Height = 16
      Caption = 'LOAD SKINS __________________________________________________'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 52
      Height = 13
      Caption = 'Skin Name'
    end
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 59
      Height = 13
      Caption = 'Main Picture'
    end
    object Label4: TLabel
      Left = 16
      Top = 160
      Width = 68
      Height = 13
      Caption = 'Playlist Picture'
    end
    object Label5: TLabel
      Left = 248
      Top = 88
      Width = 59
      Height = 13
      Caption = 'Playlist Color'
    end
    object Label6: TLabel
      Left = 248
      Top = 120
      Width = 56
      Height = 13
      Caption = 'Playlist Text'
    end
    object Label7: TLabel
      Left = 248
      Top = 152
      Width = 54
      Height = 13
      Caption = 'Panel Color'
    end
    object Label8: TLabel
      Left = 248
      Top = 184
      Width = 70
      Height = 13
      Caption = 'Stretch Picture'
    end
    object Label9: TLabel
      Left = 248
      Top = 216
      Width = 36
      Height = 13
      Caption = 'Opacity'
    end
    object SpeedButton1: TSpeedButton
      Left = 248
      Top = 264
      Width = 65
      Height = 22
      Caption = 'VIEW'
      Flat = True
    end
    object SpeedButton2: TSpeedButton
      Left = 320
      Top = 264
      Width = 65
      Height = 22
      Caption = 'LOAD'
      Flat = True
    end
    object SpeedButton3: TSpeedButton
      Left = 392
      Top = 264
      Width = 65
      Height = 22
      Caption = 'CLOSE'
      Flat = True
    end
    object DBImage1: TDBImage
      Left = 104
      Top = 80
      Width = 121
      Height = 65
      DataField = 'Pict1'
      DataSource = DataSource1
      Stretch = True
      TabOrder = 0
    end
    object DBImage2: TDBImage
      Left = 104
      Top = 152
      Width = 121
      Height = 137
      DataField = 'Pict2'
      DataSource = DataSource1
      Stretch = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 328
      Top = 80
      Width = 121
      Height = 21
      DataField = 'List1'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 328
      Top = 112
      Width = 121
      Height = 21
      DataField = 'List2'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 328
      Top = 144
      Width = 121
      Height = 21
      DataField = 'Panel'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 328
      Top = 176
      Width = 33
      Height = 21
      DataField = 'Stretch'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 328
      Top = 208
      Width = 49
      Height = 21
      DataField = 'trans'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBComboBox1: TDBComboBox
      Left = 104
      Top = 48
      Width = 137
      Height = 21
      DataField = 'Skin_Name'
      DataSource = DataSource1
      ItemHeight = 13
      TabOrder = 7
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\DataBase @HR3\Op' +
      'rekan\Buzz Wave\skin.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 336
    Top = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Skin'
    Left = 376
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 416
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 296
    Top = 8
  end
end
