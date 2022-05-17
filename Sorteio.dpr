program Sorteio;

uses
  Forms,
  usprite1 in 'usprite1.pas' {Main},
  UConf in 'UConf.pas' {FConf};

{$R *.RES}

begin
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
