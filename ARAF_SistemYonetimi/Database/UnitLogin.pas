unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.StdCtrls, cxTextEdit,
  Vcl.Menus, cxButtons, dxSkinsdxNavBarPainter,
  dxSkinsdxNavBarAccordionViewPainter, dxNavBarCollns, cxClasses, dxNavBarBase,
  dxNavBar , ADODB,IniFiles, Data.DB, IdCoder, IdCoder3to4,
  IdCoderMIME, IdBaseComponent;

type
  TFormLogin = class(TForm)
    edtKullaniciAdi: TcxTextEdit;
    edtSifre: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    btnTamam: TcxButton;
    btnVazgec: TcxButton;
    procedure btnTamamClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
  private
    { Private declarations }
  public
  kullaniciID:integer;
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation
uses UnitAnaMenu;
{$R *.dfm}

procedure TFormLogin.btnTamamClick(Sender: TObject);
var
xAdoQuery : TADOQuery;
begin
  xAdoQuery :=TADOQuery.Create(nil);
  xAdoQuery.Connection:=FormAnaMenu.AdoConnectionMain;

with  xAdoQuery do
begin
 close;
 sql.clear;
 sql.add('select * from SYSTEM_USERS where USER_NAME=:USER_NAME and USER_PASS=:USER_PASS');
 Parameters.ParamByName('USER_NAME').Value:=edtKullaniciAdi.Text;
 Parameters.ParamByName('USER_PASS').Value:=edtSifre.Text;
open;
end;
if xAdoQuery.RecordCount<>0 then
 kullaniciID:=xAdoQuery.fieldByname('USER_ID').Value
 else
 begin
   ShowMessage('Kullanýcý Adý veye Þifre Hatalý.');
   FreeAndNil(xAdoQuery);
   exit;
 end;
 FreeAndNil(xAdoQuery);
end;

procedure TFormLogin.btnVazgecClick(Sender: TObject);
begin
kullaniciID:=0;
close;
end;

end.
