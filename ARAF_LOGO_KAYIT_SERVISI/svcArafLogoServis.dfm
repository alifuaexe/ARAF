object ArafLogoUSKSarfServis: TArafLogoUSKSarfServis
  OldCreateOrder = False
  DisplayName = 'ArafLogoUSKSarfServisi'
  ShareProcess = True
  UseSynchronizer = False
  OnStart = NtServiceStart
  OnStop = NtServiceStop
  ServiceName = 'ArafLogoUSKSarfServisi'
  FailureActions = <>
  Height = 417
  Width = 391
  StartedByScm = '883B77C5-40E4D991'
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 16
    Top = 16
  end
  object conMain: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=0811!!bzc;Persist Security Info=Tru' +
      'e;User ID=sa;Initial Catalog=ARAF;Data Source=192.168.1.197'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 120
    Top = 16
  end
  object IdDecoderMIME1: TIdDecoderMIME
    FillChar = '#'
    Left = 112
    Top = 72
  end
  object IdEncoderMIME1: TIdEncoderMIME
    FillChar = '#'
    Left = 16
    Top = 72
  end
end
