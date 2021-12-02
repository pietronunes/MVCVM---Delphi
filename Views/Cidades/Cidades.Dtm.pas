unit Cidades.Dtm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmCidades = class(TDataModule)
    FDCidades: TFDQuery;
    FDCidadesSchemaAdapter: TFDSchemaAdapter;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCidades: TDmCidades;

implementation

uses
  Database.Singleton;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmCidades.DataModuleCreate(Sender: TObject);
begin
  FDCidades.Connection := TDatabaseGeral.AsInstance.Connection;

  FDCidadesSchemaAdapter.UpdateOptions.AutoCommitUpdates := True;
  FDCidades.SchemaAdapter := FDCidadesSchemaAdapter;
end;

end.
