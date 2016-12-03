unit UnitStokOperasyon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, Data.Win.ADODB, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxSplitter, Vcl.Menus, cxContainer,
  cxDropDownEdit, Vcl.Samples.Spin, cxMaskEdit, cxButtonEdit, cxTextEdit,
  cxButtons, Vcl.ExtCtrls, cxGroupBox, cxRadioGroup, cxCurrencyEdit,StrUtils;

type
  TFormUnitStokOperasyon = class(TForm)
    GroupBoxStoklar: TGroupBox;
    cxGridStoklar: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    GroupBoxOperasyonlar: TGroupBox;
    cxGrid2: TcxGrid;
    cxGridOperasyonlar: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    GroupBoxIsmerkezleri: TGroupBox;
    cxGrid3: TcxGrid;
    CxGridIsmerkezleri: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    GroupBoxStokOperasyon: TGroupBox;
    cxGrid4: TcxGrid;
    cxGridStokOperasyon: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    ADOQueryStoklar: TADOQuery;
    DsStoklar: TDataSource;
    ADOQueryIsmerkezleri: TADOQuery;
    DsIsmerkezleri: TDataSource;
    ADOQueryOperasyonlar: TADOQuery;
    DsOperasyonlar: TDataSource;
    ADOQuerySTokOperasyon: TADOQuery;
    DsStokOperasyon: TDataSource;
    ADOQueryStoklarITEM_ID: TIntegerField;
    ADOQueryStoklarITEM_CODE: TWideStringField;
    ADOQueryStoklarUNIT: TIntegerField;
    ADOQueryStoklarITEM_NAME: TWideStringField;
    ADOQueryStoklarSTATUS: TFloatField;
    ADOQueryStoklarERP_ID: TIntegerField;
    ADOQueryStoklarTYPE: TWideStringField;
    ADOQueryStoklarITEM_GRP_ID: TIntegerField;
    ADOQueryStoklarITEM_GRP_CODE: TWideStringField;
    ADOQueryStoklarITEM_GRP_NAME: TWideStringField;
    ADOQueryStoklarUNIT_NAME: TWideStringField;
    ADOQueryStoklarEXPLANATION: TWideStringField;
    cxGridStoklarITEM_ID: TcxGridDBColumn;
    cxGridStoklarITEM_CODE: TcxGridDBColumn;
    cxGridStoklarUNIT: TcxGridDBColumn;
    cxGridStoklarITEM_NAME: TcxGridDBColumn;
    cxGridStoklarSTATUS: TcxGridDBColumn;
    cxGridStoklarERP_ID: TcxGridDBColumn;
    cxGridStoklarTYPE: TcxGridDBColumn;
    cxGridStoklarITEM_GRP_ID: TcxGridDBColumn;
    cxGridStoklarITEM_GRP_CODE: TcxGridDBColumn;
    cxGridStoklarITEM_GRP_NAME: TcxGridDBColumn;
    cxGridStoklarUNIT_NAME: TcxGridDBColumn;
    cxGridStoklarEXPLANATION: TcxGridDBColumn;
    ADOQueryIsmerkezleriWS_ID: TAutoIncField;
    ADOQueryIsmerkezleriWSG_ID: TIntegerField;
    ADOQueryIsmerkezleriWS_CODE: TStringField;
    ADOQueryIsmerkezleriWS_NAME: TStringField;
    CxGridIsmerkezleriWS_ID: TcxGridDBColumn;
    CxGridIsmerkezleriWSG_ID: TcxGridDBColumn;
    CxGridIsmerkezleriWS_CODE: TcxGridDBColumn;
    CxGridIsmerkezleriWS_NAME: TcxGridDBColumn;
    ADOQueryOperasyonlarOP_ID: TAutoIncField;
    ADOQueryOperasyonlarOP_CODE: TWideStringField;
    ADOQueryOperasyonlarOP_NAME: TWideStringField;
    cxGridOperasyonlarOP_ID: TcxGridDBColumn;
    cxGridOperasyonlarOP_CODE: TcxGridDBColumn;
    cxGridOperasyonlarOP_NAME: TcxGridDBColumn;
    cxGridOperasyonlarOP_TIME_UNIT: TcxGridDBColumn;
    ADOQueryIsmerkezleriWSG_NAME: TWideStringField;
    ADOQuerySTokOperasyonITEM_OP_ID: TIntegerField;
    ADOQuerySTokOperasyonMUST: TIntegerField;
    ADOQuerySTokOperasyonITEM_ID: TIntegerField;
    ADOQuerySTokOperasyonOP_ID: TIntegerField;
    ADOQuerySTokOperasyonOP_TIME_UNIT: TFloatField;
    ADOQuerySTokOperasyonWS_ID: TIntegerField;
    ADOQuerySTokOperasyonLAST_OP: TBooleanField;
    ADOQuerySTokOperasyonITEM_CODE: TWideStringField;
    ADOQuerySTokOperasyonITEM_NAME: TWideStringField;
    ADOQuerySTokOperasyonUNIT: TIntegerField;
    ADOQuerySTokOperasyonSTATUS: TFloatField;
    ADOQuerySTokOperasyonTYPE: TWideStringField;
    ADOQuerySTokOperasyonERP_ID: TIntegerField;
    ADOQuerySTokOperasyonITEM_GRP_ID: TIntegerField;
    ADOQuerySTokOperasyonOP_CODE: TWideStringField;
    ADOQuerySTokOperasyonOP_NAME: TWideStringField;
    ADOQuerySTokOperasyonWSG_ID: TIntegerField;
    ADOQuerySTokOperasyonWS_CODE: TStringField;
    ADOQuerySTokOperasyonWS_NAME: TStringField;
    cxSplitterIsmerkezi: TcxSplitter;
    cxSplitterOperasyonlar: TcxSplitter;
    cxSplitter3: TcxSplitter;
    cxSplitterStok: TcxSplitter;
    PopupMenuStoklarIliskilendirme: TPopupMenu;
    StokOperasyonlikilendir1: TMenuItem;
    PanelStokOperasyonDuzeltme: TPanel;
    cxGridStokOperasyonITEM_OP_ID: TcxGridDBColumn;
    cxGridStokOperasyonMUST: TcxGridDBColumn;
    cxGridStokOperasyonOP_TIME_UNIT: TcxGridDBColumn;
    cxGridStokOperasyonLAST_OP: TcxGridDBColumn;
    cxGridStokOperasyonITEM_CODE: TcxGridDBColumn;
    cxGridStokOperasyonITEM_NAME: TcxGridDBColumn;
    cxGridStokOperasyonTYPE: TcxGridDBColumn;
    cxGridStokOperasyonOP_CODE: TcxGridDBColumn;
    cxGridStokOperasyonOP_NAME: TcxGridDBColumn;
    cxGridStokOperasyonWS_CODE: TcxGridDBColumn;
    cxGridStokOperasyonWS_NAME: TcxGridDBColumn;
    BtnKaydet: TcxButton;
    edtKeyid: TcxTextEdit;
    edtStokKodu: TcxButtonEdit;
    edtStokAdi: TcxButtonEdit;
    edtIsmerkeziKodu: TcxButtonEdit;
    edtIsmerkeziAdi: TcxButtonEdit;
    edtSiraNo: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtOperasyonKodu: TcxButtonEdit;
    edtoperasyonAdi: TcxButtonEdit;
    edtSonoperasyonmu: TcxRadioGroup;
    edtBirimsure: TcxCurrencyEdit;
    Label9: TLabel;
    PopupMenuStokOperasyon: TPopupMenu;
    MenuItem1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure StokOperasyonlikilendir1Click(Sender: TObject);
    procedure CxGridIsmerkezleriCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridStokOperasyonDblClick(Sender: TObject);
    procedure edtStokKoduPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtStokAdiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtIsmerkeziKoduPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtIsmerkeziAdiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtnKaydetClick(Sender: TObject);
    procedure edtOperasyonKoduPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtoperasyonAdiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure cxGridStoklarCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure IsmerkeziListesi;
    procedure Operasyon;
    procedure StokListesi;
    procedure Stok_Operasyon;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUnitStokOperasyon: TFormUnitStokOperasyon;

