unit UnitUrunCikis;

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
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxPC, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Data.Win.ADODB, cxContainer, cxMaskEdit,
  cxButtonEdit, cxLabel, cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxSplitter, cxMemo;

type
  TFormUnitUrunCikis = class(TFormBasic)
    edtKeyid: TcxTextEdit;
    cxLabel1: TcxLabel;
    edtUrunKodu: TcxButtonEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtTarih: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    edtMiktar: TcxCurrencyEdit;
    cxLabel6: TcxLabel;
    edtBasTarih: TcxDateEdit;
    edtBiTTarih: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    edtUrunKoduAra: TcxTextEdit;
    edtUrunAdiAra: TcxTextEdit;
    cxLabel9: TcxLabel;
    GroupBox1: TGroupBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    edtAciklama: TcxMemo;
    edtYapilanIS: TcxMemo;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    edtUrunAdi: TcxButtonEdit;
    edtSehir: TcxButtonEdit;
    edtILCELER: TcxButtonEdit;
    edtmahalle: TcxButtonEdit;
    edtsokak: TcxButtonEdit;
    ADOQuery1KEYID: TIntegerField;
    ADOQuery1STOKID: TIntegerField;
    ADOQuery1BARKODNO: TWideStringField;
    ADOQuery1TARIH: TDateTimeField;
    ADOQuery1MIKTAR: TFloatField;
    ADOQuery1HAREKET_TIPI: TWideStringField;
    ADOQuery1USERID: TIntegerField;
    ADOQuery1URUN_KODU: TWideStringField;
    ADOQuery1URUN_ADI: TWideStringField;
    ADOQuery1TIP_ADI: TWideStringField;
    ADOQuery1TIP_KODU: TWideStringField;
    ADOQuery1BIRIM_ADI: TWideStringField;
    ADOQuery1TIPI: TIntegerField;
    ADOQuery1BIRIMID: TIntegerField;
    ADOQuery1IL_KODU: TWideStringField;
    ADOQuery1ILCE_KODU: TWideStringField;
    ADOQuery1MAHALLE_KODU: TWideStringField;
    ADOQuery1CADDESOKAK_KODU: TWideStringField;
    ADOQuery1ACIKLAMA: TWideStringField;
    ADOQuery1YAPILAN_IS: TWideStringField;
    ADOQuery1IHALE_NO: TWideStringField;
    ADOQuery1IL: TWideStringField;
    ADOQuery1ILCE: TWideStringField;
    ADOQuery1MAHALLE: TWideStringField;
    ADOQuery1CADDESOKAK: TWideStringField;
    ADOQuery1ADI: TWideStringField;
    ADOQuery1SOYADI: TWideStringField;
    gridViewKEYID: TcxGridDBColumn;
    gridViewSTOKID: TcxGridDBColumn;
    gridViewBARKODNO: TcxGridDBColumn;
    gridViewTARIH: TcxGridDBColumn;
    gridViewMIKTAR: TcxGridDBColumn;
    gridViewHAREKET_TIPI: TcxGridDBColumn;
    gridViewUSERID: TcxGridDBColumn;
    gridViewURUN_KODU: TcxGridDBColumn;
    gridViewURUN_ADI: TcxGridDBColumn;
    gridViewTIP_ADI: TcxGridDBColumn;
    gridViewTIP_KODU: TcxGridDBColumn;
    gridViewBIRIM_ADI: TcxGridDBColumn;
    gridViewTIPI: TcxGridDBColumn;
    gridViewBIRIMID: TcxGridDBColumn;
    gridViewIL_KODU: TcxGridDBColumn;
    gridViewILCE_KODU: TcxGridDBColumn;
    gridViewMAHALLE_KODU: TcxGridDBColumn;
    gridViewCADDESOKAK_KODU: TcxGridDBColumn;
    gridViewACIKLAMA: TcxGridDBColumn;
    gridViewYAPILAN_IS: TcxGridDBColumn;
    gridViewIHALE_NO: TcxGridDBColumn;
    gridViewIL: TcxGridDBColumn;
    gridViewILCE: TcxGridDBColumn;
    gridViewMAHALLE: TcxGridDBColumn;
    gridViewCADDESOKAK: TcxGridDBColumn;
    gridViewADI: TcxGridDBColumn;
    gridViewSOYADI: TcxGridDBColumn;
    procedure BtnKaydetClick(Sender: TObject);
    procedure edtUrunKoduPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtUrunAdiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
   
    procedure BtnDegistirClick(Sender: TObject);
    procedure btnAraClick(Sender: TObject);
    procedure edtUrunKoduAraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtUrunAdiAraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSilClick(Sender: TObject);
    procedure edtSehirPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtILCELERPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtmahallePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtsokakPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure Listele;
    procedure ParametersKayit;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUnitUrunCikis: TFormUnitUrunCikis;

implementation
 uses UnitAnaMenu,UrunSec,units,Sec;
{$R *.dfm}

procedure TFormUnitUrunCikis.btnAraClick(Sender: TObject);
begin
  inherited;
Listele;
end;

