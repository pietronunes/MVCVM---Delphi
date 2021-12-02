object FrmBase: TFrmBase
  Left = 0
  Top = 0
  Caption = 'Form Base'
  ClientHeight = 458
  ClientWidth = 612
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 593
    Height = 394
    DataSource = dsTable
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object ButEditar: TButton
    Left = 8
    Top = 424
    Width = 75
    Height = 33
    Caption = 'Editar'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object ButExcluir: TButton
    Left = 89
    Top = 424
    Width = 75
    Height = 33
    Caption = 'Excluir'
    TabOrder = 2
  end
  object ButIncluir: TButton
    Left = 170
    Top = 424
    Width = 75
    Height = 33
    Caption = 'Incluir'
    TabOrder = 3
  end
  object dsTable: TDataSource
    Left = 552
    Top = 32
  end
end