implementation
uses UnitAnaMenu,units,Sec;
{$R *.dfm}

procedure TFormUnitStokOperasyon.StokListesi;
begin
 with ADOQueryStoklar do
 begin
  close;
  sql.Clear;
  sql.Add('Select * from ARF_ITEMS_LIST with (nolock)');
  open;
 end;
end;
procedure TFormUnitStokOperasyon.StokOperasyonlikilendir1Click(Sender: TObject);
var
SecimIDstr:string;
  xAdoQuery,xAdoQueryList: TADOQuery;

begin
inherited;
  xAdoQuery:=TADOQuery.Create(Self);
  xAdoQuery.Connection := FormAnaMenu.AdoConnectionMain;

  xAdoQueryList:=TADOQuery.Create(Self);
  xAdoQueryList.Connection := FormAnaMenu.AdoConnectionMain;

  CokluSecimIDstr('ITEM_ID','',cxGridStoklar,SecimIDstr,SecimIDstr);

  with xAdoQueryList Do
  Begin
    close;
    SQL.Clear;
    SQL.Add('Select * from ARF_ITEMS_LIST with (nolock)  WHERE ITEM_ID in ( '+SecimIDstr+' ) ' );
    Open;
  end;

  while not xAdoQueryList.Eof do
  begin
    try
     with xAdoQuery do
     begin
      Kaydet(FormAnaMenu.AdoConnectionMain,'ITEM_OPERATIONS',xAdoQuery);
      Parameters.ParamByName('ITEM_ID').Value   := xAdoQueryList.fieldbyname('ITEM_ID').Value;
      Parameters.ParamByName('OP_ID').Value     := ADOQueryOperasyonlarOP_ID.Value;
      Parameters.ParamByName('WS_ID').Value     := ADOQueryIsmerkezleriWS_ID.Value;
      Parameters.ParamByName('LAST_OP').Value   := 1;
      ExecSQL;
     end;
     except
        Application.MessageBox('HATA OLU�TU','UYARI',MB_OK+MB_ICONEXCLAMATION+MB_SYSTEMMODAL);
        FreeAndNil(xAdoQueryList);
        exit;
     end;
    xAdoQueryList.Next;
  end;
  FreeAndNil(xAdoQueryList);
  FreeAndNil(xAdoQuery);
  Stok_Operasyon;
  StokListesi;
