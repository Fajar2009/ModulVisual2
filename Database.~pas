unit Database;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls,
  Grids, DBGrids;

type
  TFInfoPrak = class(TForm)
    con1: TADOConnection;
    Button1: TButton;
    cht1: TChart;
    Series1: TBarSeries;
    qry1: TADOQuery;
    ds1: TDataSource;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInfoPrak: TFInfoPrak;

implementation

{$R *.dfm}

procedure TFInfoPrak.Button1Click(Sender: TObject);
var i:Integer;
begin
   qry1.SQL.Clear;
   qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
   qry1.Open;
   for i:=1 to qry1.RecordCount do
   begin
   cht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.Fields[2].AsString);
   qry1.Next;
   end;
end;

end.
