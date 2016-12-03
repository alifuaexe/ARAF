unit UnitUrunTanimlama;

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
  cxSplitter,UnitAnaMenu;

type
  TFormUrunTanimlama = class(TFormBasic)
    ADOQueryBirim: TADOQuery;
    DataSourceBirim: TDataSource;
    cxLabel8: TcxLabel;
    edtUrunKoduAra: TcxTextEdit;
    cxLabel9: TcxLabel;
    edtUrunAdiAra: TcxTextEdit;
    ADOQueryBirimUNIT_ID: TAutoIncField;
    ADOQueryBirimUNIT_NAME: TWideStringField;
    ADOQueryBirimEXPLANATION: TWideStringField;
    ADOQuery1ITEM_ID: TIntegerField;
    ADOQuery1ITEM_CODE: TWideStringField;
    ADOQuery1ITEM_NAME: TWideStringField;
    ADOQuery1STATUS: TFloatField;
    ADOQuery1ERP_ID: TIntegerField;
    ADOQuery1TYPE: TWideStringField;
    ADOQuery1ITEM_GRP_ID: TIntegerField;
    ADOQuery1ITEM_GRP_CODE: TWideStringField;
    ADOQuery1ITEM_GRP_NAME: TWideStringField;
    gridViewITEM_ID: TcxGridDBColumn;
    gridViewITEM_CODE: TcxGridDBColumn;
    gridViewUNIT: TcxGridDBColumn;
    gridViewITEM_NAME: TcxGridDBColumn;
    gridViewSTATUS: TcxGridDBColumn;
    gridViewERP_ID: TcxGridDBColumn;
    gridViewTYPE: TcxGridDBColumn;
    gridViewITEM_GRP_ID: TcxGridDBColumn;
    gridViewITEM_GRP_CODE: TcxGridDBColumn;
    gridViewITEM_GRP_NAME: TcxGridDBColumn;
    ADOQuery1UNIT_NAME: TWideStringField;
    ADOQuery1EXPLANATION: TWideStringField;
    ADOQuery1UNIT: TIntegerField;
    edtKeyid: TcxTextEdit;
    edtUrunKodu: TcxTextEdit;
    edtUrunAdi: TcxTextEdit;
    edtTipi: TcxTextEdit;
    edtUrunTipi: TcxButtonEdit;
    edtBirimID: TcxLookupComboBox;
    edtERPKodu: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    procedure edtFabrikaIDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
 
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure BtnDegistirClick(Sender: TObject);
    procedure gridViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnKaydetClick(Sender: TObject);
    procedure BtnYeniClick(Sender: TObject);
    procedure BtnSilClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtUrunKoduAraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtUrunAdiAraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtUrunTipiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure Listele;
    function UrunHareketKontrol(STOKID:integer):Boolean;
    { Private declarations }
  public
    { Public declarations }
     xNotRef : Integer;
    OpenInsertMode : Boolean;
  end;

var
  FormUrunTanimlama: TFormUrunTanimlama;

implementation

{$R *.dfm}
 uses Units, Sec;
procedure TFormUrunTanimlama.BtnDegistirClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text         := ADOQuery1ITEM_ID.AsString;
edtUrunKodu.Text      := ADOQuery1ITEM_CODE.Value;
edtUrunAdi.Text       := ADOQuery1ITEM_NAME.Value;
edtUrunTipi.Text      := ADOQuery1ITEM_GRP_CODE.AsString;
edtUrunTipi.hint      := ADOQuery1ITEM_GRP_ID.AsString;
edtBirimID.EditValue  := ADOQuery1UNIT.AsInteger;
edtERPKodu.Text       := ADOQuery1ERP_ID.AsString;
edtTipi.Text          := ADOQuery1TYPE.AsString
end;

procedure TFormUrunTanimlama.BtnKaydetClick(Sender: TObject);
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
       Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,'ITEMS',xAdoQuery);

       Parameters.ParamByName('ITEM_CODE').Value   := edtUrunKodu.Text;
       Parameters.ParamByName('ITEM_NAME').Value   := edtUrunAdi.Text;
       Parameters.ParamByName('ITEM_GRP_ID').Value := StrToIntDef(edtUrunTipi.HINT,0);
       Parameters.ParamByName('TYPE').Value        := edtTipi.Text;
       Parameters.ParamByName('ERP_ID').Value      := edtERPKodu.Text;
       Parameters.ParamByName('UNIT').Value        := edtBirimID.EditValue;
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



