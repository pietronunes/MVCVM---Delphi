unit Cidades.Model;

interface

uses
  DB,
  FireDAC.Comp.Client,
  Model.Interfaces;

type
  TCidadesModel = class(TInterfacedObject, IModelGeral)
    public
      procedure AbreTabela(const Ds: TDataSet);
      procedure Salvar(const Ds: TDataSet);
      procedure Excluir(const Ds: TDataSet);
  end;

implementation

{ TCidadesModel }

procedure TCidadesModel.AbreTabela(const Ds: TDataSet);
begin
  TFDQuery(Ds).Open('SELECT * FROM "cidades"');
end;

procedure TCidadesModel.Excluir(const Ds: TDataSet);
var
  vQueryString: String;
begin
  vQueryString := 'DELETE FROM cidades WHERE cid_id = :cid_id';

  TFDQuery(Ds).ExecSQL(
    vQueryString, [Ds.FieldByName('cid_id').Value], [ftInteger]
  );

  TFDQuery(Ds).SchemaAdapter.ApplyUpdates(0);
  Ds.Refresh;
end;

procedure TCidadesModel.Salvar(const Ds: TDataSet);
var
  vQueryString: String;
begin

  if Ds.State in [dsInsert] then
    begin
      vQueryString := 'INSERT INTO cidades(cid_nome, cid_uf, cid_populacao)'
                    + 'VALUES (:cid_nome, :cid_uf, :cid_populacao)';

      TFDQuery(Ds).ExecSQL(
        vQueryString,
        [
          Ds.FieldByName('cid_nome').Value,
          Ds.FieldByName('cid_uf').Value,
          Ds.FieldByName('cid_populacao').Value
        ],
        [
          ftString, ftString, ftFloat
        ]
      );
    end
  else if Ds.State in [dsEdit] then
    begin
      vQueryString := 'UPDATE cidades SET cid_nome = :cid_nome,'
                    + 'cid_uf = :cid_uf, cid_populacao = :cid_populacao ' +
                      'WHERE cid_id = :cid_id';

      TFDQuery(Ds).ExecSQL(
        vQueryString,
        [
          Ds.FieldByName('cid_nome').Value,
          Ds.FieldByName('cid_uf').Value,
          Ds.FieldByName('cid_populacao').Value,
          Ds.FieldByName('cid_id').Value
        ],
        [
          ftString, ftString, ftFloat, ftInteger
        ]
      )
    end;

  TFDQuery(Ds).SchemaAdapter.ApplyUpdates(0);
  Ds.Refresh;
end;

end.
