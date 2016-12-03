//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "svcExample1CPP.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

TSampleService1 *SampleService1;
//---------------------------------------------------------------------------
__fastcall TSampleService1::TSampleService1(TComponent* Owner)
	: TNtService(Owner)
{
}
//---------------------------------------------------------------------------

 

void __fastcall TSampleService1::NtServiceStart(TNtService *Sender,
      bool &DoAction)
{
    Timer = new TTimer(NULL);
    Timer->OnTimer=TimerOnTimer;
}
//---------------------------------------------------------------------------

void __fastcall TSampleService1::NtServiceStop(TNtService *Sender,
      bool &DoAction)
{
    Timer->Free();
}
//---------------------------------------------------------------------------

void __fastcall TSampleService1::TimerOnTimer(System::TObject* Sender)
{
    Beep();
}
//---------------------------------------------------------------------------

