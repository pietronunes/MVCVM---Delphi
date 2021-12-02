unit ViewModel.Classes;

interface

uses
  DB,
  System.Classes,
  System.SysUtils,
  Vcl.Forms,
  FireDAC.Comp.Client,
  ViewModel.Interfaces,
  Controller.Interfaces;

type
  TViewModelGeral = class(TInterfacedObject, IViewModelGeral)
    public
      procedure AbreForm(
        TFormulario: TComponentClass;
        var Formulario;
        Tipo: string;
        Ds: TDataSet = nil;
        Modo: string = ''
      );
      procedure AbreTabela(
        const FController: IControllerGeral;
        Ds: TDataSet; const Query: TFDQuery
      );

  end;


implementation

{ TViewModelGeral }

procedure TViewModelGeral.AbreForm(TFormulario: TComponentClass; var Formulario;
  Tipo: string; Ds: TDataSet; Modo: string);
begin
  if TForm(Formulario) = nil then
    Application.CreateForm(TFormulario, Formulario);

  if Ds <> nil then
    begin
      if Modo = 'Editar' then
        Ds.Edit
      else if Modo = 'Novo' then
        Ds.Append;
    end;

  if Tipo = 'ShowModal' then
    TForm(Formulario).ShowModal;
end;

procedure TViewModelGeral.AbreTabela(const FController: IControllerGeral;
  Ds: TDataSet; const Query: TFDQuery);
begin
  FController.AbreTabela(Ds, Query);
end;

end.
