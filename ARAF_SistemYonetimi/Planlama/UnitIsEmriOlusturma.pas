unit UnitIsEmriOlusturma;

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
  cxButtons, Vcl.ExtCtrls, cxGroupBox, cxRadioGroup, cxCurrencyEdit,StrUtils,
  dxmdaset, Data.Bind.Components, Data.Bind.DBScope;

type
  TFormUnitIsEmriOlusturma = class(TForm)
    GroupBoxSiparisler: TGroupBox;
    cxGridSiparisler: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    GroupBoxButon: TGroupBox;
    GroupBoxAktarilacakSiparisler: TGroupBox;
    cxGrid3: TcxGrid;
    CxGridAktarilacakSiparisler: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    GroupBoxStokOperasyon: TGroupBox;
    cxGrid4: TcxGrid;
    cxGridIsermriListesi: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    ADOQuerySiparisler: TADOQuery;
    DsSiparisler: TDataSource;
    DsAktarilacakSiparisler: TDataSource;
    ADOQueryIsEmriListesi: TADOQuery;
    DsIsEmriListesi: TDataSource;
    cxSplitterAktarilacakSiparisler: TcxSplitter;
    cxSplitter3: TcxSplitter;
    cxSplitterSiparisler: TcxSplitter;
    PopupMenuIsEmriOlustur: TPopupMenu;
    StokOperasyonlikilendir1: TMenuItem;
    PanelPlanDuzeltme: TPanel;
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
    PopupMenuIsEmriList: TPopupMenu;
    MenuItem1: TMenuItem;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    ADOQuerySiparislerWORK_ORDER_NO: TStringField;
    ADOQuerySiparislerORDER_DATE: TDateTimeField;
    ADOQuerySiparislerDELIVERY_DATE: TDateTimeField;
    ADOQuerySiparislerITEM_ID: TIntegerField;
    ADOQuerySiparislerITEM_CODE: TWideStringField;
    ADOQuerySiparislerITEM_NAME: TWideStringField;
    ADOQuerySiparislerLINEEXP: TStringField;
    ADOQuerySiparislerCUSTOMER_CODE: TIntegerField;
    ADOQuerySiparislerCUSTOMER_NAME: TStringField;
    ADOQuerySiparislerWORK_ORDER_QUANTITY: TFloatField;
    ADOQuerySiparislerERP_ID: TIntegerField;
    cxGridSiparislerWORK_ORDER_NO: TcxGridDBColumn;
    cxGridSiparislerORDER_DATE: TcxGridDBColumn;
    cxGridSiparislerDELIVERY_DATE: TcxGridDBColumn;
    cxGridSiparislerITEM_ID: TcxGridDBColumn;
    cxGridSiparislerITEM_CODE: TcxGridDBColumn;
    cxGridSiparislerITEM_NAME: TcxGridDBColumn;
    cxGridSiparislerLINEEXP: TcxGridDBColumn;
    cxGridSiparislerCUSTOMER_CODE: TcxGridDBColumn;
    cxGridSiparislerCUSTOMER_NAME: TcxGridDBColumn;
    cxGridSiparislerWORK_ORDER_QUANTITY: TcxGridDBColumn;
    cxGridSiparislerERP_ID: TcxGridDBColumn;
    ADOQueryIsEmriListesiPLAN_ID: TIntegerField;
    ADOQueryIsEmriListesiWS_ID: TIntegerField;
    ADOQueryIsEmriListesiWS_CODE: TStringField;
    ADOQueryIsEmriListesiWS_NAME: TStringField;
    ADOQueryIsEmriListesiOP_ID: TIntegerField;
    ADOQueryIsEmriListesiOP_CODE: TWideStringField;
    ADOQueryIsEmriListesiOP_NAME: TWideStringField;
    ADOQueryIsEmriListesiPLAN_DATE: TDateTimeField;
    ADOQueryIsEmriListesiPLAN_START_TIME: TDateTimeField;
    ADOQueryIsEmriListesiPLAN_END_TIME: TDateTimeField;
    ADOQueryIsEmriListesiITEM_ID: TIntegerField;
    ADOQueryIsEmriListesiITEM_CODE: TWideStringField;
    ADOQueryIsEmriListesiITEM_NAME: TWideStringField;
    ADOQueryIsEmriListesiUNIT: TIntegerField;
    ADOQueryIsEmriListesiUNIT_NAME: TWideStringField;
    ADOQueryIsEmriListesiLINEEXP: TWideMemoField;
    ADOQueryIsEmriListesiTYPE: TWideStringField;
    ADOQueryIsEmriListesiCUSTOMER_CODE: TWideStringField;
    ADOQueryIsEmriListesiCUSTOMER_NAME: TWideStringField;
    ADOQueryIsEmriListesiWORK_ORDER_NO: TWideStringField;
    ADOQueryIsEmriListesiWORK_ORDER_QUANTITY: TFloatField;
    ADOQueryIsEmriListesiERP_ID: TIntegerField;
    ADOQueryIsEmriListesiAMOUNT: TFloatField;
    ADOQueryIsEmriListesiORDER_DATE: TDateTimeField;
    ADOQueryIsEmriListesiDELIVERY_DATE: TDateTimeField;
    cxGridIsermriListesiPLAN_ID: TcxGridDBColumn;
    cxGridIsermriListesiWS_ID: TcxGridDBColumn;
    cxGridIsermriListesiWS_CODE: TcxGridDBColumn;
    cxGridIsermriListesiWS_NAME: TcxGridDBColumn;
    cxGridIsermriListesiOP_ID: TcxGridDBColumn;
    cxGridIsermriListesiOP_CODE: TcxGridDBColumn;
    cxGridIsermriListesiOP_NAME: TcxGridDBColumn;
    cxGridIsermriListesiPLAN_DATE: TcxGridDBColumn;
    cxGridIsermriListesiPLAN_START_TIME: TcxGridDBColumn;
    cxGridIsermriListesiPLAN_END_TIME: TcxGridDBColumn;
    cxGridIsermriListesiPLAN_STATUS: TcxGridDBColumn;
    cxGridIsermriListesiITEM_ID: TcxGridDBColumn;
    cxGridIsermriListesiITEM_CODE: TcxGridDBColumn;
    cxGridIsermriListesiITEM_NAME: TcxGridDBColumn;
    cxGridIsermriListesiUNIT: TcxGridDBColumn;
    cxGridIsermriListesiUNIT_NAME: TcxGridDBColumn;
    cxGridIsermriListesiLINEEXP: TcxGridDBColumn;
    cxGridIsermriListesiTYPE: TcxGridDBColumn;
    cxGridIsermriListesiCUSTOMER_CODE: TcxGridDBColumn;
    cxGridIsermriListesiCUSTOMER_NAME: TcxGridDBColumn;
    cxGridIsermriListesiWORK_ORDER_NO: TcxGridDBColumn;
    cxGridIsermriListesiWORK_ORDER_QUANTITY: TcxGridDBColumn;
    cxGridIsermriListesiERP_ID: TcxGridDBColumn;
    cxGridIsermriListesiAMOUNT: TcxGridDBColumn;
    cxGridIsermriListesiORDER_DATE: TcxGridDBColumn;
    cxGridIsermriListesiDELIVERY_DATE: TcxGridDBColumn;
    CxGridAktarilacakSiparislerWORK_ORDER_NO: TcxGridDBColumn;
    CxGridAktarilacakSiparislerORDER_DATE: TcxGridDBColumn;
    CxGridAktarilacakSiparislerDELIVERY_DATE: TcxGridDBColumn;
    CxGridAktarilacakSiparislerITEM_ID: TcxGridDBColumn;
    CxGridAktarilacakSiparislerITEM_CODE: TcxGridDBColumn;
    CxGridAktarilacakSiparislerITEM_NAME: TcxGridDBColumn;
    CxGridAktarilacakSiparislerLINEEXP: TcxGridDBColumn;
    CxGridAktarilacakSiparislerCUSTOMER_CODE: TcxGridDBColumn;
    CxGridAktarilacakSiparislerCUSTOMER_NAME: TcxGridDBColumn;
    CxGridAktarilacakSiparislerWORK_ORDER_QUANTITY: TcxGridDBColumn;
    CxGridAktarilacakSiparislerERP_ID: TcxGridDBColumn;
    ADOQueryAktarilacakSiparisler: TADOQuery;
    ADOQueryAktarilacakSiparislerID: TAutoIncField;
    ADOQueryAktarilacakSiparislerITEM_ID: TIntegerField;
    ADOQueryAktarilacakSiparislerWORK_ORDER_NO: TWideStringField;
    ADOQueryAktarilacakSiparislerORDER_DATE: TDateTimeField;
    ADOQueryAktarilacakSiparislerDELIVERY_DATE: TDateTimeField;
    ADOQueryAktarilacakSiparislerITEM_CODE: TWideStringField;
    ADOQueryAktarilacakSiparislerITEM_NAME: TWideStringField;
    ADOQueryAktarilacakSiparislerLINEEXP: TWideStringField;
    ADOQueryAktarilacakSiparislerCUSTOMER_CODE: TWideStringField;
    ADOQueryAktarilacakSiparislerCUSTOMER_NAME: TWideStringField;
    ADOQueryAktarilacakSiparislerWORK_ORDER_QUANTITY: TFloatField;
    ADOQueryAktarilacakSiparislerERP_ID: TIntegerField;
    ADOQueryIsEmriListesiPLAN_STATUS: TIntegerField;
    procedure StokOperasyonlikilendir1Click(Sender: TObject);
    procedure CxGridAktarilacakSiparislerCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridIsermriListesiDblClick(Sender: TObject);
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
    procedure cxGridSiparislerCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    procedure AktarilacakList;
    procedure SiparisListesi;
    procedure IsEmriListesi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUnitIsEmriOlusturma: TFormUnitIsEmriOlusturma;

