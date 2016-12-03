unit svcExample1;


interface

uses
    Windows,
    Messages,
    SysUtils,
    Classes,
    SvCom_NTService, Vcl.ExtCtrls;

type
  TSampleService1 = class(TNTService)
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure TimerOnTimer(Sender: TObject);
  public
    { Public declarations }
  end;

var
  SampleService1: TSampleService1;

implementation

{$R *.DFM}


procedure TSampleService1.TimerOnTimer(Sender: TObject);
begin

end;

procedure TSampleService1.tmr1Timer(Sender: TObject);
begin
      Beep;
end;

end.

