unit GrafikStringridFull;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, Grids, StdCtrls, ExtCtrls, TeeProcs, Chart;

type
  TFGrafikStringgridFull = class(TForm)
    Label1: TLabel;
    EJumlah: TEdit;
    CbTahun: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    CbFakultas: TComboBox;
    Chart1: TChart;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    StringGrid1: TStringGrid;
    Series1: TPieSeries;
    procedure Button1Click(Sender: TObject);
    procedure charadd;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGrafikStringgridFull: TFGrafikStringgridFull;

implementation

{$R *.dfm}



procedure TFGrafikStringgridFull.charadd;
var i:Integer;
begin
 Chart1.Series[0].Clear;
 for i:=1 to StringGrid1.rowcount-1 do
 begin
 Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
 end;
end;

procedure TFGrafikStringgridFull.Button1Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount - 1);

StringGrid1.Cells[1,StringGrid1.RowCount -1] := EJumlah.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := CbFakultas.Text;
StringGrid1.Cells[3,StringGrid1.RowCount -1] := CbTahun.Text;
charadd;

end;

procedure TFGrafikStringgridFull.FormShow(Sender: TObject);
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

procedure TFGrafikStringgridFull.Button3Click(Sender: TObject);
begin
StringGrid1.RowCount:=StringGrid1.RowCount-MAX_PATH;
charadd;
end;

procedure TFGrafikStringgridFull.Button2Click(Sender: TObject);
var a,b:Integer;
begin
 a:=StringGrid1.Selection.Bottom-StringGrid1.Selection.Top+1;
 for b:=StringGrid1.Selection.Bottom+1 to StringGrid1.RowCount-1 do
 StringGrid1.Rows[b-a]:=StringGrid1.Rows[b];
 StringGrid1.RowCount:=StringGrid1.RowCount-1;
 charadd;
end;

end.
