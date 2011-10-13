unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm6 = class(TForm)
    listen: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Button16: TButton;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox2: TDirectoryListBox;
    FileListBox2: TFileListBox;
    Button15: TButton;
    Button17: TButton;
    Label1: TLabel;
    Label2: TLabel;
    lama: TTrackBar;
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure FileListBox2DblClick(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure lamaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FileListBox2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure load_path(s:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  drive : char;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure tform6.load_path(s:string);
var stop,karakter,loop : integer;
begin
 files := '';
 stop := 0;
 karakter := length(s);
 repeat
  karakter := karakter - 1;
  if s[karakter] = ':'  then
  begin
   for loop := 0 to (karakter-1) do
    drive := s[loop];
  stop := 1;
  end;
 until stop = 1;
end;

procedure TForm6.Button15Click(Sender: TObject);
var ply : integer;
begin
 if filelistbox2.Count <> 0 then
 begin
 ply := form1.listbox3.ItemIndex;
 list := list + 1;
 form1.listbox3.Items[list] := filelistbox2.FileName;
 if form1.listbox3.ItemIndex = -1 then
  form1.listbox3.ItemIndex := list;
 form1.listbox3.ItemIndex := ply;
 form1.convert_files;
 end;
end;

procedure TForm6.Button16Click(Sender: TObject);
begin
if filelistbox2.Count <> 0 then
 begin
 if filelistbox2.ItemIndex <> -1 then
 begin
 if form1.lama.Position > 0 then
  form1.mp3.Stop;
 form1.mp3.FileName := filelistbox2.FileName;
 form1.mp3.Open;
 form1.mp3.Play;
 form1.timer1.Enabled := true;
 form1.timer2.Enabled := true;
 form1.lama.Max := form1.mp3.Length;
 form3.lama.Max := form1.mp3.Length;
 form6.lama.Max := form1.mp3.Length;
 end else
 begin
 filelistbox2.ItemIndex := filelistbox2.ItemIndex + 1;
 button16.Click;
 end;
 end;
end;

procedure TForm6.FileListBox2DblClick(Sender: TObject);
begin
button16.Click;
end;

procedure TForm6.Button17Click(Sender: TObject);
begin
 form6.Close;
end;

procedure TForm6.lamaChange(Sender: TObject);
begin
 if form1.mp3.FileName <> '' then
 begin
  if ((lama.Position > (form1.mp3.Position + 50))or(lama.Position < (form1.mp3.Position - 50))) then
  begin
   form1.mp3.Position := lama.Position;
   form1.mp3.Play;
   form1.timer1.Enabled := true;
   form1.timer2.Enabled := true;
  end;
 end;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
 label8.Font.Color := strtoint(form1.edit5.Text);
 label9.Font.Color := strtoint(form1.edit5.Text);
 label1.Font.Color := strtoint(form1.edit5.Text);
 label2.Font.Color := strtoint(form1.edit5.Text);
 listen.Color := strtoint(form1.edit6.Text);
 filelistbox2.FileName := form1.listbox2.Items[7];
 filelistbox2.Mask := '*.mp3';

 load_path(form1.listbox3.Items[form1.listbox3.Count-1]);
 drivecombobox1.Drive := drive;
end;

procedure TForm6.FileListBox2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  button15.Click;
end;

end.
