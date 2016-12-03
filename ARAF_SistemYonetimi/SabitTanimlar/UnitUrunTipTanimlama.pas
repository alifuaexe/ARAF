unit UnitUrunTipTanimlama;

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
  TFormUnitUrunTipTanimlama = class(TFormBasic)
    ADOQuery1ITEM_GRP_ID: TAutoIncField;
    ADOQuery1ITEM_GRP_CODE: TWideStringField;
    ADOQuery1ITEM_GRP_NAME: TWideStringField;
    gridViewITEM_GRP_ID: TcxGridDBColumn;
    gridViewITEM_GRP_CODE: TcxGridDBColumn;
    gridViewITEM_GRP_NAME: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtKeyid: TcxTextEdit;
    edtUruntipKodu: TcxTextEdit;
    edtUruntipAdi: TcxTextEdit;
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
  FormUnitUrunTipTanimlama: TFormUnitUrunTipTanimlama;

implementation

{$R *.dfm}
 uses CariSec,UnitAnaMenu,Units;
procedure TFormUnitUrunTipTanimlama.BtnDegistirClick(Sender: TObject);
begin
  inherited;
    edtKeyid.Text:=ADOQuery1ITEM_GRP_ID.AsString;
edtUruntiPKodu.Text:=ADOQuery1ITEM_GRP_CODE.Value;
edtUruntipAdi.Text:=ADOQuery1ITEM_GRP_NAME.Value;

end;

procedure TFormUnitUrunTipTanimlama.BtnKaydetClick(Sender: TObject);
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
       Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,'ITEM_GROUP',xAdoQuery);

       Parameters.ParamByName('ITEM_GRP_CODE').Value:=edtUruntipKodu.Text;
       Parameters.ParamByName('ITEM_GRP_NAME').Value:=edtUruntipAdi.Text;
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



procedure TFormUnitUrunTipTanimlama.BtnSilClick(Sender: TObject);
var ID:string;
begin
inherited;
if edtKeyId.Text<>'' then
   ID:=edtKeyId.Text
 else
 ID:=ADOQuery1ITEM_GRP_ID.AsString;
if ID='' then
  begin
    ShowMessage('Listeden silinecek kaydý seçiniz.');
    exit;
  end;
KayitSil(FormAnaMenu.AdoConnectionMain,'ITEM_GROUP',' where '+MKeyFieldName+'='+ID);
listele;
end;

procedure TFormUnitUrunTipTanimlama.BtnYeniClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text:='';
edtUruntipKodu.Text:='';
edtUruntipAdi.Text:='';
end;

procedure TFormUnitUrunTipTanimlama.Listele;
VAR
SqlWhere:string;
begin
  SqlWhere:='Select * FROM  ITEM_GROUP  WITH (NOLOCK) where 1=1';
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

procedure TFormUnitUrunTipTanimlama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
FormUnitUrunTipTanimlama := nil;
end;

procedure TFormUnitUrunTipTanimlama.FormCreate(Sender: TObject);
begin
  MasterTblName  := 'ITEM_GROUP';
  MKeyFieldName  := 'ITEM_GRP_ID';
  inherited;

end;

procedure TFormUnitUrunTipTanimlama.FormShow(Sender: TObject);
begin
  inherited;
Listele;
end;

end.
