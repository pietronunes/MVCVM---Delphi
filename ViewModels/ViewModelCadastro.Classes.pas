unit ViewModelCadastro.Classes;

interface

uses
  DB,
  FireDAC.Comp.Client,
  System.Classes,
  VCL.DBCtrls,
  ViewModelCadastro.Interfaces;

type
  TViewModelCadastroGeral = class(TInterfacedObject, IViewModelCadastroGeral)
    public
      procedure SetarDataSource(FormComponents: TComponent;
        DataSource: TDataSource);
  end;

implementation

{ TViewModelCadastroGeral }

procedure TViewModelCadastroGeral.SetarDataSource(FormComponents: TComponent;
  DataSource: TDataSource);
begin
   for var I := 0 to FormComponents.ComponentCount -1 do
    begin
      if FormComponents.Components[I] is TDBEdit then
        (FormComponents.Components[I] as TDBEdit).DataSource := DataSource;
    end;
end;

end.
