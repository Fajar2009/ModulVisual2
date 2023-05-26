unit Kondisional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFCKondisional = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    ENilai1: TEdit;
    ENilai2: TEdit;
    EBobot1: TEdit;
    EBobot2: TEdit;
    Label3: TLabel;
    ETotal: TEdit;
    Label4: TLabel;
    EGrade: TEdit;
    Button3: TButton;
    Label5: TLabel;
    ENilai3: TEdit;
    EBobot3: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCKondisional: TFCKondisional;

implementation

{$R *.dfm}

procedure TFCKondisional.Button2Click(Sender: TObject);
begin
ENilai1.Text:='0';
ENilai2.Text:='0';
ENilai3.Text:='0';
EBobot1.Text:='';
EBobot2.Text:='';
EBobot3.Text:='';
ETotal.Text:='';
EGrade.Text:='';
end;

procedure TFCKondisional.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFCKondisional.Button1Click(Sender: TObject);
var
nil1, nil2, nil3, hasil : real;
b1, b2, b3 : real;
grade :string;
begin
nil1:=StrToFloat(ENilai1.Text);
nil2:=StrToFloat(ENilai2.Text);
nil3:=StrToFloat(ENilai3.Text);

b1:=StrToFloat(EBobot1.Text)/100;
b2:=StrToFloat(EBobot2.Text)/100;
b3:=StrToFloat(EBobot3.Text)/100;

hasil := nil1*b1 + nil2*b2 + nil3*b3 ;

if (hasil >= 80) then
grade:='A'
else if (hasil >= 70) then
grade :='B'
else if (hasil >= 60) then
grade := 'C'
else if (hasil >= 50) then
grade :='D'
else grade :='E';

ETotal.Text:=FloatToStr(hasil);
EGrade.Text:=grade
end;

end.
