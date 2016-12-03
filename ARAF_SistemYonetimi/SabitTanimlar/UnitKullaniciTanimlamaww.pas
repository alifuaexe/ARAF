unit UnitKullaniciTanimlama;

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
  cxSplitter, cxGroupBox, cxRadioGroup;

type
  TFormUnitKullaniciTanimlama = class(TFormBasic)
    ADOQueryBirim: TADOQuery;
    DataSourceBirim: TDataSource;
    ADOQueryBirimKEYID: TAutoIncField;
    ADOQueryBirimBIRIM_ADI: TWideStringField;
    ADOQuery1USER_ID: TAutoIncField;
    ADOQuery1USER_CODE: TWideStringField;
    ADOQuery1USER_PASS: TWideStringField;
    ADOQuery1USER_NAME: TWideStringField;
    ADOQuery1USER_EMAIL: TWideStringField;
    ADOQuery1USER_STATUS: TBooleanField;
    ADOQuery1USER_GRUPID: TIntegerField;
    ADOQuery1SURNAME: TWideStringField;
    ADOQuery1NAME: TWideStringField;
    gridViewUSER_ID: TcxGridDBColumn;
    gridViewUSER_CODE: TcxGridDBColumn;
    gridViewUSER_PASS: TcxGridDBColumn;
    gridViewUSER_NAME: TcxGridDBColumn;
    gridViewUSER_EMAIL: TcxGridDBColumn;
    gridViewUSER_STATUS: TcxGridDBColumn;
    gridViewUSER_GRUPID: TcxGridDBColumn;
    gridViewSURNAME: TcxGridDBColumn;
    gridViewNAME: TcxGridDBColumn;
    ADOQuery1SYSUSER_GRUPID: TIntegerField;
    ADOQuery1SYSUSERGRP_NAME: TWideStringField;
    edtKeyid: TcxTextEdit;
    edtKullaniciAdi: TcxTextEdit;
    edtsifre: TcxTextEdit;
    edtAdi: TcxTextEdit;
    edtSoyadi: TcxTextEdit;
    edtKullanciGrubu: TcxButtonEdit;
    edtMail: TcxTextEdit;
    edtBarkod: TcxTextEdit;
    edtDurum: TcxRadioGroup;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edtsoyadiAra: TcxTextEdit;
    cxLabel9: TcxLabel;
    edtadiAra: TcxTextEdit;
    cxLabel8: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnDegistirClick(Sender: TObject);
    procedure gridViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnKaydetClick(Sender: TObject);
    procedure BtnYeniClick(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtadiAraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtsoyadiAraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtKullanciGrubuPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure Listele;
    function UrunHareketKontrol(USERID:integer):Boolean;
    { Private declarations }
  public
    { Public declarations }
     xNotRef : Integer;
    OpenInsertMode : Boolean;
  end;

var
  FormUnitKullaniciTanimlama: TFormUnitKullaniciTanimlama;

implementation

{$R *.dfm}
 uses sec,UnitAnaMenu,Units, UnitUrunTanimlama;
procedure TFormUnitKullaniciTanimlama.BtnDegistirClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text         := ADOQuery1USER_ID.AsString;
edtKullaniciAdi.Text  := ADOQuery1USER_NAME.Value;
edtsifre.Text         := ADOQuery1USER_PASS.Value;
edtadi.Text           := ADOQuery1NAME.AsString;
edtSoyadi.Text        := ADOQuery1SURNAME.AsString;
edtMail.Text          := ADOQuery1USER_EMAIL.AsString;
edtBarkod.Text        := ADOQuery1USER_CODE.AsString;
edtKullanciGrubu.hint := ADOQuery1USER_GRUPID.AsString;
edtKullanciGrubu.Text := ADOQuery1SYSUSERGRP_NAME.AsString;

end;

procedure TFormUnitKullaniciTanimlama.BtnKaydetClick(Sender: TObject);
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
       Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,'URUN_TANIM',xAdoQuery);

       Parameters.ParamByName('USER_NAME').Value:=edtKullaniciAdi.Text;
       Parameters.ParamByName('USER_PASS').Value:=edtsifre.Text;
       Parameters.ParamByName('USER_CODE').Value:=edtBarkod.Text;
       Parameters.ParamByName('USER_EMAIL').Value:=edtMail.Text;
       Parameters.ParamByName('USER_STATUS').Value:=edtDurum.EditValue;
       Parameters.ParamByName('USER_GRUPID').Value:=StrToIntDef(edtKullanciGrubu.Hint,0);
       Parameters.ParamByName('NAME').Value:=edtSoyadi.Text;
       Parameters.ParamByName('SURNAME').Value:=edtSoyadi.Text;
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



