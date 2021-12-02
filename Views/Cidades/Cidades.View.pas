unit Cidades.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  BaseForm.View, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Cidades.ViewModel, CidadesCadastro.View, Cidades.Dtm, Cidades.Controller,
  Vcl.ExtCtrls;

type
  TFrmCidades = class(TFrmBase)
    procedure ButEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButIncluirClick(Sender: TObject);
    procedure ButExcluirClick(Sender: TObject);
  private
    { Private declarations }
    FCidadesViewModel: TCidadesViewModel;
    FCidadesController: TCidadesController;
    DmCidades: TDmCidades;
  public
    { Public declarations }
  end;

var
  FrmCidades: TFrmCidades;
  FrmCadastroCidades: TFrmCadastroCidades;

implementation


{$R *.dfm}

procedure TFrmCidades.ButEditarClick(Sender: TObject);
begin
  inherited;
  FCidadesViewModel
    .AbreForm(
      TFrmCadastroCidades, FrmCadastroCidades, 'ShowModal',
      dsTable.DataSet, 'Editar');
end;

procedure TFrmCidades.ButExcluirClick(Sender: TObject);
begin
  inherited;
  FCidadesViewModel.Excluir(dsTable.DataSet);
end;

procedure TFrmCidades.ButIncluirClick(Sender: TObject);
begin
  inherited;
  FCidadesViewModel
    .AbreForm(
      TFrmCadastroCidades, FrmCadastroCidades, 'ShowModal',
      dsTable.DataSet, 'Novo');
end;

procedure TFrmCidades.FormCreate(Sender: TObject);
begin
  inherited;
  FCidadesViewModel := TCidadesViewModel.Create;
  FCidadesController := TCidadesController.Create;
  DmCidades := TDmCidades.Create(Self);
  dsTable.DataSet := DmCidades.FDCidades;

  FCidadesViewModel
    .AbreTabela(FCidadesController, dsTable.DataSet, DmCidades.FDCidades);
end;

end.
