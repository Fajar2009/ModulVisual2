object FTambahData: TFTambahData
  Left = 776
  Top = 93
  Width = 784
  Height = 724
  Caption = 'Tambah Data Baru'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 8
    Top = 8
    Width = 737
    Height = 289
    Caption = 'Tambah Data Jadwal'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 45
      Height = 13
      Caption = 'Jam Awal'
    end
    object Label2: TLabel
      Left = 272
      Top = 40
      Width = 46
      Height = 13
      Caption = 'Jam Akhir'
    end
    object Label3: TLabel
      Left = 24
      Top = 104
      Width = 39
      Height = 13
      Caption = 'Tanggal'
    end
    object Label4: TLabel
      Left = 24
      Top = 136
      Width = 44
      Height = 13
      Caption = 'Ruangan'
    end
    object Label5: TLabel
      Left = 24
      Top = 168
      Width = 52
      Height = 13
      Caption = 'Matakuliah'
    end
    object Label6: TLabel
      Left = 24
      Top = 200
      Width = 26
      Height = 13
      Caption = 'Kelas'
    end
    object Label7: TLabel
      Left = 24
      Top = 232
      Width = 52
      Height = 13
      Caption = 'Total Hadir'
    end
    object Label8: TLabel
      Left = 24
      Top = 72
      Width = 84
      Height = 13
      Caption = 'Hari Pelaksanaan'
    end
    object Label9: TLabel
      Left = 272
      Top = 264
      Width = 32
      Height = 13
      Caption = 'Label9'
    end
    object edt1: TEdit
      Left = 136
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '00:00'
    end
    object edt2: TEdit
      Left = 336
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '00:00'
    end
    object edt4: TEdit
      Left = 136
      Top = 168
      Width = 321
      Height = 21
      TabOrder = 2
      Text = '-'
    end
    object edt3: TEdit
      Left = 136
      Top = 136
      Width = 321
      Height = 21
      TabOrder = 3
      Text = '-'
    end
    object edt5: TEdit
      Left = 136
      Top = 200
      Width = 321
      Height = 21
      TabOrder = 4
      Text = '-'
    end
    object edt6: TEdit
      Left = 136
      Top = 232
      Width = 121
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object cbb1: TComboBox
      Left = 136
      Top = 72
      Width = 321
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Text = '---Pilih Hari---'
      Items.Strings = (
        'Senin'
        'Selasa'
        'Rabu '
        'Kamis'
        'Jum'#39'at'
        'Sabtu'
        'Minggu')
    end
    object dtp1: TDateTimePicker
      Left = 136
      Top = 104
      Width = 185
      Height = 21
      Date = 45057.910845787040000000
      Time = 45057.910845787040000000
      TabOrder = 7
    end
    object btn1: TBitBtn
      Left = 656
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 8
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 656
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Edit'
      Enabled = False
      TabOrder = 9
      OnClick = btn2Click
    end
    object btn3: TBitBtn
      Left = 656
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Hapus'
      Enabled = False
      TabOrder = 10
      OnClick = btn3Click
    end
    object btn4: TBitBtn
      Left = 656
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 11
      OnClick = btn4Click
    end
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 312
    Width = 745
    Height = 361
    DataSource = FInfoPrakFull.ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
