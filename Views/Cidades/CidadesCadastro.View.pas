unit CidadesCadastro.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  BaseFormCadastro.View, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  CadastroCidades.ViewModel;

type
  TFrmCadastroCidades = class(TFrmCadastroBase)
    EditCid_Id: TDBEdit;
    EditCid_Nome: TDBEdit;
    EditCid_UF: TDBEdit;
    EditCid_Ppl: TDBEdit;
    ButSalvar: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
  private
    FCadastroCidadesViewModel: TCadastroCidadesViewModel;
  public
    { Public declarations }
  end;

var
  FrmCadastroCidades: TFrmCadastroCidades;

implementation

uses
  Cidades.View;

{$R *.dfm}

procedure TFrmCadastroCidades.ButSalvarClick(Sender: TObject);
begin
  inherited;
  FCadastroCidadesViewModel.Salvar();
end;

procedure TFrmCadastroCidades.FormCreate(Sender: TObject);
begin
  inherited;
  FCadastroCidadesViewModel := TCadastroCidadesViewModel.Create;
end;

procedure TFrmCadastroCidades.FormShow(Sender: TObject);
begin
  inherited;

  FCadastroCidadesViewModel.SetarDataSource(Self, FrmCidades.dsTable);

  EditCid_Id.DataField := 'cid_id';
  EditCid_Nome.DataField := 'cid_nome';
  EditCid_UF.DataField := 'cid_uf';
  EditCid_Ppl.DataField := 'cid_populacao';
end;

end.
