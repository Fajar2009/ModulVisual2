unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Modul11: TMenuItem;
    Modul21: TMenuItem;
    Modul31: TMenuItem;
    Modul41: TMenuItem;
    AplikasiKalkulator1: TMenuItem;
    PraktekMandiri11: TMenuItem;
    anpaClear1: TMenuItem;
    DenganClear1: TMenuItem;
    modul51: TMenuItem;
    CekNilaiSiswa1: TMenuItem;
    VievData1: TMenuItem;
    Full1: TMenuItem;
    DevExpress1: TMenuItem;
    procedure AplikasiKalkulator1Click(Sender: TObject);
    procedure PraktekMandiri11Click(Sender: TObject);
    procedure FKondisionalClick(Sender: TObject);
    procedure CekNilaiSiswa1Click(Sender: TObject);
    procedure anpaClear1Click(Sender: TObject);
    procedure DenganClear1Click(Sender: TObject);
    procedure VievData1Click(Sender: TObject);
    procedure Full1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainMenu: TFMainMenu;

implementation

uses Kalkulator, PraktekMandiri1, Kondisional, Unit2, NilaiBobotSiswa,
  GrafikStringrid1, GrafikStringridFull, Database;

{$R *.dfm}

procedure TFMainMenu.AplikasiKalkulator1Click(Sender: TObject);
begin
FKalkulator.show;
end;

procedure TFMainMenu.PraktekMandiri11Click(Sender: TObject);
begin
FPrakMandiri1.show;
end;

procedure TFMainMenu.FKondisionalClick(Sender: TObject);
begin
FCKondisional.show;
end;

procedure TFMainMenu.CekNilaiSiswa1Click(Sender: TObject);
begin
FNilaiSiswa.show;
end;                 

procedure TFMainMenu.anpaClear1Click(Sender: TObject);
begin
FGrafikStringgrid.show;
end;

procedure TFMainMenu.DenganClear1Click(Sender: TObject);
begin
FGrafikStringgridFull.show;
end;

procedure TFMainMenu.VievData1Click(Sender: TObject);
begin
   FInfoPrak.show;
end;

procedure TFMainMenu.Full1Click(Sender: TObject);
begin
FInfoPrakFull.show;
end;

end.
