unit UnitRecete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitSablon, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  cxContainer, cxEdit, dxSkinsdxBarPainter, cxTextEdit, dxBar, dxSkinsForm,
  cxBarEditItem, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView,
  cxClasses, dxRibbon, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Data.Win.ADODB,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBarBuiltInMenu, cxPC, cxCurrencyEdit, cxMaskEdit,
  cxButtonEdit, Vcl.StdCtrls, Vcl.Menus, cxButtons, cxSplitter, Vcl.ExtCtrls;

type
  TFormReceteKarti = class(TFormSablon)
    qryReceteKirilim1: TADOQuery;
    DataSource1: TDataSource;
    qryReceteKirilim2: TADOQuery;
    DataSource2: TDataSource;
    qryListITEM_ID: TAutoIncField;
    qryListITEM_CODE: TWideStringField;
    qryListITEM_NAME: TWideStringField;
    qryListUNIT: TWideMemoField;
    qryListSTATUS: TFloatField;
    qryListTYPE: TWideStringField;
    qryListERP_ID: TIntegerField;
    qryReceteKirilim1ITEM_TREE_ID: TIntegerField;
    qryReceteKirilim1ITEM_ID: TIntegerField;
    qryReceteKirilim1ITEM_CODE: TWideStringField;
    qryReceteKirilim1ITEM_NAME: TWideStringField;
    qryReceteKirilim1MATERIAL_ID: TIntegerField;
    qryReceteKirilim1MATERIAL_CODE: TWideStringField;
    qryReceteKirilim1MATERIAL_NAME: TWideStringField;
    qryReceteKirilim1ORDER: TIntegerField;
    qryReceteKirilim2ITEM_TREE_ID: TIntegerField;
    qryReceteKirilim2ITEM_ID: TIntegerField;
    qryReceteKirilim2ITEM_CODE: TWideStringField;
    qryReceteKirilim2ITEM_NAME: TWideStringField;
    qryReceteKirilim2MATERIAL_ID: TIntegerField;
    qryReceteKirilim2MATERIAL_CODE: TWideStringField;
    qryReceteKirilim2MATERIAL_NAME: TWideStringField;
    qryReceteKirilim2ORDER: TIntegerField;
    cxGrid2DBTableViewReceteKirilim1: TcxGridDBTableView;
    cxGrid2DBTableViewReceteKirilim2: TcxGridDBTableView;
    cxGrid1DBTableView1ITEM_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1UNIT: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1ERP_ID: TcxGridDBColumn;
    cxGrid2DBTableViewReceteKirilim1ITEM_TREE_ID: TcxGridDBColumn;
    cxGrid2DBTableViewReceteKirilim1MATERIAL_CODE: TcxGridDBColumn;
    cxGrid2DBTableViewReceteKirilim1MATERIAL_NAME: TcxGridDBColumn;
    cxGrid2DBTableViewReceteKirilim1ORDER: TcxGridDBColumn;
    cxGrid2DBTableViewReceteKirilim1AMOUNT: TcxGridDBColumn;
    cxGrid2DBTableViewReceteKirilim2ITEM_TREE_ID: TcxGridDBColumn;
    cxGrid2DBTableViewReceteKirilim2MATERIAL_CODE: TcxGridDBColumn;
    cxGrid2DBTableViewReceteKirilim2MATERIAL_NAME: TcxGridDBColumn;
    cxGrid2DBTableViewReceteKirilim2ORDER: TcxGridDBColumn;
    cxGrid2DBTableViewReceteKirilim2AMOUNT: TcxGridDBColumn;
    edtID: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtStokKodu: TcxButtonEdit;
    edtStokAdi: TcxButtonEdit;
    edtReceteKodu: TcxButtonEdit;
    edtReceteAdi: TcxButtonEdit;
    edtMiktar: TcxCurrencyEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtSira: TcxCurrencyEdit;
    Label9: TLabel;
    edtAraStokKodu: TcxTextEdit;
    Label10: TLabel;
    edtAraStokAdi: TcxTextEdit;
    qryReceteKirilim1AMOUNT: TFMTBCDField;
    qryReceteKirilim2AMOUNT: TFMTBCDField;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2Level2: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtUrunKoduPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid2DBTableViewReceteKirilim1DblClick(Sender: TObject);
    procedure cxGrid2DBTableViewReceteKirilim2DblClick(Sender: TObject);
    procedure edtStokAdiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtReceteKoduPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtReceteAdiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnAraClick(Sender: TObject);
    procedure BtnYeniClick(Sender: TObject);
    procedure btnKaydetClick(Sender: TObject);
    procedure cxGrid2DBTableViewReceteKirilim1DataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: string;
      const [Ref] AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    procedure cxGridDBTableViewDataControllerDetailHasChildren(
      Sender: TcxDBDataController; ARecordIndex, ARelationIndex: Integer;
      const AMasterDetailKeyFieldNames: string;
      const [Ref] AMasterDetailKeyValues: Variant; var HasChildren: Boolean);
    procedure qryListAfterScroll(DataSet: TDataSet);
    procedure qryReceteKirilim1AfterScroll(DataSet: TDataSet);

  private
    procedure Listele;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceteKarti: TFormReceteKarti;
  IslemTipi:integer; //Kaydet veya Deðiþtir 0 kaydet 1 deðiþtir.

