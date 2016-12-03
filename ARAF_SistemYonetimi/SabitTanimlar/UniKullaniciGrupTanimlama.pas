unit UniKullaniciGrupTanimlama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus,
  cxContainer, cxEdit, cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxPC, cxMaskEdit, cxButtonEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  Data.Win.ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ComCtrls,
  cxSplitter;

type
  TFormUniKullaniciGrupTanimlama = class(TFormBasic)
    ADOQueryBirim: TADOQuery;
    DataSourceBirim: TDataSource;
    ADOQueryBirimKEYID: TAutoIncField;
    ADOQueryBirimBIRIM_ADI: TWideStringField;
    ADOQuery1SYSUSER_GRUPID: TAutoIncField;
    ADOQuery1SYSUSERGRP_NAME: TWideStringField;
    gridViewSYSUSER_GRUPID: TcxGridDBColumn;
    gridViewSYSUSERGRP_NAME: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    edtKeyid: TcxTextEdit;
    edtGrupAdi: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnDegistirClick(Sender: TObject);
    procedure BtnKaydetClick(Sender: TObject);
    procedure BtnYeniClick(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Listele;
    { Private declarations }
  public
    { Public declarations }
     xNotRef : Integer;
    OpenInsertMode : Boolean;
  end;

var
  FormUniKullaniciGrupTanimlama: TFormUniKullaniciGrupTanimlama;

implementation

{$R *.dfm}
 uses CariSec,UnitAnaMenu,Units;
procedure TFormUniKullaniciGrupTanimlama.BtnDegistirClick(Sender: TObject);
begin
  inherited;
    edtKeyid.Text      := ADOQuery1SYSUSER_GRUPID.AsString;
    edtGrupAdi.Text    := ADOQuery1SYSUSERGRP_NAME.Value;

end;

procedure TFormUniKullaniciGrupTanimlama.BtnKaydetClick(Sender: TObject);
var
  xAdoQuery : TADOQuery;
begin
inherited;
   xAdoQuery:=TADOQuery.Create(Self);
    xAdoQuery.Connection := FormAnaMenu.AdoConnectionMain;
   try
       try
       with xAdoQuery do
       begin
       if KayitTipi=0 then
       Kaydet(FormAnaMenu.AdoConnectionMain,MasterTblName,xAdoQuery)
       else
       Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,'SYSTEM_USER_GROUPS',xAdoQuery);

       Parameters.ParamByName('SYSUSERGRP_NAME').Value:=edtGrupAdi.Text;

       if KayitTipi=0 then
       begin
       open;
       edtKeyid.Text:=xAdoQuery.FieldByName('myKeyId').AsString;
       end
       else
       ExecSQL;
       end;
     except on E: Exception do
     begin
     Application.MessageBox(PChar(E.Message), PChar(Application.Title),
      MB_OK + MB_ICONINFORMATION);
       FreeAndNil(xAdoQuery);
       exit;
     end;
    end;
   finally
      Listele;
        FreeAndNil(xAdoQuery);
  end;

end;



procedure TFormUniKullaniciGrupTanimlama.BtnSilClick(Sender: TObject);
var ID:string;
begin
inherited;
if edtKeyId.Text<>'' then
   ID:=edtKeyId.Text
 else
 ID:=ADOQuery1SYSUSER_GRUPID.AsString;
if ID='' then
  begin
    ShowMessage('Listeden silinecek kaydý seçiniz.');
    exit;
  end;
KayitSil(FormAnaMenu.AdoConnectionMain,'SYSTEM_USER_GROUPS',' where '+MKeyFieldName+'='+ID);
listele;
end;

procedure TFormUniKullaniciGrupTanimlama.BtnYeniClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text:='';
edtGrupAdi.Text:='';

end;

procedure TFormUniKullaniciGrupTanimlama.Listele;
begin
  ADOQuery1.close;
  ADOQuery1.Open;
  gridView.DataController.DataSource:=nil;
  gridView.DataController.DataSource:=DataSource1;
  gridView.ApplyBestFit(nil);
end;

procedure TFormUniKullaniciGrupTanimlama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   FormUniKullaniciGrupTanimlama := nil;
end;

procedure TFormUniKullaniciGrupTanimlama.FormCreate(Sender: TObject);
begin
  MasterTblName  := 'SYSTEM_USER_GROUPS';
  MKeyFieldName  := 'SYSUSER_GRUPID';
  inherited;

end;

procedure TFormUniKullaniciGrupTanimlama.FormShow(Sender: TObject);
begin
  inherited;

Listele;
end;

end.
