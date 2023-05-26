unit NilaiBobotSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFNilaiSiswa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    ENilaiKehadiran: TEdit;
    EBobotKehadiran: TEdit;
    ENilaiTugas: TEdit;
    EBobotTugas: TEdit;
    ENilaiUts: TEdit;
    EBobotUts: TEdit;
    ENilaiHarian: TEdit;
    EBobotHarian: TEdit;
    ENilaiUas: TEdit;
    EBobotUas: TEdit;
    ETotal: TEdit;
    EGrade: TEdit;
    EKet: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNilaiSiswa: TFNilaiSiswa;

implementation

{$R *.dfm}

procedure TFNilaiSiswa.Button2Click(Sender: TObject);
begin
ENilaiKehadiran.Text:='0';
ENilaiTugas.Text:='0';
ENilaiUts.Text:='0';
ENilaiHarian.Text:='0';
ENilaiUas.Text:='0';
EBobotKehadiran.Text:='';
EBobotTugas.Text:='';
EBobotUts.Text:='';
EBobotHarian.Text:='';
EBobotUas.Text:='';
ETotal.Text:='';
EGrade.Text:='';
EKet.Text:='';
end;

procedure TFNilaiSiswa.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFNilaiSiswa.Button1Click(Sender: TObject);
var
nil1, nil2, nil3,nil4,nil5, hasil : real;
b1, b2, b3,b4,b5 : real;
grade,ket :string;
begin
nil1:=StrToFloat(ENilaiKehadiran.Text);
nil2:=StrToFloat(ENilaiTugas.Text);
nil3:=StrToFloat(ENilaiUts.Text);
nil4:=StrToFloat(ENilaiHarian.Text);
nil5:=StrToFloat(ENilaiUas.Text);

b1:=StrToFloat(EBobotKehadiran.Text)/100;
b2:=StrToFloat(EBobotTugas.Text)/100;
b3:=StrToFloat(EBobotUts.Text)/100;
b4:=StrToFloat(EBobotHarian.Text)/100;
b5:=StrToFloat(EBobotUas.Text)/100;

hasil := nil1*b1 + nil2*b2 + nil3*b3+nil4*b4+nil5*b5 ;

if (hasil >= 80) then
grade:='A'
else if (hasil >= 70) then
grade :='B'
else if (hasil >= 60) then
grade := 'C'
else if (hasil >= 50) then
grade :='D'
else grade :='E';

if ((grade = 'A')or(grade='B')or(grade='C')) then
ket:='LULUS'
else
ket:='TIDAK LULUS';

EKet.Text:=ket;
ETotal.Text:=FloatToStr(hasil);
EGrade.Text:=grade
end;

end.