end;

procedure TFormUnitStokOperasyon.BtnKaydetClick(Sender: TObject);
VAR
xAdoQuery: TADOQuery;
MKeyFieldName:string;
begin
inherited;
  xAdoQuery:=TADOQuery.Create(Self);
  xAdoQuery.Connection := FormAnaMenu.AdoConnectionMain;
  MKeyFieldName:='ITEM_OP_ID';
 try
     with xAdoQuery do
     begin
      Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,'ITEM_OPERATIONS',xAdoQuery);
      Parameters.ParamByName('ITEM_ID').Value      :=  StrToIntDef(edtStokKodu.Hint,0);
      Parameters.ParamByName('OP_ID').Value        :=  StrToIntDef(edtOperasyonKodu.Hint,0);
      Parameters.ParamByName('WS_ID').Value        :=  StrToIntDef(edtIsmerkeziKodu.Hint,0);
      Parameters.ParamByName('MUST').Value         :=  StrToIntDef(edtSiraNo.Text,0);
      Parameters.ParamByName('LAST_OP').Value      :=  edtSonoperasyonmu.EditValue;
      Parameters.ParamByName('OP_TIME_UNIT').Value :=  edtBirimsure.EditValue;
      ExecSQL;

     end;
     except
        Application.MessageBox('HATA OLU�TU','UYARI',MB_OK+MB_ICONEXCLAMATION+MB_SYSTEMMODAL);
        FreeAndNil(xAdoQuery);
        exit;
     end;
      FreeAndNil(xAdoQuery);
      Stok_Operasyon;
      edtKeyid.Text                 := '';
      edtStokKodu.Text              := '';
      edtStokKodu.Hint              := '';
      edtStokAdi.Text               := '';
      edtIsmerkeziKodu.Text         := '';
      edtIsmerkeziKodu.hint         := '';
      edtIsmerkeziAdi.Text          := '';
      edtOperasyonKodu.Text         := '';
      edtOperasyonKodu.Hint         := '';
      edtoperasyonAdi.Text          := '';
      edtSiraNo.Text                := '';
      edtSonoperasyonmu.EditValue   := '';
      BtnKaydet.Enabled             := False;
      edtBirimsure.Text             := '';
