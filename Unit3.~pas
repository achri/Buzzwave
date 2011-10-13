unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Menus;

type
  TForm3 = class(TForm)
    Panel2: TPanel;
    lama: TTrackBar;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Image2: TImage;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel1: TPanel;
    ListBox1: TListBox;
    PopupMenu1: TPopupMenu;
    Play1: TMenuItem;
    Stop1: TMenuItem;
    Next1: TMenuItem;
    Back1: TMenuItem;
    N1: TMenuItem;
    MiniPlaylist1: TMenuItem;
    Undock1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    Timer1: TTimer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure lamaChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure convert_files;
    procedure SpeedButton8Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    {
    procedure hit_me (var msg : twmnchittest);
    message wm_nchittest;
    }
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
 if panel2.Visible = false then
 begin
  panel2.Visible := true;
  panel1.Visible := false;
  image1.Visible := true;
  image2.Visible := false;
 end
 else
 begin
  panel2.Visible := false;
  panel1.Visible := false;
  image1.Visible := false;
  image2.Visible := true
 end;
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
 timer1.Enabled := false;
 form3.Close;
 form1.Show1Click(sender);
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
 Form1.SpeedButton1.click;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
 Form1.SpeedButton2.click;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
 Form1.Back1.Click;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
 Form1.Next1.Click;
end;

procedure TForm3.lamaChange(Sender: TObject);
begin
 if form1.mp3.FileName <> '' then
 begin
  if ((lama.Position > (form1.mp3.Position + 10))or(lama.Position < (form1.mp3.Position - 10))) then
  begin
   form1.mp3.Position := lama.Position;
   form1.mp3.Play;
   form1.timer1.Enabled := true;
   form1.timer2.Enabled := true;
  end;
 end;
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
 form1.SpeedButton4.Click;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
 speedbutton8.Top := panel2.Height - 20;
 form3.FormStyle := fsStayOnTop;
 form1.Hide1Click(sender);
end;

procedure tform3.convert_files;
var karakter,loop,stop,panjang : byte; 
    s : string;
begin
 panjang := 0;
 if form1.listbox3.Count <> -1 then
 begin
 listbox1.Clear;
 form1.listbox3.ItemIndex := -1;
 repeat
  form1.listbox3.ItemIndex := form1.listbox3.ItemIndex + 1;
  if form1.listbox3.Items[form1.listbox3.ItemIndex]='' then
  begin
   if messagedlg('Error loading music files !!!, Clear Playlist Now !!!',mtconfirmation,[mbyes],0)=mryes then
    form1.listbox3.Items.Clear;
  end else
  begin
  stop := 0;
  karakter := length(form1.listbox3.Items[form1.listbox3.itemindex]);
  s := form1.listbox3.Items[form1.listbox3.itemindex];
  files := '';
  repeat
   karakter := karakter - 1;
   if s[karakter] = '.' then
    panjang := karakter;
   if s[karakter] = '\' then
   begin
    for loop := karakter + 1 to panjang - 1 do
     files := files + s[loop];
   stop := 1;
   end;
  until stop = 1;
  listbox1.Items.Add(files);
  end;
 until (form1.listbox3.ItemIndex + 1) >= form1.listbox3.count ;
 end;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
 listbox1.Color := strtoint(form1.Edit4.Text);
 listbox1.Font.Color := strtoint(form1.edit5.Text);
 SpeedButton2.Font.Color := strtoint(form1.edit5.Text);
 SpeedButton3.Font.Color := strtoint(form1.edit5.Text);
 SpeedButton4.Font.Color := strtoint(form1.edit5.Text);
 SpeedButton5.Font.Color := strtoint(form1.edit5.Text);
 SpeedButton6.Font.Color := strtoint(form1.edit5.Text);
 SpeedButton7.Font.Color := strtoint(form1.edit5.Text);
 SpeedButton8.Font.Color := strtoint(form1.edit5.Text);
 label1.Font.Color := strtoint(form1.edit5.Text);
 Panel1.Color := strtoint(form1.edit6.Text);
 Panel2.Color := strtoint(form1.edit6.Text);
 form3.AlphaBlendValue := form1.AlphaBlendValue;
 Image1.Picture.LoadFromFile(form1.Edit10.Text);
 Image2.Picture.LoadFromFile(form1.Edit11.Text);
 if form1.ListBox3.Count <> 0 then
 convert_files;
 {
 form1.Timer2.Enabled := false;
 form1.Timer3.Enabled := false;
 form1.Timer4.Enabled := false;
 form1.Timer5.Enabled := false;
 form1.Timer6.Enabled := false;
 form1.Timer7.Enabled := false;
 }
 timer1.Enabled := true;
end;

procedure TForm3.SpeedButton8Click(Sender: TObject);
begin
 if panel1.Visible then
  panel1.Visible := false
 else
  panel1.Visible := true;
end;

{
procedure tform3.hit_me (var msg:twmnchittest);
begin
 inherited;
 if (msg.Result = htclient) then
  if msg.Ypos <= top + form1.Height then
   msg.Result := htcaption;
end;
}

procedure TForm3.ListBox1Click(Sender: TObject);
begin
 nomor := listbox1.ItemIndex;
end;

procedure TForm3.ListBox1DblClick(Sender: TObject);
begin
 pointer := nomor;
 form1.playfile;
end;

procedure TForm3.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
 begin
  nomor := listbox1.ItemIndex;
  form1.playfile;
 end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 timer1.Enabled := false;
end;

end.
