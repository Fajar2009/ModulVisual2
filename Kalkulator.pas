unit Kalkulator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFKalkulator = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ENilai1: TEdit;
    ENilai2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EHasil: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKalkulator: TFKalkulator;

implementation

{$R *.dfm}

procedure TFKalkulator.Button1Click(Sender: TObject);
begin
 EHasil.Text:=IntToStr(StrToInt(ENilai1.text)+strtoint(ENilai2.Text));
end;

procedure TFKalkulator.Button2Click(Sender: TObject);
begin
Close;
end;

end.
