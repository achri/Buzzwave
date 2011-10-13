object Form5: TForm5
  Left = 299
  Top = 278
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = 'BUZZWAVE VIDEO PLAYER'
  ClientHeight = 344
  ClientWidth = 520
  Color = 16744448
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 505
    Height = 329
    BevelInner = bvLowered
    Color = clBlack
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnDblClick = Panel1DblClick
    object Label1: TLabel
      Left = 64
      Top = 104
      Width = 384
      Height = 51
      Caption = 'B U Z Z   W A V E'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -40
      Font.Name = 'Elephant'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 104
      Top = 168
      Width = 304
      Height = 32
      Caption = 'V i d e o   P l a y e r'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Felix Titling'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 472
    Top = 16
  end
  object Timer2: TTimer
    Interval = 200
    OnTimer = Timer2Timer
    Left = 472
    Top = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 80
    object Playback1: TMenuItem
      Caption = 'Playback'
      object Play1: TMenuItem
        Caption = 'Play'
        OnClick = Play1Click
      end
      object Stop1: TMenuItem
        Caption = 'Stop'
        OnClick = Stop1Click
      end
      object Next1: TMenuItem
        Caption = 'Next'
        OnClick = Next1Click
      end
      object Back1: TMenuItem
        Caption = 'Back'
        OnClick = Back1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object OpenFile1: TMenuItem
        Caption = 'Open File'
        OnClick = OpenFile1Click
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object Normal1: TMenuItem
        Caption = 'Normal'
        OnClick = Normal1Click
      end
      object FullScreen1: TMenuItem
        Caption = 'Full Screen'
        OnClick = FullScreen1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FileInformation1: TMenuItem
      Caption = 'File Information'
    end
    object N2: TMenuItem
      Caption = '-> Files'
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Close1: TMenuItem
      Caption = 'Close'
      OnClick = Close1Click
    end
  end
end
