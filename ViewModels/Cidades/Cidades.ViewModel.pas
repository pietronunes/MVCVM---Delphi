unit Cidades.ViewModel;

interface

uses
  System.Classes,
  System.SysUtils,
  Vcl.Forms,
  ViewModel.Classes,
  ViewModel.Interfaces,
  DB,
  FireDAC.Comp.Client,
  Cidades.Controller;

type
  TCidadesViewModel = class(TViewModelGeral, IViewModelGeral)
    public
      constructor Create();
      procedure Excluir(const Ds: TDataSet);
    private
      FCidadesController : TCidadesController;
  end;

implementation

uses Cidades.View;

{ TCidadesViewModel }

constructor TCidadesViewModel.Create;
begin
  FCidadesController := TCidadesController.Create;
end;

procedure TCidadesViewModel.Excluir(const Ds: TDataSet);
begin
  FCidadesController.Excluir(Ds);
end;

end.
