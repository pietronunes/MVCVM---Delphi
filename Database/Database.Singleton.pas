unit Database.Singleton;

interface

uses
  SysUtils,
  Classes,
  FireDac.Comp.Client;

type
  IDatabaseGeral = interface
    procedure Initialize(AConnection: TFDConnection);
    function Connection: TFDConnection;
  end;

  TDatabaseGeral = class(TInterfacedObject, IDatabaseGeral)
    private
      FConnection: TFDConnection;
      class var FInstance: IDatabaseGeral;
      constructor CreatePrivate;
    public
      constructor Create;
      class function AsInstance(): IDatabaseGeral;
      procedure Initialize(AConnection: TFDConnection);
      function Connection: TFDConnection;
  end;

implementation

{ TDatabaseGeral }

class function TDatabaseGeral.AsInstance: IDatabaseGeral;
begin
  if not Assigned(FInstance) then
    FInstance := TDatabaseGeral.CreatePrivate;

  Result := FInstance;
end;

function TDatabaseGeral.Connection: TFDConnection;
begin
  if not Assigned(FConnection) then
    raise Exception.Create(
      'Você precisa utilizar o método Intialize() para inicializar uma Conexão'
    );

  Result := FConnection;
end;

constructor TDatabaseGeral.Create;
begin
  raise Exception.Create(
    'Para inicializar a classe utilize o método AsInstance()'
  );
end;

constructor TDatabaseGeral.CreatePrivate;
begin

end;

procedure TDatabaseGeral.Initialize(AConnection: TFDConnection);
begin
  FConnection := AConnection;
end;

end.

