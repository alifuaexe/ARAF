unit DataModul;

interface

uses
  SysUtils, Classes, DB, ADODB, Forms;

type
  TdmDataModul = class(TDataModule)
    cnnCon: TADOConnection;
    cnnSP: TADOConnection;
    cnnSTG: TADOConnection;
    cnnSTF: TADOConnection;
    cnnSTB: TADOConnection;
    cnnERP: TADOConnection;
    Netsis: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    DefaultDatabase: string;
    BirOncekiDatabase: string;
    CARI: string;
    p: string; //path
    procedure DefaultDatabaseDegistir(DatabaseAdi: string);
    function AktifDataBase(KisaKod: string): string;
    procedure OncekiDatabaseSec;

    { Public declarations }
  end;

const
//  path = '..\BIN\SETTINGS\';
  KodParamSayi = 10;
  SeriParamSayi = 5;
  oncekigunsayi = 30;
  sonrakigunsayi = 30;
var
  dmDataModul: TdmDataModul;
  path,ExePath: string;

implementation

uses Genel;

{$R *.dfm}

procedure TdmDataModul.DataModuleCreate(Sender: TObject);
var
  cnnStr, firma: string;
  QAra: TADOQuery;
  defaultSirket: Integer;
begin
  p := ExtractFilePath(Application.ExeName);
  ExePath:=p;
  
  path := p + 'Settings\';
  try
    cnnSP.Close;
    cnnSP.ConnectionString := 'FILE NAME=' + p + 'SISTEM.Udl';
    cnnSP.Open;
    QAra := TAdoQuery.Create(Self);
    QAra.Connection := cnnSp;

    with QAra do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DefaultSirket FROM SystemUsers WITH (NOLOCK) WHERE  UserId=:UserId ');
      Parameters.ParamByName('UserId').Value := StrToInt(ParamStr(1));
      Open;
      if RecordCount > 0 then
        defaultSirket := Fields.FieldByName('DefaultSirket').Value
      else
        defaultSirket := 1;

      Close;
      SQL.Clear;
      SQL.Add('SELECT FIRMA_ADI FROM SP_FIRMA WITH (NOLOCK) WHERE KeyId=:KeyId ');
      Parameters.ParamByName('KeyId').Value := defaultSirket;
      Open;

      if RecordCount > 0 then
        firma := Fields.FieldByName('FIRMA_ADI').Value
      else
        firma := 'SILATEKNIK16'
    end;
  except
  end;
  FreeAndNil(QAra);

  cnnStr := cnnSP.ConnectionString;
{  if ParamCount>1 Then
    firma:=ParamStr(2);}

  try
    cnnCon.Close;
    cnnCon.ConnectionString := 'FILE NAME=' + p + 'sistem.udl';
    if (Application.Title = 'Satinalma') or (Application.Title = 'Satýn Alma Yönetimi') then
      cnnCon.DefaultDatabase := 'SISTEMSILA'
    else
      cnnCon.DefaultDatabase := firma;
    cnnCon.Open;
  except
  end;

  try
    cnnERP.Close;
    cnnERP.ConnectionString := 'FILE NAME=' + p + 'BaglantiSTB.udl';
    cnnERP.Open;
  except
  end;

  try
    cnnSTB.Close;
    cnnSTB.ConnectionString := 'FILE NAME=' + p + 'BaglantiSTB.udl';
    cnnSTB.Open;
  except
  end;

  try
    Netsis.Close;
    Netsis.ConnectionString := 'FILE NAME=' + p + 'BaglantiSTB.udl';
    cnnSTB.Open;
  except
  end;

  try
    cnnSTG.Close;
    cnnSTG.ConnectionString := 'FILE NAME=' + p + 'BaglantiSTG.udl';
    cnnSTG.Open;
  except
  end;

  try
    cnnSTF.Close;
    cnnSTF.ConnectionString := 'FILE NAME=' + p + 'BaglantiSTF.udl';
//    cnnSTF.DefaultDatabase := firma;
    cnnSTF.Open;
  except
  end;
end;

procedure TdmDataModul.DataModuleDestroy(Sender: TObject);
begin
  cnnCon.Close;
  cnnSP.Close;
end;

procedure TdmDataModul.DefaultDatabaseDegistir(DatabaseAdi: string);
begin
  cnnCon.Close;
  BirOncekiDatabase := cnnCon.DefaultDatabase; // BirOncekiDatabase Genel'in içerisinde tanýmlý bir string
  cnnCon.DefaultDatabase := DatabaseAdi;
  cnnCon.Open;
end;

procedure TdmDataModul.OncekiDatabaseSec; //Önceki Database'i sec
begin
  DefaultDatabaseDegistir(BirOncekiDatabase);
end;

function TdmDataModul.AktifDataBase(KisaKod: string): string;
var
  xQ: TADOQuery;
begin
  xQ := TADOQuery.Create(Self);
  xQ.Connection := cnnSP;
  with xQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select FIRMA_ADI From SP_FIRMA Where AKTIF_DATABASE=:AKTIF_DATABASE');
    Parameters.ParamByName('AKTIF_DATABASE').Value := KisaKod;
    Open;
  end;
  if xQ.RecordCount = 1 then
  begin
    Result := xQ.FieldByName('FIRMA_ADI').AsString;
  end
  else
    Result := '';
  xQ.Destroy;
end;

end.

 