procedure TFormUnitUrunCikis.BtnDegistirClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text       := ADOQuery1KEYID.AsString;
edtUrunKodu.Text    := ADOQuery1URUN_KODU.AsString;
edtUrunKodu.hint    := ADOQuery1STOKID.AsString;
edtUrunAdi.Text     := ADOQuery1URUN_ADI.AsString;
edtMiktar.EditValue := ADOQuery1MIKTAR.AsFloat;
edtSehir.hint       := ADOQuery1IL_KODU.AsString;
edtILCELER.hint     := ADOQuery1ILCE_KODU.AsString ;
edtmahalle.hint     := ADOQuery1MAHALLE_KODU.AsString;
edtsokak.hint       := ADOQuery1CADDESOKAK_KODU.AsString;
edtSehir.Text       := ADOQuery1IL.AsString;
edtILCELER.Text     := ADOQuery1ILCE.AsString;
edtmahalle.Text     := ADOQuery1MAHALLE.AsString;
edtsokak.Text       := ADOQuery1CADDESOKAK.AsString;
edtAciklama.Text    := ADOQuery1ACIKLAMA.AsString;
edtYapilanIS.Text   := ADOQuery1YAPILAN_IS.AsString;

end;

procedure TFormUnitUrunCikis.BtnKaydetClick(Sender: TObject);
var
  xAdoQuery : TADOQuery;
begin

if edtUrunKodu.Hint='' then
begin
  ShowMessage('Çýkýþ yapacaðýnýz ürünü giriniz.');
  exit;
end;
if edtMiktar.Value=0 then
begin
  ShowMessage('Çýkýþ yapacaðýnýz miktarý sýfýr giremezsiniz.');
  exit;
end;
if edtSehir.text='' then
begin
  ShowMessage('Þehir kýsmýný boþ geçemezsiniz.');
  exit;
end;
if edtILCELER.text='' then
begin
  ShowMessage('Ýlce kýsmýný boþ geçemezsiniz.');
  exit;
end;
if edtmahalle.text='' then
begin
  ShowMessage('Mahalle kýsmýný boþ geçemezsiniz.');
  exit;
end;
if edtsokak.text='' then
begin
  ShowMessage('Cadde sokak kýsmýný boþ geçemezsiniz.');
  exit;
end;

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
       Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,'URUN_HAREKET',xAdoQuery);

       Parameters.ParamByName('STOKID').Value:=StrToIntDef(edtUrunKodu.hint,0);
       Parameters.ParamByName('BARKODNO').Value:='';
       Parameters.ParamByName('TARIH').Value:=edtTarih.Date;
       Parameters.ParamByName('MIKTAR').Value:=edtMiktar.Value;
       Parameters.ParamByName('HAREKET_TIPI').Value:='C';
       Parameters.ParamByName('USERID').Value:=ParamStr(1);
       Parameters.ParamByName('IL_KODU').Value:=edtSehir.hint;
       Parameters.ParamByName('ILCE_KODU').Value:=edtILCELER.hint;
       Parameters.ParamByName('MAHALLE_KODU').Value:=edtmahalle.hint;
       Parameters.ParamByName('CADDESOKAK_KODU').Value:=edtsokak.hint;
       Parameters.ParamByName('IL').Value:=edtSehir.Text;
       Parameters.ParamByName('ILCE').Value:=edtILCELER.Text;
       Parameters.ParamByName('MAHALLE').Value:=edtmahalle.Text;
       Parameters.ParamByName('CADDESOKAK').Value:=edtsokak.Text;
       Parameters.ParamByName('ACIKLAMA').Value:=edtAciklama.Text;
       Parameters.ParamByName('YAPILAN_IS').Value:=edtYapilanIS.Text;

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
procedure TFormUnitUrunCikis.BtnSilClick(Sender: TObject);
var ID:string;
begin
inherited;
if edtKeyId.Text<>'' then
   ID:=edtKeyId.Text
 else
 ID:=ADOQuery1KEYID.AsString;
if ID='' then
  begin
    ShowMessage('Listeden silinecek kaydý seçiniz.');
    exit;
  end;
KayitSil(FormAnaMenu.AdoConnectionMain,'URUN_HAREKET',' where '+MKeyFieldName+'='+ID);
listele;
end;

procedure TFormUnitUrunCikis.ParametersKayit;
begin

end;

