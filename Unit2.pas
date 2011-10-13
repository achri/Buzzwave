unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Timer1: TTimer;
    Button1: TButton;
    Label12: TLabel;
    Edit6: TEdit;
    Label13: TLabel;
    Edit7: TEdit;
    Label14: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit10: TEdit;
    Label19: TLabel;
    Edit11: TEdit;
    Label20: TLabel;
    Edit12: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Label25: TLabel;
    Edit15: TEdit;
    Label26: TLabel;
    Edit16: TEdit;
    Label27: TLabel;
    Edit17: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Edit18: TEdit;
    Label31: TLabel;
    Edit19: TEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
begin
 edit1.Text := form1.mp3.filename;
 if edit1.Text <> '' then
 begin
 edit2.Text := inttostr(form1.mp3.length);
 edit3.Text := inttostr(form1.mp3.position);
 end;
 edit4.Text := inttostr(form1.lama.Max);
 edit5.Text := inttostr(form1.lama.position);
 edit6.Text := inttostr(strtoint(edit4.Text) div 1000);
 edit7.Text := inttostr(strtoint(edit5.Text) div 1000);
 edit8.Text := inttostr(strtoint(edit6.Text) div 60)+':'+inttostr(strtoint(edit6.Text)mod 60);
 edit9.Text := inttostr(strtoint(edit7.Text) div 60)+':'+inttostr(strtoint(edit7.Text)mod 60);
 edit10.Text := inttostr(form1.listbox3.Count);
 edit11.Text := inttostr(nomor);
 edit12.Text := inttostr(pointer);
 edit13.Text := form1.edit2.Text;
 edit14.Text := form1.edit3.Text;
 edit15.Text := form1.edit5.Text;
 edit16.Text := form1.edit4.Text;
 edit17.Text := form1.edit6.Text;
 edit18.Text := inttostr(list);
 edit19.Text := inttostr(pointer);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
 form2.Close;
 form1.Width := 324;
end;

end.
