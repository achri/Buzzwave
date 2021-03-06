unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, Buttons, StdCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    Timer2: TTimer;
    PopupMenu1: TPopupMenu;
    Playback1: TMenuItem;
    View1: TMenuItem;
    N1: TMenuItem;
    FileInformation1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    Close1: TMenuItem;
    Play1: TMenuItem;
    Stop1: TMenuItem;
    Next1: TMenuItem;
    Back1: TMenuItem;
    N5: TMenuItem;
    OpenFile1: TMenuItem;
    Normal1: TMenuItem;
    FullScreen1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer2Timer(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure Play1Click(Sender: TObject);
    procedure Stop1Click(Sender: TObject);
    procedure Next1Click(Sender: TObject);
    procedure Back1Click(Sender: TObject);
    procedure OpenFile1Click(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure FullScreen1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
begin
 label1.Font.Color := strtoint(form1.edit5.Text);
 label2.Font.Color := strtoint(form1.edit5.Text);
 form5.Color := strtoint(form1.edit6.Text);
 panel1.Color := strtoint(form1.edit4.Text);
 timer1.enabled := true;
 timer2.Enabled := true;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
 form1.mp3.Display := panel1;
 form1.mp3.DisplayRect := rect(0,0,panel1.Width,panel1.Height);
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 timer1.Enabled := false;
 timer2.Enabled := false;
end;

procedure TForm5.Timer2Timer(Sender: TObject);
begin
 panel1.Height := form5.Height - 50;
 panel1.Width := form5.Width - 25;
end;

procedure TForm5.Panel1DblClick(Sender: TObject);
begin
 if form5.align = alnone then
 begin
 form5.Align := alclient;
 form5.Width := 1024;
 form5.Height:= 768;
 end else
 begin
 form5.Align := alnone;
 form5.Width := 538;
 form5.Height:= 378;
 end;
 timer1.Enabled := true;
end;

procedure TForm5.Play1Click(Sender: TObject);
begin
 form1.speedbutton1.Click;
end;

procedure TForm5.Stop1Click(Sender: TObject);
begin
 form1.SpeedButton2.Click;
end;

procedure TForm5.Next1Click(Sender: TObject);
begin
 form1.Next1Click(sender);
end;

procedure TForm5.Back1Click(Sender: TObject);
begin
 form1.Back1Click(sender);
end;

procedure TForm5.OpenFile1Click(Sender: TObject);
begin
 form1.VideoFiles1Click(sender);
end;

procedure TForm5.Normal1Click(Sender: TObject);
begin
 form5.Width := 538;
 form5.Height:= 378;
 form5.Align := alcustom;
 //form5.BorderStyle := bssizeable;
 timer1.Enabled := true;
end;

procedure TForm5.Close1Click(Sender: TObject);
begin
 form5.Close;
end;

procedure TForm5.FullScreen1Click(Sender: TObject);
begin
 form5.Width := 1024;
 form5.Height:= 768;
 form5.Align := alclient;
 //form5.BorderStyle := bsnone;
 timer1.Enabled := true;
end;

end.
