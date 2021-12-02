inherited FrmBairros: TFrmBairros
  Caption = 'Bairros'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  inherited ButEditar: TButton
    OnClick = ButEditarClick
  end
  inherited ButIncluir: TButton
    OnClick = ButIncluirClick
  end
end