end;

procedure TFormUnitStokOperasyon.CxGridIsmerkezleriCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
Stok_Operasyon;
end;

procedure TFormUnitStokOperasyon.cxGridStoklarCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
Stok_Operasyon;
end;

procedure TFormUnitStokOperasyon.cxGridStokOperasyonDblClick(Sender: TObject);
begin
edtKeyid.Text                 := ADOQuerySTokOperasyonITEM_OP_ID.AsString;
edtStokKodu.Text              := ADOQuerySTokOperasyonITEM_CODE.Value;
edtStokKodu.Hint              := ADOQuerySTokOperasyonITEM_ID.AsString;
edtStokAdi.Text               := ADOQuerySTokOperasyonITEM_NAME.Value;
edtIsmerkeziKodu.Text         := ADOQuerySTokOperasyonWS_CODE.Value;
edtIsmerkeziKodu.hint         := ADOQuerySTokOperasyonWS_ID.AsString;
edtIsmerkeziAdi.Text          := ADOQuerySTokOperasyonWS_NAME.Value;
edtOperasyonKodu.Text         := ADOQuerySTokOperasyonOP_CODE.Value;
edtOperasyonKodu.Hint         := ADOQuerySTokOperasyonOP_ID.AsString;
edtoperasyonAdi.Text          := ADOQuerySTokOperasyonOP_NAME.Value;
edtSiraNo.Text                := ADOQuerySTokOperasyonMUST.AsString;
edtSonoperasyonmu.EditValue   := ADOQuerySTokOperasyonLAST_OP.Value;
edtBirimsure.Text             := ADOQuerySTokOperasyonOP_TIME_UNIT.AsString;
BtnKaydet.Enabled             := True;
end;

procedure TFormUnitStokOperasyon.edtIsmerkeziAdiPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
        0: begin
        Sqlstr := 'select * from ARF_WORKSTATIONS with (nolock) where  WS_NAME  like  ''%' + edtIsmerkeziAdi.Text + '%'' order by WS_ID ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Stok Listesi';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtIsmerkeziKodu.Text := VarToStrDef(frmSec.qryListe.fieldByname('WS_CODE').Value, '');
          edtIsmerkeziAdi.Text  := VarToStrDef(frmSec.qryListe.fieldByname('WS_NAME').Value, '');
          edtIsmerkeziKodu.Hint := VarToStrDef(frmSec.qryListe.fieldByname('WS_ID').Value, '0');
        end;
      end;
    1: begin
        edtIsmerkeziKodu.Text := '';
        edtIsmerkeziAdi.Text  := '';
        edtIsmerkeziKodu.Hint := '0';
       end;
  end;
end;

procedure TFormUnitStokOperasyon.edtIsmerkeziKoduPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
        0: begin
        Sqlstr := 'select * from ARF_WORKSTATIONS with (nolock) where  WS_CODE  like  ''%' + edtIsmerkeziKodu.Text + '%'' order by WS_ID ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Stok Listesi';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtIsmerkeziKodu.Text := VarToStrDef(frmSec.qryListe.fieldByname('WS_CODE').Value, '');
          edtIsmerkeziAdi.Text  := VarToStrDef(frmSec.qryListe.fieldByname('WS_NAME').Value, '');
          edtIsmerkeziKodu.Hint := VarToStrDef(frmSec.qryListe.fieldByname('WS_ID').Value, '0');
        end;
      end;
    1: begin
        edtIsmerkeziKodu.Text := '';
        edtIsmerkeziAdi.Text  := '';
        edtIsmerkeziKodu.Hint := '0';
       end;
  end;