implementation
uses UnitAnaMenu,units,Sec, UnitStokOperasyon;
{$R *.dfm}

procedure TFormUnitIsEmriOlusturma.SiparisListesi;
begin
 with ADOQuerySiparisler do
 begin
  close;
  sql.Clear;
  sql.Add('Select * from ARF_ORDERS with (nolock) where ERP_ID NOT IN (SELECT ERP_ID FROM TMP_ORDERS WITH (NOLOCK)) ');
  open;
 end;
end;
procedure TFormUnitIsEmriOlusturma.StokOperasyonlikilendir1Click(Sender: TObject);
var
SecimIDstr:string;
  xAdoQuery,xAdoQueryPLANNING: TADOQuery;

begin
inherited;
  xAdoQuery:=TADOQuery.Create(Self);
  xAdoQuery.Connection := FormAnaMenu.AdoConnectionMain;

  xAdoQueryPLANNING:=TADOQuery.Create(Self);
  xAdoQueryPLANNING.Connection := FormAnaMenu.AdoConnectionMain;
  ADOQueryAktarilacakSiparisler.First;
  while not  ADOQueryAktarilacakSiparisler.Eof do
  begin
    try
     with xAdoQuery do
      begin
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM ARF_MRPBOOM WITH (NOLOCK) where ERP_ID=:ERP_ID');
      Parameters.ParamByName('ERP_ID').Value:=ADOQueryAktarilacakSiparislerERP_ID.Value;
      OPEN;
     end;
     xAdoQuery.first;
     while not xAdoQuery.Eof do
     begin
       try
        with xAdoQueryPLANNING do
        begin
         Kaydet(FormAnaMenu.AdoConnectionMain,'PLANNING',xAdoQueryPLANNING);
         Parameters.ParamByName('WS_ID').VALUE                := xAdoQuery.fieldByname('WS_ID').AsInteger;
         Parameters.ParamByName('OP_ID').VALUE                := xAdoQuery.fieldByname('OP_ID').AsInteger;
         Parameters.ParamByName('PLAN_DATE').VALUE            := now;
         Parameters.ParamByName('PLAN_START_TIME').VALUE      := null;
         Parameters.ParamByName('PLAN_END_TIME').VALUE        := null;
         Parameters.ParamByName('WORK_ORDER_NO').VALUE        := xAdoQuery.fieldByname('WORK_ORDER_NO').AsString;
         Parameters.ParamByName('PLAN_STATUS').VALUE          := 0; //Planda
         Parameters.ParamByName('ITEM_ID').VALUE              := xAdoQuery.fieldByname('ITEM_ID').AsInteger;
         Parameters.ParamByName('CUSTOMER_CODE').VALUE        := xAdoQuery.fieldByname('CUSTOMER_CODE').AsString;
         Parameters.ParamByName('CUSTOMER_NAME').VALUE        := xAdoQuery.fieldByname('CUSTOMER_NAME').AsString;
         Parameters.ParamByName('WORK_ORDER_QUANTITY').VALUE  := xAdoQuery.fieldByname('WORK_ORDER_QUANTITY').AsFloat;
         Parameters.ParamByName('AMOUNT').VALUE               := xAdoQuery.fieldByname('AMOUNT').AsFloat;
         Parameters.ParamByName('ERP_ID').VALUE               := xAdoQuery.fieldByname('ERP_ID').AsInteger;
         Parameters.ParamByName('ORDER_DATE').VALUE           := xAdoQuery.fieldByname('ORDER_DATE').AsDateTime;
         Parameters.ParamByName('DELIVERY_DATE').VALUE        := xAdoQuery.fieldByname('DELIVERY_DATE').AsDateTime;
         Parameters.ParamByName('LINEEXP').VALUE              := xAdoQuery.fieldByname('LINEEXP').AsString;
         ExecSQL;
        end;
        except
        Application.MessageBox('HATA OLU�TU','UYARI',MB_OK+MB_ICONEXCLAMATION+MB_SYSTEMMODAL);
        FreeAndNil(xAdoQuery);
        FreeAndNil(xAdoQueryPLANNING);
        exit;
        end;
        xAdoQuery.Next;
     end;
        except
        Application.MessageBox('HATA OLU�TU','UYARI',MB_OK+MB_ICONEXCLAMATION+MB_SYSTEMMODAL);
        FreeAndNil(xAdoQuery);
        exit;
        end;
     ADOQueryAktarilacakSiparisler.Next;
  end;

   with  xAdoQuery do
   begin
     Close;
     sql.Clear;
     sql.Add('TRUNCATE TABLE TMP_ORDERS');
     ExecSQL;
   end;
   AktarilacakList;

  FreeAndNil(xAdoQuery);
  FreeAndNil(xAdoQueryPLANNING);
  IsEmriListesi;


