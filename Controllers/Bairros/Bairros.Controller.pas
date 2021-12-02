unit Bairros.Controller;

interface

uses
  DB,
  FireDAC.Comp.Client,
  Controller.Interfaces,
  Bairros.Model;

type
  TBairrosController = class(TInterfacedObject, IControllerGeral)
    private
      FBairrosModel : TBairrosModel;
    public
      constructor Create();
      procedure AbreTabela(const Ds: TDataSet; const Query: TFDQuery);
      procedure Salvar(const Ds: TDataSet);
      procedure Excluir(const Ds: TDataSet);
  end;

implementation

{ TBairrosController }

procedure TBairrosController.AbreTabela(const Ds: TDataSet;
  const Query: TFDQuery);
begin
  FBairrosModel.AbreTabela(Ds, Query);
end;

constructor TBairrosController.Create;
begin
  FBairrosModel := TBairrosModel.Create;
end;

procedure TBairrosController.Excluir(const Ds: TDataSet);
begin

end;

procedure TBairrosController.Salvar(const Ds: TDataSet);
begin
  FBairrosModel.Salvar(Ds);
end;

end.
