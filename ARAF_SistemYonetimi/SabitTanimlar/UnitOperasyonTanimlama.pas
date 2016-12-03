unit UnitOperasyonTanimlama;

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
  TFormUnitOperasyonTanimlama = class(TFormBasic)
    edtKeyid: TcxTextEdit;
    edtOperasyonKodu: TcxTextEdit;
    edtOperasyonAdi: TcxTextEdit;
    edtOperasyonKoduAra: TcxTextEdit;
    cxLabel3: TcxLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ADOQuery1OP_ID: TAutoIncField;
    ADOQuery1OP_CODE: TWideStringField;
    ADOQuery1OP_NAME: TWideStringField;
    gridViewOP_ID: TcxGridDBColumn;
    gridViewOP_CODE: TcxGridDBColumn;
    gridViewOP_NAME: TcxGridDBColumn;
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
    procedure edtOperasyonKoduAraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure Listele;
    { Private declarations }
  public
    { Public declarations }
     xNotRef : Integer;


  end;

var
  FormUnitOperasyonTanimlama: TFormUnitOperasyonTanimlama;

implementation

{$R *.dfm}
 uses CariSec,UnitAnaMenu, UnitUrunTanimlama,units;
procedure TFormUnitOperasyonTanimlama.btnAraClick(Sender: TObject);
begin
  inherited;
listele;
end;

procedure TFormUnitOperasyonTanimlama.BtnDegistirClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text:=ADOQuery1OP_ID.AsString;
edtOperasyonKodu.Text:=ADOQuery1OP_CODE.Value;
edtOperasyonAdi.Text:= ADOQuery1OP_NAME.Value;

end;

procedure TFormUnitOperasyonTanimlama.BtnKaydetClick(Sender: TObject);
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
       Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,'OPERATIONS',xAdoQuery);

       Parameters.ParamByName('OP_NAME').Value:=edtOperasyonAdi.Text;
       Parameters.ParamByName('OP_CODE').Value:=edtOperasyonKodu.Text;
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

procedure TFormUnitOperasyonTanimlama.BtnSilClick(Sender: TObject);
var ID:string;
begin
inherited;
if edtKeyId.Text<>'' then
   ID:=edtKeyId.Text
 else
 ID:=ADOQuery1OP_ID.AsString;
if ID='' then
  begin
    ShowMessage('Listeden silinecek kayd� se�iniz.');
    exit;
  end;
KayitSil(FormAnaMenu.AdoConnectionMain,'OPERATIONS',' where '+MKeyFieldName+'='+ID);
listele;
end;

procedure TFormUnitOperasyonTanimlama.BtnYeniClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text:='-1';
edtOperasyonAdi.Text:='';
edtOperasyonKodu.Text:='';
end;

procedure TFormUnitOperasyonTanimlama.edtOperasyonKoduAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtOperasyonKoduAra.Text<>'' then
listele;
end;

procedure TFormUnitOperasyonTanimlama.Listele;
var
sqlList:String;
begin
  sqlList:='SELECT * FROM OPERATIONS WHERE 1=1';
  if edtOperasyonKoduAra.Text<>'' then
  begin
    sqlList:=sqlList+' AND OP_CODE LIKE ''%'+edtOperasyonKoduAra.Text+'%'' ';
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

procedure TFormUnitOperasyonTanimlama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 
  inherited;
FormUnitOperasyonTanimlama := nil;
end;

procedure TFormUnitOperasyonTanimlama.FormCreate(Sender: TObject);
begin
  MasterTblName  := 'OPERATIONS';
  MKeyFieldName  := 'OP_ID';
  inherited;

end;

procedure TFormUnitOperasyonTanimlama.FormShow(Sender: TObject);
begin
  inherited;
Listele;
end;

procedure TFormUnitOperasyonTanimlama.gridViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
BtnDegistirClick(self);
end;

end.