procedure TFormUnitKullaniciTanimlama.BtnSilClick(Sender: TObject);
var ID:string;
begin
inherited;
if edtKeyId.Text<>'' then
   ID:=edtKeyId.Text
 else
 ID:=ADOQuery1USER_ID.AsString;
if ID='' then
  begin
    ShowMessage('Listeden silinecek kaydý seçiniz.');
    exit;
  end;
// if UrunHareketKontrol(StrToInt(ID)) then
KayitSil(FormAnaMenu.AdoConnectionMain,'SYSTEM_USERS',' where '+MKeyFieldName+'='+ID);
listele;
end;
function TFormUnitKullaniciTanimlama.UrunHareketKontrol(USERID:integer):Boolean;
var
  xAdoQuery : TADOQuery;
  kontrol:Boolean;
begin
    kontrol:=False;
    xAdoQuery:=TADOQuery.Create(nil);
    xAdoQuery.Connection := FormAnaMenu.AdoConnectionMain;
   TRY
    with  xAdoQuery do
    begin
      Close;
      sql.Clear;
      sql.Add('Select * FROM RK_URUN_HAREKET_LIST WITH (NOLOCK) where USERID=:USERID');
      Parameters.ParamByName('USERID').Value:=USERID;
      Open;
      if RecordCount<>0 then
      begin
        ShowMessage('Hareket görmüþ kullanýcýyý silemezsiniz.');
        FreeAndNil(xAdoQuery);
        kontrol:=False;
        exit;
      end
      else
      kontrol:=true;
    end;
    FINALLY
    Result :=kontrol;
    FreeAndNil(xAdoQuery);
    END;
end;

procedure TFormUnitKullaniciTanimlama.BtnYeniClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text        := '';
edtKullaniciAdi.Text := '';
edtsifre.Text        := '';
edtSoyadi.Text       := '';
edtadi.Text          := '';
end;

procedure TFormUnitKullaniciTanimlama.Listele;
var
SqlWhere:string;
begin
  SqlWhere:='Select * FROM  ARF_SYSTEM_USERS  WITH (NOLOCK) where 1=1';
    if edtadiAra.Text<>'' then
   SqlWhere :=  SqlWhere +' and NAME LIKE  ''%'+edtadiAra.Text+'%'' ';
   if edtsoyadiAra.Text<>'' then
   SqlWhere :=  SqlWhere +' and SURNAME LIKE  ''%'+edtsoyadiAra.Text+'%'' ';
  with  ADOQuery1 do
  begin
    Close;
    sql.Clear;
    sql.Add(SqlWhere);
    OPEN;
  end;

  gridView.DataController.DataSource:=nil;
  gridView.DataController.DataSource:=DataSource1;
  gridView.ApplyBestFit(nil);
end;

procedure TFormUnitKullaniciTanimlama.edtsoyadiAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtSoyadi.Text<>'' then
listele;
end;

procedure TFormUnitKullaniciTanimlama.edtadiAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtadiAra.Text<>'' then
listele;
end;

procedure TFormUnitKullaniciTanimlama.edtKullanciGrubuPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := ' select * from SYSTEM_USER_GROUPS with (nolock) where SYSUSERGRP_NAME  like  ''%' + edtKullanciGrubu.text + '%''  ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Kullanýcý Grubu';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtKullanciGrubu.Text := VarToStrDef(frmSec.qryListe.fieldByname('SYSUSERGRP_NAME').Value, '');
          edtKullanciGrubu.Hint := VarToStrDef(frmSec.qryListe.fieldByname('SYSUSER_GRUPID').Value, '0');
        end;
      end;
    1: begin
        edtKullanciGrubu.Text := '';
        edtKullanciGrubu.Hint := '';
       end;
  end;
end;

procedure TFormUnitKullaniciTanimlama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
FormUrunTanimlama := nil;
end;

procedure TFormUnitKullaniciTanimlama.FormCreate(Sender: TObject);
begin
  MasterTblName  := 'SYSTEM_USERS';
  MKeyFieldName  := 'USER_ID';
  inherited;

end;

procedure TFormUnitKullaniciTanimlama.FormShow(Sender: TObject);
var
SqlWhere :String;
begin
  inherited;
Listele;
end;

procedure TFormUnitKullaniciTanimlama.gridViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
 BtnDegistirClick(self);
end;

end.
