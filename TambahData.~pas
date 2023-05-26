unit TambahData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
  TFTambahData = class(TForm)
    grp1: TGroupBox;
    dbgrd1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    Label3: TLabel;
    edt4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt3: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    Label8: TLabel;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    Label9: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTambahData: TFTambahData;
  a:String;

implementation
uses Unit2, ADODB, DB, DateUtils;

{$R *.dfm}

procedure TFTambahData.bersih;
begin
 edt1.Text:='00;00';
 edt2.Text:='00;00';
 cbb1.Text:='---Pilih Hari---';
 edt3.Text:='-';
 edt4.Text:='-';
 edt5.Text:='-';
 edt6.Text:='0';

 FInfoPrakFull.qry1.SQL.Clear;
FInfoPrakFull.qry1.SQL.Add('select * from jadwal_table');
FInfoPrakFull.qry1.Open;
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=80;
dbgrd1.Columns[2].Width:=80;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=90;

end;

procedure TFTambahData.btn1Click(Sender: TObject);
var
tam:Integer;
begin

if (edt1.Text='') or (edt1.Text='00:00') or (edt2.Text='') or (edt2.Text='00:00') then
begin
 ShowMessage('Data Jam belum Diisi Dengan Benar');
end else
if (cbb1.Text='') or (cbb1.Text='---Pilih Hari---') then
begin
 ShowMessage('Hari belum Diisi Dengan Benar');
end else
if (edt3.Text='-') or (edt3.Text='') or (edt4.Text='-')or (edt4.Text='')then
begin
  ShowMessage('Inputan Ruangan atau Matkul belum Diisi Dengan Benar');
end else
if (edt5.Text='-') or (edt5.Text='') or (edt6.Text='0') or (edt6.Text='')then
begin
  ShowMessage('Inputan Kelas atau Total Hadir belum Diisi Dengan Benar');
end else
if (FInfoPrakFull.qry1.Locate('hari',cbb1.Text,[])) and  (FInfoPrakFull.qry1.Locate('jam_mulai',edt1.Text,[])) then
begin
    ShowMessage('Data Sudah Ada dalam Sistem');
    edt1.SetFocus;
end else
 begin
 tam:=FInfoPrakFull.qry1.RecordCount+1;
 with FInfoPrakFull.qry1 do
 begin
 SQL.Clear;
 SQL.Add('insert into jadwal_table values("'+IntToStr(tam)+'","'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'")');
 ExecSQL;

 ShowMessage('Data Berhasil Disimpan');
 bersih;
 end;
 end;
end;

procedure TFTambahData.dbgrd1CellClick(Column: TColumn);
begin
try
a:=FInfoPrakFull.qry1.Fields[0].AsString;
edt1.Text:=FInfoPrakFull.qry1.Fields[1].AsString;
edt2.Text:=FInfoPrakFull.qry1.Fields[2].AsString;
cbb1.Text:=FInfoPrakFull.qry1.Fields[3].AsString;
dtp1.Date:=FInfoPrakFull.qry1.Fields[4].AsDateTime;
edt3.Text:=FInfoPrakFull.qry1.Fields[5].AsString;
edt4.Text:=FInfoPrakFull.qry1.Fields[6].AsString;
edt5.Text:=FInfoPrakFull.qry1.Fields[7].AsString;
edt6.Text:=FInfoPrakFull.qry1.Fields[8].AsString;
btn2.Enabled:=True;
btn3.Enabled:=True;
btn1.Enabled:=False;
 except
 end;
end;

procedure TFTambahData.FormShow(Sender: TObject);
begin
FInfoPrakFull.qry1.SQL.Clear;
FInfoPrakFull.qry1.SQL.Add('select * from jadwal_table');
FInfoPrakFull.qry1.Open;
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=80;
dbgrd1.Columns[2].Width:=80;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=90;

end;

procedure TFTambahData.btn2Click(Sender: TObject);
begin
 if (edt1.Text='') or (edt1.Text='00:00') or (edt2.Text='') or (edt2.Text='00:00') then
begin
 ShowMessage('Data Jam belum Diisi Dengan Benar');
end else
if (cbb1.Text='') or (cbb1.Text='---Pilih Hari---') then
begin
 ShowMessage('Hari belum Diisi Dengan Benar');
end else
if (edt3.Text='-') or (edt3.Text='') or (edt4.Text='-')or (edt4.Text='')then
begin
  ShowMessage('Inputan Ruangan atau Matkul belum Diisi Dengan Benar');
end else
if (edt5.Text='-') or (edt5.Text='') or (edt6.Text='0') or (edt6.Text='')then
begin
  ShowMessage('Inputan Kelas atau Total Hadir belum Diisi Dengan Benar');
end else
if (edt1.Text=FInfoPrakFull.qry1.Fields[1].AsString) and (cbb1.Text=FInfoPrakFull.qry1.Fields[3].AsString) then
begin
    ShowMessage('Tidak ada Perubahan Data');
end else
begin
  //a:=FInfoPrakFull.qry1.Fields[0].AsInteger;
  with FInfoPrakFull.qry1 do
  begin
  SQl.Clear;
  //edt1.Text:='update jadwal_table set jam_mulai="'+edt1.Text+'",jam_akhir="'+edt2.Text+'" where No="'+a+'"';
  SQL.Add('update jadwal_table set jam_mulai="'+edt1.Text+'", jam_akhir="'+edt2.Text+'" where no="'+a+'"');
  label9.Caption:='update jadwal_table set jam_mulai="'+edt1.Text+'", jam_akhir="'+edt2.Text+'" where No="'+a+'"';
  ExecSQL;
  bersih;
  ShowMessage('Data Berhasil Di Update');
  end;
//update
end;
end;

procedure TFTambahData.btn4Click(Sender: TObject);
begin
bersih;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn1.Enabled:=True;
end;

procedure TFTambahData.btn3Click(Sender: TObject);
begin
 if (edt1.Text='') or (edt1.Text='00:00') or (edt2.Text='') or (edt2.Text='00:00') then
begin
 ShowMessage('Data Jam belum Diisi Dengan Benar');
end else
if (cbb1.Text='') or (cbb1.Text='---Pilih Hari---') then
begin
 ShowMessage('Hari belum Diisi Dengan Benar');
end else
if (edt3.Text='-') or (edt3.Text='') or (edt4.Text='-')or (edt4.Text='')then
begin
  ShowMessage('Inputan Ruangan atau Matkul belum Diisi Dengan Benar');
end else
if (edt5.Text='-') or (edt5.Text='') or (edt6.Text='0') or (edt6.Text='')then
begin
  ShowMessage('Inputan Kelas atau Total Hadir belum Diisi Dengan Benar');
end else
begin
  if MessageDlg('Apakah Anda Yakin Menghapus Data Ini ?',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
  //a:=FInfoPrakFull.qry1.Fields[0].AsString;
   with FInfoPrakFull.qry1 do
   begin
   SQL.Clear;
   SQL.Add('Delete from jadwal_table where no="'+a+'"');
   label9.Caption:='Delete from jadwal_table where No="'+a+'"';
   ExecSQL;
   
   bersih;
   ShowMessage('Data Berhasil Dihapus');

   end;
  end else
  begin
  ShowMessage('Data Batal Dihapus');
  end;
end;
end;

end.
