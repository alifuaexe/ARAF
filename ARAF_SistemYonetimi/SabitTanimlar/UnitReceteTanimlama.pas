unit UnitReceteTanimlama;

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
  cxSplitter, cxCurrencyEdit, cxSpinEdit;

type
  TFormUnitReceteTanimlama = class(TFormBasic)
    ADOQueryBirim: TADOQuery;
    DataSourceBirim: TDataSource;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    qryReceteKirilim1: TADOQuery;
    DSReceteKirilim1: TDataSource;
    qryReceteKirilim2: TADOQuery;
    qryReceteKirilim2ITEM_TREE_ID: TIntegerField;
    qryReceteKirilim2ITEM_ID: TIntegerField;
    qryReceteKirilim2ITEM_CODE: TWideStringField;
    qryReceteKirilim2ITEM_NAME: TWideStringField;
    qryReceteKirilim2MATERIAL_ID: TIntegerField;
    qryReceteKirilim2MATERIAL_CODE: TWideStringField;
    qryReceteKirilim2MATERIAL_NAME: TWideStringField;
    qryReceteKirilim2ORDER: TIntegerField;
    qryReceteKirilim2AMOUNT: TFMTBCDField;
    DSReceteKirilim2: TDataSource;
    ADOQuery1ITEM_ID: TIntegerField;
    ADOQuery1ITEM_CODE: TWideStringField;
    ADOQuery1ITEM_NAME: TWideStringField;
    ADOQuery1STATUS: TFloatField;
    ADOQuery1ERP_ID: TIntegerField;
    ADOQuery1TYPE: TWideStringField;
    ADOQuery1ITEM_GRP_ID: TIntegerField;
    ADOQuery1ITEM_GRP_CODE: TWideStringField;
    ADOQuery1ITEM_GRP_NAME: TWideStringField;
    qryReceteKirilim1ITEM_TREE_ID: TIntegerField;
    qryReceteKirilim1ITEM_ID: TIntegerField;
    qryReceteKirilim1ITEM_CODE: TWideStringField;
    qryReceteKirilim1ITEM_NAME: TWideStringField;
    qryReceteKirilim1MATERIAL_ID: TIntegerField;
    qryReceteKirilim1MATERIAL_CODE: TWideStringField;
    qryReceteKirilim1MATERIAL_NAME: TWideStringField;
    qryReceteKirilim1ORDER: TIntegerField;
    qryReceteKirilim1AMOUNT: TFMTBCDField;
    ADOQuery1UNIT: TIntegerField;
    ADOQuery1UNIT_NAME: TWideStringField;
    ADOQuery1EXPLANATION: TWideStringField;
    ADOQueryBirimUNIT_ID: TAutoIncField;
    ADOQueryBirimUNIT_NAME: TWideStringField;
    ADOQueryBirimEXPLANATION: TWideStringField;
    Label1: TLabel;
    edtUrunKodu: TcxButtonEdit;
    edtUrunAdi: TcxButtonEdit;
    edtReceteKodu: TcxButtonEdit;
    edtReceteAdi: TcxButtonEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtBirimID: TcxLookupComboBox;
    edtMiktar: TcxCurrencyEdit;
    edtSira: TcxSpinEdit;
    edtKeyId: TcxTextEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtUrunKoduAra: TcxTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtUrunAdiAra: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    Label11: TLabel;
    cxTextEdit3: TcxTextEdit;
    Label12: TLabel;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    gridViewITEM_ID: TcxGridDBColumn;
    gridViewITEM_CODE: TcxGridDBColumn;
    gridViewITEM_NAME: TcxGridDBColumn;
    gridViewSTATUS: TcxGridDBColumn;
    gridViewTYPE: TcxGridDBColumn;
    gridViewITEM_GRP_CODE: TcxGridDBColumn;
    gridViewITEM_GRP_NAME: TcxGridDBColumn;
    gridViewUNIT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_TREE_ID: TcxGridDBColumn;
    cxGrid1DBTableView1MATERIAL_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1MATERIAL_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ORDER: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView2ITEM_TREE_ID: TcxGridDBColumn;
    cxGrid1DBTableView2MATERIAL_CODE: TcxGridDBColumn;
    cxGrid1DBTableView2MATERIAL_NAME: TcxGridDBColumn;
    cxGrid1DBTableView2ORDER: TcxGridDBColumn;
    cxGrid1DBTableView2AMOUNT: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
    procedure edtUrunAdiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtReceteKoudPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtUrunKoduPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtReceteAdiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtReceteAdiAraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableViewReceteKirilim1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure qryReceteKirilim1AfterScroll(DataSet: TDataSet);
    procedure btnAraClick(Sender: TObject);
    procedure gridViewDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: string;
      const [Ref] AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    procedure cxGrid1DBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
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
  FormUnitReceteTanimlama: TFormUnitReceteTanimlama;