procedure TFormUnitUrunCikis.Listele;
var
SqlWhere :String;
begin
SqlWhere:='Select * FROM RK_URUN_HAREKET_CIKIS_LIST WITH (NOLOCK) where 1=1';
if (edtBasTarih.Text<>'') and (edtBiTTarih.Text<>'') then
  SqlWhere :=  SqlWhere +' and TARIH BETWEEN '''+edtBasTarih.Text+''' AND '''+edtBiTTarih.Text+''' ' ;
  if edtUrunKoduAra.Text<>'' then
   SqlWhere :=  SqlWhere +' and URUN_KODU LIKE  ''%'+edtUrunKoduAra.Text+'%'' ';
   if edtUrunAdiAra.Text<>'' then
   SqlWhere :=  SqlWhere +' and URUN_ADI LIKE  ''%'+edtUrunAdiAra.Text+'%'' ';
  with  ADOQuery1 do
  begin
    Close;
    sql.Clear;
    sql.Add(SqlWhere);
    OPEN;
  end;
   cxPageControl1.ActivePageIndex:=1;
end;

procedure TFormUnitUrunCikis.edtILCELERPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := ' select * from tblIlceler with (nolock) where ÝlKodu  like  ''%' + edtSehir.Hint + '%''  ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Ýlçe Listesi';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtILCELER.Text := VarToStrDef(frmSec.qryListe.fieldByname('ÝlçeAdý').Value, '');
          edtILCELER.Hint := VarToStrDef(frmSec.qryListe.fieldByname('ÝlKodu').Value, '0');
        end;
      end;
    1: begin
        edtILCELER.Text := '';
        edtILCELER.Hint := '';
       end;
  end;
end;

procedure TFormUnitUrunCikis.edtmahallePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := ' select * from TblMahalleler with (nolock) where ÝlçeKodu  like  ''%' + edtILCELER.Hint + '%''  ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Mahalle Listesi';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtmahalle.Text := VarToStrDef(frmSec.qryListe.fieldByname('MahalleAdý').Value, '');
          edtmahalle.Hint := VarToStrDef(frmSec.qryListe.fieldByname('Kimlik').Value, '0');
        end;
      end;
    1: begin
        edtmahalle.Text := '';
        edtmahalle.Hint := '';
       end;
  end;
end;

procedure TFormUnitUrunCikis.edtSehirPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := ' select * from tblÝller with (nolock) WHERE Kimlik=34 ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Þehir Listesi';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtSehir.Text := VarToStrDef(frmSec.qryListe.fieldByname('ÝlAdý').Value, '');
          edtSehir.Hint := VarToStrDef(frmSec.qryListe.fieldByname('ÝlKodu').Value, '0');
        end;
      end;
    1: begin
        edtSehir.Text := '';
        edtSehir.Hint := '';
       end;
  end;
end;

procedure TFormUnitUrunCikis.edtsokakPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := ' select * from TblCaddeler with (nolock) where Kimlik  like  ''%' + edtmahalle.Hint + '%''  ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Cadde Sokak Listesi';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtsokak.Text := VarToStrDef(frmSec.qryListe.fieldByname('CaddeAdý').Value, '');
          edtsokak.Hint := VarToStrDef(frmSec.qryListe.fieldByname('Kimlik').Value, '0');
        end;
      end;
    1: begin
        edtsokak.Text := '';
        edtsokak.Hint := '';
       end;
  end;
end;

procedure TFormUnitUrunCikis.edtUrunAdiAraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtUrunAdiAra.Text<>'' then
listele;
end;

procedure TFormUnitUrunCikis.edtUrunAdiPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from URUN_TANIM with (nolock) where  URUN_KODU  like  ''%' + edtUrunKodu.Text + '%'' order by KEYID ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.Caption:='Ürün Listesi';
        frmUrunSec.sqlstr := SqlStr;
        if frmUrunSec.ShowModal = mrOK then
        begin
          edtUrunKodu.Text := VarToStrDef(frmUrunSec.qryListeITEM_CODE.value, '');
          edtUrunAdi.Text  := VarToStrDef(frmUrunSec.qryListeITEM_NAME.value, '');
          edtUrunKodu.Hint := VarToStrDef(frmUrunSec.qryListeITEM_ID.Value, '0');
        end;
      end;
    1: begin
        edtUrunKodu.Text := '';
        edtUrunKodu.Hint := '';
        edtUrunAdi.Text  := '';
      end;
  end;
end;

procedure TFormUnitUrunCikis.edtUrunKoduAraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtUrunKoduAra.Text<>'' then
listele;

end;

procedure TFormUnitUrunCikis.edtUrunKoduPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from URUN_TANIM with (nolock) where  URUN_KODU  like  ''%' + edtUrunKodu.Text + '%'' order by KEYID ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.Caption:='Ürün Listesi';
        frmUrunSec.sqlstr := SqlStr;
        if frmUrunSec.ShowModal = mrOK then
        begin
          edtUrunKodu.Text := VarToStrDef(frmUrunSec.qryListeITEM_CODE.AsString, '');
          edtUrunAdi.Text  := VarToStrDef(frmUrunSec.qryListeITEM_NAME.value, '');
          edtUrunKodu.Hint := VarToStrDef(frmUrunSec.qryListeITEM_ID.Value, '0');
        end;
      end;
    1: begin
        edtUrunKodu.Text := '';
        edtUrunKodu.Hint := '';
        edtUrunAdi.Text  := '';
      end;
  end;
end;

procedure TFormUnitUrunCikis.FormCreate(Sender: TObject);
begin
  MasterTblName  := 'URUN_HAREKET';
  MKeyFieldName  := 'KeyId';
  inherited;
  edtTarih.Date:=Date;
    Listele;
end;

end.
procedure TFormUnitUrunCikis.gridViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

end;


