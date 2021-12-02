unit ViewModel.Interfaces;

interface

uses
  DB,
  FireDAC.Comp.Client,
  System.Classes,
  Controller.Interfaces;

type
  IViewModelGeral = interface
    procedure AbreForm(
      TFormulario: TComponentClass; var Formulario;
      Tipo: String;
      Ds: TDataSet = nil;
      Modo: String = ''
    );
    procedure AbreTabela(
      const FController: IControllerGeral;
      Ds: TDataSet; const Query: TFDQuery
    );
  end;

implementation

end.