implementation

{$R *.dfm}
 uses CariSec,UnitAnaMenu,Units, UrunSec, UnitUrunTanimlama;
procedure TFormUnitReceteTanimlama.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  inherited;
 with qryReceteKirilim1 do
 begin
   Close;
   sql.Clear;
   sql.Add('SELECT  * FROM ARF_W_ITEM_TREE WITH (NOLOCK) WHERE ITEM_ID=:ITEM_ID');
  Parameters.ParamByName('ITEM_ID').Value:=DataSet.FindField('ITEM_ID').Value;
   OPEN;
 end;
end;

procedure TFormUnitReceteTanimlama.btnAraClick(Sender: TObject);
begin
  inherited;
listele;
end;

procedure TFormUnitReceteTanimlama.BtnKaydetClick(Sender: TObject);
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
       Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,'ITEM_TREE',xAdoQuery);

       Parameters.ParamByName('MUST').Value       := edtSira.Value;
       Parameters.ParamByName('ITEM_ID').Value     := StrToIntDef(edtUrunKodu.hint,0);
       Parameters.ParamByName('MATERIAL_ID').Value := StrToIntDef(edtReceteKodu.hint,0);
       Parameters.ParamByName('AMOUNT').Value      := edtMiktar.Value;
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



procedure TFormUnitReceteTanimlama.BtnSilClick(Sender: TObject);
var ID:string;
begin
inherited;
if edtKeyId.Text<>'' then
   ID:=edtKeyId.Text
 else
 ID:=ADOQuery1ITEM_ID.AsString;
if ID='' then
  begin
    ShowMessage('Listeden silinecek kaydý seçiniz.');
    exit;
  end;
 //if UrunHareketKontrol(StrToInt(ID)) then
KayitSil(FormAnaMenu.AdoConnectionMain,'ITEM_TREE',' where '+MKeyFieldName+'='+ID);
listele;
end;
function TFormUnitReceteTanimlama.UrunHareketKontrol(STOKID:integer):Boolean;
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
      sql.Add('Select * FROM RK_RECETE_LIST WITH (NOLOCK) where STOKID=:STOKID');
      Parameters.ParamByName('STOKID').Value:=STOKID;
      Open;
      if RecordCount<>0 then
      begin
        ShowMessage('Hareket görmüþ ürünü silemezsiniz.');
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

procedure TFormUnitReceteTanimlama.BtnYeniClick(Sender: TObject);
begin
  inherited;
edtKeyid.Text:='-1';
edtUrunKodu.Text:='';
edtUrunAdi.Text:='';
edtUrunKodu.hint:='0';
edtReceteKodu.Text:='';
edtReceteAdi.Text:='';
edtReceteKodu.hint:='0';
edtMiktar.Value:=0;
edtBirimID.EditValue:=0;
edtSira.Text:='';
ADOQueryBirim.Close;
ADOQueryBirim.Open;
end;

