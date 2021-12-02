unit BairrosCadastro.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseFormCadastro.View, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, CadastroBairros.ViewModel;

type
  TFrmCadastroBairros = class(TFrmCadastroBase)
    EditIdBairro: TDBEdit;
    EditNomeBairro: TDBEdit;
    EditIdCidBairro: TDBEdit;
    EditRefBairro: TDBEdit;
    ButSalvar: TButton;
    EditNomeCid: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
  private
    { Private declarations }
    FCadastroBairrosViewModel : TCadastroBairrosViewModel;
  public
    { Public declarations }
  end;

var
  FrmCadastroBairros: TFrmCadastroBairros;

implementation

uses
  Bairros.View;

{$R *.dfm}

procedure TFrmCadastroBairros.ButSalvarClick(Sender: TObject);
begin
  inherited;
  FCadastroBairrosViewModel.Salvar();
end;

procedure TFrmCadastroBairros.FormCreate(Sender: TObject);
begin
  inherited;
  FCadastroBairrosViewModel := TCadastroBairrosViewModel.Create;
end;

procedure TFrmCadastroBairros.FormShow(Sender: TObject);
begin
  inherited;
  FCadastroBairrosViewModel.SetarDataSource(Self, FrmBairros.dsTable);

  EditIdBairro.DataField := 'bairro_id';
  EditNomeBairro.DataField := 'bairro_nome';
  EditRefBairro.DataField := 'bairro_ref';
  EditIdCidBairro.DataField := 'bairro_cid_id';

  {EditNomeCid.Text :=
    FrmBairros.dsTable.DataSet.FieldByName('cid_nome').AsString;}

end;
end.
