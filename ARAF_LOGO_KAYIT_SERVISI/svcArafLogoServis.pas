unit svcArafLogoServis;

interface

uses
    Windows,
    Messages,
    SysUtils,
    Classes,
    Graphics,
    Dialogs,
    Controls,
    SvCom_NTService, Vcl.ExtCtrls,IniFiles, IdCoder, IdCoder3to4, IdCoderMIME,
  IdBaseComponent, Data.DB, Data.Win.ADODB;

type
  TArafLogoUSKSarfServis = class(TNtService)
    tmr1: TTimer;
    conMain: TADOConnection;
    IdDecoderMIME1: TIdDecoderMIME;
    IdEncoderMIME1: TIdEncoderMIME;
    procedure NtServiceStart(Sender: TNtService; var DoAction: Boolean);
    procedure tmr1Timer(Sender: TObject);
    procedure NtServiceStop(Sender: TNtService; var DoAction: Boolean);
  private
    procedure ReadConnectionIniFile;
    function ConnectDB: Boolean;
    procedure ServisLog(Mesaj, Prm: string);
    { Private declarations }
  public
    { Public declarations }
  end;

  var
  APP_SERVERNAME: string;
  APP_DBNAME: string;
  APP_USERNAME: string;
  APP_PASSWORD: string;
  APP_PATH : string;
var
  ArafLogoUSKSarfServis: TArafLogoUSKSarfServis;

implementation

{$R *.DFM}


procedure TArafLogoUSKSarfServis.NtServiceStart(Sender: TNtService; var DoAction: Boolean);
begin
 if ConnectDB=False then
 begin
   Exit;
 end;
  tmr1.Enabled:=True;
end;
procedure TArafLogoUSKSarfServis.NtServiceStop(Sender: TNtService; var DoAction: Boolean);
begin
    tmr1.Enabled:=False;
end;

procedure TArafLogoUSKSarfServis.ReadConnectionIniFile;
var
  xConnectionIni: TIniFile;
begin
TRY
  xConnectionIni := TIniFile.Create('C:\ARAF_EXE\Connection.ini');
  if FileExists('C:\ARAF_EXE\Connection.ini') then
  begin
    xConnectionINI := TIniFile.Create('C:\ARAF_EXE\Connection.ini');
    APP_SERVERNAME := IdDecoderMIME1.DecodeString
      (xConnectionINI.ReadString(IdEncoderMIME1.EncodeString
          ('ConnectionInformation'), IdEncoderMIME1.EncodeString('srv_nm'),
        ''));
    APP_DBNAME := IdDecoderMIME1.DecodeString
      (xConnectionINI.ReadString(IdEncoderMIME1.EncodeString
          ('ConnectionInformation'), IdEncoderMIME1.EncodeString('DBName'),
        ''));
    APP_USERNAME := IdDecoderMIME1.DecodeString
      (xConnectionINI.ReadString(IdEncoderMIME1.EncodeString
          ('ConnectionInformation'), IdEncoderMIME1.EncodeString('user_name'),
        ''));
    APP_PASSWORD := IdDecoderMIME1.DecodeString
      (xConnectionINI.ReadString(IdEncoderMIME1.EncodeString
          ('ConnectionInformation'), IdEncoderMIME1.EncodeString('psswrd'),
        ''));
    xConnectionINI.Free;
  end;
  except
  on E: Exception do
  begin
    ServisLog(e.Message,'ReadConnectionIniFile');
    xConnectionINI.Free;
  end;
  end;

end;
procedure TArafLogoUSKSarfServis.tmr1Timer(Sender: TObject);
var
  xAdoQuery : TADOQuery;
begin
  xAdoQuery.Connection :=conMain;
  TRY
    xAdoQuery.Close;
    xAdoQuery.SQL.Clear;
    xAdoQuery.SQL.Add('EXEC	dbo.ARF_PRODUCTION_RECORD');
    xAdoQuery.ExecSQL;
  except  on E: Exception do
   begin
    ServisLog(e.Message,'ARF_CONSUMPTION_RECORD');
    FreeAndNil(xAdoQuery);
   end;
  END;
  TRY
    xAdoQuery.Close;
    xAdoQuery.SQL.Clear;
    xAdoQuery.SQL.Add('EXEC	dbo.ARF_CONSUMPTION_RECORD');
    xAdoQuery.ExecSQL;
  except  on E: Exception do
  begin
    ServisLog(e.Message,'ARF_CONSUMPTION_RECORD');
    FreeAndNil(xAdoQuery);
  end;
  END;
  FreeAndNil(xAdoQuery);

end;

function TArafLogoUSKSarfServis.ConnectDB: Boolean;
begin
  ReadConnectionIniFile;
  try
    conMain.Connected := False;
    conMain.ConnectionString :=
      'Provider=SQLOLEDB.1;Password=' + APP_PASSWORD +
      ';Persist Security Info=True;User ID=' + APP_USERNAME +
      ';Initial Catalog=' + APP_DBNAME + ';Data Source=' + APP_SERVERNAME + ';';
    conMain.Connected := True;
    Result := True;
  except
  on E: Exception do
  begin
    ServisLog(e.Message,'ConnectDB');
    Result := False;
  end;
  end;
end;
procedure TArafLogoUSKSarfServis.ServisLog(Mesaj,Prm:string);
var
  xAdoQuery : TADOQuery;
begin
   TRY
    xAdoQuery.Connection :=conMain;
    xAdoQuery.Close;
    xAdoQuery.SQL.Clear;
    xAdoQuery.SQL.Add('INSERT INTO dbo.SERVICE_LOG      ');
    xAdoQuery.SQL.Add('(SRVS_NAME                       ');
    xAdoQuery.SQL.Add(',SRVS_MESSAGE                    ');
    xAdoQuery.SQL.Add(',SRVS_DATE                       ');
    xAdoQuery.SQL.Add(',SRVS_PARAM)                     ');
    xAdoQuery.SQL.Add(' VALUES(:SRVS_NAME               ');
    xAdoQuery.SQL.Add(' ,:SRVS_MESSAGE                  ');
    xAdoQuery.SQL.Add(' ,:SRVS_DATE                     ');
    xAdoQuery.SQL.Add(' ,:SRVS_PARAM )                  ');
    xAdoQuery.Parameters.ParamByName('SRVS_NAME').Value:='ArafLogoUSKSarfServisi';
    xAdoQuery.Parameters.ParamByName('SRVS_MESSAGE').Value:=Mesaj;
    xAdoQuery.Parameters.ParamByName('SRVS_DATE').Value:=Date;
    xAdoQuery.Parameters.ParamByName('SRVS_PARAM').Value:=Prm;
    xAdoQuery.ExecSQL;
  except
    FreeAndNil(xAdoQuery);
  END;
  FreeAndNil(xAdoQuery);
end;

end.


 