end;

procedure TFormUnitIsEmriOlusturma.BtnKaydetClick(Sender: TObject);
VAR
xAdoQuery: TADOQuery;
MKeyFieldName:string;
begin
inherited;
  xAdoQuery:=TADOQuery.Create(Self);
  xAdoQuery.Connection := FormAnaMenu.AdoConnectionMain;
  MKeyFieldName:='PLAN_ID';
 try
     with xAdoQuery do
     begin
      Degistir(FormAnaMenu.AdoConnectionMain,' where '+MKeyFieldName+'='+edtKeyId.Text,'PLANNING',xAdoQuery);
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
      IsEmriListesi;
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

procedure TFormUnitIsEmriOlusturma.cxButton1Click(Sender: TObject);
begin
SiparisListesi;
end;

procedure TFormUnitIsEmriOlusturma.cxButton2Click(Sender: TObject);
VAR
xAdoQuery,xAdoQuery1: TADOQuery;
MKeyFieldName,SecimIDstr:string;
begin
inherited;

  xAdoQuery:=TADOQuery.Create(Self);
  xAdoQuery.Connection := FormAnaMenu.AdoConnectionMain;
  xAdoQuery1:=TADOQuery.Create(Self);
  xAdoQuery1.Connection := FormAnaMenu.AdoConnectionMain;
  CokluSecimIDstr('ERP_ID','',cxGridSiparisler,SecimIDstr,SecimIDstr);
  if SecimIDstr='' then
  begin
    ShowMessage('Sipari� Se�melisiniz.');
    exit;
  end;

  try
    with xAdoQuery Do
    Begin
    close;
    SQL.Clear;
    SQL.Add('Select * from ARF_ORDERS with (nolock)   WHERE ERP_ID in ( '+SecimIDstr+' ) ' );
    open;
   end;
   while not xAdoQuery.Eof do
    begin
        with xAdoQuery1 do
        begin
        Kaydet(FormAnaMenu.AdoConnectionMain,'TMP_ORDERS',xAdoQuery1);
        Parameters.ParamByName('ITEM_ID').VALUE              := xAdoQuery.fieldByname('ITEM_ID').AsInteger;
        Parameters.ParamByName('WORK_ORDER_NO').VALUE        := xAdoQuery.fieldByname('WORK_ORDER_NO').asString;
        Parameters.ParamByName('ORDER_DATE').VALUE           := xAdoQuery.fieldByname('ORDER_DATE').AsDateTime;
        Parameters.ParamByName('DELIVERY_DATE').VALUE        := xAdoQuery.fieldByname('DELIVERY_DATE').AsDateTime;
        Parameters.ParamByName('ITEM_CODE').VALUE            := xAdoQuery.fieldByname('ITEM_CODE').asString;
        Parameters.ParamByName('ITEM_NAME').VALUE            := xAdoQuery.fieldByname('ITEM_NAME').asString;
        Parameters.ParamByName('LINEEXP').VALUE              := xAdoQuery.fieldByname('LINEEXP').asString;
        Parameters.ParamByName('CUSTOMER_CODE').VALUE        := xAdoQuery.fieldByname('CUSTOMER_CODE').asString;
        Parameters.ParamByName('CUSTOMER_NAME').VALUE        := xAdoQuery.fieldByname('CUSTOMER_NAME').asString;
        Parameters.ParamByName('WORK_ORDER_QUANTITY').VALUE  := xAdoQuery.fieldByname('WORK_ORDER_QUANTITY').AsFloat;
        Parameters.ParamByName('ERP_ID').VALUE               := xAdoQuery.fieldByname('ERP_ID').AsInteger;
        ExecSQL;
        end;

      xAdoQuery.Next;
    end;
   except
        Application.MessageBox('HATA OLU�TU','UYARI',MB_OK+MB_ICONEXCLAMATION+MB_SYSTEMMODAL);
        FreeAndNil(xAdoQuery);
        FreeAndNil(xAdoQuery1);
        exit;
     end;
      FreeAndNil(xAdoQuery);
      FreeAndNil(xAdoQuery1);
      AktarilacakList;
      SiparisListesi;