end;

procedure TFormUnitStokOperasyon.edtoperasyonAdiPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
        0: begin
        Sqlstr := 'select * from  OPERATIONS with (nolock) where  OP_NAME like  ''%' + edtoperasyonAdi.Text + '%'' order by OP_ID ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Operasyon Listesi';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtOperasyonKodu.Text := VarToStrDef(frmSec.qryListe.fieldByname('OP_CODE').Value, '');
          edtoperasyonAdi.Text  := VarToStrDef(frmSec.qryListe.fieldByname('OP_NAME').Value, '');
          edtOperasyonKodu.Hint := VarToStrDef(frmSec.qryListe.fieldByname('OP_ID').Value, '0');
        end;
      end;
    1: begin
        edtOperasyonKodu.Text := '';
        edtoperasyonAdi.Text  := '';
        edtOperasyonKodu.Hint := '0';
       end;
  end;
end;

procedure TFormUnitStokOperasyon.edtOperasyonKoduPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
        0: begin
        Sqlstr := 'select * from  OPERATIONS with (nolock) where  OP_CODE like  ''%' + edtOperasyonKodu.Text + '%'' order by OP_ID ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Operasyon Listesi';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtOperasyonKodu.Text := VarToStrDef(frmSec.qryListe.fieldByname('OP_CODE').Value, '');
          edtoperasyonAdi.Text  := VarToStrDef(frmSec.qryListe.fieldByname('OP_NAME').Value, '');
          edtOperasyonKodu.Hint := VarToStrDef(frmSec.qryListe.fieldByname('OP_ID').Value, '0');
        end;
      end;
    1: begin
        edtOperasyonKodu.Text := '';
        edtoperasyonAdi.Text  := '';
        edtOperasyonKodu.Hint := '0';
       end;
  end;
end;

procedure TFormUnitStokOperasyon.edtStokAdiPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
        0: begin
        Sqlstr := 'select * from ITEMS with (nolock) where  ITEM_NAME  like  ''%' + edtStokAdi.Text + '%'' order by ITEM_ID ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Stok Listesi';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtStokKodu.Text := VarToStrDef(frmSec.qryListe.fieldByname('ITEM_CODE').Value, '');
          edtStokAdi.Text  := VarToStrDef(frmSec.qryListe.fieldByname('ITEM_NAME').Value, '');
          edtStokKodu.Hint := VarToStrDef(frmSec.qryListe.fieldByname('ITEM_ID').Value, '0');
        end;
      end;
    1: begin
        edtStokKodu.Text := '';
        edtStokAdi.Text  := '';
        edtStokKodu.Hint := '0';
       end;
  end;
end;

procedure TFormUnitStokOperasyon.edtStokKoduPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
        0: begin
        Sqlstr := 'select * from ITEMS with (nolock) where  ITEM_CODE  like  ''%' + edtStokKodu.Text + '%'' order by ITEM_ID ';
        frmSec := TfrmSec.create(Self);
        frmSec.Caption:= 'Stok Listesi';
        frmSec.sqlstr := SqlStr;
        if frmSec.ShowModal = mrOK then
        begin
          edtStokKodu.Text := VarToStrDef(frmSec.qryListe.fieldByname('ITEM_CODE').Value, '');
          edtStokAdi.Text  := VarToStrDef(frmSec.qryListe.fieldByname('ITEM_NAME').Value, '');
          edtStokKodu.Hint := VarToStrDef(frmSec.qryListe.fieldByname('ITEM_ID').Value, '0');
        end;
      end;
    1: begin
        edtStokKodu.Text := '';
        edtStokAdi.Text  := '';
        edtStokKodu.Hint := '0';
       end;
  end;
end;

procedure TFormUnitStokOperasyon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormUnitStokOperasyon := nil;
end;

