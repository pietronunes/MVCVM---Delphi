unit Model.Interfaces;

interface

uses
  DB,
  FireDAC.Comp.Client;

type
  IModelGeral = interface
    procedure AbreTabela(const Ds: TDataSet);
    procedure Salvar(const Ds: TDataSet);
    procedure Excluir(const Ds: TDataSet);
  end;

implementation

end.