procedure TFormUnitReceteTanimlama.cxGrid1DBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  cxPageControl1.ActivePageIndex:=0;
  edtKeyid.Text           := qryReceteKirilim2ITEM_TREE_ID.AsString;
  edtUrunKodu.hint        := qryReceteKirilim2ITEM_ID.AsString;
  edtUrunKodu.Text        := qryReceteKirilim2ITEM_CODE.AsString;
  edtUrunAdi.Text         := qryReceteKirilim2ITEM_NAME.AsString;
  edtReceteKodu.hint      := qryReceteKirilim2MATERIAL_ID.AsString;
  edtReceteKodu.Text      := qryReceteKirilim2MATERIAL_CODE.AsString;
  edtReceteAdi.Text       := qryReceteKirilim2MATERIAL_NAME.AsString;
  edtSira.Text            := qryReceteKirilim2ORDER.AsString;
  edtMiktar.Text          := qryReceteKirilim2AMOUNT.AsString;
  KayitTipi:=1; //Deðiþtir
end;

procedure TFormUnitReceteTanimlama.cxGrid2DBTableViewReceteKirilim1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  cxPageControl1.ActivePageIndex:=0;
  edtKeyid.Text           := qryReceteKirilim1ITEM_TREE_ID.AsString;
  edtUrunKodu.hint        := qryReceteKirilim1ITEM_ID.AsString;
  edtUrunKodu.Text        := qryReceteKirilim1ITEM_CODE.AsString;
  edtUrunAdi.Text         := qryReceteKirilim1ITEM_NAME.AsString;
  edtReceteKodu.hint      := qryReceteKirilim1MATERIAL_ID.AsString;
  edtReceteKodu.Text      := qryReceteKirilim1MATERIAL_CODE.AsString;
  edtReceteAdi.Text       := qryReceteKirilim1MATERIAL_NAME.AsString;
  edtSira.Text            := qryReceteKirilim1ORDER.AsString;
  edtMiktar.Text          := qryReceteKirilim1AMOUNT.AsString;
  KayitTipi:=1; //Deðiþtir
end;



PROcedure TFormUnitReceteTanimlama.Listele;
var
Sqlstr:string;
begin
   Sqlstr := 'select  top 100 * from ARF_ITEMS_LIST with (nolock) where 1=1  ';
if edtUrunKoduAra.Text<>'' then
   Sqlstr := Sqlstr +' and item_code  like  ''%' + edtUrunKoduAra.Text + '%'' '
  else if edtUrunAdiAra.Text<>'' then
 Sqlstr := Sqlstr +' and ITEM_NAME  like  ''%' + edtUrunAdiAra.Text + '%''  ';

 with ADOQuery1 do
 begin
   Close;
   sql.Clear;
   sql.Add(Sqlstr);
   OPEN;
 end;



end;

procedure TFormUnitReceteTanimlama.qryReceteKirilim1AfterScroll(
  DataSet: TDataSet);
begin
  inherited;
 with qryReceteKirilim2 do
 begin
   Close;
   sql.Clear;
   sql.Add('SELECT * FROM ARF_W_ITEM_TREE WITH (NOLOCK) WHERE ITEM_ID=:ITEM_ID');
   Parameters.ParamByName('ITEM_ID').Value:=DataSet.FindField('MATERIAL_ID').Value;
   OPEN;
 end;
end;

procedure TFormUnitReceteTanimlama.edtReceteAdiAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

listele;
end;

procedure TFormUnitReceteTanimlama.edtReceteAdiPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from items with (nolock) where  ITEM_CODE  like  ''%' + edtReceteAdi.Text + '%'' order by ITEM_ID ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.Caption:='Ürün Listesi';
        frmUrunSec.sqlstr := SqlStr;
        if frmUrunSec.ShowModal = mrOK then
        begin
          edtReceteKodu.Text := VarToStrDef(frmUrunSec.qryListeITEM_CODE.AsString, '');
          edtReceteAdi.Text  := VarToStrDef(frmUrunSec.qryListeITEM_NAME.value, '');
          edtReceteKodu.Hint := VarToStrDef(frmUrunSec.qryListeITEM_ID.Value, '0');
        end;
      end;
    1: begin
        edtReceteKodu.Text := '';
        edtReceteKodu.Hint := '';
        edtReceteAdi.Text  := '';
      end;
  end;
