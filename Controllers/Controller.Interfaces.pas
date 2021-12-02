unit Controller.Interfaces;

interface

uses
  FireDAC.Comp.Client,
  DB;


type
  IControllerGeral = interface
    procedure AbreTabela(const Ds: TDataSet; const Query: TFDQuery);
    procedure Salvar(const Ds: TDataSet);
    procedure Excluir(const Ds: TDataSet);
  end;

implementation

end.
