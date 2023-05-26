unit PraktekMandiri1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFPrakMandiri1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ENilai1: TEdit;
    ENilai2: TEdit;
    Button1: TButton;
    ETambah: TEdit;
    EKurang: TEdit;
    EKali: TEdit;
    EBagi: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrakMandiri1: TFPrakMandiri1;

implementation

{$R *.dfm}

procedure TFPrakMandiri1.Button1Click(Sender: TObject);
begin
ETambah.Text:=IntToStr(StrToInt(ENilai1.text)+strtoint(ENilai2.Text));
EKurang.Text:=IntToStr(StrToInt(ENilai1.text)-strtoint(ENilai2.Text));
EKali.Text:=IntToStr(StrToInt(ENilai1.text)*strtoint(ENilai2.Text));
EBagi.Text:= FloatToStr(StrToFloat(ENilai1.Text)/strtoFloat(ENilai2.Text));
end;

procedure TFPrakMandiri1.Button2Click(Sender: TObject);
begin
ETambah.Text:=IntToStr(StrToInt(ENilai1.text)+strtoint(ENilai2.Text));
end;

procedure TFPrakMandiri1.Button3Click(Sender: TObject);
begin
EKurang.Text:=IntToStr(StrToInt(ENilai1.text)-strtoint(ENilai2.Text));
end;

procedure TFPrakMandiri1.Button4Click(Sender: TObject);
begin
EKali.Text:=IntToStr(StrToInt(ENilai1.text)*strtoint(ENilai2.Text));
end;

procedure TFPrakMandiri1.Button5Click(Sender: TObject);
begin
EBagi.Text:= FloatToStr(StrToFloat(ENilai1.Text)/strtoFloat(ENilai2.Text));
end;

end.
