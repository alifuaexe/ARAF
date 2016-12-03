unit UnitBasic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,DB, ADODB, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ComCtrls, cxSplitter, Vcl.Buttons, ElastFrm;

type
  TFormBasic = class(TForm)
    cxPageControl1: TcxPageControl;
    PageDetay: TcxTabSheet;
    Panel1: TPanel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel4: TPanel;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    btnAra: TcxButton;
    Panel3: TPanel;
    Panel5: TPanel;
    cxGrid1: TcxGrid;
    gridView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    GridPanel1: TGridPanel;
    BtnKaydet: TcxButton;
    BtnDegistir: TcxButton;
    BtnSil: TcxButton;
    BtnYeni: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ElasticForm1: TElasticForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnYeniClick(Sender: TObject);
    procedure BtnKaydetClick(Sender: TObject);
    procedure BtnDegistirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    FPMInsertIslem    :Boolean;
    FPMUpdateIslem    :Boolean;
    FPMLockRecord     :Boolean;
    FMIsCallOtherForm :Boolean;
    FMasterTblName    : String;
    FMKeyFieldName    : String;
    FMKeyFieldValue   : Variant;
    FMIncKeyId        : Integer;

    { Private declarations }
  public

    { Public declarations }

    published
    property pMInsertIslem     :Boolean  read FPMInsertIslem    write FPMInsertIslem;
    property pMUpdateIslem     :Boolean  read FPMUpdateIslem    write FPMUpdateIslem;
    property MIsCallOtherForm  :Boolean  read FMIsCallOtherForm write FMIsCallOtherForm;
    property MasterTblName     :String   read FMasterTblName    write FMasterTblName;
    property MKeyFieldName     :String   read FMKeyFieldName    write FMKeyFieldName;
    property MKeyFieldValue    :Variant  read FMKeyFieldValue   write FMKeyFieldValue;
    property PMLockRecord      :Boolean  read FPMLockRecord     write FPMLockRecord;
    property MIncKeyId         :Integer  read FMIncKeyId        write FMIncKeyId;
  end;
var
  FormBasic: TFormBasic;
   KayitTipi : integer;
implementation

{$R *.dfm}

 uses unitAnaMenu;
procedure TFormBasic.BtnDegistirClick(Sender: TObject);
begin
KayitTipi:=1;
BtnKaydet.Enabled:=TRUE;
cxPageControl1.ActivePageIndex:=0;
end;



procedure TFormBasic.BtnKaydetClick(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex:=0;

  BtnKaydet.Enabled:=False;
  BtnDegistir.Enabled:=True;
  BtnSil.Enabled:=True;
end;


procedure TFormBasic.BtnYeniClick(Sender: TObject);
begin
 cxPageControl1.ActivePageIndex:=0;
 BtnKaydet.Enabled:=True;

 BtnDegistir.Enabled:=False;
 BtnSil.Enabled:=False;
 KayitTipi:=0;
end;

procedure TFormBasic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure TFormBasic.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex:=0;
end;

procedure TFormBasic.FormShow(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=0;
end;

procedure TFormBasic.gridViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 BtnDegistirClick(sender);
 cxPageControl1.ActivePageIndex:=0;
end;


end.