end;

procedure TFormUnitReceteTanimlama.edtReceteKoudPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from items with (nolock) where  ITEM_CODE  like  ''%' + edtReceteKodu.Text + '%'' order by ITEM_ID ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.Caption:='Stok Listesi';
        frmUrunSec.sqlstr := SqlStr;
        if frmUrunSec.ShowModal = mrOK then
        begin
          edtReceteKodu.Text := VarToStrDef(frmUrunSec.qryListeITEM_CODE.AsString, '');
          edtReceteAdi.Text  := VarToStrDef(frmUrunSec.qryListeITEM_NAME.value, '');
          edtReceteKodu.Hint := VarToStrDef(frmUrunSec.qryListeITEM_ID.Value, '0');
        end;
      end;
    1: begin
        edtReceteKodu.Text := '';
        edtReceteKodu.Hint := '';
        edtReceteAdi.Text  := '';
      end;
  end;
end;

procedure TFormUnitReceteTanimlama.edtUrunAdiAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtUrunAdiAra.Text<>'' then
listele;
end;

procedure TFormUnitReceteTanimlama.edtUrunAdiPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from items with (nolock) where  ITEM_CODE  like  ''%' + edtUrunKodu.Text + '%'' order by ITEM_ID ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.Caption:='Stok Listesi';
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

procedure TFormUnitReceteTanimlama.edtUrunKoduAraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key<>vk_Return then exit;
if edtUrunKoduAra.Text<>'' then
listele;
end;

procedure TFormUnitReceteTanimlama.edtUrunKoduPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from items with (nolock) where  ITEM_CODE  like  ''' + edtUrunKodu.Text + '%'' ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.sqlstr := SqlStr;
        if frmUrunSec.ShowModal = mrOK then
        begin
          edtUrunKodu.Text := VarToStrDef(frmUrunSec.qryListeITEM_CODE.AsString, '');
          edtUrunAdi.Text := VarToStrDef(frmUrunSec.qryListeITEM_NAME.AsString, '');
          edtUrunKodu.Hint := VarToStrDef(frmUrunSec.qryListeITEM_ID.Value, '0');
        end;
      end;
    1: begin
        edtUrunKodu.Text := '';
        edtUrunAdi.Text  :='';
        edtUrunKodu.Hint := '';
      end;
  end;
end;

procedure TFormUnitReceteTanimlama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
FormUnitReceteTanimlama := nil;
end;

procedure TFormUnitReceteTanimlama.FormCreate(Sender: TObject);
begin
  MasterTblName  := 'ITEM_TREE';
  MKeyFieldName  := 'ITEM_TREE_ID';
  inherited;

end;

procedure TFormUnitReceteTanimlama.FormShow(Sender: TObject);
var
SqlWhere :String;
begin
  inherited;
Listele;
end;

procedure TFormUnitReceteTanimlama.gridViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
 BtnDegistirClick(self);
end;

procedure TFormUnitReceteTanimlama.gridViewDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: string;
  const [Ref] AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  inherited;
  with (ADataSet as TADOQuery) do
  begin
    if Parameters.ParamByName('ITEM_ID').Value = AMasterDetailKeyValues then
    begin
      First;
      Exit;
    end;
    DisableControls;
    try
      Active := False;
      Parameters.ParamByName(AMasterDetailKeyFieldNames).Value := AMasterDetailKeyValues;
      Active := True;
    finally
      EnableControls;
    end;
    AReopened := True;
  end;
end;

end.