end;

procedure TFormUnitIsEmriOlusturma.cxButton3Click(Sender: TObject);
VAR
xAdoQuery,xAdoQuery1: TADOQuery;
MKeyFieldName,SecimIDstr:string;
begin
inherited;

  xAdoQuery:=TADOQuery.Create(Self);
  xAdoQuery.Connection := FormAnaMenu.AdoConnectionMain;
   CokluSecimIDstr('ERP_ID','',CxGridAktarilacakSiparisler,SecimIDstr,SecimIDstr);
  if SecimIDstr='' then
  begin
    ShowMessage('Geri Al�nacak Sipari�i Se�melisiniz.');
    exit;
  end;
   TRY
    with xAdoQuery Do
     Begin
     close;
     SQL.Clear;
     SQL.Add('Delete from TMP_ORDERS  WHERE ERP_ID in ( '+SecimIDstr+' ) ' );
     ExecSQL;
    end;
      except
        Application.MessageBox('HATA OLU�TU','UYARI',MB_OK+MB_ICONEXCLAMATION+MB_SYSTEMMODAL);
        FreeAndNil(xAdoQuery);
        exit;
     end;
     FreeAndNil(xAdoQuery);
     SiparisListesi;
     AktarilacakList;
end;

procedure TFormUnitIsEmriOlusturma.CxGridAktarilacakSiparislerCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
IsEmriListesi;
end;

