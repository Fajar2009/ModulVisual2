unit GrafikStringrid1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TFGrafikStringgrid = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EJumlah: TEdit;
    CTahun: TComboBox;
    CbFakultas: TComboBox;
    Chart1: TChart;
    Series1: TPieSeries;
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGrafikStringgrid: TFGrafikStringgrid;

implementation

{$R *.dfm}

procedure TFGrafikStringgrid.FormCreate(Sender: TObject);
begin
StringGrid1.RowCount:=1;
StringGrid1.ColCount:=4;
StringGrid1.Cells[0,0]:='NO';
StringGrid1.Cells[1,0]:='JUMLAH TERDAFTAR';
StringGrid1.Cells[2,0]:='FAKULTAS';
StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';
StringGrid1.ColWidths[0]:=40;
StringGrid1.ColWidths[1]:=150;
StringGrid1.ColWidths[2]:=100;
StringGrid1.ColWidths[3]:=100;
end;

procedure TFGrafikStringgrid.Button1Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount+1; 
StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount - 1);

StringGrid1.Cells[1,StringGrid1.RowCount -1] := EJumlah.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := CbFakultas.Text;
StringGrid1.Cells[3,StringGrid1.RowCount -1] := CTahun.Text;
end;

procedure TFGrafikStringgrid.Button2Click(Sender: TObject);
var i:Integer;
begin
for i:=1 to StringGrid1.rowcount-1 do
begin Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
end;
end;

end.
