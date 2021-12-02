inherited FrmCadastroCidades: TFrmCadastroCidades
  Caption = 'FrmCadastroCidades'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object EditCid_Id: TDBEdit
    Left = 24
    Top = 32
    Width = 49
    Height = 23
    Hint = 'Id'
    TabOrder = 0
  end
  object EditCid_Nome: TDBEdit
    Left = 24
    Top = 80
    Width = 449
    Height = 23
    Hint = 'Nome da Cidade'
    TabOrder = 1
  end
  object EditCid_UF: TDBEdit
    Left = 24
    Top = 128
    Width = 81
    Height = 23
    Hint = 'UF'
    TabOrder = 2
  end
  object EditCid_Ppl: TDBEdit
    Left = 119
    Top = 128
    Width = 122
    Height = 23
    Hint = 'Popula'#231#227'o'
    TabOrder = 3
  end
  object ButSalvar: TButton
    Left = 376
    Top = 193
    Width = 97
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = ButSalvarClick
  end
end
