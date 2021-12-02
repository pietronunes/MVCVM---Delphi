unit Bairros.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  BaseForm.View, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Bairros.Dtm,
  Bairros.ViewModel, Bairros.Controller, BairrosCadastro.View;

type
  TFrmBairros = class(TFrmBase)
    procedure FormCreate(Sender: TObject);
    procedure ButEditarClick(Sender: TObject);
    procedure ButIncluirClick(Sender: TObject);
  private
    { Private declarations }
    DtmBairros : TDtmBairros;
    FBairrosViewModel: TBairrosViewModel;
    FBairrosController : TBairrosController;
  public
    { Public declarations }
  end;

var
  FrmBairros: TFrmBairros;
  FrmCadastroBairros: TFrmCadastroBairros;

implementation

{$R *.dfm}

procedure TFrmBairros.ButEditarClick(Sender: TObject);
begin
  inherited;
  FBairrosViewModel
    .AbreForm(
        TFrmCadastroBairros, FrmCadastroBairros,
        'ShowModal', dsTable.DataSet, 'Editar');
end;

procedure TFrmBairros.ButIncluirClick(Sender: TObject);
begin
  inherited;
  FBairrosViewModel
    .AbreForm(
        TFrmCadastroBairros, FrmCadastroBairros,
        'ShowModal', dsTable.DataSet, 'Novo');
end;

procedure TFrmBairros.FormCreate(Sender: TObject);
begin
  inherited;
  DtmBairros := TDtmBairros.Create(Self);
  FBairrosViewModel := TBairrosViewModel.Create;
  FBairrosController := TBairrosController.Create;
  dsTable.DataSet := DtmBairros.FDBairros;

  FBairrosViewModel
    .AbreTabela(FBairrosController, dsTable.DataSet, DtmBairros.FDBairros);
end;

end.
