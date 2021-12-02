inherited FrmCidades: TFrmCidades
  Caption = 'FrmCidades'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  inherited DBGrid1: TDBGrid
    Top = 26
  end
  inherited ButEditar: TButton
    OnClick = ButEditarClick
  end
  inherited ButExcluir: TButton
    OnClick = ButExcluirClick
  end
  inherited ButIncluir: TButton
    OnClick = ButIncluirClick
  end
end
