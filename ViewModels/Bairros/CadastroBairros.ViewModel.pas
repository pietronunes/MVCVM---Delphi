unit CadastroBairros.ViewModel;

interface

uses
  ViewModelCadastro.Interfaces,
  ViewModelCadastro.Classes,
  Bairros.Controller;

type
  TCadastroBairrosViewModel =
    class(TViewModelCadastroGeral, IViewModelCadastroGeral)
      public
      constructor Create();
      function Salvar() : Boolean;
      private
        FBairrosController : TBairrosController;
  end;

implementation

uses
  Bairros.View;

{ TCadastroBairrosViewModel }

constructor TCadastroBairrosViewModel.Create;
begin
  FBairrosController := TBairrosController.Create;
end;

function TCadastroBairrosViewModel.Salvar : Boolean;
var
  vVerificacoes : Boolean;
begin
  if vVerificacoes then
    try
      FBairrosController.Salvar(FrmBairros.dsTable.DataSet);
    except
      Result := False;
    end;
end;

end.
