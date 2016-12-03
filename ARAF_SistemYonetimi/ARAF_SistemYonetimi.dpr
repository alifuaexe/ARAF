program ARAF_SistemYonetimi;

{$R *.dres}

uses
  Vcl.Forms,
  UnitReceteTanimlama in 'SabitTanimlar\UnitReceteTanimlama.pas' {FormUnitReceteTanimlama},
  UnitUrunTanimlama in 'SabitTanimlar\UnitUrunTanimlama.pas' {FormUrunTanimlama},
  UnitUrunTipTanimlama in 'SabitTanimlar\UnitUrunTipTanimlama.pas' {FormUnitUrunTipTanimlama},
  UnitUsersTanimlama in 'SabitTanimlar\UnitUsersTanimlama.pas' {FormUnitUsersTanimlama},
  UnitConnectionSettings in 'Database\UnitConnectionSettings.pas' {FormConnectionSettings},
  Sec in 'Unit\Sec.pas' {frmSec},
  Unit1 in 'Unit\Unit1.pas' {DataModule1: TDataModule},
  UnitBasic in 'Unit\UnitBasic.pas' {FormBasic},
  Units in 'Unit\Units.pas',
  UrunSec in 'Unit\UrunSec.pas' {frmUrunSec},
  UnitUrunCikis in 'UrunGC\UnitUrunCikis.pas' {FormUnitUrunCikis},
  UnitUrunGiris in 'UrunGC\UnitUrunGiris.pas' {FormUrunGiris},
  UnitAnaMenu in 'AnaMenu\UnitAnaMenu.pas' {FormAnaMenu},
  CariSec in 'Unit\CariSec.pas' {frmCariSec},
  UnitStokOperasyon in 'Stok\UnitStokOperasyon.pas' {FormUnitStokOperasyon},
  UnitOperasyonTanimlama in 'SabitTanimlar\UnitOperasyonTanimlama.pas' {FormUnitOperasyonTanimlama},
  UnitIsmerkeziTanimlama in 'SabitTanimlar\UnitIsmerkeziTanimlama.pas' {FormUnitIsmerkeziTanimlama},
  UnitIsmerkeziGrubuTanimlama in 'SabitTanimlar\UnitIsmerkeziGrubuTanimlama.pas' {FormUnitIsmerkeziGrubuTanimlama},
  UnitIsEmriOlusturma in 'Planlama\UnitIsEmriOlusturma.pas' {FormUnitIsEmriOlusturma},
  UnitLogin in 'Database\UnitLogin.pas' {FormLogin},
  UniKullaniciGrupTanimlama in 'SabitTanimlar\UniKullaniciGrupTanimlama.pas' {FormUniKullaniciGrupTanimlama},
  UnitKullaniciTanimlama in 'SabitTanimlar\UnitKullaniciTanimlama.pas' {FormUnitKullaniciTanimlama},
  UnitBirimTanimlama in 'SabitTanimlar\UnitBirimTanimlama.pas' {FormUnitBirimTanimlama},
  GunSonu in 'Uretim_Kaydi\GunSonu.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormAnaMenu, FormAnaMenu);
  Application.Run;
end.