implementation
USES UrunSec,Units,UnitArafSistemYonetimi;
{$R *.dfm}



procedure TFormReceteKarti.btnAraClick(Sender: TObject);
begin
  inherited;
  cxGridDBTableView.ViewData.Expand(True);
Listele;

end;

procedure TFormReceteKarti.btnKaydetClick(Sender: TObject);
begin
  inherited;
    try
      try
       with qryKaydet do
       begin
       if IslemTipi=0 then
       Kaydet(FormArafSistemYonetimi.ADOBaglanti,'ITEM_TREE',qryKaydet)
       else
       Degistir(formArafSistemYonetimi.ADOBaglanti,'WHERE KEYID='''+edtID.Text+''' ' ,'ITEM_TREE',qryKaydet);

       Parameters.ParamByName('ORDER').Value:=edtSira.Value;
       Parameters.ParamByName('ITEM_ID').Value:=StrToIntDef(edtStokKodu.hint,0);
       Parameters.ParamByName('MATERIAL_ID').Value:= StrToIntDef(edtReceteKodu.hint,0);
       Parameters.ParamByName('AMOUNT').Value:= edtMiktar.Value;
       ExecSQL
       end;
     except on E: Exception do
     Application.MessageBox(PChar(E.Message), PChar(Application.Title),
      MB_OK + MB_ICONINFORMATION);
    end;
   finally
     DurumBar.Panels[1].Text:=qryKaydet.fieldByname('ID').AsString +' nolu kayýt yapýldý.';
  end;
end;


procedure TFormReceteKarti.BtnYeniClick(Sender: TObject);
begin
  inherited;
  edtid.Text              := '';
  edtStokKodu.hint        := '';
  edtStokKodu.Text        := '';
  edtStokAdi.Text         := '';
  edtReceteKodu.hint      := '';
  edtReceteKodu.Text      := '';
  edtReceteAdi.Text       := '';
  edtSira.Text            := '';
  edtMiktar.Text          := '';
  IslemTipi:=0;
end;

procedure TFormReceteKarti.cxGrid2DBTableViewReceteKirilim1DataControllerDataModeControllerDetailFirst(
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

procedure TFormReceteKarti.cxGrid2DBTableViewReceteKirilim1DblClick(
  Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePageIndex:=0;
  edtid.Text              := qryReceteKirilim1ITEM_TREE_ID.AsString;
  edtStokKodu.hint        := qryReceteKirilim1ITEM_ID.AsString;
  edtStokKodu.Text        := qryReceteKirilim1ITEM_CODE.AsString;
  edtStokAdi.Text         := qryReceteKirilim1ITEM_NAME.AsString;
  edtReceteKodu.hint      := qryReceteKirilim1MATERIAL_ID.AsString;
  edtReceteKodu.Text      := qryReceteKirilim1MATERIAL_CODE.AsString;
  edtReceteAdi.Text       := qryReceteKirilim1MATERIAL_NAME.AsString;
  edtSira.Text            := qryReceteKirilim1ORDER.AsString;
  edtMiktar.Text          := qryReceteKirilim1AMOUNT.AsString;

  IslemTipi:=1;
end;

procedure TFormReceteKarti.cxGrid2DBTableViewReceteKirilim2DblClick(
  Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePageIndex:=0;
  edtid.Text              := qryReceteKirilim2ITEM_TREE_ID.AsString;
  edtStokKodu.hint        := qryReceteKirilim2ITEM_ID.AsString;
  edtStokKodu.Text        := qryReceteKirilim2ITEM_CODE.AsString;
  edtStokAdi.Text         := qryReceteKirilim2ITEM_NAME.AsString;
  edtReceteKodu.hint      := qryReceteKirilim2MATERIAL_ID.AsString;
  edtReceteKodu.Text      := qryReceteKirilim2MATERIAL_CODE.AsString;
  edtReceteAdi.Text       := qryReceteKirilim2MATERIAL_NAME.AsString;
  edtSira.Text            := qryReceteKirilim2ORDER.AsString;
  edtMiktar.Text          := qryReceteKirilim2AMOUNT.AsString;
  IslemTipi:=1;
end;

procedure TFormReceteKarti.cxGridDBTableViewDataControllerDetailHasChildren(
  Sender: TcxDBDataController; ARecordIndex, ARelationIndex: Integer;
  const AMasterDetailKeyFieldNames: string;
  const [Ref] AMasterDetailKeyValues: Variant; var HasChildren: Boolean);
begin
  inherited;
 HasChildren := Sender.Values[ARecordIndex, cxGrid1DBTableView1ITEM_ID.Index] > 0;
end;

procedure TFormReceteKarti.edtReceteAdiPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from items with (nolock) where  ITEM_NAME  like  ''' + edtReceteAdi.Text + '%'' ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.sqlstr := SqlStr;
        if frmUrunSec.ShowModal = mrOK then
        begin
          edtReceteKodu.Text := VarToStrDef(frmUrunSec.qryListeITEM_CODE.AsString, '');
          edtReceteAdi.Text := VarToStrDef(frmUrunSec.qryListeITEM_NAME.AsString, '');
          edtReceteKodu.Hint := VarToStrDef(frmUrunSec.qryListeITEM_ID.Value, '0');
        end;
      end;
    1: begin
        edtReceteKodu.Text := '';
        edtReceteAdi.Text  :='';
        edtReceteKodu.Hint := '';
      end;
  end;
end;

procedure TFormReceteKarti.edtReceteKoduPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from items with (nolock) where  ITEM_CODE  like  ''' + edtReceteKodu.Text + '%'' ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.sqlstr := SqlStr;
        if frmUrunSec.ShowModal = mrOK then
        begin
          edtReceteKodu.Text := VarToStrDef(frmUrunSec.qryListeITEM_CODE.AsString, '');
          edtReceteAdi.Text := VarToStrDef(frmUrunSec.qryListeITEM_NAME.AsString, '');
          edtReceteKodu.Hint := VarToStrDef(frmUrunSec.qryListeITEM_ID.Value, '0');
        end;
      end;
    1: begin
        edtReceteKodu.Text := '';
        edtReceteAdi.Text  :='';
        edtReceteKodu.Hint := '';
      end;
  end;
end;

procedure TFormReceteKarti.edtStokAdiPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from items with (nolock) where  ITEM_NAME  like  ''' + edtStokAdi.Text + '%''  ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.sqlstr := SqlStr;
        if frmUrunSec.ShowModal = mrOK then
        begin
          edtStokKodu.Text := VarToStrDef(frmUrunSec.qryListeITEM_CODE.AsString, '');
          edtStokAdi.Text := VarToStrDef(frmUrunSec.qryListeITEM_NAME.AsString, '');
          edtStokKodu.Hint := VarToStrDef(frmUrunSec.qryListeITEM_ID.Value, '0');
        end;
      end;
    1: begin
        edtStokKodu.Text := '';
        edtStokAdi.Text :='';
        edtStokKodu.Hint := '';
      end;
  end;
end;

procedure TFormReceteKarti.edtUrunKoduPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var SqlStr: string;
begin
  case AButtonIndex of
    0: begin
        Sqlstr := 'select * from items with (nolock) where  item_code  like  ''' + edtStokKodu.Text + '%''  ';
        frmUrunSec := TfrmUrunSec.create(Self);
        frmUrunSec.sqlstr := SqlStr;
        if frmUrunSec.ShowModal = mrOK then
        begin
          edtStokKodu.Text := VarToStrDef(frmUrunSec.qryListeITEM_CODE.AsString, '');
          edtStokAdi.Text  := VarToStrDef(frmUrunSec.qryListeITEM_NAME.AsString, '');
          edtStokKodu.Hint := VarToStrDef(frmUrunSec.qryListeITEM_ID.Value, '0');
        end;
      end;
    1: begin
         edtStokKodu.Text := '';
         edtStokAdi.Text  :='';
         edtStokKodu.Hint := '';
      end;
  end;
end;

procedure TFormReceteKarti.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
FormReceteKarti := nil;
end;

procedure TFormReceteKarti.FormShow(Sender: TObject);
begin
  inherited;
    Listele;
end;

procedure  TFormReceteKarti.Listele;
var SqlStr: string;
begin
  Sqlstr := 'select  top 100 * from items with (nolock) where 1=1  ';
if edtAraStokKodu.Text<>'' then
   Sqlstr := Sqlstr +' and item_code  like  ''%' + edtAraStokKodu.Text + '%'' '
  else if edtAraStokAdi.Text<>'' then
 Sqlstr := Sqlstr +' and ITEM_NAME  like  ''%' + edtAraStokAdi.Text + '%''  ';

 with qryList do
 begin
   Close;
   sql.Clear;
   sql.Add(Sqlstr);
   OPEN;
 end;

end;

procedure TFormReceteKarti.qryListAfterScroll(DataSet: TDataSet);
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

procedure TFormReceteKarti.qryReceteKirilim1AfterScroll(DataSet: TDataSet);
begin
  inherited;
 with qryReceteKirilim2 do
 begin
   Close;
   sql.Clear;
   sql.Add('SELECT * FROM ARF_W_ITEM_TREE WITH (NOLOCK) WHERE ITEM_ID=:ITEM_ID');
   Parameters.ParamByName('ITEM_ID').Value:=DataSet.FindField('ITEM_ID').Value;
   OPEN;
 end;
end;

end.
