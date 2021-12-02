inherited FrmCadastroBairros: TFrmCadastroBairros
  Caption = 'FrmCadastroBairros'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object EditIdBairro: TDBEdit
    Left = 32
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object EditNomeBairro: TDBEdit
    Left = 32
    Top = 62
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object EditIdCidBairro: TDBEdit
    Left = 32
    Top = 144
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object EditRefBairro: TDBEdit
    Left = 32
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object ButSalvar: TButton
    Left = 392
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = ButSalvarClick
  end
  object EditNomeCid: TEdit
    Left = 192
    Top = 144
    Width = 121
    Height = 23
    TabOrder = 5
    Text = 'EditNomeCid'
  end
end
