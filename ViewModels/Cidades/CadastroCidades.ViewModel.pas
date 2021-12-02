unit CadastroCidades.ViewModel;

interface

uses
  DB,
  System.Classes,
  System.SysUtils,
  ViewModelCadastro.Interfaces,
  ViewModelCadastro.Classes,
  Cidades.Controller;

type
  TCadastroCidadesViewModel = class(TViewModelCadastroGeral, IViewModelCadastroGeral)
    public
      constructor Create();
      function Salvar() : Boolean;
      function VerificaCampos(): Boolean;
    private
      FCidadesController : TCidadesController;
  end;

implementation

uses
  Cidades.View,
  CidadesCadastro.View;

var
  FCadastroCidades : TFrmCadastroCidades;

{ TCadastroCidadesViewModel }


function TCadastroCidadesViewModel.Salvar(): Boolean;
begin
  if Self.VerificaCampos then
    try
      FCidadesController.Salvar(FrmCidades.dsTable.DataSet);
    except
      Result := False;
    end
  else
    Result := False;

end;

function TCadastroCidadesViewModel.VerificaCampos: Boolean;
begin
//  if (FCadastroCidades.EditCid_Id.Text = '')
//    or (FCadastroCidades.EditCid_UF.Text = '') then
//    Result := False
//  else
    Result := True;
end;

{ TCadastroCidadesViewModel }

constructor TCadastroCidadesViewModel.Create;
begin
  FCidadesController := TCidadesController.Create;
end;

end.
