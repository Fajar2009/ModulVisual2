object FGrafikStringgridFull: TFGrafikStringgridFull
  Left = 193
  Top = 132
  Width = 736
  Height = 675
  Caption = 'Menampilkan Data Pada Grafik dan Stringgrid 2'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 94
    Height = 20
    Caption = 'Tahun Angkatan'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 97
    Height = 20
    Caption = 'Jumlah Terdaftar'
  end
  object Label3: TLabel
    Left = 16
    Top = 104
    Width = 49
    Height = 20
    Caption = 'Fakultas'
  end
  object EJumlah: TEdit
    Left = 128
    Top = 64
    Width = 153
    Height = 28
    TabOrder = 0
  end
  object CbTahun: TComboBox
    Left = 128
    Top = 24
    Width = 153
    Height = 28
    ItemHeight = 20
    TabOrder = 1
    Items.Strings = (
      '2018'
      '2019'
      '2020'
      '2021'
      '2022')
  end
  object CbFakultas: TComboBox
    Left = 128
    Top = 104
    Width = 153
    Height = 28
    ItemHeight = 20
    TabOrder = 2
    Items.Strings = (
      'TI'
      'Hukum'
      'Ekonomi'
      'Pertanian')
  end
  object Chart1: TChart
    Left = 24
    Top = 208
    Width = 681
    Height = 353
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 3
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 16
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Add Data'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Clear All'
    TabOrder = 6
    OnClick = Button3Click
  end
  object StringGrid1: TStringGrid
    Left = 304
    Top = 24
    Width = 393
    Height = 153
    TabOrder = 7
  end
end
