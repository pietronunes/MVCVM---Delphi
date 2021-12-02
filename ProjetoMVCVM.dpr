program ProjetoMVCVM;

uses
  Vcl.Forms,
  BaseForm.View in 'Views\BaseForms\BaseForm.View.pas' {FrmBase},
  Cidades.View in 'Views\Cidades\Cidades.View.pas' {FrmCidades},
  Cidades.Dtm in 'Views\Cidades\Cidades.Dtm.pas' {DmCidades: TDataModule},
  Database.Conexao in 'Database\Database.Conexao.pas' {DmConexao: TDataModule},
  Database.Singleton in 'Database\Database.Singleton.pas',
  Cidades.ViewModel in 'ViewModels\Cidades\Cidades.ViewModel.pas',
  ViewModel.Interfaces in 'ViewModels\ViewModel.Interfaces.pas',
  BaseFormCadastro.View in 'Views\BaseForms\BaseFormCadastro.View.pas' {FrmCadastroBase},
  CidadesCadastro.View in 'Views\Cidades\CidadesCadastro.View.pas' {FrmCadastroCidades},
  Controller.Interfaces in 'Controllers\Controller.Interfaces.pas',
  Cidades.Controller in 'Controllers\Cidades\Cidades.Controller.pas',
  Model.Interfaces in 'Models\Model.Interfaces.pas',
  Cidades.Model in 'Models\Cidades\Cidades.Model.pas',
  CadastroCidades.ViewModel in 'ViewModels\Cidades\CadastroCidades.ViewModel.pas',
  ViewModelCadastro.Interfaces in 'ViewModels\ViewModelCadastro.Interfaces.pas',
  ViewModelCadastro.Classes in 'ViewModels\ViewModelCadastro.Classes.pas',
  ViewModel.Classes in 'ViewModels\ViewModel.Classes.pas',
  Bairros.View in 'Views\Bairros\Bairros.View.pas' {FrmBairros},
  Bairros.ViewModel in 'ViewModels\Bairros\Bairros.ViewModel.pas',
  Bairros.Dtm in 'Views\Bairros\Bairros.Dtm.pas' {DtmBairros: TDataModule},
  Bairros.Controller in 'Controllers\Bairros\Bairros.Controller.pas',
  Bairros.Model in 'Models\Bairros\Bairros.Model.pas',
  BairrosCadastro.View in 'Views\Bairros\BairrosCadastro.View.pas' {FrmCadastroBairros},
  CadastroBairros.ViewModel in 'ViewModels\Bairros\CadastroBairros.ViewModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TFrmCidades, FrmCidades);
  Application.Run;
end.
