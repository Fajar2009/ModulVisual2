object FGrafikStringgrid: TFGrafikStringgrid
  Left = 192
  Top = 125
  Width = 738
  Height = 675
  Caption = 'Menampilkan Data Di Grafik dan Stringgrid'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 109
    Height = 18
    Caption = 'Tahun Angkatan'
  end
  object Label2: TLabel
    Left = 16
    Top = 72
    Width = 114
    Height = 18
    Caption = 'Jumlah Terdaftar'
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 59
    Height = 18
    Caption = 'Fakultas'
  end
  object EJumlah: TEdit
    Left = 144
    Top = 72
    Width = 161
    Height = 26
    TabOrder = 0
  end
  object CTahun: TComboBox
    Left = 144
    Top = 32
    Width = 161
    Height = 26
    ItemHeight = 18
    TabOrder = 1
    Items.Strings = (
      '2019'
      '2020'
      '2021'
      '2022'
      '2023')
  end
  object CbFakultas: TComboBox
    Left = 144
    Top = 112
    Width = 161
    Height = 26
    ItemHeight = 18
    TabOrder = 2
    Items.Strings = (
      'TI'
      'Hukum'
      'Ekonomi'
      'Farmasi')
  end
  object Chart1: TChart
    Left = 16
    Top = 200
    Width = 673
    Height = 273
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
    Left = 24
    Top = 160
    Width = 113
    Height = 25
    Caption = 'Add Data'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 160
    Width = 115
    Height = 25
    Caption = 'Viev Grafik'
    TabOrder = 5
    OnClick = Button2Click
  end
  object StringGrid1: TStringGrid
    Left = 336
    Top = 32
    Width = 361
    Height = 153
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
end
