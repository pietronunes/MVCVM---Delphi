unit Cidades.Controller;

interface

uses
  System.Classes,
  System.SysUtils,
  DB,
  FireDAC.Comp.Client,
  Cidades.Model,
  Controller.Interfaces;

type
  TCidadesController = class(TInterfacedObject, IControllerGeral)
    public
      constructor Create();
      procedure AbreTabela(const Ds: TDataSet; const Query: TFDQuery);
      procedure Salvar(const Ds: TDataSet);
      procedure Excluir(const Ds: TDataSet);
    private
      FCidadesModel : TCidadesModel;
  end;

implementation

{ TCidadesController }

procedure TCidadesController.AbreTabela(const Ds: TDataSet;
  const Query: TFDQuery);
begin
  FCidadesModel.AbreTabela(Ds, Query);
end;

constructor TCidadesController.Create;
begin
  FCidadesModel := TCidadesModel.Create;
end;

procedure TCidadesController.Excluir(const Ds: TDataSet);
begin
  FCidadesModel.Excluir(Ds);
end;

procedure TCidadesController.Salvar(const Ds: TDataSet);
begin
  FCidadesModel.Salvar(Ds);
end;

end.
