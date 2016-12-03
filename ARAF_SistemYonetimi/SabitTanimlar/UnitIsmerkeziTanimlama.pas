unit UnitIsmerkeziTanimlama;

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
  TFormUnitIsmerkeziTanimlama = class(TFormBasic)
    ADOQueryBirim: TADOQuery;
    DataSourceBirim: TDataSource;
    cxLabel8: TcxLabel;
    edtUrunKoduAra: TcxTextEdit;
    cxLabel9: TcxLabel;
    edtUrunAdiAra: TcxTextEdit;
    ADOQueryBirimUNIT_ID: TAutoIncField;
    ADOQueryBirimUNIT_NAME: TWideStringField;
    ADOQueryBirimEXPLANATION: TWideStringField;
    edtKeyid: TcxTextEdit;
    edtIsmerkeziKodu: TcxTextEdit;
    edtIsmerkeziAdi: TcxTextEdit;
    EdtIsmerkeziGrubu: TcxButtonEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ADOQuery1WS_ID: TIntegerField;
    ADOQuery1WSG_ID: TIntegerField;
    ADOQuery1WSG_NAME: TWideStringField;
    ADOQuery1WS_CODE: TStringField;
    ADOQuery1WS_NAME: TStringField;
    gridViewWS_ID: TcxGridDBColumn;
    gridViewWSG_NAME: TcxGridDBColumn;
    gridViewWS_CODE: TcxGridDBColumn;
    gridViewWS_NAME: TcxGridDBColumn;
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
  FormUnitIsmerkeziTanimlama: TFormUnitIsmerkeziTanimlama;

implementation

{$R *.dfm}
 uses Units, Sec;
procedure TFormUnitIsmerkeziTanimlama.BtnDegistirClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text              := ADOQuery1WS_ID.AsString;
edtIsmerkeziKodu.Text      := ADOQuery1WS_CODE.Value;
edtIsmerkeziAdi.Text       := ADOQuery1WS_NAME.Value;
EdtIsmerkeziGrubu.Text     := ADOQuery1WSG_ID.AsString;
EdtIsmerkeziGrubu.hint     := ADOQuery1WSG_NAME.AsString;

end;

procedure TFormUnitIsmerkeziTanimlama.BtnKaydetClick(Sender: TObject);
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
       Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,MasterTblName,xAdoQuery);

       Parameters.ParamByName('WS_CODE').Value   := edtIsmerkeziKodu.Text;
       Parameters.ParamByName('WS_NAME').Value   := edtIsmerkeziAdi.Text;
       Parameters.ParamByName('WSG_ID').Value := StrToIntDef(EdtIsmerkeziGrubu.HINT,0);

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



procedure TFormUnitIsmerkeziTanimlama.BtnSilClick(Sender: TObject);
var ID:string;
begin
inherited;
if edtKeyId.Text<>'' then
   ID:=edtKeyId.Text
 else
 ID:=ADOQuery1WS_ID.AsString;
if ID='' then
  begin
    ShowMessage('Listeden silinecek kayd� se�iniz.');
    exit;
  end;
 if UrunHareketKontrol(StrToInt(ID)) then
KayitSil(FormAnaMenu.AdoConnectionMain,MasterTblName,' where '+MKeyFieldName+'='+ID);
listele;
end;
function TFormUnitIsmerkeziTanimlama.UrunHareketKontrol(STOKID:integer):Boolean;
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

procedure TFormUnitIsmerkeziTanimlama.BtnYeniClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text       := '-1';
edtIsmerkeziKodu.Text    := '';
edtIsmerkeziAdi.Text     := '';
EdtIsmerkeziGrubu.Text    := '';
EdtIsmerkeziGrubu.hint    := '';

end;

procedure TFormUnitIsmerkeziTanimlama.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  var SqlStr: string;
begin


end;
procedure TFormUnitIsmerkeziTanimlama.Listele;
var
SqlWhere:string;
begin
  SqlWhere:='Select top 500 * FROM  ARF_WORKSTATIONS  WITH (NOLOCK) where 1=1';
    if edtUrunKoduAra.Text<>'' then
   SqlWhere :=  SqlWhere +' and WS_CODE LIKE  ''%'+edtUrunKoduAra.Text+'%'' ';
   if edtUrunAdiAra.Text<>'' then
   SqlWhere :=  SqlWhere +' and  WS_NAME LIKE  ''%'+edtUrunAdiAra.Text+'%'' ';
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

procedure TFormUnitIsmerkeziTanimlama.edtFabrikaIDPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin


end;

procedure TFormUnitIsmerkeziTanimlama.edtUrunAdiAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtUrunAdiAra.Text<>'' then
listele;
end;

procedure TFormUnitIsmerkeziTanimlama.edtUrunKoduAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtUrunKoduAra.Text<>'' then
listele;
end;

procedure TFormUnitIsmerkeziTanimlama.edtUrunTipiPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
        0: begin
        Sqlstr := 'select * from WORKSTATION_GROUP with (nolock) where  WSG_CODE  like  ''%' + EdtIsmerkeziGrubu.Text + '%'' order by WSG_ID ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Kullan�c� Grubu';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          EdtIsmerkeziGrubu.Text := VarToStrDef(frmSec.qryListe.fieldByname('WSG_CODE').Value, '');
          EdtIsmerkeziGrubu.Hint := VarToStrDef(frmSec.qryListe.fieldByname('WSG_ID').Value, '0');
        end;
      end;
    1: begin
        EdtIsmerkeziGrubu.Text := '';
        EdtIsmerkeziGrubu.Hint := '';
       end;
  end;


end;

procedure TFormUnitIsmerkeziTanimlama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
FormUnitIsmerkeziTanimlama := nil;
end;

procedure TFormUnitIsmerkeziTanimlama.FormCreate(Sender: TObject);
begin
  MasterTblName  := 'WORKSTATION';
  MKeyFieldName  := 'WS_ID';
  inherited;

end;

procedure TFormUnitIsmerkeziTanimlama.FormShow(Sender: TObject);
var
SqlWhere :String;
begin
  inherited;

ADOQueryBirim.Close;
ADOQueryBirim.Open;
Listele;
end;

procedure TFormUnitIsmerkeziTanimlama.gridViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
 BtnDegistirClick(self);
end;

end.