procedure TFormUrunTanimlama.BtnSilClick(Sender: TObject);
var ID:string;
begin
inherited;
if edtKeyId.Text<>'' then
   ID:=edtKeyId.Text
 else
 ID:=ADOQuery1ITEM_ID.AsString;
if ID='' then
  begin
    ShowMessage('Listeden silinecek kayd� se�iniz.');
    exit;
  end;
 if UrunHareketKontrol(StrToInt(ID)) then
KayitSil(FormAnaMenu.AdoConnectionMain,'URUN_TIPLERI',' where '+MKeyFieldName+'='+ID);
listele;
end;
function TFormUrunTanimlama.UrunHareketKontrol(STOKID:integer):Boolean;
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
      sql.Add('Select * FROM RK_URUN_HAREKET_LIST WITH (NOLOCK) where STOKID=:STOKID');
      Parameters.ParamByName('STOKID').Value:=STOKID;
      Open;
      if RecordCount<>0 then
      begin
        ShowMessage('Hareket g�rm�� �r�n� silemezsiniz.');
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

procedure TFormUrunTanimlama.BtnYeniClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text       := '';
edtUrunKodu.Text    := '';
edtUrunAdi.Text     := '';
edtUrunTipi.Text    := '';
edtUrunTipi.hint    := '';
edtBirimID.EditValue:= 0;
edtERPKodu.Text     := '';
edtTipi.Text        := '';
end;

procedure TFormUrunTanimlama.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := ' select * from ITEM_GROUP with (nolock)';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Stok Grubu';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtUrunTipi.Text := VarToStrDef(frmSec.qryListe.fieldByname('ITEM_GRP_CODE').Value, '');
          edtUrunTipi.Hint := VarToStrDef(frmSec.qryListe.fieldByname('ITEM_GRP_ID').Value, '0');
        end;
      end;
    1: begin
        edtUrunTipi.Text := '';
        edtUrunTipi.Hint := '';
       end;
  end;

end;
procedure TFormUrunTanimlama.Listele;
var
SqlWhere:string;
begin
  SqlWhere:='Select top 500 * FROM  ARF_ITEMS_LIST  WITH (NOLOCK) where 1=1';
    if edtUrunKoduAra.Text<>'' then
   SqlWhere :=  SqlWhere +' and ITEM_CODE LIKE  ''%'+edtUrunKoduAra.Text+'%'' ';
   if edtUrunAdiAra.Text<>'' then
   SqlWhere :=  SqlWhere +' and ITEM_NAME LIKE  ''%'+edtUrunAdiAra.Text+'%'' ';
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

procedure TFormUrunTanimlama.edtFabrikaIDPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin


end;

procedure TFormUrunTanimlama.edtUrunAdiAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtUrunAdiAra.Text<>'' then
listele;
end;

procedure TFormUrunTanimlama.edtUrunKoduAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtUrunKoduAra.Text<>'' then
listele;
end;

procedure TFormUrunTanimlama.edtUrunTipiPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
        0: begin
        Sqlstr := 'select * from ITEM_GROUP with (nolock) where  ITEM_GRP_CODE  like  ''%' + edtUrunTipi.Text + '%'' order by ITEM_GRP_ID ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Kullan�c� Grubu';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtUrunTipi.Text := VarToStrDef(frmSec.qryListe.fieldByname('ITEM_GRP_CODE').Value, '');
          edtUrunTipi.Hint := VarToStrDef(frmSec.qryListe.fieldByname('ITEM_GRP_ID').Value, '0');
        end;
      end;
    1: begin
        edtUrunTipi.Text := '';
        edtUrunTipi.Hint := '';
       end;
  end;


end;

procedure TFormUrunTanimlama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
FormUrunTanimlama := nil;
end;

procedure TFormUrunTanimlama.FormCreate(Sender: TObject);
begin
  MasterTblName  := 'ITEMS';
  MKeyFieldName  := 'ITEM_ID';
  inherited;

end;

procedure TFormUrunTanimlama.FormShow(Sender: TObject);
var
SqlWhere :String;
begin
  inherited;

ADOQueryBirim.Close;
ADOQueryBirim.Open;
Listele;
end;

procedure TFormUrunTanimlama.gridViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
 BtnDegistirClick(self);
end;

end.