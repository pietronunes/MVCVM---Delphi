unit ViewModelCadastro.Interfaces;

interface

uses
  DB,
  FireDAC.Comp.Client,
  System.Classes;

type
  IViewModelCadastroGeral = interface
    procedure SetarDataSource(FormComponents: TComponent;
      DataSource: TDataSource);
  end;


implementation

end.
