unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons, StdCtrls, ComCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape3: TShape;
    Animate1: TAnimate;
    Label7: TLabel;
    Label8: TLabel;
    MM: TLabel;
    OS: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cekos;
    procedure cekmem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
 form4.Close;
end;

procedure TForm4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_left then
 begin
  shape2.Left := shape2.Left - 10;
  if shape2.Left <= 108 then
  begin
   shape2.Brush.Color := clwhite;
  end;
  if shape2.Left <= 20 then
   shape2.Left := 20;
 end;
 if key = vk_right then
 begin
  shape2.Left := shape2.Left + 10;
  if shape2.Left >= 108 then
  begin
   shape2.Brush.Color := clblack;
  end;
  if shape2.Left >= 204 then
   shape2.Left := 204;
 end;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
 animate1.Active := true;
end;

procedure TForm4.Cekmem;
var
  MS: TMemoryStatus;
begin
  cekos;
  MS.dwLength := SizeOf(TMemoryStatus);
  GlobalMemoryStatus(MS);
  MM.Caption := FormatFloat('#,###" KB"', MS.dwTotalPhys div 1024);
end;

procedure TForm4.cekos;
var
  Platform: string;
  BuildNumber: Integer;
begin
  case Win32Platform of
    VER_PLATFORM_WIN32_WINDOWS:
      begin
        Platform := 'Windows 95';
        BuildNumber := Win32BuildNumber and $0000FFFF;
      end;
    VER_PLATFORM_WIN32_NT:
      begin
        Platform := 'Windows NT';
        BuildNumber := Win32BuildNumber;
      end;
      else
      begin
        Platform := 'Windows';
        BuildNumber := 0;
      end;
  end;
  if (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) or
    (Win32Platform = VER_PLATFORM_WIN32_NT) then
  begin
    if Win32CSDVersion = '' then
      OS.Caption := Format('%s %d.%d (Build %d)', [Platform, Win32MajorVersion,
        Win32MinorVersion, BuildNumber])
    else
      OS.Caption := Format('%s %d.%d (Build %d: %s)', [Platform, Win32MajorVersion,
        Win32MinorVersion, BuildNumber, Win32CSDVersion]);
  end
  else
    OS.Caption := Format('%s %d.%d', [Platform, Win32MajorVersion,
      Win32MinorVersion])
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
 cekmem;
end;

end.
