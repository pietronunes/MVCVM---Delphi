unit Model.Classes;

interface

uses
  System.Classes,
  DB,
  FireDAC.Comp.Client,
  Model.Interfaces;

type
  TModelGeral = class(TInterfacedObject, IModelGeral)
   public
       procedure AbreTabela(
        const Ds: TDataSet, const TipoSelect: TStringList,
        const Tabela: String
       );
       procedure Salvar(const Ds: TDataSet);
       procedure Excluir(const Ds: TDataSet);
   end;

implementation

{ TModelGeral }

procedure TModelGeral.AbreTabela(const Ds: TDataSet,);
var
  vQueryString : String;
begin
  vQueryString := 'SELECT *'
   TFDQuery(Ds).Open()
end;

procedure TModelGeral.Excluir(const Ds: TDataSet);
begin

end;

procedure TModelGeral.Salvar(const Ds: TDataSet);
begin

end;

end.