procedure TFormUnitStokOperasyon.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var formname: string;
begin

  //  tbvdbGrid.StoreToIniFile(path+'tbvdbGrid_'+self.Name,true,[],'myview');
  formname := AnsiReplaceStr(self.Caption, '/', '_');
  formname := AnsiReplaceStr(formname, '\', '_');
  formname := AnsiReplaceStr(formname, '-', '_');
  cxGridStoklar.StoreToIniFile(FormAnaMenu.GridDizaynPath + 'cxGridStoklar' + formname, true, [], 'myview');
  cxGridOperasyonlar.StoreToIniFile(FormAnaMenu.GridDizaynPath + 'cxGridOperasyonlar' + formname, true, [], 'myview');
  CxGridIsmerkezleri.StoreToIniFile(FormAnaMenu.GridDizaynPath + 'CxGridIsmerkezleri' + formname, true, [], 'myview');
  cxGridStokOperasyon.StoreToIniFile(FormAnaMenu.GridDizaynPath + 'cxGridStokOperasyon' + formname, true, [], 'myview');
end;

procedure TFormUnitStokOperasyon.FormCreate(Sender: TObject);
begin
  IsmerkeziListesi;
  Operasyon;
  StokListesi;
  Stok_Operasyon
end;

procedure TFormUnitStokOperasyon.FormShow(Sender: TObject);
var  formname:string;
begin
  formname := AnsiReplaceStr(self.Caption, '/', '_');
  formname := AnsiReplaceStr(formname, '-', '_');
  cxGridStoklar.RestoreFromIniFile(FormAnaMenu.GridDizaynPath + 'cxGridStoklar' + formname, true, false, [], 'myview');
  CxGridIsmerkezleri.RestoreFromIniFile(FormAnaMenu.GridDizaynPath + 'CxGridIsmerkezleri' + formname, true, false, [], 'myview');
  cxGridOperasyonlar.RestoreFromIniFile(FormAnaMenu.GridDizaynPath + 'cxGridOperasyonlar' + formname, true, false, [], 'myview');
  cxGridStokOperasyon.RestoreFromIniFile(FormAnaMenu.GridDizaynPath + 'cxGridStokOperasyon' + formname, true, false, [], 'myview');
end;

procedure TFormUnitStokOperasyon.IsmerkeziListesi;
begin
 with ADOQueryIsmerkezleri do
 begin
  close;
  sql.Clear;
  sql.Add('Select * from ARF_WORKSTATIONS with (nolock)');
  open;
 end;
end;
procedure TFormUnitStokOperasyon.MenuItem1Click(Sender: TObject);
VAR
xAdoQuery: TADOQuery;
MKeyFieldName,SecimIDstr:string;
begin
inherited;
  xAdoQuery:=TADOQuery.Create(Self);
  xAdoQuery.Connection := FormAnaMenu.AdoConnectionMain;
  CokluSecimIDstr('ITEM_OP_ID','',cxGridStokOperasyon,SecimIDstr,SecimIDstr);
  try
  with xAdoQuery Do
  Begin
    close;
    SQL.Clear;
    SQL.Add(' delete  from ITEM_OPERATIONS   WHERE ITEM_OP_ID in ( '+SecimIDstr+' ) ' );
    ExecSQL;
  end;
     except
        Application.MessageBox('HATA OLU�TU','UYARI',MB_OK+MB_ICONEXCLAMATION+MB_SYSTEMMODAL);
        FreeAndNil(xAdoQuery);
        exit;
     end;
      FreeAndNil(xAdoQuery);
      Stok_Operasyon;
      StokListesi;
end;

procedure TFormUnitStokOperasyon.Operasyon;
begin
 with ADOQueryOperasyonlar do
 begin
  close;
  sql.Clear;
  sql.Add('Select * from OPERATIONS with (nolock)');
  open;
 end;
end;
procedure TFormUnitStokOperasyon.Stok_Operasyon;
begin
 with ADOQuerySTokOperasyon do
 begin
  close;
  sql.Clear;
  sql.Add('Select * from ARF_ITEM_OPERATIONS with (nolock) WHERE ITEM_ID=:ITEM_ID');
  Parameters.ParamByName('ITEM_ID').Value:=ADOQueryStoklarITEM_ID.Value;
  open;
 end;
end;

end.