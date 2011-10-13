object Form6: TForm6
  Left = 291
  Top = 153
  BorderStyle = bsSingle
  Caption = 'Listen Music Files'
  ClientHeight = 328
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object listen: TPanel
    Left = -1
    Top = 0
    Width = 482
    Height = 329
    BevelInner = bvLowered
    Color = clSkyBlue
    TabOrder = 0
    object Label8: TLabel
      Left = 13
      Top = 12
      Width = 391
      Height = 13
      Caption = 'Listen Music _____________________________________________'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 13
      Top = 41
      Width = 31
      Height = 13
      Caption = 'Drive'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 13
      Top = 65
      Width = 52
      Height = 13
      Caption = 'Directory'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 213
      Top = 65
      Width = 27
      Height = 13
      Caption = 'Files'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button16: TButton
      Left = 16
      Top = 299
      Width = 65
      Height = 17
      Hint = 'Play Music'
      Caption = 'Play'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button16Click
    end
    object DriveComboBox1: TDriveComboBox
      Left = 62
      Top = 37
      Width = 139
      Height = 20
      DirList = DirectoryListBox2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DirectoryListBox2: TDirectoryListBox
      Left = 16
      Top = 88
      Width = 185
      Height = 201
      FileList = FileListBox2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
    end
    object FileListBox2: TFileListBox
      Left = 216
      Top = 88
      Width = 249
      Height = 201
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      Mask = '*.mp3'
      ParentFont = False
      TabOrder = 3
      OnDblClick = FileListBox2DblClick
      OnKeyUp = FileListBox2KeyUp
    end
    object Button15: TButton
      Left = 96
      Top = 299
      Width = 105
      Height = 17
      Hint = 'Add Music File to Playlist'
      Caption = 'Add to Playlist'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button15Click
    end
    object Button17: TButton
      Left = 400
      Top = 299
      Width = 65
      Height = 17
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button17Click
    end
    object lama: TTrackBar
      Left = 208
      Top = 35
      Width = 263
      Height = 25
      Max = 0
      Orientation = trHorizontal
      Frequency = 1
      Position = 0
      SelEnd = 0
      SelStart = 0
      TabOrder = 6
      TickMarks = tmBoth
      TickStyle = tsNone
      OnChange = lamaChange
    end
  end
end
