unit UnitIsmerkeziGrubuTanimlama;

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
  TFormUnitIsmerkeziGrubuTanimlama = class(TFormBasic)
    edtKeyid: TcxTextEdit;
    edtGrupKodu: TcxTextEdit;
    edtGrupAdi: TcxTextEdit;
    edtBirimAdiAra: TcxTextEdit;
    cxLabel3: TcxLabel;
    ADOQuery1WSG_ID: TAutoIncField;
    ADOQuery1WSG_CODE: TWideStringField;
    ADOQuery1WSG_NAME: TWideStringField;
    gridViewWSG_ID: TcxGridDBColumn;
    gridViewWSG_CODE: TcxGridDBColumn;
    gridViewWSG_NAME: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
    procedure btnAraClick(Sender: TObject);
    procedure edtBirimAdiAraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure Listele;
    { Private declarations }
  public
    { Public declarations }
     xNotRef : Integer;


  end;

var
  FormUnitIsmerkeziGrubuTanimlama: TFormUnitIsmerkeziGrubuTanimlama;

implementation

{$R *.dfm}
 uses CariSec,UnitAnaMenu, UnitUrunTanimlama,units;
procedure TFormUnitIsmerkeziGrubuTanimlama.btnAraClick(Sender: TObject);
begin
  inherited;
listele;
end;

procedure TFormUnitIsmerkeziGrubuTanimlama.BtnDegistirClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text:=ADOQuery1WSG_ID.AsString;
edtGrupKodu.Text:=ADOQuery1WSG_CODE.Value;
edtGrupAdi.Text:= ADOQuery1WSG_NAME.Value;

end;

procedure TFormUnitIsmerkeziGrubuTanimlama.BtnKaydetClick(Sender: TObject);
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
       Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,'WORKSTATION_GROUP',xAdoQuery);

       Parameters.ParamByName('WSG_CODE').Value:=edtGrupKodu.Text;
       Parameters.ParamByName('WSG_NAME').Value:=edtGrupAdi.Text;
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

procedure TFormUnitIsmerkeziGrubuTanimlama.BtnSilClick(Sender: TObject);
var ID:string;
begin
inherited;
if edtKeyId.Text<>'' then
   ID:=edtKeyId.Text
 else
 ID:=ADOQuery1WSG_ID.AsString;
if ID='' then
  begin
    ShowMessage('Listeden silinecek kayd� se�iniz.');
    exit;
  end;
KayitSil(FormAnaMenu.AdoConnectionMain,'WORKSTATION_GROUP',' where '+MKeyFieldName+'='+ID);
listele;
end;

procedure TFormUnitIsmerkeziGrubuTanimlama.BtnYeniClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text:='-1';
edtGrupKodu.Text:='';
edtGrupAdi.Text:='';
end;

procedure TFormUnitIsmerkeziGrubuTanimlama.edtBirimAdiAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtBirimAdiAra.Text<>'' then
listele;
end;

procedure TFormUnitIsmerkeziGrubuTanimlama.Listele;
var
sqlList:String;
begin
  sqlList:='SELECT * FROM WORKSTATION_GROUP WHERE 1=1';
  if edtBirimAdiAra.Text<>'' then
  begin
    sqlList:=sqlList+' AND WSG_NAME LIKE ''%'+edtBirimAdiAra.Text+'%'' ';
  end;
  with ADOQuery1 do
  begin
    Close;
    sql.clear;
    sql.add(sqlList);
    open;
  end;
  gridView.DataController.DataSource:=nil;
  gridView.DataController.DataSource:=DataSource1;
  gridView.ApplyBestFit(nil);
end;

procedure TFormUnitIsmerkeziGrubuTanimlama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 
  inherited;
FormUnitIsmerkeziGrubuTanimlama := nil;
end;

procedure TFormUnitIsmerkeziGrubuTanimlama.FormCreate(Sender: TObject);
begin
  MasterTblName  := 'WORKSTATION_GROUP';
  MKeyFieldName  := 'WSG_ID';
  inherited;

end;

procedure TFormUnitIsmerkeziGrubuTanimlama.FormShow(Sender: TObject);
begin
  inherited;
Listele;
end;

procedure TFormUnitIsmerkeziGrubuTanimlama.gridViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
BtnDegistirClick(self);
end;

end.