procedure TFormUnitIsEmriOlusturma.cxGridSiparislerCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
IsEmriListesi
end;

procedure TFormUnitIsEmriOlusturma.cxGridIsermriListesiDblClick(Sender: TObject);
begin
{
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
BtnKaydet.Enabled             := True;    }
end;

procedure TFormUnitIsEmriOlusturma.edtIsmerkeziAdiPropertiesButtonClick(
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

procedure TFormUnitIsEmriOlusturma.edtIsmerkeziKoduPropertiesButtonClick(
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

procedure TFormUnitIsEmriOlusturma.edtoperasyonAdiPropertiesButtonClick(
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

procedure TFormUnitIsEmriOlusturma.edtOperasyonKoduPropertiesButtonClick(
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

procedure TFormUnitIsEmriOlusturma.edtStokAdiPropertiesButtonClick(
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

procedure TFormUnitIsEmriOlusturma.edtStokKoduPropertiesButtonClick(
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

procedure TFormUnitIsEmriOlusturma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormUnitStokOperasyon := nil;
end;

procedure TFormUnitIsEmriOlusturma.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var formname: string;
begin

  //  tbvdbGrid.StoreToIniFile(path+'tbvdbGrid_'+self.Name,true,[],'myview');
  formname := AnsiReplaceStr(self.Caption, '/', '_');
  formname := AnsiReplaceStr(formname, '\', '_');
  formname := AnsiReplaceStr(formname, '-', '_');
  cxGridSiparisler.StoreToIniFile(FormAnaMenu.GridDizaynPath + 'cxGridSiparisler' + formname, true, [], 'myview');
  cxGridAktarilacakSiparisler.StoreToIniFile(FormAnaMenu.GridDizaynPath + 'cxGridAktarilacakSiparisler' + formname, true, [], 'myview');
  cxGridIsermriListesi.StoreToIniFile(FormAnaMenu.GridDizaynPath + 'cxGridIsermriListesi' + formname, true, [], 'myview');

end;

procedure TFormUnitIsEmriOlusturma.FormShow(Sender: TObject);
var  formname:string;
begin
  formname := AnsiReplaceStr(self.Caption, '/', '_');
  formname := AnsiReplaceStr(formname, '-', '_');
  cxGridSiparisler.RestoreFromIniFile(FormAnaMenu.GridDizaynPath + 'cxGridSiparisler' + formname, true, false, [], 'myview');
  cxGridAktarilacakSiparisler.RestoreFromIniFile(FormAnaMenu.GridDizaynPath + 'cxGridAktarilacakSiparisler' + formname, true, false, [], 'myview');
  cxGridIsermriListesi.RestoreFromIniFile(FormAnaMenu.GridDizaynPath + 'cxGridIsermriListesi' + formname, true, false, [], 'myview');
  IsEmriListesi;
end;

procedure TFormUnitIsEmriOlusturma.AktarilacakList;
begin
  with ADOQueryAktarilacakSiparisler Do
  Begin
    close;
    SQL.Clear;
    SQL.Add(' Select * from TMP_ORDERS with (nolock) ' );
    open;
  end;
end;
procedure TFormUnitIsEmriOlusturma.MenuItem1Click(Sender: TObject);
VAR
xAdoQuery: TADOQuery;
MKeyFieldName,SecimIDstr:string;
begin
inherited;
  xAdoQuery:=TADOQuery.Create(Self);
  xAdoQuery.Connection := FormAnaMenu.AdoConnectionMain;
  CokluSecimIDstr('ITEM_OP_ID','',cxGridIsermriListesi,SecimIDstr,SecimIDstr);
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
      IsEmriListesi;

end;


procedure TFormUnitIsEmriOlusturma.IsEmriListesi;
begin
 with ADOQueryIsEmriListesi do
 begin
  close;
  sql.Clear;
  sql.Add('Select * from ARF_PLANNING with (nolock)');
  open;
 end;
end;

end.