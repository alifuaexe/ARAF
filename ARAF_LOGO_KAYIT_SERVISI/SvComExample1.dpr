program SvComExample1;

uses
  SvCom_NTService,
  svcExample1 {SampleService1: TNtService},
  svcArafLogoServis in 'svcArafLogoServis.pas' {NTService1: TNtService};

{$R *.RES}

begin
    Application.Initialize;
    Application.CreateForm(TNTService1, NTService1);
  Application.Run;
end.