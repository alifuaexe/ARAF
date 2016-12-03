program ArafLogoUSKSarfServisi;

uses
  SvCom_NTService,
  svcExample1 {SampleService1: TNtService},
  svcArafLogoServis in 'svcArafLogoServis.pas' {ArafLogoUSKSarfServis: TNtService};

{$R *.RES}

begin
    Application.Initialize;
    Application.CreateForm(TArafLogoUSKSarfServis, ArafLogoUSKSarfServis);
  Application.CreateForm(TFormBasic, FormBasic);
  Application.CreateForm(TNTService1, NTService1);
  Application.Run;
end.
