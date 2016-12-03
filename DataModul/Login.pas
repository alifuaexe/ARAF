unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, cxImage, cxTextEdit, cxMaskEdit,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLookAndFeelPainters,
  cxButtons, DB, ADODB, Menus, cxGraphics, cxDropDownEdit, dxStatusBar;

type
  Tfrmlogin = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Qfirma: TADOQuery;
    DS_FIRMA: TDataSource;
    QfirmaFIRMA_ADI: TStringField;
    cmbSirket: TcxComboBox;
    BitBtn1: TcxButton;
    cxButton1: TcxButton;
    dxStBar: TdxStatusBar;
    cbAta: TCheckBox;
    qAta: TADOQuery;
    StringField1: TStringField;
    QfirmaKeyId: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;

implementation

uses DataModul;

{$R *.dfm}

procedure Tfrmlogin.FormShow(Sender: TObject);
begin
  try
    cmbSirket.Clear;
    with Qfirma do
    begin
      Close;
      SQL.Text := 'select KeyID,FIRMA_ADI FROM SP_FIRMA (NOLOCK) ORDER BY SIRA';
      Open;
    end;
    if QFirma.RecordCount = 0 then
    begin
      MessageDlg('Þirket Database Tanýmlarý Eksik.' + #13 + #10 + 'Lütfen Bilgi Ýþlem Bölümüne Baþvurunuz.', mtWarning, [mbOK], 0);
      Exit;
    end;
    while not qfirma.Eof do
    begin
      cmbSirket.Properties.Items.Add(qfirma.FieldByName('FIRMA_ADI').AsString);
      qfirma.Next;
    end;
    cmbSirket.ItemIndex := cmbSirket.Properties.Items.IndexOf(dmDataModul.cnnCon.DefaultDatabase);
    cmbSirket.SetFocus;
  except
  end;
end;

procedure Tfrmlogin.BitBtn1Click(Sender: TObject);

begin
  if cmbSirket.Text = '' then exit;
  dmDataModul.cnnCon.Close;
  dmDataModul.cnnCon.DefaultDatabase := cmbSirket.Text;
  dmDataModul.cnnCon.Open;
  //ShowMessage('Aktif þirket '+dmDataModul.cnnCon.DefaultDatabase+' olarak güncellendi!');

  if cbAta.Checked then
  begin
    if Qfirma.Locate('FIRMA_ADI', cmbSirket.Text, []) then
    begin
      with qAta do
      begin
        Close;
        SQL.Text := 'UPDATE Systemusers Set DefaultSirket=' + Qfirma.FieldByName('KeyID').AsString + ' WHERE UserID=' + ParamStr(1);
        ExecSQL;

        ShowMessage('Default þirket ' + dmDataModul.cnnCon.DefaultDatabase + ' olarak güncellendi!');
      end
    end;
  end;

  Close;
end;

procedure Tfrmlogin.cxButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

procedure Tfrmlogin.FormActivate(Sender: TObject);
begin
  dxStBar.Panels[0].Text := dmDataModul.cnnCon.DefaultDatabase;
end;

end.

