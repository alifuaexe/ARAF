unit UnitUrunGiris;

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
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxSplitter;

type
  TFormUrunGiris = class(TFormBasic)
    edtKeyid: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtTarih: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    edtMiktar: TcxCurrencyEdit;
    ADOQuery1KEYID: TIntegerField;
    ADOQuery1BARKODNO: TWideStringField;
    ADOQuery1TARIH: TDateTimeField;
    ADOQuery1MIKTAR: TFloatField;
    ADOQuery1HAREKET_TIPI: TWideStringField;
    ADOQuery1USERID: TIntegerField;
    ADOQuery1BIRIM_ADI: TWideStringField;
    gridViewKEYID: TcxGridDBColumn;
    gridViewSTOKID: TcxGridDBColumn;
    gridViewBARKODNO: TcxGridDBColumn;
    gridViewTARIH: TcxGridDBColumn;
    gridViewMIKTAR: TcxGridDBColumn;
    gridViewHAREKET_TIPI: TcxGridDBColumn;
    gridViewUSERID: TcxGridDBColumn;
    gridViewBIRIM_ADI: TcxGridDBColumn;
    ADOQuery1URUN_KODU: TWideStringField;
    ADOQuery1URUN_ADI: TWideStringField;
    ADOQuery1TIP_ADI: TWideStringField;
    ADOQuery1TIP_KODU: TWideStringField;
    ADOQuery1TIPI: TIntegerField;
    ADOQuery1BIRIMID: TIntegerField;
    gridViewURUN_KODU: TcxGridDBColumn;
    gridViewURUN_ADI: TcxGridDBColumn;
    gridViewTIP_ADI: TcxGridDBColumn;
    gridViewTIP_KODU: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    edtBasTarih: TcxDateEdit;
    edtBiTTarih: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    edtUrunKoduAra: TcxTextEdit;
    edtUrunAdiAra: TcxTextEdit;
    cxLabel9: TcxLabel;
    LblBarkod: TcxLabel;
    edtBarkod: TcxTextEdit;
    edtUrunKodu: TcxButtonEdit;
    edtUrunAdi: TcxButtonEdit;
    ADOQuery1STOKID: TIntegerField;
    ADOQuery1IHALE_NO: TWideStringField;
    ADOQuery1ADI: TWideStringField;
    ADOQuery1SOYADI: TWideStringField;
    cxTextEdit1: TcxTextEdit;
    cxLabel10: TcxLabel;
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
  private
    procedure Listele;
    procedure ParametersKayit;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUrunGiris: TFormUrunGiris;

implementation
 uses UnitAnaMenu,UrunSec,units;
{$R *.dfm}

procedure TFormUrunGiris.btnAraClick(Sender: TObject);
begin
  inherited;
Listele;
end;

procedure TFormUrunGiris.BtnDegistirClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text:=ADOQuery1KEYID.AsString;
edtUrunKodu.Text:=ADOQuery1URUN_KODU.AsString;
edtUrunKodu.hint:=ADOQuery1STOKID.AsString;
edtUrunAdi.Text:=ADOQuery1URUN_ADI.AsString;
edtMiktar.EditValue:=ADOQuery1MIKTAR.AsFloat;
end;

procedure TFormUrunGiris.BtnKaydetClick(Sender: TObject);
var
  xAdoQuery : TADOQuery;
begin
if edtUrunKodu.Hint='' then
begin
  ShowMessage('��k�� yapaca��n�z �r�n� giriniz.');
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
       Parameters.ParamByName('BARKODNO').Value:=edtBarkod.Text;
       Parameters.ParamByName('TARIH').Value:=edtTarih.Date;
       Parameters.ParamByName('MIKTAR').Value:=edtMiktar.Value;
       Parameters.ParamByName('HAREKET_TIPI').Value:='G';
       Parameters.ParamByName('USERID').Value:=ParamStr(1);
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
procedure TFormUrunGiris.BtnSilClick(Sender: TObject);
var ID:string;
begin
inherited;
if edtKeyId.Text<>'' then
   ID:=edtKeyId.Text
 else
 ID:=ADOQuery1KEYID.AsString;
if ID='' then
  begin
    ShowMessage('Listeden silinecek kayd� se�iniz.');
    exit;
  end;
KayitSil(FormAnaMenu.AdoConnectionMain,'URUN_HAREKET',' where '+MKeyFieldName+'='+ID);
listele;
end;

procedure TFormUrunGiris.ParametersKayit;
begin

end;

procedure TFormUrunGiris.Listele;
var
SqlWhere :String;
begin
SqlWhere:='Select * FROM RK_URUN_HAREKET_GIRIS_LIST WITH (NOLOCK) where 1=1';
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

procedure TFormUrunGiris.edtUrunAdiAraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtUrunAdiAra.Text<>'' then
listele;
end;

procedure TFormUrunGiris.edtUrunAdiPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from URUN_TANIM with (nolock) where  URUN_KODU  like  ''%' + edtUrunKodu.Text + '%'' order by KEYID ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.Caption:='�r�n Listesi';
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

procedure TFormUrunGiris.edtUrunKoduAraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtUrunKoduAra.Text<>'' then
listele;

end;

procedure TFormUrunGiris.edtUrunKoduPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from URUN_TANIM with (nolock) where  URUN_KODU  like  ''%' + edtUrunKodu.Text + '%'' order by KEYID ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.Caption:='�r�n Listesi';
        frmUrunSec.sqlstr := SqlStr;
        if frmUrunSec.ShowModal = mrOK then
        begin
          edtUrunKodu.Text := VarToStrDef(frmUrunSec.qryListeITEM_CODE.AsString, '');
          edtUrunAdi.Text  := VarToStrDef(frmUrunSec.qryListeITEM_NAME.value, '');
          edtUrunKodu.Hint := VarToStrDef(frmUrunSec.qryListeITEM_NAME.Value, '0');
        end;
      end;
    1: begin
        edtUrunKodu.Text := '';
        edtUrunKodu.Hint := '';
        edtUrunAdi.Text  := '';
      end;
  end;
end;

procedure TFormUrunGiris.FormCreate(Sender: TObject);
begin
  MasterTblName  := 'URUN_HAREKET';
  MKeyFieldName  := 'KeyId';
  inherited;
  edtTarih.Date:=Date;
    Listele;
end;

end.
procedure TFormUrunGiris.gridViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

end;

