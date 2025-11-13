program servetiquetas;

uses
  Vcl.Forms,
  FRMsvetiqueta in 'FRMsvetiqueta.pas' {svetiquetas},
  CONEXAOBD in 'CONEXAOBD.pas' {DataModule1: TDataModule},
  FRMSelectproduto in 'FRMSelectproduto.pas' {SelectProduto},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tsvetiquetas, svetiquetas);
  Application.CreateForm(TSelectProduto, SelectProduto);
  Application.Run;
end.
