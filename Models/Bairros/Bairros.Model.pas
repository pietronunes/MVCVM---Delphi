unit Bairros.Model;

interface

uses
  System.Classes,
  System.SysUtils,
  DB,
  FireDAC.Comp.Client,
  Model.Interfaces;

type
  TBairrosModel = class(TInterfacedObject, IModelGeral)
    public
      procedure AbreTabela(const Ds: TDataSet);
      procedure Salvar(const Ds: TDataSet);
      procedure Excluir(const Ds: TDataSet);
  end;

implementation

{ TBairrosModel }

procedure TBairrosModel.AbreTabela(const Ds: TDataSet);
var
  vQueryString : String;
begin
  vQueryString := 'SELECT b.*, c.cid_nome FROM "bairros"'
      + 'b INNER JOIN cidades c ON c.cid_id = b.bairro_cid_id';

  TFDQuery(Ds).Open(vQueryString);
end;

procedure TBairrosModel.Excluir(const Ds: TDataSet);
begin

end;

procedure TBairrosModel.Salvar(const Ds: TDataSet);
begin
  Ds.Post;
  TFDQuery(Ds).SchemaAdapter.ApplyUpdates(0);
  Ds.Refresh;
end;

end.
