unit BaseForm.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmBase = class(TForm)
    DBGrid1: TDBGrid;
    dsTable: TDataSource;
    ButEditar: TButton;
    ButExcluir: TButton;
    ButIncluir: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBase: TFrmBase;

implementation

{$R *.dfm}

end.
