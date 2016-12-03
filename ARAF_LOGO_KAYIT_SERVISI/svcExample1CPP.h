//---------------------------------------------------------------------------
#ifndef svcExample1CPPH
#define svcExample1CPPH
//---------------------------------------------------------------------------
#include <SysUtils.hpp>
#include <Classes.hpp>
#include <SvCom_NTService.hpp>
#include <vcl.h>
//---------------------------------------------------------------------------
class TSampleService1 : public TNtService
{
	typedef Svcom_ntservice::TNtService inherited;

__published:    // IDE-managed Components
    void __fastcall NtServiceStart(TNtService *Sender, bool &DoAction);
    void __fastcall NtServiceStop(TNtService *Sender, bool &DoAction);
private:        // User declarations
	Extctrls::TTimer* Timer;
	void __fastcall TimerOnTimer(System::TObject* Sender);
public:         // User declarations
    __fastcall TSampleService1::TSampleService1(TComponent* Owner);

};
//---------------------------------------------------------------------------
extern PACKAGE TSampleService1 *SampleService1;
//---------------------------------------------------------------------------
#endif
 
 
 
 
 
