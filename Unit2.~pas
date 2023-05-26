unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids,
  DBGrids, DB, ADODB, frxClass,frxDBSet;

type
  TFInfoPrakFull = class(TForm)
    ds1: TDataSource;
    qry1: TADOQuery;
    con1: TADOConnection;
    dbgrd1: TDBGrid;
    cht1: TChart;
    Series1: TBarSeries;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    qry2: TADOQuery;
    frxjadwal: TfrxReport;
    frxDBjadwal: TfrxDBDataset;
    frxDBDetailjadwal: TfrxDBDataset;
    frxdetailjadwal: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure frxjadwalClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInfoPrakFull: TFInfoPrakFull;

implementation
uses TambahData;

{$R *.dfm}

procedure TFInfoPrakFull.Button1Click(Sender: TObject);

var i:Integer;
begin
   qry2.SQL.Clear;
   qry2.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
   qry2.Open;
   for i:=1 to qry2.RecordCount do
   begin

   cht1.Series[0].Add(StrToInt(qry2.fieldbyname('total_siswa').AsString),qry2.Fields[2].AsString);
   qry2.Next;
   end;
end;

procedure TFInfoPrakFull.FormShow(Sender: TObject);
begin
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=80;
dbgrd1.Columns[2].Width:=80;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=90;
cht1.Title.Text.Add('Grafik Kehadiran Paktikum');
end;

procedure TFInfoPrakFull.Button3Click(Sender: TObject);
begin
   qry1.SQL.Clear;
   qry1.SQL.Add('select * from jadwal_table');
   qry1.Open;
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=80;
dbgrd1.Columns[2].Width:=80;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=90;

end;

procedure TFInfoPrakFull.Button2Click(Sender: TObject);
begin
frxjadwal.ShowReport();
end;

procedure TFInfoPrakFull.frxjadwalClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
 if View.Name='Memo7' then
 begin
  qry2.SQL.Clear;
  qry2.SQL.Add('select* from jadwal_table where kelas="'+View.TagStr+'"');
  qry2.Open;
  frxdetailjadwal.ShowReport();
 end;
end;
                  
procedure TFInfoPrakFull.Button4Click(Sender: TObject);
begin
   FTambahData.ShowModal;
end;

end.
