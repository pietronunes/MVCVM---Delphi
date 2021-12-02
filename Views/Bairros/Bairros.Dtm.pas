unit Bairros.Dtm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDtmBairros = class(TDataModule)
    FDBairros: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmBairros: TDtmBairros;

implementation

uses
  Database.Singleton;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDtmBairros.DataModuleCreate(Sender: TObject);
begin
  FDBairros.Connection := TDatabaseGeral.AsInstance.Connection;
end;

end.
